<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}

<link href="/themes/web24/css/slider/owl.carousel.min.css" type="text/css" media="all" rel="stylesheet" />
<link href="/themes/web24/css/slider/owl.theme.default.min.css" type="text/css" media="all" rel="stylesheet" />
<script src="/themes/web24/js/slider/owl.carousel.js"></script>

 <div class="full-about">
	<div class="full-haisan">
		<div class="wraper">
                    [TOP]
            </div>
		</div>	
	</div>
	
	<!-- Slider -->
	<div class="full-page">
		<div class="wraper">
			[BANNER1]
		</div>
	</div>
	
<div class="wraper" style="margin-top:20px;">
	
	<section>
		<div class="container">
        	[THEME_ERROR_INFO]
			<div class="row">
			    <div class="col-sm-8 col-md-6">
					[LEFT]
				</div>
		  		<div class="col-sm-16 col-md-18">
					{MODULE_CONTENT}
				</div>
				
			</div>
			<div class="row">
				[FOOTER]
			</div>
		</div>
</section>


{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->