

<!-- BEGIN: main -->
<div class="news_new-list news_new-slider owl-carousel owl-theme">
			<!-- BEGIN: loop -->
			<div class="news_new-item hover_scale_img">
				<div class="news_new-img ratio_4-3 ">
					<a title="{ROW.title}" href="{ROW.link}" {ROW.target_blank}><img src="{ROW.thumb}" alt="{ROW.title}" class="lazy-img"/></a>
				</div>

				<div class="news_new-content">
					<div class="news_new-title font-utm">
						<a {TITLE} class="" href="{ROW.link}" {ROW.target_blank}>{ROW.title}</a>
					</div>
					<div class="news_new-date">
						{dmy}
					</div>
					<div class="news_new-des hidden">
						{ROW.hometext_clean}
					</div>
				</div>
			</div>
		<!-- END: loop-->
</div>

<script type="text/javascript">
$(document).ready(function() {
    var owl = $('.news_new-list');
    owl.owlCarousel({
        items: 2,
        nav: true,
        dots: false,
        loop: false,
		margin: 30,
        lazyLoad: true,
        autoplay: true,
        animateOut: 'fadeOut',
        autoHeight: true,
        navText: ['<i class="icofont-block-left"></i>', '<i class="icofont-block-right"></i>'],
        responsive: {
            0: {
				margin: 10,
                items: 1
            },
            600: {
				margin: 10,
                items: 2
            },
            1000: {
                items: 2
            }
        }
    });
})
</script>
<!-- END: main -->
