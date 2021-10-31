<!-- BEGIN: main -->
<div class="news_new-list news_new-slider owl-carousel owl-theme">
		<!-- BEGIN: other -->
			<div class="news_new-item hover_scale_img">
				<div class="news_new-img ratio_4-3 ">
					<a title="{blocknews.title}" href="{blocknews.link}" {blocknews.target_blank}><img data-src="{blocknews.imgurl}" alt="{blocknews.title}" class="lazy-img"/></a>
				</div>

				<div class="news_new-content">
					<div class="news_new-title font-utm">
						<a {TITLE} class="" href="{blocknews.link}" {blocknews.target_blank}>{blocknews.title}</a>
					</div>
					<div class="news_new-date">
						{dmy}
					</div>
					<div class="news_new-des hidden">
						{blocknews.hometext_clean}
					</div>
				</div>
			</div>
		<!-- END: other -->
</div>

<script type="text/javascript">
$(document).ready(function() {
    var owl = $('.news_new-list');
    owl.owlCarousel({
        items: 4,
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
                items: 3
            }
        }
    });
})
</script>
<!-- END: main -->
