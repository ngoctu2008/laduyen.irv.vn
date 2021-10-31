<!DOCTYPE html>
	<html lang="{LANG.Content_Language}" xmlns="http://www.w3.org/1999/xhtml" prefix="og: http://ogp.me/ns#">
	<head>
		<title>{THEME_PAGE_TITLE}</title>
		<!-- BEGIN: metatags --><meta {THEME_META_TAGS.name}="{THEME_META_TAGS.value}" content="{THEME_META_TAGS.content}">
		<!-- END: metatags -->
		<link rel="shortcut icon" href="{SITE_FAVICON}">
		<!-- BEGIN: links -->
		<link<!-- BEGIN: attr --> {LINKS.key}="{LINKS.value}"<!-- END: attr -->>
		<!-- END: links -->
		<!-- BEGIN: js -->
		<script<!-- BEGIN: ext --> src="{JS_SRC}"<!-- END: ext -->><!-- BEGIN: int -->{JS_CONTENT}<!-- END: int --></script>
		<!-- END: js -->
		<link href="{NV_BASE_SITEURL}themes/web24/css/icofont.min.css" type="text/css" rel="stylesheet" />
		<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet" rel="stylesheet">

		
		<!--script type="text/javascript" src="/assets/js/jquery/jquery.lazyload.min.js"></script-->
		<script src="https://cdn.jsdelivr.net/npm/intersection-observer@0.7.0/intersection-observer.js" ></script>
		<script src="https://cdn.jsdelivr.net/npm/vanilla-lazyload@15.1.1/dist/lazyload.min.js" ></script>
		<script type="text/javascript">
			
			$.fn.max = function(selector) { 
		        var max = Math.max.apply(null, this.map(function(index, el){ 
		        	return selector.apply(el); 
		        }).get());
		        return this.css({'height': max + 'px'});
		    }
			
		</script>

	</head>
	<body>