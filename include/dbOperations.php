<?php

class dbOperations
{

    private $con;
    private $con_status = false;

    public function __construct()
    { // create constructor

        require_once dirname(__FILE__) . '/dbConnect.php'; // call dbConnect class

        $db = new dbConnect;
        $this->con = $db->connect();
        if ($this->con != null) {
            $this->con_status = true;
        } else { $this->con_status = false;}

    }

    // to Signup User
    public function createUser($email, $password, $name, $mobile, $address, $city)
    {
        if (!$this->isEmailExist($email)) {
            $output = $this->con->prepare("INSERT into customers(email, password, firstname, mobileno, address1, city) values(?,?,?,?,?,?)");
            $output->bind_param("ssssss", $email, $password, $name, $mobile, $address, $city);

            if ($output->execute()) {
                return USER_CREATED;
            } else {
                return USER_FAILURE;
            }
        }
        return USER_EXISTS;
    }

    // check is email already exists
    private function isEmailExist($email)
    {

        $output = $this->con->prepare("select custid from customers where email = ?");
        $output->bind_param("s", $email);
        $output->execute();
        $output->store_result();

        return $output->num_rows > 0;
    }

    // to login user
    public function userLogin($email, $password)
    {
        if ($this->isEmailExist($email)) {

            $hashed_password = $this->getUsersPasswordByEmail($email);
            if(password_verify($password,$hashed_password)) {
                return USER_AUTHENTICATED;
            } else {
                return INVALID_PASSWORD;
            }

        } else {
            return USER_NOT_FOUND;
        }
    }

    // to get user password by email
    private function getUsersPasswordByEmail($email)
    {
        $output = $this->con->prepare("select password from customers where email = ?");
        $output->bind_param("s", $email);
        $output->execute();
        $output->bind_result($password);
        $output->fetch();
        return $password;
    }

    // to check if user allowed to use app
    private function getUsersAcountStatus($email)
    {
        $output = $this->con->prepare("select active from users where email = ?");
        $output->bind_param("s", $email);
        $output->execute();
        $output->bind_result($status);
        $output->fetch();
        return $status;
    }

    // to get user info after login
    public function getUserInfoByEmail($email)
    {
        $output = $this->con->prepare("SELECT custid,email,firstname,wallet_points,address1,mobileno,city from customers where email = ?");
        $output->bind_param("s", $email);
        $output->execute();
        $output->bind_result($custid, $email, $firstname, $wallet_points, $address1, $mobileno, $city);
        $output->fetch();
        $user = array();
        $user['custid'] = $custid;
        $user['email'] = $email;
        $user['firstname'] = $firstname;
        $user['wallet_points'] = $wallet_points;
        $user['address1'] = $address1;
        $user['mobileno'] = $mobileno;
        $user['city'] = $city;
        return $user;
    }

    // get all users in db
    public function getAllUsers()
    {
        $output = $this->con->prepare("select id,email,name from users;");
        $output->execute();
        $output->bind_result($id, $email, $name);

        $users = array();

        while ($output->fetch()) { // fetching data until no row remain
            $user = array();
            $user['id'] = $id;
            $user['email'] = $email;
            $user['name'] = $name;

            array_push($users, $user); // puch user array into users array

        }
        return $users;
    }

    //update user email and name by id
    public function updateUserInfo($email, $name, $mobile, $address, $city)
    {
        $output = $this->con->prepare("UPDATE customers set firstname = ?, mobileno =? , address1 =?, city=? where email =?");
        $output->bind_param("sssss", $name, $mobile, $address, $city, $email);
        if ($output->execute()) {
            return true;
        } else {
            return false;
        }
    }

    // update password
    public function updateUserPassword($currentPassword,$newPassword,$email) {
        $hashed_password = $this->getUsersPasswordByEmail($email);

        if(password_verify($currentPassword,$hashed_password)){
            
            $hashed_password = password_hash($newPassword,PASSWORD_DEFAULT); //encrypt new password

            $output = $this->con->prepare("update customers set password = ? where email = ?");
            $output->bind_param("ss",$hashed_password,$email);
            if($output->execute()){
                return PASSWORD_CHANGED;
            }else{
                return PASSWORD_NOT_CHANGED;
            }

        }else{
            return PASSWORD_DO_NOT_MATCH;
        }
    }

    // reset password
    public function resetUserPassword($newPassword, $email)
    {
        if ($this->isEmailExist($email)) {
            $output = $this->con->prepare("UPDATE customers set password = ? where email = ?");
            $output->bind_param("ss", $newPassword, $email);
            if ($output->execute()) {
                return PASSWORD_CHANGED;
            } else {
                return PASSWORD_NOT_CHANGED;
            }

        } else {
            return USER_NOT_FOUND;
        }
    }

    // to check wallet points
    public function checkWalletPoints($user_id)
    {
        $output = $this->con->prepare("SELECT wallet_points FROM customers where custid = ?");

        $output->bind_param("i", $user_id);
        $output->execute();
        $output->bind_result($points);

        $walletPoints = array();

        while ($output->fetch()) {
            $walletPoints = $points;
        }
        return $walletPoints;
    }

    //get redeemed products
    public function getRedeemProducts()
    {
        $output = $this->con->prepare("SELECT DISTINCT rp.id, p.pname, pp.price, rp.redeem_points, rp.description, p.image from redeem_products rp LEFT JOIN products p on rp.pid = p.pid LEFT JOIN product_prices pp ON p.pid = pp.pid");
        $output->execute();
        $output->bind_result($id, $pname, $price, $points, $desc, $img);

        $items = array();

        while ($output->fetch()) {
            $item = array();
            $item['id'] = $id;
            $item['product_name'] = $pname;
            $item['price'] = round($price);
            $item['points'] = $points;
            $item['desc'] = strip_tags(preg_replace('!\\r?\\n!', "", $desc));
            $item['img'] = PRODUCT_IMG_PATH . $img;
            array_push($items, $item);
        }
        return $items;
    }

    // on Redeem Item
    public function onRedeemItem($item_id,$user_id,$points)
    {
        $current_timestamp = $this->getCurrentTime();
        $output = $this->con->prepare("SELECT id,code from redeem_codes where redeemed_pid = ? AND status = 0 LIMIT 1");
        $output->bind_param("i", $item_id);
        if ($output->execute()) {
            $output->bind_result($id,$code);
            $output->fetch();
            $redeem_code = $code;
            $pos_code_id = $id;
            $item_points = $points;
            $output->close();
            if ($redeem_code != null) {
                if($this->updateUserWallet($user_id,$item_points)){
                $output = $this->con->prepare("UPDATE redeem_codes set status = 1 where code = ?");
                $output->bind_param("s", $redeem_code);
                    if ($output->execute()) {
                        $output = $this->con->prepare("INSERT into redeemed_products(redeem_code_id,redeem_pid,cust_id,created_at,updated_at) values (?,?,?,?,?)");
                        $output->bind_param("iiiss", $pos_code_id,$item_id,$user_id,$current_timestamp,$current_timestamp);
                        if ($output->execute()){
                            return array('error'=> false, 'code'=>$redeem_code);
                        }else{return FAILED;}
                    }else{return FAILED;}
                }else{return array('error'=> true, 'message'=>'You have insufficient points to redeem that item.');}
            } else {return array('error'=> true, 'message'=>'No Code available to redeem');}
        } else {return FAILED;}
    }

    private function updateUserWallet($user_id,$item_points)
    {
        $output = $this->con->prepare("SELECT wallet_points from customers where custid = ?");
        $output->bind_param("i", $user_id);
        if($output->execute()){
            $output->bind_result($walletPoints);
            $output->fetch();
            $output->close();
        }
            if($walletPoints >= $item_points){
                $output = $this->con->prepare("UPDATE customers set wallet_points = wallet_points - ? where custid = ?");
                $output->bind_param("ii", $item_points,$user_id);
                $output->execute();
                $output->store_result();
        
                return $output->affected_rows> 0;
            }else{
                return false; // not have enought points
            }
    }

    public function getCities()
    {
        $output = $this->con->prepare("SELECT * FROM cities");
        $output->execute();
        $output->bind_result($id, $code, $name, $delivery_time,$order_price, $status, $date);

        $cities = array();
        while ($output->fetch()) {
            $city = array();
            $city['id'] = $id;
            $city['code'] = $code;
            $city['name'] = $name;
            $city['delivery_timings'] = $delivery_time;
            $city['delivery_charges'] ="35";
            $city['custom_note'] = "";
            $city['status'] = $status;
            $city['min_order_price'] =$order_price;
        

            array_push($cities, $city);
        }
        return $cities;
    }

    public function getAllData($city_id, $cat_id)
    {
        $data = $this->getCityProducts($city_id, $cat_id);
        return $data;
    }

    private function getCityProducts($city_id, $cat_id)
    {
        $output = $this->con->prepare("SELECT * FROM cities where cityid = ?");
        $output->bind_param("i", $city_id);
        $output->execute();
        $output->store_result();
        $output->bind_result($id, $code, $name, $delivery_time,$order_price, $status, $date);

        $cities = array();
        while ($output->fetch()) {
            $city = array();
            $city['id'] = $id;
            $city['code'] = $code;
            $city['name'] = $name;
            $city['delivery_timings'] = $delivery_time;
             $city['delivery_charges'] ="35";
            $city['custom_note'] = "";
            $city['status'] = $status;
            $city['min_order_price']=$order_price;

            $city['categories'] = $this->getCategories($id, $cat_id);

            array_push($cities, $city);
        }
        return $cities;
    }

    private function getCategories($city_id, $cat_id)
    {
        $output = $this->con->prepare("SELECT cid, category, cimage FROM category where cstatus =0");
        $output->execute();
        $output->store_result();
        $output->bind_result($id, $name, $cig);

        $categories = array();
        while ($output->fetch()) {
            $category = array();
            $category['id'] = $id;
            $category['name'] = $name;
            $category['image'] = CATEGORY_IMG_PATH . $cig;

            $category['products'] = $this->getProducts($id, $city_id);

            array_push($categories, $category);
        }
        $output->close();
        return $categories;
    }

    private function getProducts($categories_id, $city_id)
    {
        $output = $this->con->prepare("SELECT pid, products.cid, sku, pname, weight, weight_unit, currency, instock, description, image
                                        FROM products LEFT JOIN category ON products.cid = category.cid WHERE products.cid = ?  AND pstatus=0 ORDER BY pserialno ASC");
        $output->bind_param("i", $categories_id);
        $output->execute();
        $output->store_result();
        $output->bind_result($id, $cid, $sku, $name, $weight, $weight_unit, $currency, $stock, $desc, $img);

        $products = array();
        while ($output->fetch()) {
            $product = array();
            $product['id'] = $id;
            $product['cat_id'] = $cid;
            $product['title']= $name;
            $product['name'] = $name;
            $product['price'] = $this->getProductPrice($id, $city_id);
            $product['AddOns']=$this->getProductAddons($id,$city_id);
            $product['weight'] = $weight;
            $product['weight_unit'] = $weight_unit;
            $product['stock'] = $stock;
            $product['desc'] = strip_tags(preg_replace('!\\r?\\n!', "", $desc));
            $product['img'] = PRODUCT_IMG_PATH . $img;
            $product['currency'] = $currency;

            array_push($products, $product);
        }
        $output->close();
        return $products;
    }
    
    
    public function getProductAddons($pid, $cid)
    {
        $output = $this->con->prepare("SELECT adid, adpid FROM product_addons WHERE pid = ?");
        $output->bind_param("i", $pid);
        $output->execute();
        $output->store_result();
        $output->bind_result($id,$adpid);
        

        $addons = array();
        while($output->fetch()){
            $p = array();
            $p['id'] = $id;
            $p['product_id']=$adpid;
            // $p['city']=$cid;
            //  $p['pp']=$pid;
            //$p['img'] = $this->getProductImg($adpid,$cid);
           $p['price'] = $this->getProductPrice($adpid,2);
            

            array_push($addons, $p);
        }

        $output->close();
        return $addons;
        // return $adspid;
    }
    
    
    
       public function getPromotion()
    {
        $output = $this->con->prepare("SELECT id,pname,pprice,pimg,required_order,order_price,pid FROM app_promotions WHERE status=0");
        // $output->bind_param("i", $city_id);
        $output->execute();
        $output->store_result();
        $output->bind_result($id, $pname, $pprice, $pimg, $required_order, $order_price,$pid);

        $cities = array();
        while ($output->fetch()) {
            $city = array();
            $city['id'] = $pid;
            $city['pname'] = $pname;
            $city['pprice'] = $pprice;
            // $city['pid']=$pid;
            $city['pimg'] = PRODUCT_IMG_PATH . $pimg;
            $city['total_orders_required'] = $required_order;
            $city['order_amount']=$order_price;

            // $city['categories'] = $this->getCategories($id, $cat_id);

            array_push($cities, $city);
        }
       
        return $cities;
    }

    private function getProductPrice($pid, $cid)
    {
        $output = $this->con->prepare("SELECT price FROM product_prices WHERE pid = ? AND cityid = ?;");
        $output->bind_param("ii", $pid, $cid);
        $output->execute();
        // $output->store_result();
        $output->bind_result($price);
        $output->fetch();
        $output->close();
        return round($price);
    }

    private function getProductImg($pid)
    {
        $output = $this->con->prepare("SELECT largeimage FROM images WHERE pid = ?;");
        $output->bind_param("i", $pid);
        $output->execute();
        // $output->store_result();
        $output->bind_result($img);
        $output->fetch();
        $output->close();
        return PRODUCT_IMG_PATH . $img;
    }

    public function getBannerImgs()
    {
        $output = $this->con->prepare("SELECT mbanner FROM banners where bstatus = 0 AND btype !=3");
        $output->execute();
        $output->bind_result($img);

        $banners = array();
        while ($output->fetch()) {
            $banner = array();
            $banner['img'] = BANNER_IMG_PATH . $img;

            array_push($banners, $banner);
        }
        return $banners;
    }
     public function getAdsImages()
    {
        $output = $this->con->prepare("SELECT mbanner FROM banners where bstatus = 0 AND btype = 3");
        $output->execute();
        $output->bind_result($img);

        $banners = array();
        while ($output->fetch()) {
            $banner = array();
            $banner['img'] = BANNER_IMG_PATH . $img;

            array_push($banners, $banner);
        }
        return $banners;
    }

    public function getRestaurants()
    {
        $output = $this->con->prepare("SELECT id, name, address, longitude, latitude, phone FROM restaurants");
        $output->execute();
        $output->bind_result($id, $name, $address, $longitude, $latitude, $phone);

        $restaurants = array();
        while ($output->fetch()) {
            $restaurant = array();
            $restaurant['id'] = $id;
            $restaurant['name'] = $name;
            $restaurant['address'] = $address;
            $restaurant['longitude'] = $longitude;
            $restaurant['latitude'] = $latitude;
            $restaurant['phone'] = $phone;
            
            array_push($restaurants, $restaurant);
        }
        return $restaurants;
    }
    
    
     function send_bulk_notification($token)
	{
		// Generated by curl-to-PHP: http://incarnate.github.io/curl-to-php/
        $ch = curl_init();
        $title="Your Order Received Successfully";
        $message="Thanks for placing order on simply sufi xprs.you will get a confirmation call shortly";
        
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, "{\n    
                                                    \"to\":\"$token\",\n    
                                                    \"notification\": {\n        
                                                                            \"title\": \"$title\",\n
                                                                            \"body\": \"$message\",\n    
                                                                            \"sound\": \"true\",\n    
                                                                            \"icon\": \"adaptive_icon_3\",\n    
                                                                            \"badge\": \"0\"\n 
                        
                                                                        }
                                            \n}");
        
        $headers = array();
        $headers[] = 'Authorization: key=AAAA3QsjZdA:APA91bHu3giLssQpW6vXNUTTxv6b-14Qo9OLUnyAYEtllk6WUkfFPfQtDSlgD4OnUIOUtV7RBzBKPZFrGRQI_bfl-cAfHJCuhWH55p3k1aR-Uz97mCltsCOmvZ1WxasBea3zbslUhx0C';
        $headers[] = 'Content-Type: application/json';
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        
        $result = curl_exec($ch);
        if (curl_errno($ch)) {
            echo 'Error:' . curl_error($ch);
            return FAILED;
            
        }else{
            return SUCCESS;
        }
        curl_close($ch);
	}

    public function placeOrder($custid, $name, $email, $mobile, $address, $comment, $products, $total_quantity, $total_price, $token, $deviceType)
    {
        $current_timestamp = $this->getCurrentTime();

        $output = $this->con->prepare("INSERT INTO orders (otype, custid, totalqty, totalPrice, contactPerson, oemail,
                                        omobile, oaddress, ocomments, odate, token, devicetype) values (1,?,?,?,?,?,?,?,?,?,?,?) ");
        $output->bind_param("iiissssssss", $custid, $total_quantity, $total_price, $name, $email, $mobile, $address, $comment, $current_timestamp, $token, $deviceType);

        if ($output->execute()) {
            $order_id = mysqli_insert_id($this->con);
           
            for ($j = 0; $j < count($products['products']); $j++) {
                $product_id = $products['products'][$j]['id'];
                $quantity = $products['products'][$j]['quantity'];
                $unit_price = $products['products'][$j]['price'];
                $prod_total_price = $products['products'][$j]['totalprice'];


                $output = $this->con->prepare("INSERT INTO cart (oid, pid, qty, unitprice, totalprice, cartdate)
                                                values (?,?,?,?,?,?) ");
                $output->bind_param("iiiiis", $order_id, $product_id, $quantity, $unit_price, $prod_total_price, $current_timestamp);

                if (!$output->execute()) {
                    return FAILED;
                }
            }
        } else {
            return FAILED;
        }
        return $order_id;
    }

    public function getCustomerOrders($custid)
    {
        $output = $this->con->prepare("SELECT o.oid, o.contactperson, o.totalqty, o.totalprice, o.oaddress, o.odate, os.orderstatus from orders o left join orderstatus os on o.ostatus = os.ostatus where custid = ? ORDER BY o.oid DESC");
        $output->bind_param("s", $custid);
        $output->execute();
        $output->bind_result($oid, $contactPerson, $total_quantity, $total_price, $address, $date, $status);

        $orders = array();
        while ($output->fetch()) {
            $order = array();
            $order['id'] = $oid;
            $order['contact_person'] = $contactPerson;
            $order['total_quantity'] = $total_quantity;
            $order['total_price'] = $total_price;
            $order['address'] = $address;
            $order['date'] = $date;
            $order['status'] = $status;
            $order['tax'] = 0;
            $order['discount'] = 0;

            array_push($orders, $order);
        }
        return $orders;
    }

    public function getCustomerOrdersProducts($order_id)
    {
        $output = $this->con->prepare("SELECT DISTINCT cart.cartid, products.pname, products.description, pp.price, cart.qty, products.weight, products.weight_unit, products.image FROM cart LEFT JOIN products ON cart.pid = products.pid LEFT JOIN product_prices pp ON cart.pid = pp.pid WHERE cart.oid = ?;");
        $output->bind_param("i", $order_id);
        $output->execute();
        $output->bind_result($cartid, $pname, $desc, $price, $qty, $weight, $weight_unit, $image);
        $products = array();
        while ($output->fetch()) {
            $product = array();
            $product['cartid'] = $cartid;
            $product['name'] = $pname;
            $product['desc'] = strip_tags(preg_replace('!\\r?\\n!', "", $desc));
            $product['price'] = round($price);
            $product['quantity'] = $qty;
            $product['weight'] = $weight;
            $product['weight_unit'] = $weight_unit;
            $product['image'] = PRODUCT_IMG_PATH . $image;
            array_push($products, $product);
        }
        return $products;
    }
    private function isTokenExists($token)
    {

        $output = $this->con->prepare("select id from notifications where token = ?");
        $output->bind_param("s", $token);
        $output->execute();
        $output->store_result();

        return $output->num_rows > 0;
    }
    
    // push notification
    public function pushNotification($token, $deviceType)
    {
        
        
        
        if(!$this->isTokenExists($token)){
              $output = $this->con->prepare("INSERT into notifications(token, devicetype) values(?,?)");
              $output->bind_param("ss", $token, $deviceType);
                if ($output->execute()) {
                             return SUCCESS;
                                        } else {
                             return FAILED;
                                               }
        }else {return SUCCESS;}
                         
        
        
    }

    public function getCurrentTime()
    {
        date_default_timezone_set("Asia/Karachi");
        return date('Y-m-d H:i:s');
    }

    public function __destruct()
    {
        if ($this->con_status) {
            if ($this->con->close()) {
                $this->con_status = false;
            } else {
                return false;
            }
        }
    }
}
