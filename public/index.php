<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

require '../vendor/autoload.php';
require '../include/dbConnect.php';
require '../include/dbOperations.php';
require '../include/constant.php';
require '../php-send-mail/mail_function.php';
require '../php-send-mail/order_email_template.php';

$app = new \Slim\App([
    'settings' => [
        'displayErrorDetails' => true,
    ],
]);

//*** For Api security from "https://github.com/tuupola/slim-basic-auth"
/*$app->add(new Tuupola\Middleware\HttpBasicAuthentication([
"secure" =>true,
"users" => [
"admin" => "admin", // api access username and password
]
]));*/

// api call to test connection
$app->get('/hello', function (Request $request, Response $response) {

    $db = new dbConnect;

    if ($db->connect() != null) {
        echo 'connection successful for SimplySufi_XPRS DB';
        $db = new dbOperations;
    }
    return $response;
});

//  api call to create user account
$app->post('/createuser', function (Request $request, Response $response) {

    $request_data = $request->getParsedBody();

    $email = $request_data['email'];
    $password = $request_data['password'];
    $name = $request_data['name'];
    $mobile = $request_data['mobile'];
    $address = $request_data['address'];
    $city = $request_data['city'];

    $hash_password = password_hash($password,PASSWORD_DEFAULT);

    $db = new dbOperations;

    $result = $db->createUser($email, $hash_password, $name, $mobile, $address, $city);

    if ($result == USER_CREATED) {
        $message = array();
        $message['error'] = false;
        $message['message'] = 'User created';
        $response->write(json_encode($message));
        return $response->withHeader('Content-type', 'application/json')->withStatus(201);
    } else if ($result == USER_FAILURE) {
        $message = array();
        $message['error'] = true;
        $message['message'] = 'Error Occured';
        $response->write(json_encode($message));
        return $response->withHeader('Content-type', 'application/json')->withStatus(422);
    } else if ($result == USER_EXISTS) {
        $message = array();
        $message['error'] = true;
        $message['message'] = 'User already exists';
        $response->write(json_encode($message));
        return $response->withHeader('Content-type', 'application/json')->withStatus(200);
    }
});

//  api call to login user
$app->post('/userlogin', function (Request $request, Response $response) {

    $request_data = $request->getParsedBody();

    $email = $request_data['email'];
    $password = $request_data['password'];

    $db = new dbOperations;

    $result = $db->userLogin($email, $password);

    if ($result == USER_AUTHENTICATED) {
        $user = $db->getUserInfoByEmail($email);

        $response_data = array();
        $response_data['error'] = false;
        $response_data['message'] = 'Login Successful';
        $response_data['user'] = $user;
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type', 'application/json')->withStatus(200);
    } else if ($result == INVALID_PASSWORD) {
        $response_data = array();
        $response_data['error'] = true;
        $response_data['message'] = 'Invalid Password';
        // $response_data['user'] = $user;
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type', 'application/json')->withStatus(200);
    } else if ($result == USER_NOT_FOUND) {
        $response_data = array();
        $response_data['error'] = true;
        $response_data['message'] = 'User not exist';
        //$response_data['user'] = $user;
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type', 'application/json')->withStatus(200);
    } else if ($result == USER_NOT_ALLOWED) {
        $response_data = array();
        $response_data['error'] = true;
        $response_data['message'] = 'You are not authenticated to use this app. Kindly contact support.';
        //$response_data['user'] = $user;
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type', 'application/json')->withStatus(200);
    }
});

//  api call to get user info by email
$app->get('/getUserInfo/{email}', function (Request $request, Response $response, array $arg) {

    $email = $arg['email'];
    $db = new dbOperations;
    $user = $db->getUserInfoByEmail($email);
    $response_data = array();

    $response_data['user'] = $user;

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);
});

//  api call to update user info
$app->post('/updateuserinfo', function (Request $request, Response $response) {

    $request_data = $request->getParsedBody();

    if (!isEmptyParameters($request_data, 5)) {

        $email = $request_data['email'];
        $name = $request_data['name'];
        $mobile = $request_data['mobile'];
        $address = $request_data['address'];
        $city = $request_data['city'];

        $db = new dbOperations;

        

        if ($db->updateUserInfo($email, $name, $mobile, $address, $city)) {
            $response_data = array();
            $response_data['error'] = false;
            $response_data['message'] = 'Update user Successful';
            $user = $db->getUserInfoByEmail($email);
            $response_data['user'] = $user;

            $response->write(json_encode($response_data));
            return $response->withHeader('Content-type', 'application/json')->withStatus(200);
        } else {
            $response_data = array();
            $response_data['error'] = true;
            $response_data['message'] = 'Try again';
            $user = $db->getUserInfoByEmail($email);
            $response_data['user'] = $user;

            $response->write(json_encode($response_data));
            return $response->withHeader('Content-type', 'application/json')->withStatus(200);
        }
    } else {

        $response_data['error'] = true;
        $response_data['message'] = 'Fields Cant be empty ';
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type', 'application/json')->withStatus(200);
    }
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);

});

// api call to check wallet points
$app->get('/checkWalletPoints/{user_id}', function (Request $request, Response $response, array $arg) {

    $user_id = $arg['user_id'];
    $response_data = array();
    
    $db = new dbOperations;

    $result = $db->checkWalletPoints($user_id);

    $response_data['error'] = false;
    $response_data['points'] = $result;

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);
});

// api call to get redeem products
$app->get('/getRedeemProducts', function (Request $request, Response $response) {   
    $response_data = array();

    $db = new dbOperations;

    $result = $db->getRedeemProducts();

    $response_data['error'] = false;
    $response_data['products'] = $result;

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);
});

//  api call on Redeem
$app->post('/redeemProduct', function (Request $request, Response $response) {

    $request_data = $request->getParsedBody();

    $product_id = $request_data['product_id'];
    $user_id = $request_data['user_id'];
    $points = $request_data['points'];

    $db = new dbOperations;

    $result = $db->onRedeemItem($product_id,$user_id,$points);

    if($result == 603){
        $response_data['error'] = true;
        $response_data['status'] = "Some Error Occur!";
    }else{
        $response_data = $result;
    }

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);

});

//  api call to reset password
// $app->post('/resetUserPassword', function (Request $request, Response $response) {

//     $request_data = $request->getParsedBody();

//     $newpassword = $request_data['newpassword'];
//     $email = $request_data['email'];
    
//     if ($newpassword == '') {
//         $response_data['error'] = true;
//         $response_data['message'] = "Password can't be empty!";
//         $response->write(json_encode($response_data));
//         return $response->withHeader('Content-type', 'application/json')->withStatus(400);
//     }

//     $hashed_password = password_hash($newpassword,PASSWORD_DEFAULT); //encrypt new password

//     $db = new dbOperations;

//     $result = $db->resetUserPassword($hashed_password, $email);

//     if ($result == PASSWORD_CHANGED) {

//         $response_data = array();
//         $response_data['error'] = false;
//         $response_data['message'] = 'Password updated successfully';
//         $response->write(json_encode($response_data));
//         return $response->withHeader('Content-type', 'application/json')->withStatus(200);

//     } else if (USER_NOT_FOUND) {
//         $response_data = array();
//         $response_data['error'] = true;
//         $response_data['message'] = 'Account not Exist on that Email address';
//         $response->write(json_encode($response_data));
//         return $response->withHeader('Content-type', 'application/json')->withStatus(200);
//     } else if (PASSWORD_NOT_CHANGED) {
//         $response_data = array();
//         $response_data['error'] = true;
//         $response_data['message'] = 'Try again later';
//         $response->write(json_encode($response_data));
//         return $response->withHeader('Content-type', 'application/json')->withStatus(422);
//     }

//     return $response->withHeader('Content-type', 'application/json')->withStatus(422);
// });

//  api call to reset password
$app->post('/resetUserPassword', function (Request $request, Response $response) {

    $request_data = $request->getParsedBody();
    
    $email = $request_data['email'];
    $password = rand(1999999,99999999);

    $hashed_password = password_hash($password,PASSWORD_DEFAULT); //encrypt new password

    $db = new dbOperations;

    $result = $db->resetUserPassword($hashed_password, $email);

    if ($result == PASSWORD_CHANGED) {
        $response_data = array();
        if (sendCodeEmail($email, $password)) {
            $response_data['error'] = false;
            $response_data['message'] = 'New password sent to your email. Kindly check inbox!';
        } else {
            $response_data['error'] = true;
            $response_data['message'] = "Failed to send Email!";
        }
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type', 'application/json')->withStatus(200);
    } else if (USER_NOT_FOUND) {
        $response_data = array();
        $response_data['error'] = true;
        $response_data['message'] = 'Account not Exist on that Email address';
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type', 'application/json')->withStatus(200);
    } else if (PASSWORD_NOT_CHANGED) {
        $response_data = array();
        $response_data['error'] = true;
        $response_data['message'] = 'Try again later';
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type', 'application/json')->withStatus(422);
    }else {
        $response_data['error'] = true;
        $response_data['message'] = "Some error occur!";
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type', 'application/json')->withStatus(424);
    }
});

//  api call to send verfication code
$app->post('/sendVerificationCode', function (Request $request, Response $response) {
$request_data = $request->getParsedBody();
    
    $email = $request_data['email'];
    $password = rand(1999999,99999999);

    $hashed_password = password_hash($password,PASSWORD_DEFAULT); //encrypt new password

    $db = new dbOperations;

    $result = $db->resetUserPassword($hashed_password, $email);

    if ($result == PASSWORD_CHANGED) {
        $response_data = array();
        if (sendCodeEmail($email, $password)) {
            $response_data['error'] = false;
            $response_data['message'] = 'New password sent to your email. Kindly check inbox!';
        } else {
            $response_data['error'] = true;
            $response_data['message'] = "Failed to send Email!";
        }
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type', 'application/json')->withStatus(200);
    } else if (USER_NOT_FOUND) {
        $response_data = array();
        $response_data['error'] = true;
        $response_data['message'] = 'Account not Exist on that Email address';
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type', 'application/json')->withStatus(200);
    } else if (PASSWORD_NOT_CHANGED) {
        $response_data = array();
        $response_data['error'] = true;
        $response_data['message'] = 'Try again later';
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type', 'application/json')->withStatus(422);
    }else {
        $response_data['error'] = true;
        $response_data['message'] = "Some error occur!";
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type', 'application/json')->withStatus(424);
    }
});

$app->post('/updateUserPassword',function(Request $request,Response $response){

    $request_data = $request->getParsedBody();

    $currentpassword = $request_data['currentpassword'];
    $newpassword = $request_data['newpassword'];
    $email = $request_data['email'];

    $db = new dbOperations;

    $result = $db->updateUserPassword($currentpassword,$newpassword,$email);
    
    if($result == PASSWORD_CHANGED){
        
        $response_data = array();
        $response_data['error'] = false;
        $response_data['message'] = 'Password Changed';
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type','application/json')->withStatus(200);

    }else if(PASSWORD_DO_NOT_MATCH){
        $response_data = array();
        $response_data['error'] = true;
        $response_data['message'] = 'You have given wrong password';
        $response->write(json_encode($response_data));
    
        return $response->withHeader('Content-type','application/json')->withStatus(200);
    }else if(PASSWORD_NOT_CHANGED){
        $response_data = array();
        $response_data['error'] = true;
        $response_data['message'] = 'Try again later';
        $response->write(json_encode($response_data));
        return $response->withHeader('Content-type','application/json')->withStatus(200);
    }

    return $response->withHeader('Content-type','application/json')->withStatus(422);
});

$app->get('/getBannerImgs', function (Request $request, Response $response) {

    $db = new dbOperations;
    $banner = $db->getBannerImgs();
    $response_data = array();

    $response_data['banner'] = $banner;

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);
});
//vertical Ads images
$app->get('/getAddImages', function (Request $request, Response $response) {

    $db = new dbOperations;
    $banner = $db->getAdsImages();
    $response_data = array();

    $response_data['banner'] = $banner;

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);
});

$app->get('/getRestaurants', function (Request $request, Response $response) {

    $db = new dbOperations;
    $restaurants = $db->getRestaurants();
    $response_data = array();

    $response_data['restaurants'] = $restaurants;

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);
});

$app->get('/getCities', function (Request $request, Response $response) {

    $db = new dbOperations;
    $cities = $db->getCities();
    $response_data = array();

    $response_data['cities'] = $cities;

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);
});

// api call to get all products data by city Id
$app->get('/getAllData/{city_id}', function (Request $request, Response $response, array $arg) {

    $city_id = $arg['city_id'];
    $db = new dbOperations;
    $data = $db->getAllData($city_id, " WHERE cid != 1"); // to get all categories except xprs deals
    $response_data = array();

    $response_data['cities'] = $data;

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);
});

// api call to get xprs deals by city Id
$app->get('/getXprsDeals/{city_id}', function (Request $request, Response $response, array $arg) {

    $city_id = $arg['city_id'];
    $db = new dbOperations;
    $data = $db->getAllData($city_id, " WHERE cid = 1"); // to get only xprs deals products
    $response_data = array();

    $response_data['cities'] = $data;

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);
});

$app->post('/placeOrder', function (Request $request, Response $response) {

    $request_data = $request->getParsedBody();
    // if (!isEmptyParameters($request_data, 10)) {
    if (true) {

        $custid = $request_data['custid'];
        $name = $request_data['name'];
        $email = $request_data['email'];
        $mobile = $request_data['mobile'];
        $city = $request_data['city'];
        $address = $request_data['address'];
        $comment = $request_data['comment'];
        $products = $request_data['cart'];

        // Products object structure
        /*$products = '{
        "products": [
        {
        "id": 1,
        "name": "Beef Burger",
        "image": "48357681.jpg",
        "quantity": 2,
        "weight": "1",
        "weight_unit": "Kg",
        "price": 250,
        "totalprice": 500
        },
        {
        "id": 1,
        "name": "Chapli Deal",
        "image": "71467395.jpeg",
        "quantity": 2,
        "weight": "1",
        "weight_unit": "Pc",
        "price": 300,
        "totalprice": 600
        }
        ]
        }';*/

        $total_quantity = $request_data['total_quantity'];
        $total_price = $request_data['total_bill'];

        $token = isset($request_data['token']) ? $request_data['token'] : '';
        $deviceType = isset($request_data['deviceType']) ? $request_data['deviceType'] : '';

        //$products_data = json_decode($products);
        //$request_data['cart'] = $products_data;

        $db = new dbOperations;
        $sendNotification= $db->send_bulk_notification($token);

        $result = $db->placeOrder($custid, $name, $email, $mobile, $address, $comment, $products, $total_quantity, $total_price, $token, $deviceType);

        if ($result == 603) {
            $response_data['error'] = true;
            $response_data['message'] = "Some Error Occur!";
        } elseif ($result != '') {
            $request_data['order_id'] = $result;
            $request_data['datetime'] = $db->getCurrentTime();
            $order_email = get_html_code($request_data);

            if (sendOrderMail($email, $order_email)) {
                //  $sendNotification=$db->send_bulk_notification($token);
                $response_data['error'] = false;
                $response_data['message'] = "Your order is placed successfully!";
                $response_data['order_id'] = $result;
            } else {
                $response_data['error'] = true;
                $response_data['message'] = "Failed to send Email!";
            }
        }
    } else {
        $response_data['error'] = true;
        $response_data['message'] = "Some fields are missing or empty!";
    }

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);


});

// api call to get all customers orders
$app->get('/getCustomersOrders/{custid}', function (Request $request, Response $response, array $arg) {

    $custid = $arg['custid'];
    $db = new dbOperations;
    $data = $db->getCustomerOrders($custid);
    $response_data = array();

    $response_data['orders'] = $data;

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);
});

// api call to get all customers orders products
$app->get('/getCustomerOrdersProducts/{oid}', function (Request $request, Response $response, array $arg) {

    $oid = $arg['oid'];
    $db = new dbOperations;
    $data = $db->getCustomerOrdersProducts($oid);
    $response_data = array();

    $response_data['products'] = $data;

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);
});



// api call to get all customers orders product
$app->get('/getPromotions', function (Request $request, Response $response, array $arg) {

   
    $db = new dbOperations;
    $data = $db->getPromotion();
    $response_data = array();

    $response_data['promotion'] = $data;

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);
});



//  api call to post notification
$app->post('/pushNotification', function (Request $request, Response $response) {

    $request_data = $request->getParsedBody();

    $token = $request_data['token'];
    $deviceType = $request_data['deviceType'];

    $db = new dbOperations;

    $result = $db->pushNotification($token, $deviceType);

    if($result == 602){
        $response_data['error'] = false;
        $response_data['status'] = "Data saved successfully!";
    }else{
        $response_data['error'] = true;
        $response_data['status'] = "Some Error Occur!";
    }

    $response->write(json_encode($response_data));
    return $response->withHeader('Content-type', 'application/json')->withStatus(200);
});

function isEmptyParameters($request_data, $no_of_params)
{
    if (count($request_data) < $no_of_params) {
        return true;
    }
    foreach ($request_data as $data) {
        if ($data == null) {
            return true;
        }

    }
    return false;
}

$app->run();
