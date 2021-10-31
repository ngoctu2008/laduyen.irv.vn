<!-- BEGIN: main  -->
<div class="page_post">
	<div class="row">
		<div class="col-xs-24 col-sm-12">
			<div class="page_post-image">
				<img class="lazy-img" data-src="{ROW.image}" alt="{ROW.title}">
			</div>
		</div>
		<div class="col-xs-24 col-sm-12">
			<div class="page_post-title font-utm">
				<a href="{ROW.link}" title="{ROW.title}">{BL_CONFIG.title}</a>
			</div>
			<div class="page_post-subtitle font-utm">
				{BL_CONFIG.subtitle}
			</div>
			<div class="page_post-des">
				{ROW.description_clean60}
			</div>
			<div class=" page_post-btn font-utm">
				<a class="btn_cus -bg_white -green -brd_primary" href="{ROW.link}" title="{ROW.title}">{GLANG.viewmore}</a>
			</div>
		</div>
	</div>
</div>
<!-- END: main -->