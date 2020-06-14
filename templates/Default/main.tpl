<!DOCTYPE html>
<html[available=lostpassword|register] class="page_form_style"[/available] lang="ru">
<head lang="en">
	{headers}
	<meta name="HandheldFriendly" content="true">
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="user-scalable=0, initial-scale=1.0, maximum-scale=1.0, width=device-width">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="default">

	<link href="{THEME}/css/main.css" type="text/css" rel="stylesheet">
	<link href="{THEME}/css/engine.css" type="text/css" rel="stylesheet">
	{*<link href="{THEME}/css/styles.css" type="text/css" rel="stylesheet">*}
</head>
<body style="background-image: url('{THEME}/images/bg.png');">
{*<div>
	<div class="header">
		<ul class="language_bar">
			<li style="color: 000000;">Язык сайта: &nbsp;</li>
			<li style="color: #777777;"> &nbsp;Казак </li>
			<li style="color: #2196f3;"> &nbsp;Русский </li>
			<li style="color: #777777;"> &nbsp;English </li>
		</ul>
	</div>
</div>*}
<div class="page[available=showfull] showfull[/available]">
	<ul class="main_content">
		<li>
			<img src="{THEME}/images/Logo.png" class="logo_style" style="margin-bottom: 60px;">
		</li>
		<li>
			<div class="content_row" style="text-align: center;">
				<div>
					<!-- Основное Меню -->
					<nav id="top_menu">
						{include file="modules/topmenu.tpl"}
					</nav>
					<!-- / Основное Меню -->
				</div>
				<div class="content_body" style="position: relative;">
					<div>
						<img src="{THEME}/images/women.png" class="main_img">
					</div>
					<div class="content_style">
						{info}
						[page-title]<h2 class="content_title">{page-title}</h2>[/page-title]
						{page-description}
						[aviable=main][/aviable]
						[not-available=lastcomments]
							{content}
						[/not-available]

					</div>

				</div>
			</div>
		</li>
	</ul>
</div>
<div class="footer">
	<span>Работаем © 1999 г. : Центр косметологии "Людмила".</span>
</div>

{AJAX}
<script src="{THEME}/js/lib.js"></script>
<script>
	jQuery(function($){
		$.get("{THEME}/images/sprite.svg", function(data) {
			var div = document.createElement("div");
			div.innerHTML = new XMLSerializer().serializeToString(data.documentElement);
			document.body.insertBefore(div, document.body.childNodes[0]);
		});
	});
</script>
</body>
</html>