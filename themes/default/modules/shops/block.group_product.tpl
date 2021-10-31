<!-- BEGIN: main -->
<div class="group_product-list owl-carousel owl-theme">
		<!-- BEGIN: loop -->
			<div class="group_product-item hover_scale_img" style="border: 1px solid #cccccc;">
				<div class="group_product-img ratio_4-3">
					<a href="{link}" title="{title}"><img  style="padding: 15px;" class="owl-lazy" data-src="{src_img}" alt="{title}"/></a>
				</div>
				<div class="group_product-content text-center" style="border:none; background:none;">
					<!-- BEGIN: rating -->
					<div class="group_product-rating">
						<!-- BEGIN: star -->
						<div class="star-icon">&nbsp;</div>
						<!-- END: star -->
						<span class="rate_text hidden">({count_rate} {LANG.rate})</span>
					</div>
					<!-- END: rating -->
					<div class="group_product-title">
						<a href="{link}" title="{title}">{title}</a>
					</div>
					<div style="display:flex; align-items: center; justify-content: space-evenly">
    					<div class="group_product-price">
    						<!-- BEGIN: price -->
    							<!-- BEGIN: discounts -->
    							<span class="money">{PRICE.sale_format} {PRICE.unit}</span>
    							<span class="discounts_money">{PRICE.price_format} {PRICE.unit}</span>
    
    							<div class="sale-flash hidden">
    								{PRICE.discount_percent}{PRICE.discount_unit}
    							</div>
    							<!-- END: discounts -->
    
    							<!-- BEGIN: no_discounts -->
    							<span class="money">{PRICE.price_format} {PRICE.unit}</span>
    							<!-- END: no_discounts -->
    						<!-- END: price -->
    						<!-- BEGIN: contact -->
    						<span class="money">{LANG.price_contact}</span>
    						<!-- END: contact -->
    					</div>
    					<div style="margin:0" class="group_product-btn add_product">
    						<a style="padding: 4px 8px;" href="javascript:void(0)" id="{id}" title="{title}" class="btn_cus -bg_primary -white -brd_primary" onclick="cartorder(this, 0, '{link}','{module}')"><i class="icofont-cart-alt"></i> {LANG.cart_title}</a>
    					</div>
					</div>
				</div>
			</div>
		<!-- END: loop -->
</div>
<script type="text/javascript">
$(document).ready(function() {
    var owl = $('.group_product-list');
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
                items: 2
            },
            600: {
				margin: 10,
                items: 2
            },
            1000: {
                items: 4
            }
        }
    });
})
</script>
<!-- END: main -->