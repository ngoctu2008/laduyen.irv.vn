<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}

<link href="/themes/web24/css/slider/owl.carousel.min.css" type="text/css" media="all" rel="stylesheet" />
<link href="/themes/web24/css/slider/owl.theme.default.min.css" type="text/css" media="all" rel="stylesheet" />
<script src="/themes/web24/js/slider/owl.carousel.js"></script>


<div class="container">

	
	<!-- Slider -->
	<div class="full-cat">
		<div class="wraper">
			[CAT_SHOP2]
		</div>
		<div class="block_slider">
			[SLIDER]
		</div>
	</div>

    	<!-- Product1 -->
	<div class="full-banner">
		<div class="wraper">
			[BANNER1]
		</div>
	</div>
	
	<!-- Product1 -->
	<div class="full-banner">
		<div class="wraper">
		  		<div class="col-sm-16 col-md-18">
					{MODULE_CONTENT}
				</div>
				<div class="col-sm-8 col-md-6">
					[RIGHT]
				</div>
	        </div>
	</div>

	<div class="full-page">
		<div class="wraper">
			 [BANNER2]
		</div>	
	</div>

</div>

{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->