<!DOCTYPE html>
<html lang="vi">

<!-- Mirrored from laquespa.com/gioi-thieu by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 29 Apr 2023 08:53:07 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<head>
    <!-- Basehref -->
    <base />

    <!-- UTF-8 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- Title, Keywords, Description -->
    <title>Lá Quê Spa</title>
    <meta name="keywords" content="#goidauthaomoc  #laquespa" />
    <meta name="description" content="laquespa" />

    <!-- Robots -->
    <meta name="robots" content="index,follow" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="upload/photo/logo.png" type="image/x-icon">

    <!-- Webmaster Tool -->

    <!-- GEO -->
    <meta name="geo.region" content="VN" />
    <meta name="geo.placename" content="Hồ Chí Minh" />
    <meta name="geo.position" content="10.823099;106.629664" />
    <meta name="ICBM" content="10.823099, 106.629664" />

    <!-- Author - Copyright -->
    <meta name='revisit-after' content='1 days' />
    <meta name="author" content="Lá quê" />
    <meta name="copyright" content="Lá quê - [laquespa@gmail.com]" />

    <!-- Facebook -->
    <meta property="og:type" content="object" />
    <meta property="og:site_name" content="Lá quê" />
    <meta property="og:title" content="Gội đầu thảo mộc" />
    <meta property="og:description" content="laquespa" />
    <meta property="og:url" content="gioi-thieu.html" />
    <meta property="og:image" content="thumbs/xx2/upload/seopage/index.html" />
    <meta property="og:image:alt" content="Gội đầu thảo mộc" />
    <meta property="og:image:type" content="" />
    <meta property="og:image:width" content="" />
    <meta property="og:image:height" content="" />

    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="laquespa@gmail.com" />
    <meta name="twitter:creator" content="Lá quê" />
    <meta property="og:url" content="gioi-thieu.html" />
    <meta property="og:title" content="Gội đầu thảo mộc" />
    <meta property="og:description" content="laquespa" />
    <meta property="og:image" content="thumbs/xx2/upload/seopage/index.html" />

    <!-- Canonical -->
    <link rel="canonical" href="gioi-thieu.html" />

    <!-- Chống đổi màu trên IOS -->
    <meta name="format-detection" content="telephone=no">

    <!-- Viewport -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">

    <!-- Css Files -->
    <link href="assets/css/cached3e9e.css?ver=1611968798" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <!-- Background -->

    <!-- Js Google Analytic -->

    <!-- Js Head -->
</head>

<body>
    <ul class="h-card hidden">
        <li class="h-fn fn">Lá quê</li>
        <li class="h-org org">Lá quê</li>
        <li class="h-tel tel">0899903333</li>
        <li><a class="u-url ul" href="index.html">http://laquespa.com/</a></li>
    </ul>
    <h1 class="hidden-seoh">Giới thiệu</h1>
    <header>
        <div class="topone">
            <div class="container-fluid">
                <div class="topone_flex flex ">
                    <div class="logo">
                        <a class="logo-header" href="#"><img onerror="this.src='thumbs/150x125x2/assets/images/noimage.png';" src="upload/photo/logo.png" /></a>
                    </div>
                    <div class="topone_left">
                        <marquee scrollamount="5"> Tinh túy thảo mộc Việt </marquee>
                    </div>
                    <div class="topone_right flex">
                        <div class="mangxahoi_header flex">
                            <a href="https://www.facebook.com/spalaque/" target="_blank"><img src="upload/photo/f1.png" alt="f1"></a>
                            <a href="#" target="_blank"><img src="upload/photo/f2.png" alt="f2"></a>
                            <a href="#" target="_blank"><img src="upload/photo/f3.png" alt="f3"></a>
                        </div>
                        <div class="btn_booking">
                            <a href="booking-now.html" title="Book now">Book now</a>
                        </div>
                        <div class="hotline">
                            <p>
                                <span>
                                    Hồ Chí Minh <strong>08 9990 3333</strong>
                                </span>
                                <span>
                                    Phan Thiết <strong>0252 389 3333</strong>
                                </span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu">
            <div class="container">
                <ul class="flex_row " id="main-nav">
                    <?php global $c; ?>
                    <li class="<?= $c == 'home' ? 'active' : '' ?>"><a class="transition" href="/" title="Trang chủ">Trang chủ</a></li>

                    <li class="<?= $c == 'introduce' ? 'active' : '' ?>"><a class="transition active" href="?c=introduce" title="Giới thiệu">Giới thiệu</a></li>

                    <li class="<?= $c == 'product' ? 'active' : '' ?>">
                        <a class="transition  downmn" href="?c=product" title="Sản phẩm">Sản phẩm</a>
                        <?php global $category_products; ?>
                        <ul>
                            <?php foreach ($category_products as $category_product) : ?>
                                <li>
                                    <a class="transition" title="<?= $category_product->name ?>" href="?c=product&category_id=<?= $category_product->id ?>"><?= $category_product->name ?></a>
                                </li>
                            <?php endforeach ?>
                        </ul>
                    </li>

                    <li class="<?= $c == 'service' ? 'active' : '' ?>">
                        <a class="transition  downmn" href="?c=service" title="Dịch vụ">Dịch vụ</a>
                        <?php global $category_services; ?>
                        <ul>
                            <?php foreach ($category_services as $category_service) : ?>
                                <li>
                                    <a class="transition" title="<?= $category_service->name ?>" href="?c=service&category_id=<?= $category_service->id ?>"><?= $category_service->name ?></a>
                                </li>
                            <?php endforeach ?>
                        </ul>
                    </li>

                    <li class="<?= $c == 'promotion' ? 'active' : '' ?>">
                        <a class="transition " href="?c=promotion" title="Khuyến mãi">Khuyến mãi</a>
                    </li>

                    <li class="<?= $c == 'post' ? 'active' : '' ?>">
                        <a class="transition " href="?c=post" title="góc làm đẹp">góc làm đẹp</a>
                    </li>

                    <li class="<?= $c == 'contact' ? 'active' : '' ?>"><a class="transition " href="?c=contact" title="Liên hệ">Liên hệ</a></li>

                </ul>
            </div>
        </div>
    </header>
    <!-- ---------------------- -->

    <div class="visible-xs showmnrp">
        <div class="title-rpmenu">
            <div class="btn-showmenu-wrap">
                Menu
                <div class="btn-showmenu">
                    <span></span>
                </div>
            </div>
        </div>
        <div id="responsive-menu">
            <div class="clearfix"></div>
            <div class="content">
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <?php
    global $cond;
    if ($cond == 'home') :
    ?>
        <div class="slider">
            <div id="jssor_1">
                <div data-u="loading" class="jssor_1_u_loadding">
                    <div class="jssor_1_u_loadding_div1"></div>
                    <div class="jssor_1_u_loadding_div2"></div>
                </div>
                <div data-u="slides" class="jssor_1_u_slides">
                    <?php
                    global $banners;
                    $serial = 0;
                    foreach ($banners as $banner) :
                        $serial++;
                    ?>
                        <div data-p="112.50" class="jssor_1_u_slides_dvp">
                            <a target="_blank" href="#" title="ảnh <?= $serial ?>">
                                <img data-u="image" onerror="this.src='thumbs/1366x700x2/assets/images/noimage.png';" src="upload/photo/<?= $banner->featured_image ?>" alt="ảnh 1" title="ảnh <?= $serial ?>" />
                            </a>
                        </div>
                    <?php endforeach ?>
                </div>
                <div data-u="navigator" class="jssorb05" data-autocenter="1">
                    <div data-u="prototype" class="jssorb05_prototype"></div>
                </div>
                <span data-u="arrowleft" class="jssora12l" data-autocenter="2"></span>
                <span data-u="arrowright" class="jssora12r" data-autocenter="2"></span>
            </div>
        </div>
    <?php else : ?>
        <div class="bn">
            <?php global $banners; ?>
            <?php foreach ($banners as $banner) : ?>
                <img onerror="this.src='thumbs/1366x350x2/assets/images/noimage.png';" src="upload/photo/<?= $banner->featured_image ?>" />
            <?php endforeach ?>
        </div>
        <div class="breadCrumbs">
            <div class="container">
                <div class="wrap-content">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a class="text-decoration-none" href="index.html"><span>Trang chủ</span></a></li>
                        <li class="breadcrumb-item active"><a class="text-decoration-none" href="gioi-thieu.html"><span>Giới thiệu</span></a></li>
                    </ol>
                    <script type="application/ld+json">
                        {
                            "@context": "https://schema.org",
                            "@type": "BreadcrumbList",
                            "itemListElement": [{
                                "@type": "ListItem",
                                "position": 1,
                                "name": "Gi\u1edbi thi\u1ec7u",
                                "item": "http:\/\/laquespa.com\/gioi-thieu"
                            }]
                        }
                    </script>
                </div>
            </div>
        </div>
    <?php endif ?>