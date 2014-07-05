<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<title><?php if ($title) { ?><?php echo($title); ?><?php } ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/fast_order.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/cloud-zoom.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/simple_menu.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/slideshow.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/accordion.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/livesearch.css"/>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/theme_free/stylesheet/topmenu.css" media="screen" />
<!--[if  IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 8]>
<div style='clear:both;height:59px;padding:0 15px 0 15px;position:relative;z-index:10000;text-align:center;'>
<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode">
<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a></div>
<![endif]-->
<!--[if  IE 8]>
  <style>
    #header #search input { padding-top:14px; padding-bottom:1px; }        
    .success { border:1px solid #e7e7e7;}
    #currency a  span { padding-top:1px;}
  </style>
<![endif]-->
<!--[if  IE 9]>
  <style>
    #currency a  span { padding-top:1px;}
    a.button { line-height:16px;}
    .product-grid { padding-right:8px;}
  </style>
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/easyTooltip.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/fast_order.js"></script>
<script type="text/javascript" src="catalog/view/javascript/free_popup_cart.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jQuery.equalHeights.js"></script>
<script type="text/JavaScript" src="catalog/view/javascript/cloud-zoom.1.0.2.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jscript_zjquery.anythingslider.js"></script>
<script type="text/javascript" src="catalog/view/javascript/superfish.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/script.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/nivo-slider/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.maskedinput-1.3.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.placeholder.min.js"></script>
<script type="text/javascript" src="/catalog/view/javascript/ddaccordion.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<script>
var cm_style = "vk";
</script>
<script type="text/javascript" charset="utf-8" src="/callme/js/callme.js"></script>

<!--[if IE]>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4-iefix.js"></script>
<![endif]-->
<script type="text/javascript" 	src="catalog/view/javascript/livesearch.js"></script>
<!--[if IE]>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4-iefix.js"></script>
<![endif]-->

<script type="text/javascript">
jQuery(document).ready(function() {
  setTimeout(function(){
    jQuery('.header_phone').append(jQuery('#callme'));
    jQuery('#cphone').attr('placeholder','+38(000)000-0000');
    jQuery('#cphone').attr('mask','+38(999)999-9999');
    jQuery('#cphone').mask('+38(999)999-9999');
    jQuery('#cphone').val('+38(___)___-____');
    jQuery('#cphone').attr('value','+38(___)___-____');
  }, 2000);
});
</script>

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />

<!-- Put this script tag to the <head> of your page -->
<script type="text/javascript" src="//vk.com/js/api/openapi.js?112"></script>
<script type="text/javascript">
  VK.init({apiId: 4361316, onlyWidgets: true});
</script>
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
        <div class="header-top">
          <div class="top-menu">
            <ul class="main-menu">
              <li class="item-0">
                <a rel="nofollow" href="<?php echo('/about'); ?>">О нас</a>
              </li>
              <li class="item-6">
                <a rel="nofollow" href="<?php echo('/niva-news'); ?>">Новости</a>
              </li>
              <li class="item-6">
                <a rel="nofollow" href="<?php echo('/reviews'); ?>">Отзывы</a>
              </li>
              <li class="item-6">
                <a rel="nofollow" href="<?php echo('/delivery'); ?>">Доставка и оплата</a>
              </li>
              <li class="item-6">
                <a rel="nofollow" href="<?php echo('/contact'); ?>">Контакты</a>
              </li>
            </ul>
            <div class="clear"></div>
          </div>
          <div class="wrapper">
            <?php echo $language; ?>
            <?php echo $currency; ?>
            <div class="header_text"> <!-- Блок с контактами в шапке -->
                <div class="header_adr"><p>Работаем для Вас с 8:00 до 19:00</p></div>
                <div class="header_phone">
                  <span class="kievstar">+38 (000) 000 0000</span>
                  <span class="life">+38 (063) 0 100 500</span><br />
                  <p class="mts">+38 (000) 000 0000</p>
                  <!-- Cap -->
                  <div class="callme" class="callme_viewform">Обратный звонок</div>  
                  <!-- Cap -->
                </div>
            </div>
            <div class="header-top1"> <!-- Корзина -->
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
            <div id="welcome"> <!-- Войти или зарегистрироваться -->
              <?php if (!$logged) { ?>
                <?php
                $text_welcome = '<a rel="nofollow" href="/simpleregister">Зарегистрироваться</a> | <a rel="nofollow" href="/login">Войти</a>';
                echo $text_welcome; ?>
              <?php } else { ?>
                <?php echo $text_logged; ?>
              <?php } ?>
            </div>
            <div class="clear"></div>
          </div>
        </div>
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
      </div>
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
              <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
              <?php for (; $i < $j; $i++) { ?>
              <?php if (isset($category['children'][$i])) { ?>
              <li id="<?php echo 'menu_num_'.$i; ?>">
                <a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
                <!-- Added menu 3rd level-->
                <?php if( $category['children'][$i]['children'] ) { ?>
                <div>
                  <ul>
                    <?php foreach( $category['children'][$i]['children'] as $menu3item ) { ?>
                    <li>
                      <a href="<?php echo $menu3item['href']; ?>"><?php echo $menu3item['name']; ?></a>
                    </li>
                    <?php } ?>
                  </ul>
                </div>
                <?php } ?>
                <!-- Added menu 3rd level-->
              </li>
              <?php } ?>
              <?php } ?>
            </ul>
            <?php } ?>
          </div>
          <?php } ?>
        </li>
        <?php } ?>
      </ul>
    </div>
    <div class="clear"></div>
    <?php } ?>
    <div class="main-container">
      <p id="back-top"><a rel="nofollow" href="#top"><span></span></a></p>
      <div id="container">
        <div id="notification"></div>
        <!-- End header -->