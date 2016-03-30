<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
  <meta name="viewport" content="user-scalable=no,width=device-width, initial-scale=1">

<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Favicons -->
<link href="catalog/assets/images/favicon.ico" rel="icon" />
<link rel="shortcut icon" href="catalog/assets/images/favicon.ico">
<link rel="apple-touch-icon" href="catalog/assets/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="catalog/assets/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="catalog/assets/images/apple-touch-icon-114x114.png">

 <?php if($img_for_social){ ?>
  <meta property="og:title" content="<?php echo $title; ?>" />
  <meta property="og:description" content="<?php echo $description; ?>" />
  <meta property="og:type" content="website" />
  <meta property="og:image" content="<?php echo $img_for_social;?>" />

  <meta name="mrc__share_title" content="<?php echo $title; ?>" />
  <meta name="mrc__share_description" content="<?php echo $description; ?>" />
  <link rel="image_src" href="<?php echo $img_for_social;?>" />
 <?php } ?>

  <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <!-- Template core CSS -->
  <link href="catalog/view/theme/cityindex_2/assets/css/styles.css" rel="stylesheet">
  <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>

  <script type="text/javascript">
    var mobile = <?php echo $mobile ;?>;
    var tablet = <?php echo $tablet ;?>;
  </script>

  <?php echo $google_analytics; ?>


</head>
<body class="<?php echo $class; ?>">
<nav class="navbar   headermenu mb-0 ">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="row mb-8 sm-mb-19">
        <div class="col-xs-12">
            <div class="navbar-header headermenu__navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand hidden-xs " href="#">
                    <div class="menulogo"></div>
                </a>
                <a class="navbar-brand navbar-right headermenu__bbalogopos hidden-xs" href="#">
                    <div class="logobba"></div>
                </a>
                <a class="navbar-brand visible-xs" href="#">
                    <div class="menulogo"></div>
                </a>
                <a class=" visible-xs" href="#">
                    <div class="logobba"></div>
                </a>
            </div>
        </div>
        </div>
        <div class="row">
        <div class="col-xs-12">
            <hr class="hr_black"></div>
        </div>
        <div class="row">
        <div class="col-xs-12">
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse headermenu__collapse " id="menu">
                <ul class="nav navbar-nav headermenu__collapse__menulist robo_reg">
                    <li><a href="about_us">О проекте </a></li>
                    <li><a href="/list-media">Медиа</a></li>
                    <li><a href="/list-sport">Спорт</a></li>
                    <li><a href="/list-cultura">Культура</a></li>
                    <li><a href="/list-economika">Экономика</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right headermenu__collapse__menulist--right robo_reg hidden">
                    <li class="mr-16"><a href="#">Заказчикам</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div></div>
    </div>
    <!-- /.container -->
</nav>
