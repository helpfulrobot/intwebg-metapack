<% if $SiteConfig.BingWebmasterTool %>
	<!-- Microsoft Bing Webmaster-->
	<meta name="msvalidate.01" content="$SiteConfig.BingWebmasterTool" />
	<!-- -->
<% end_if %>
<% if $SiteConfig.GoogleWebmasterTool %>
	<!-- Google Webmaster Tool ID -->
	<meta name="google-site-verification" content="$SiteConfig.GoogleWebmasterTool" />
	<!-- -->
<% end_if %>
<% if $SiteConfig.SiteIconIos %>
	<link rel="apple-touch-icon" href="{$SiteConfig.SiteIconIos.CroppedImage(152,152).URL}" />
	<link rel="apple-touch-icon" sizes="72x72" href="{$SiteConfig.SiteIconIos.CroppedImage(72,72).URL}" />
	<link rel="apple-touch-icon" sizes="114x114" href="{$SiteConfig.SiteIconIos.CroppedImage(114,114).URL}" />
	<link rel="apple-touch-icon" sizes="128x128" href="{$SiteConfig.SiteIconIos.CroppedImage(128,128).URL}">
	<link rel="apple-touch-icon-precomposed" sizes="128x128" href="{$SiteConfig.SiteIconIos.CroppedImage(128,128).URL}">
<% end_if %>
<% if $SiteConfig.SiteIconAndroid %>
	<link rel="icon" sizes="192x192" href="{$SiteConfig.SiteIconAndroid.CroppedImage(192,192).URL}">
	<link rel="icon" sizes="128x128" href="{$SiteConfig.SiteIconAndroid.CroppedImage(128,128).URL}">
<% end_if %>
<% if $SiteConfig.SiteFavIcon %>
	<link rel="shortcut icon" href="{$SiteConfig.SiteFavIcon.CroppedImage(16,16).URL}" />
<% end_if %>
