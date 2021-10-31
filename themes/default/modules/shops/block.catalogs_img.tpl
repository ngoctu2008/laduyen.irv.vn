<!-- BEGIN: main -->
<div class="owl-carousel owl-theme pro_cat">
	<!-- BEGIN: cat -->
	<div class="pro_cat-items">
		<div class="pro_cat-img ratio_4-3"><a href="{CAT.link}" title="{CAT.title}"><img class="owl-lazy" alt="{CAT.title}" data-src="{CAT.image}"></a></div>
		<div class="pro_cat-title font-utm text-center">
			<a href="{CAT.link}" title="{CAT.title}">{CAT.title}</a>
		</div>
		<div class="pro_cat-des">{CAT.description}</div>
	</div>
	<!-- END: cat -->
</div>
<script type="text/javascript">
$(document).ready(function() {
    var owl = $('.pro_cat');
    owl.owlCarousel({
        items: 3,
        nav: true,
        dots: false,
        loop: true,
		margin: 30,
        lazyLoad: true,
        autoplay: true,
        animateOut: 'fadeOut',
        autoHeight: true,
        navText: ['<i class="icofont-thin-left"></i>', '<i class="icofont-thin-right"></i>'],
        responsive: {
            0: {
				margin: 10,
                items: 1
            },
            600: {
				margin: 10,
                items: 1
            },
            1000: {
                items: 3
            }
        }
    });
})
</script>
<!-- END: main -->