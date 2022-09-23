<?php
function get_html_code($obj)
{
    $products = $obj['cart'];

    $html_code = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional //EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office"><head>
        <!--[if gte mso 9]><xml>
        <o:OfficeDocumentSettings>
        <o:AllowPNG/>
        <o:PixelsPerInch>96</o:PixelsPerInch>
        </o:OfficeDocumentSettings>
        </xml><![endif]-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width">
        <!--[if !mso]><!--><meta http-equiv="X-UA-Compatible" content="IE=edge"><!--<![endif]-->
        <title>Order Received</title>


        <style type="text/css" id="media-query">
        body {
    margin: 0;
    padding: 0; }

    table, tr, td {
    vertical-align: top;
    border-collapse: collapse; }

    .ie-browser table, .mso-container table {
    table-layout: fixed; }

    * {
    line-height: inherit; }

    a[x-apple-data-detectors=true] {
    color: inherit !important;
    text-decoration: none !important; }

    [owa] .img-container div, [owa] .img-container button {
    display: block !important; }

    [owa] .fullwidth button {
    width: 100% !important; }

    [owa] .block-grid .col {
    display: table-cell;
    float: none !important;
    vertical-align: top; }

    .ie-browser .num12, .ie-browser .block-grid, [owa] .num12, [owa] .block-grid {
    width: 500px !important; }

    .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {
    line-height: 100%; }

    .ie-browser .mixed-two-up .num4, [owa] .mixed-two-up .num4 {
    width: 164px !important; }

    .ie-browser .mixed-two-up .num8, [owa] .mixed-two-up .num8 {
    width: 328px !important; }

    .ie-browser .block-grid.two-up .col, [owa] .block-grid.two-up .col {
    width: 250px !important; }

    .ie-browser .block-grid.three-up .col, [owa] .block-grid.three-up .col {
    width: 166px !important; }

    .ie-browser .block-grid.four-up .col, [owa] .block-grid.four-up .col {
    width: 125px !important; }

    .ie-browser .block-grid.five-up .col, [owa] .block-grid.five-up .col {
    width: 100px !important; }

    .ie-browser .block-grid.six-up .col, [owa] .block-grid.six-up .col {
    width: 83px !important; }

    .ie-browser .block-grid.seven-up .col, [owa] .block-grid.seven-up .col {
    width: 71px !important; }

    .ie-browser .block-grid.eight-up .col, [owa] .block-grid.eight-up .col {
    width: 62px !important; }

    .ie-browser .block-grid.nine-up .col, [owa] .block-grid.nine-up .col {
    width: 55px !important; }

    .ie-browser .block-grid.ten-up .col, [owa] .block-grid.ten-up .col {
    width: 50px !important; }

    .ie-browser .block-grid.eleven-up .col, [owa] .block-grid.eleven-up .col {
    width: 45px !important; }

    .ie-browser .block-grid.twelve-up .col, [owa] .block-grid.twelve-up .col {
    width: 41px !important; }

    @media only screen and (min-width: 520px) {
    .block-grid {
        width: 500px !important; }
    .block-grid .col {
        vertical-align: top; }
        .block-grid .col.num12 {
        width: 500px !important; }
    .block-grid.mixed-two-up .col.num4 {
        width: 164px !important; }
    .block-grid.mixed-two-up .col.num8 {
        width: 328px !important; }
    .block-grid.two-up .col {
        width: 250px !important; }
    .block-grid.three-up .col {
        width: 166px !important; }
    .block-grid.four-up .col {
        width: 125px !important; }
    .block-grid.five-up .col {
        width: 100px !important; }
    .block-grid.six-up .col {
        width: 83px !important; }
    .block-grid.seven-up .col {
        width: 71px !important; }
    .block-grid.eight-up .col {
        width: 62px !important; }
    .block-grid.nine-up .col {
        width: 55px !important; }
    .block-grid.ten-up .col {
        width: 50px !important; }
    .block-grid.eleven-up .col {
        width: 45px !important; }
    .block-grid.twelve-up .col {
        width: 41px !important; } }

    @media (max-width: 520px) {
    .block-grid, .col {
        min-width: 320px !important;
        max-width: 100% !important;
        display: block !important; }
    .block-grid {
        width: calc(100% - 40px) !important; }
    .col {
        width: 100% !important; }
        .col > div {
        margin: 0 auto; }
    img.fullwidth, img.fullwidthOnMobile {
        max-width: 100% !important; }
    .no-stack .col {
        min-width: 0 !important;
        display: table-cell !important; }
    .no-stack.two-up .col {
        width: 50% !important; }
    .no-stack.mixed-two-up .col.num4 {
        width: 33% !important; }
    .no-stack.mixed-two-up .col.num8 {
        width: 66% !important; }
    .no-stack.three-up .col.num4 {
        width: 33% !important; }
    .no-stack.four-up .col.num3 {
        width: 25% !important; } }

        </style>
    </head>
    <body class="clean-body" style="margin: 0;padding: 0;-webkit-text-size-adjust: 100%;background-color: #f1f1f1;">
    <style type="text/css" id="media-query-bodytag">
        @media (max-width: 520px) {
        .block-grid {
            min-width: 320px!important;
            max-width: 100%!important;
            width: 100%!important;
            display: block!important;
        }

        .col {
            min-width: 320px!important;
            max-width: 100%!important;
            width: 100%!important;
            display: block!important;
        }

            .col > div {
            margin: 0 auto;
            }

        img.fullwidth {
            max-width: 100%!important;
        }
                img.fullwidthOnMobile {
            max-width: 100%!important;
        }
        .no-stack .col {
                    min-width: 0!important;
                    display: table-cell!important;
                }
                .no-stack.two-up .col {
                    width: 50%!important;
                }
                .no-stack.mixed-two-up .col.num4 {
                    width: 33%!important;
                }
                .no-stack.mixed-two-up .col.num8 {
                    width: 66%!important;
                }
                .no-stack.three-up .col.num4 {
                    width: 33%!important
                }
                .no-stack.four-up .col.num3 {
                    width: 25%!important
                }
        }
    </style>
    <!--[if IE]><div class="ie-browser"><![endif]-->
    <!--[if mso]><div class="mso-container"><![endif]-->
    <table class="nl-container" style="border-collapse: collapse;table-layout: fixed;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;vertical-align: top;min-width: 320px;Margin: 0 auto;background-color: #f1f1f1;width: 100%" cellpadding="0" cellspacing="0">
        <tbody>
        <tr style="vertical-align: top">
            <td style="word-break: break-word;border-collapse: collapse !important;vertical-align: top">
        <!--[if (mso)|(IE)]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td align="center" style="background-color: #FFFFFF;"><![endif]-->

        <div style="background-color:transparent;">
        <div style="Margin: 0 auto;min-width: 320px;max-width: 500px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: #ffffff;" class="block-grid ">
            <div style="border-collapse: collapse;display: table;width: 100%;background-color:transparent;">
            <!--[if (mso)|(IE)]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="background-color:transparent;" align="center"><table cellpadding="0" cellspacing="0" border="0" style="width: 500px;"><tr class="layout-full-width" style="background-color:transparent;"><![endif]-->

                <!--[if (mso)|(IE)]><td align="center" width="500" style=" width:500px; padding-right: 0px; padding-left: 0px; padding-top:5px; padding-bottom:5px; border-top: 0px solid transparent; border-left: 0px solid transparent; border-bottom: 0px solid transparent; border-right: 0px solid transparent;" valign="top"><![endif]-->
                <div class="col num12" style="min-width: 320px;max-width: 500px;display: table-cell;vertical-align: top;">
                <div style="background-color: transparent; width: 100% !important;">
                <!--[if (!mso)&(!IE)]><!--><div style="border-top: 0px solid transparent; border-left: 0px solid transparent; border-bottom: 0px solid transparent; border-right: 0px solid transparent; padding-top:0px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;"><!--<![endif]-->


                        <div align="center" class="img-container center  autowidth  fullwidth" style="padding-right: 0px;  padding-left: 0px;">
    <!--[if mso]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="padding-right: 0px; padding-left: 0px;" align="center"><![endif]-->
    <img class="center" align="center" border="0" src="https://www.simplysufixprs.net/assets/images/logo-sufiexp.png" alt="Image" title="Image" style="outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;clear: both;display: block !important;border: 0;height: auto;float: none;" width="200">
    <!--[if mso]></td></tr></table><![endif]-->
    </div>



                        <!--[if mso]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"><![endif]-->
    <div style="color:#555555;line-height:120%;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif; padding-right: 10px; padding-left: 10px; padding-top: 30px; padding-bottom: 10px;">
        <div style="font-size:12px;line-height:14px;color:#555555;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif;text-align:left;">
        <p style="margin: 0;font-size: 14px;line-height: 17px;text-align: center"><span style="font-size: 20px; line-height: 31px; color: rgb(241, 0, 0);"><strong>Order Received</strong></span></p>
        <p style="margin: 0;font-size: 14px;line-height: 17px;text-align: center"><span style="font-size: 18px; color: rgb(0, 0, 0)">Thank you for placing order on Simply Sufi XPRS<br /><br />Our representative will call you to confirm your order soon. If you do not receive a call within few hours, please call us at <strong>042-111 779 977</strong>.<br /><br />
    If you have questions about your order, you can email us at <strong>orders@simplysufi.com</strong></span></p>
        </div>
    </div>
    <!--[if mso]></td></tr></table><![endif]-->

    <!--[if mso]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"><![endif]-->
    <div style="color:#555555;line-height:120%;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif; padding-right: 10px; padding-left: 10px; padding-top: 15px; padding-bottom: 15px;">
        <div style="font-size:12px;line-height:14px;color:#555555;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif;text-align:left;">
        <p style="margin: 0;font-size: 14px;line-height: 17px;text-align: center"><span style="font-size: 18px; color: rgb(0, 0, 0)"><strong>Your Order ID:</strong></span></p>
        <p style="margin: 0;font-size: 14px;line-height: 17px;text-align: center"><strong><span style="font-size: 22px; line-height: 21px; color: rgb(241, 0, 0);">' . $obj['order_id'] . '</span></strong></p></div>
    </div>
    <!--[if mso]></td></tr></table><![endif]-->

    <!--[if mso]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"><![endif]-->
    <div style="color:#555555;line-height:120%;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif; padding-right: 10px; padding-left: 10px; padding-top: 30px; padding-bottom: 10px;">
        <div style="font-size:12px;line-height:14px;color:#555555;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif;text-align:left;">
        <p style="margin: 0;font-size: 14px;line-height: 17px;text-align: center"><span style="font-size: 20px; line-height: 31px; color: rgb(241, 0, 0);"><strong>Cart Info</strong></span></p>
        <p style="margin: 0;font-size: 14px;line-height: 17px;text-align: center"><span style="font-size: 18px; color: #666666">Placed on ' . date('h:i:s a m/d/Y', strtotime($obj['datetime']))  . '</span></p>
        </div>
    </div>
    <!--[if mso]></td></tr></table><![endif]-->

    <!--[if mso]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"><![endif]-->
    <div style="color:#555555;line-height:120%;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif; padding-right: 10px; padding-left: 10px; padding-top: 30px; padding-bottom: 10px;">
        <hr style="color: #000000;" />
        <table width="100%" border="0" cellpadding="5" cellspacing="5">';
        for ($j = 0; $j < count($products['products']); $j++) {
            $html_code .= '<tr>
                <td width="100"><img src="' . $products['products'][$j]['image'] . '" width="100" /></td><td><p style="color:#000000;margin:0 0 15px 0;"><strong>' . $products['products'][$j]['name'] . '</strong></p>
                <p style="color:#333333; margin:0 0 15px 0;">' . "PKR" . " " . $products['products'][$j]['price'] . ' x ' . $products['products'][$j]['quantity'] . '</p>
                <p style="color:#666666; margin:0;">' . "" . '</p></td><td align="right"><p style="color:#000000;"><strong>' . "PKR" . " " . (float) $products['products'][$j]['price'] * (float) $products['products'][$j]['quantity'] . '</strong> </p></td>
                </tr>';
        }
    $html_code .= '</table>
        <hr style="color: #000000;" />
        <table width="100%" border="0" cellpadding="5" cellspacing="5">
        <tr>
        <td><p style="color:#000000;"><strong>Total</strong></p></td><td align="right"><p style="color: rgb(241, 0, 0);"><strong>' . "PKR" . " " . $obj['total_bill'] . '</strong></p></td>
        </tr>
        </table>
    </div>
    <!--[if mso]></td></tr></table><![endif]-->

    <!--[if mso]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"><![endif]-->
    <div style="color:#555555;line-height:120%;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif; padding-right: 10px; padding-left: 10px; padding-top: 30px; padding-bottom: 10px;">
        <div style="font-size:12px;line-height:14px;color:#555555;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif;text-align:left;">
        <p style="margin: 0;font-size: 14px;line-height: 17px;text-align: center"><span style="font-size: 20px; line-height: 31px; color: rgb(241, 0, 0);"><strong>Delivery Info</strong></span></p>
        </div>
    </div>
    <!--[if mso]></td></tr></table><![endif]-->

    <!--[if mso]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"><![endif]-->
    <div style="color:#555555;line-height:120%;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif; padding-right: 10px; padding-left: 10px; padding-top: 30px; padding-bottom: 10px;">
        <table width="100%" border="0" cellpadding="5" cellspacing="5">
        <tr>
        <td width="40%"><p style="color:#000000;"><strong>Name</strong></p></td><td width="60%"><p style="color:#000000;">' . $obj['name'] . '</p></td>
        </tr>
        <tr>
        <td><p style="color:#000000;"><strong>Email</strong></p></td>
        <td><p style="color:#000000;">' . $obj['email'] . '</p></td>
        </tr>
        <tr>
        <td><p style="color:#000000;"><strong>Phone</strong></p></td>
        <td><p style="color:#000000;">' . $obj['mobile'] . '</p></td>
        </tr>
        <tr>
        <td><p style="color:#000000;"><strong>City</strong></p></td>
        <td><p style="color:#000000;">' . $obj['city'] . '</p></td>
        </tr>
        <tr>
        <td><p style="color:#000000;"><strong>Delivery Address</strong></p></td>
        <td><p style="color:#000000;">' . $obj['address'] . '</p></td>
        </tr>
        
        <tr>
        <td><p style="color:#000000;"><strong>Delivery Instructions</strong></p></td>
        <td><p style="color:#000000;">' . $obj['comment'] . '</p></td>
        </tr>
        <tr>
        <td><p style="color:#000000;"><strong>Payment Method</strong></p></td>
        <td><p style="color:#000000;">Cash On Delivery</p></td>
        </tr>
        </table>
    </div>
    <!--[if mso]></td></tr></table><![endif]-->

                        <!--[if mso]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"><![endif]--><!--[if mso]></td></tr></table><![endif]--><!--[if mso]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"><![endif]--><!--[if mso]></td></tr></table><![endif]-->







                        <!--[if mso]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"><![endif]--><!--[if mso]></td></tr></table><![endif]-->



                        <!--[if mso]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"><![endif]-->
    <div style="color:#555555;line-height:120%;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif; padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 30px;">
        <div style="font-size:12px;line-height:14px;color:#555555;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif;text-align:left;">
        <p style="margin: 0;font-size: 14px;line-height: 17px;text-align: center"><span style="font-size: 14px; line-height: 21px; color: #666666;"><strong>Email:</strong> orders@simplysufi.com<br />
            <strong>Call:</strong> 042-111 779 977 <br />
            <strong>Timings:</strong> 10:00 AM to 01:00 AM</span></p>
        </div>
    </div>
    <!--[if mso]></td></tr></table><![endif]-->



                        <!--[if mso]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"><![endif]--><!--[if mso]></td></tr></table><![endif]-->


                <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->
                </div>
                </div>
            <!--[if (mso)|(IE)]></td></tr></table></td></tr></table><![endif]-->
            </div>
        </div>
        </div>
        <div style="background-color:transparent;">
        <div style="Margin: 0 auto;min-width: 320px;max-width: 500px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: #4A443E;" class="block-grid ">
            <div style="border-collapse: collapse;display: table;width: 100%;background-color:#f6f6f6;">
            <!--[if (mso)|(IE)]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="background-color:transparent;" align="center"><table cellpadding="0" cellspacing="0" border="0" style="width: 500px;"><tr class="layout-full-width" style="background-color:#4A443E;"><![endif]-->

                <!--[if (mso)|(IE)]><td align="center" width="500" style=" width:500px; padding-right: 0px; padding-left: 0px; padding-top:5px; padding-bottom:5px; border-top: 0px solid transparent; border-left: 0px solid transparent; border-bottom: 0px solid transparent; border-right: 0px solid transparent;" valign="top"><![endif]-->
                <div class="col num12" style="min-width: 320px;max-width: 500px;display: table-cell;vertical-align: top;">
                <div style="background-color: transparent; width: 100% !important;">
                <!--[if (!mso)&(!IE)]><!--><div style="border-top: 0px solid transparent; border-left: 0px solid transparent; border-bottom: 0px solid transparent; border-right: 0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;"><!--<![endif]-->


                        <!--[if mso]><table width="100%" cellpadding="0" cellspacing="0" border="0"><tr><td style="padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"><![endif]-->
    <div style="color:#FFFFFF;line-height:120%;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif; padding-right: 10px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px;">
        <div style="font-size:12px;line-height:14px;color:#333333;font-family:Arial, \'Helvetica Neue\', Helvetica, sans-serif;text-align:left;"><p style="margin: 0;font-size: 14px;line-height: 17px;text-align: center"><span style="font-size: 12px; line-height: 14px;">Copyright &copy; '. date("Y") .' Simply Sufi XPRS. All Rights Reserved</span></p></div>
    </div>
    <!--[if mso]></td></tr></table><![endif]-->


                <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->
                </div>
                </div>
            <!--[if (mso)|(IE)]></td></tr></table></td></tr></table><![endif]-->
            </div>
        </div>
    </div>   <!--[if (mso)|(IE)]></td></tr></table><![endif]-->
            </td>
    </tr>
    </tbody>
    </table>
    <!--[if (mso)|(IE)]></div><![endif]-->


    </body></html>';

    return $html_code;
}
