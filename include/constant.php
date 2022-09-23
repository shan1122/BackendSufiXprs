<?php

define('PRODUCT_IMG_PATH', 'https://www.simplysufixprs.net/new_website/images/products/');
define('BANNER_IMG_PATH', 'https://www.simplysufixprs.net/new_website/images/banners/');
define('CATEGORY_IMG_PATH', 'https://www.simplysufixprs.net/new_website/images/category_images/');

// defining db attributes 

define('DB_HOST','localhost');
define('DB_USER','simplysu_ssxprs');
define('DB_PASSWORD','P7UDe1xkPp9a9YhJ');
define('DB_NAME','simplysu_xprs');

//defining signup attributes

define('USER_CREATED',101);
define('USER_EXISTS',102);
define('USER_FAILURE',103);

// defining login attribues

define('USER_AUTHENTICATED',201);
define('USER_NOT_FOUND',202);
define('INVALID_PASSWORD',203);
define('USER_NOT_ALLOWED',204);

//definig change password attributes

define('PASSWORD_CHANGED',301);
define('PASSWORD_DO_NOT_MATCH',302);
define('PASSWORD_NOT_CHANGED',303);

//definig scan qr progress msg
define('INVALID_QR',401);
define('QR_ALREADY_USED',402);

//definig success msg
define('SUCCESS',602);
define('FAILED',603);
