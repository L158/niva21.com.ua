<?php

if(isset($_GET['logo'])) {
	$img_encoded = "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";
	header("Content-type: image/gif");
	header("Cache-control: public");
	echo base64_decode($img_encoded);
	exit(1);
} else {
	header ('Content-type: text/html; charset=utf-8');
}

 
$ioncube_loader = false;
$ioncube_loader_version = false;
$info = "";

if ( extension_loaded('ionCube Loader') ) {

	$ioncube_loader = true;
	if ( function_exists('ioncube_loader_version') ) {
		$ioncube_loader_version = ioncube_loader_version();
	}
	
}

if ($ioncube_loader && $ioncube_loader_version) {

	if (version_compare($ioncube_loader_version, '3.2', "<=")) {
		$info .= $language[$lang]['ver_3.0'];
	}
	if (version_compare($ioncube_loader_version, '4.0', "<") && version_compare($ioncube_loader_version, '3.2', ">")) {
		$info .= $language[$lang]['ver_4.0'];
	}
	if (version_compare($ioncube_loader_version, '4.4', "<") && version_compare($ioncube_loader_version, '4.0', ">=")) {
		$info .= $language[$lang]['ver_4.2'];
	}
	if (version_compare($ioncube_loader_version, '4.4', ">=")) {
		$info .= "";
	}
	
	if (version_compare($ioncube_loader_version, '8.0', ">=")) {
		$info .= $language[$lang]['ver_8.0'];
		// 3.08.2013
	}
}


$tester_version = '1.0.0';

$language['en'] = array(
	'ver_3.0' => "It is damn old! It is hard to believe, that someone still use it!",
	'ver_4.0' => "It is a realy old version. You should ask your hosting provider for update.",
	'ver_4.2' => "This will work for software made in 2012 and earlier, but you really should ask your hosting provider for update.",
	'ver_8.0' => "Holy shit! ionCube  ".$ioncube_loader_version."?! When I wrote this code the last version was 4.4.1. By the way, I'm probably already dead. Anyway, be good my friend. Everything gonna be fine.",
	'title'   => "Checking ionCube Loader on this web server ...",
	'ioncube_loader_version' => "ioncube Loader version",
	'update_tester' => 'Update this tester',
	'concact_povider' => 'Concact your hosting provider for more details.',
	'not_found' => 'not found',
	'unknown' => 'unknown',
	'installed' => 'installed',
);

$language['ru'] = array(
	'ver_3.0' => "Охуеть! Вот это у Вас раритет!",
	'ver_4.0' => "Это очень старая версия - попросите у хостера обновление.",
	'ver_4.2' => "Эта версия будет работать с ПО, которое было выпущено в 2012 году и ранее, но уже пора просить у хостера обновления",
	'ver_8.0' => "Вот блин! ionCube ".$ioncube_loader_version."?! Когда я писал этот код, то последней версией был 4.4.1. Кстати, вполне возможно, что я уже умер. Погладь за меня кота... :(",
	'title'   => "Проверка ionCube Loader на этом сервере ...",
	'ioncube_loader_version' => "Версия ioncube Loader",
	'update_tester' => 'Обновить этот тестер',
	'concact_povider' => 'Свяжитесь с хостером для решения вопроса.',
	'not_found' => 'не обнаружен',
	'unknown' => 'неизвестно',
	'installed' => 'установлен',
);

if (isset($_GET['lang']) && isset($language[$_GET['lang']])) $lang = $_GET['lang'];
else $lang = 'en';

if ($lang == 'ru') {
	$update_url = 'http://shop.workshop200.com/blog?news_id=6';
} else {
	$update_url = 'http://shop.workshop200.com/en/blog?news_id=6';
}

?>
<html>
<head>

<style>
body
{
	font-size: 14px;
	font-family: Verdana, Helvetica, Arial;
}
h1 {
	font-size: 1.3em;
}
div.main
{
	text-align: left;
	
}
.clear {
	clear: both; 
	width: 100%; 
	height: 0px;
}
.ok {
	color: green;
}
.bad {
	color: red;
}
.center {
	margin: 0 auto;
	width: 50%;
	text-align: center;
	top: 20px;
	position: relative;
	border: 1px solid #F0F0F0;
	padding: 20px;
	border-radius: 5px;
}
.footer {
	padding-top: 30px;
	text-align: right;
	font-size: 0.8em;
}
.lang, .lang a {
	text-align: right;
	font-size: 1.1em;
}
</style>

<title>ionCube Loader Tester</title>
</head>
<body>
<div class="center">
	<div class="lang">
		<a href="<?php echo $_SERVER['PHP_SELF']; ?>">English</a>
		<a href="<?php echo $_SERVER['PHP_SELF']; ?>?lang=ru">Русский</a>
	</div>
	<div class="main">
		<img src="<?php echo $_SERVER['PHP_SELF']; ?>?logo=1" style="float: left; padding: 0 10px 10px 0;">

		<h1><?php echo $language[$lang]['title'];?></h1>

		<?php

		if ($ioncube_loader) {
			$color = 'ok';
			echo '<b>ionCube Loader</b>: <span class="'.$color.'">'.$language[$lang]['installed'].'</span>';
			echo '<br />';
			
			if ($ioncube_loader_version) {
				echo '<b>'.$language[$lang]['ioncube_loader_version'].'</b>: '.$ioncube_loader_version;
				echo '<br />';
				echo $info;
			} else {
				$color = 'bad';
				echo '<b>'.$language[$lang]['ioncube_loader_version'].'</b>: <span class="'.$color.'\">'.$language[$lang]['unknown'].'</span>';
				echo '<br />';
				echo $language[$lang]['concact_povider'];
			}
		} else {
			$color = 'bad';
			echo '<b>ionCube Loader</b>: <span class="'.$color.'">'.$language[$lang]['not_found'].'</span>';
			echo '<br />';
			echo $language[$lang]['concact_povider'];
		}
		
		
		?>
		<div class="clear"></div>
	</div>
	<div class="footer">
	<?php
		echo 'Tester version: '.$tester_version;
		echo '<br />';
		echo '&nbsp;<a href="'.$update_url.'">'.$language[$lang]['update_tester'].'</a>';
	?>
	</div>
	<div class="clear"></div>
</div>
</body>
</html>