<% if $BetterKeywords %>
	<meta name="keywords" content="{$BetterKeywords}"/>
<% end_if %>
<% if $BetterDescription %>
	<meta name="description" content="{$BetterDescription}"/>
	<meta property="og:description" content="{$BetterDescription}"/>
<% end_if %>
<% if $Image || $SiteConfig.Image %>
	<meta Betterperty="og:image" content="<% if $Image %><% if $ImageSize=0 %>{$Image.AbsoluteURL}<% end_if %><% if $ImageSize=1 %>{$Image.CroppedImage(300,300).AbsoluteURL}<% end_if %><% else %>{$SiteConfig.Image.AbsoluteURL}<% end_if %>"/><% end_if %>

<% if $SiteConfig.BetterBingWebmasterTool %>
	<!-- Microsoft Bing Webmaster-->
	<meta name="msvalidate.01" content="$SiteConfig.BetterBingWebmasterTool" />
	<!-- -->
<% end_if %>
<% if $SiteConfig.BetterGoogleWebmasterTool %>
	<!-- Google Webmaster Tool ID -->
	<meta name="google-site-verification" content="$SiteConfig.BetterGoogleWebmasterTool" />
	<!-- -->
<% end_if %>
<% if $SiteConfig.BetterSiteIconIos %>
	<link rel="apple-touch-icon" href="{$SiteConfig.BetterSiteIconIos.CroppedImage(152,152).URL}" />
	<link rel="apple-touch-icon" sizes="72x72" href="{$SiteConfig.BetterSiteIconIos.CroppedImage(72,72).URL}" />
	<link rel="apple-touch-icon" sizes="114x114" href="{$SiteConfig.BetterSiteIconIos.CroppedImage(114,114).URL}" />
	<link rel="apple-touch-icon" sizes="128x128" href="{$SiteConfig.BetterSiteIconIos.CroppedImage(128,128).URL}">
	<link rel="apple-touch-icon-precomposed" sizes="128x128" href="{$SiteConfig.BetterSiteIconIos.CroppedImage(128,128).URL}">
<% end_if %>
<% if $SiteConfig.BetterSiteIconAndroid %>
	<link rel="icon" sizes="192x192" href="{$SiteConfig.BetterSiteIconAndroid.CroppedImage(192,192).URL}">
	<link rel="icon" sizes="128x128" href="{$SiteConfig.BetterSiteIconAndroid.CroppedImage(128,128).URL}">
<% end_if %>
<% if $SiteConfig.BetterSiteFavIcon %>
	<link rel="shortcut icon" href="{$SiteConfig.BetterSiteFavIcon.CroppedImage(16,16).URL}" />
<% end_if %>
