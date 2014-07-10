<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
  <meta charset="UTF-8" />
  <title><?php
  if ($title) {
    echo $title; 
    if (isset($_GET['page'])) { 
      echo " - ". ((int) $_GET['page'])." ".$text_page;
    }
  } ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
  <meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
  <meta name="keywords" content="<?php echo $keywords; ?>" />
  <?php } ?>
  <meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
  <meta property="og:type" content="website" />
  <meta property="og:url" content="<?php echo $og_url; ?>" />
  <?php if ($og_image) { ?>
  <meta property="og:image" content="<?php echo $og_image; ?>" />
  <?php } else { ?>
  <meta property="og:image" content="<?php echo $logo; ?>" />
  <?php } ?>
  <meta property="og:site_name" content="<?php echo $name; ?>" />
  <?php if ($icon) { ?>
  <link href="<?php echo $icon; ?>" rel="icon" />
  <?php } ?>
  <?php foreach ($links as $link) { ?>
  <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <!-- css -->
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/stylesheet.css" />
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/fast_order.css" />
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/simple_menu.css" />
  <?php foreach ($styles as $style) { ?>
  <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
  <!-- js -->
  <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
  
  <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
  <script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js"></script>
  
  <script type="text/javascript" src="catalog/view/javascript/common.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/fast_order.js"></script>
  <?php foreach ($scripts as $script) { ?>
  <script type="text/javascript" src="<?php echo $script; ?>"></script>
  <?php } ?>
  <!--[if IE 7]> 
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
  <![endif]-->
  <!--[if lt IE 7]>
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
  <script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
  <script type="text/javascript">
  DD_belatedPNG.fix('#logo img');
  </script>
  <![endif]-->
  <?php if ($stores) { ?>
  <script type="text/javascript"><!--
  $(document).ready(function() {
  <?php foreach ($stores as $store) { ?>
  $('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
  <?php } ?>
  });
  //--></script>
  <?php } ?>
  <?php echo $google_analytics; ?>
</head>

<!-- Start header -->
<body class="<?php echo empty($this->request->get['route']) ? 'common-home' : str_replace('/', '-', $this->request->get['route']); ?>">
  <div class="main-shining">
    <div class="row-1">
      <div id="header">
        <?php if ($logo) { ?>
        <div id="logo">
          <a rel="nofollow" href="<?php echo $home; ?>">
            <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
          </a>
        </div>
        <?php } ?>
        <div class="header-top"><!-- Header-top -->
          <div class="top-menu">
            <div class="main-menu">
              <span><a rel="nofollow" href="<?php echo('/about'); ?>">О нас</a></span>
              <span><a rel="nofollow" href="<?php echo('/niva-news'); ?>">Новости</a></span>
              <span><a rel="nofollow" href="<?php echo('/reviews'); ?>">Отзывы</a> </span>
              <span> <a rel="nofollow" href="<?php echo('/delivery'); ?>">Доставка и оплата</a></span>
              <span><a rel="nofollow" href="<?php echo('/contact'); ?>">Контакты</a></span>
            </div>
            <div class="clear"></div>
          </div>
          <div class="wrapper"><!-- Wrapper -->
            <?php //echo $language; ?> <!-- Multi language store -->
            <?php //echo $currency; ?> <!-- Multi coint store -->
            <div class="header_text"> <!-- Contact block in header -->
              <div class="header_adr"><p>Работаем для Вас с 8:00 до 19:00</p></div>
              <div class="header_phone">
                <span class="kievstar">+38 (000) 000 0000</span>
                <span class="life">+38 (063) 0 100 500</span><br />
                <p class="mts">+38 (000) 000 0000</p>
                <!-- CallBack -->
                <div id="callme">
                  <!-- Callme-->
                  <a class="callme" href="./index.php?route=module/callme/open">Обратный звонок</a>
                  <script type="text/javascript"><!--
                  $('.callme').colorbox({iframe:true,width: 300,height: 445});
                  //--></script>
                  <!-- END Callme-->
                </div>
                <!-- CallBack -->
              </div>
            </div>
            <div class="header-top1"> <!-- Bascket -->
              <div class="cart-position">
                <div class="cart-inner"><?php echo $cart; ?></div>
                <div class="but_chekout">
                  <a rel="nofollow" href="<?php echo $checkout; ?>">
                    <span><img src="/image/checkout.png"/></span>
                  </a>
                </div>
              </div>
              <div class="clear"></div>
            </div>
            <div id="welcome"> <!-- LogOut or Registered -->
              <?php if (!$logged) { 
                $text_welcome = '<a rel="nofollow" href="/simpleregister">Зарегистрироваться</a> | <a rel="nofollow" href="/login">Войти</a>';
                echo $text_welcome; 
              } else { 
                echo $text_logged;
              } ?>
            </div>
            <div class="clear"></div>
          </div><!-- Wrapper -->
        </div><!-- Header-top -->
        <div id="search">
          <div class="button-search"></div>
          <span class="search-bg">
            <input type="text" name="search" placeholder="Поиск" value="" onclick="this.value = '';" onkeydown="this.style.color = '#ccc';" />
          </span>
        </div>
        <div class="clear"></div>
        <div class="site_description">
          <p>Специализированный интернет-магазин для автомомбилей Нива: ВАЗ 2121, ВАЗ 21213, ВАЗ 21214, Chevrolet NIVA ВАЗ 2123</p>
        </div>
        <?php if ($categories) { ?>
        <div id="menu">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li>
              <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?>
              </a>
              <?php if ($category['children']) { ?>
              <div>
                <?php for ($i = 0; $i < count($category['children']);) { ?>
                <ul>
                  <?php $j = $i + ceil(count($category['children']) / $category['column']); 
                  for (; $i < $j; $i++) { 
                    if (isset($category['children'][$i])) { ?>
                  <li id="<?php echo 'menu_num_'.$i; ?>">
                    <a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
                    <!-- Added menu 3rd level-->
                    <?php if( $category['children'][$i]['children'] ) { ?>
                    <div>
                      <ul>
                        <?php foreach( $category['children'][$i]['children'] as $menu3item ) { ?>
                        <li>
                          <a href="<?php echo $menu3item['href']; ?>"><?php echo $menu3item['name']; ?></a>
                        </li><?php } ?>
                      </ul>
                    </div><?php } ?>
                    <!-- Added menu 3rd level-->
                  </li><?php } } ?>
                </ul><?php } ?>
              </div><?php } ?>
            </li><?php } ?>
          </ul>
        </div><!-- Menu -->
        <?php } ?>
        <div class="clear"></div>
      </div><!-- Header -->
    </div><!-- Row-1 -->
    <div class="main-container">
      <p id="back-top"><a rel="nofollow" href="#top"><span></span></a></p>
      <div id="container">
        <div id="notification"></div>
<!-- End header -->