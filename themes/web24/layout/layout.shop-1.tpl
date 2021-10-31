<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}

<link href="/themes/web24/css/slider/owl.carousel.min.css" type="text/css" media="all" rel="stylesheet" />
<link href="/themes/web24/css/slider/owl.theme.default.min.css" type="text/css" media="all" rel="stylesheet" />
<script src="/themes/web24/js/slider/owl.carousel.js"></script>


<div class="container">
	<!-- Product1 -->
	<div class="full-banner">
		<div class="wraper">
			<div class="row">
			    <div class="col-sm-8 col-md-6">
					[LEFT]
				</div>
		  		<div class="col-sm-16 col-md-18">
		  		    <div class="template_default">
                    	<div class="template_head text-center">
                    		<div class="template_title font-utm">
                    		{BREADCRUMBS.title}
                    		</div>
                    		<div class="template_subtitle">
                    		</div>
                    	</div>
                    </div>
					{MODULE_CONTENT}
				</div>
				
			</div>
	        </div>
	</div>
</div>

{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->