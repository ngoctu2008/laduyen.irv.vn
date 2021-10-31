<!-- BEGIN: main -->
<div class="viewgrid list_product-list">
    <div class="row mg15">
        <!-- BEGIN: loop -->
        <div class="col-xs-24 col-sm-12 col-md-8">
            <div class="list_product-item hover_scale_img" style="border: 1px solid #cccccc;">
                <div class="list_product-img ratio_4-3 ">
                   
                     <a href="{ROW.link_pro}" title="{ROW.title}"><img src="{ROW.homeimgthumb}" alt="{ROW.title}"</a>
                </div>
                <div class="list_product-content text-center" style="border:none; background:none;">
					<!-- BEGIN: rating -->
					<div class="list_product-rating">
						<!-- BEGIN: star -->
						<div class="star-icon">&nbsp;</div>
						<!-- END: star -->
						<span class="rate_text hidden">({ROW.count_rate} {LANG.rate})</span>
					</div>
					<!-- END: rating -->
					<div class="list_product-title">
						<h3>
							<a href="{ROW.link_pro}" title="{ROW.title}">{ROW.title}</a>
						</h3>
					</div>
					<div style="display:flex; align-items: center; justify-content: space-evenly">
					    <div class="list_product-price">
						<!-- BEGIN: price -->
							<!-- BEGIN: discounts -->
							<span class="money">{PRICE.sale_format} {PRICE.unit}</span> 
							<span class="discounts_money">{PRICE.price_format} {PRICE.unit}</span>
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
						
					</div>
					    
					</div>
					<!-- BEGIN: rrating -->
					<div class="list_product-rating">
						<!-- BEGIN: star -->
						<div class="star-icon">&nbsp;</div>
						<!-- END: star -->
						<span class="rate_text">({ROW.count_rate} {LANG.rate})</span>
					</div>
					<!-- END: rrating -->
					<div class="list_product-btn hidden">
						<a href="{ROW.link_pro}" title="{ROW.title}">{GLANG.viewmore}</a>
					</div>
					<!-- BEGIN: adminlink -->
					<p>{ADMINLINK}</p>
					<!-- END: adminlink -->
                </div>
            </div>
        </div>
        <!-- END: loop -->
    </div>
    <!-- BEGIN: page -->
    <div class="text-center">{PAGE}</div>
    <!-- END: page -->
</div>
<!-- END: main -->