<!-- BEGIN: main -->
<link href="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/lightSlider/css/lightslider.min.css" rel="stylesheet" type="text/css">
<div itemscope itemtype="http://schema.org/Product" style="display: none">
    <span itemprop="name">{TITLE}</span> <img itemprop="image" src="{SRC_PRO_FULL}" alt="{TITLE}" /> <span itemprop="description">{hometext}</span> <span itemprop="mpn">{PRODUCT_CODE}</span>
    <!-- BEGIN: allowed_rating_snippets -->
    <span itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating"> <span itemprop="ratingValue">{RATE_VALUE}</span> {LANG.trong} <span itemprop="reviewCount">{RATE_TOTAL} </span> {LANG.dg}
    </span>
    <!-- END: allowed_rating_snippets -->
    <span itemprop="offers" itemscope itemtype="http://schema.org/Offer"> <span itemprop="category">{CAT_TITLE}</span> <!-- BEGIN: price1 --> <span itemprop="price">{PRICE.sale_format}</span> <span itemprop="priceCurrency">{PRICE.unit}</span> <!-- END: price1 --> <!-- BEGIN: contact1 --> <span itemprop="price">1000</span> <span itemprop="priceCurrency">{PRICE.unit}</span> <!-- END: contact1 --> <span itemprop="availability">{availability}</span>
    </span>
</div>
<div id="detail"<!-- BEGIN: popupid --> class="prodetail-popup"<!-- END: popupid -->>
    <div class="">
        <div class="">
            <div class="row">
                <div class="col-xs-24 col-sm-12 col-md-12 col-lg-8 text-center">
                    <!-- BEGIN: image -->
                    <div class="image">
                        <ul id="imageGallery" class="gallery">
                            <!-- BEGIN: loop -->
                            <li data-thumb="{IMAGE.thumb}" data-src="{IMAGE.file}"><a class="open_modal" href="" data-src="{IMAGE.file}"><img src="{IMAGE.file}" alt=""/></a></li>
                            <!-- END: loop -->
                        </ul>
                    </div>
                    <!-- END: image -->
                    <a href="" data-src="{SRC_PRO_LAGE}" data-width="{SRC_PRO_LAGE_INFO.width}" class="open_modal" title="{TITLE}"><img src="{SRC_PRO}" alt="" class="img-thumbnail" id="imageproduct"></a> <br />
                    <!-- BEGIN: adminlink -->
                    <p class="tab-pane">{ADMINLINK}</p>
                    <!-- END: adminlink -->
                    <!-- BEGIN: social_icon -->
                    <div class="news_column ">
                        <div class="">
                            <div class="socialicon">
                                <div class="fb-like" data-href="{SELFURL}" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true">&nbsp;</div>
                                <a href="http://twitter.com/share" class="twitter-share-button">Tweet</a>
                            </div>
                        </div>
                    </div>
                    <!-- END: social_icon -->
                </div>
                <div class="col-xs-24 col-sm-12 col-md-12 col-lg-8">
                    <ul class="product_info">
                        <li>
                            <h1 class="product_info-title">{TITLE}</h1>
                        </li>
                        <li class="text-muted hidden">{DATE_UP} - {NUM_VIEW} {LANG.detail_num_view}</li>
                        <!-- BEGIN: product_code -->
                        <li>{LANG.product_code}: <strong>{PRODUCT_CODE}</strong>
                        </li>
                        <!-- END: product_code -->
                        <!-- BEGIN: price -->
                        <li>
                                <!-- BEGIN: discounts -->
                                <span class="money">{PRICE.sale_format} {PRICE.unit}</span> <span class="discounts_money" data-price_format="{PRICE.price_format}">{LANG.save}: {PRICE.discount_percent}{PRICE.discount_unit} ({PRICE.discount_format} {PRICE.unit})</span> <span class="money">{product_discounts} {money_unit}</span>
                                <!-- END: discounts -->
                                <!-- BEGIN: no_discounts -->
                                <span class="money">{PRICE.price_format} {PRICE.unit}</span>
                                <!-- END: no_discounts -->
                        </li>
                        <!-- END: price -->
                        <!-- BEGIN: product_weight -->
                        <li>{LANG.weights}: <strong>{PRODUCT_WEIGHT}</strong>&nbsp<span>{WEIGHT_UNIT}</span>
                        </li>
                        <!-- END: product_weight -->
                        <!-- BEGIN: contact -->
                        <li>{LANG.detail_pro_price}: <span class="money">{LANG.price_contact}</span>
                        </li>
                        <!-- END: contact -->
                        <!-- BEGIN: group_detail -->
                        <li>
                            <!-- BEGIN: loop --> <!-- BEGIN: maintitle -->
                            <div class="pull-left">
                                <strong>{MAINTITLE}:</strong>&nbsp;
                            </div> <!-- END: maintitle --> <!-- BEGIN: subtitle -->
                            <ul class="pull-left list-inline" style="padding: 0 10px 0">
                                <!-- BEGIN: loop -->
                                <li>{SUBTITLE.title}</li>
                                <!-- END: loop -->
                            </ul>
                            <div class="clear"></div> <!-- END: subtitle --> <!-- END: loop -->
                        </li>
                        <!-- END: group_detail -->
                        <!-- BEGIN: custom_data -->
                        {CUSTOM_DATA}
                        <!-- END: custom_data -->
                        <!-- BEGIN: hometext -->
                        <li>
                            <p class="text-justify">{hometext}</p>
                        </li>
                        <!-- END: hometext -->
                        <!-- BEGIN: promotional -->
                        <li><strong>{LANG.detail_promotional}:</strong> {promotional}</li>
                        <!-- END: promotional -->
                        <!-- BEGIN: warranty -->
                        <li><strong>{LANG.detail_warranty}:</strong> {warranty}</li>
                        <!-- END: warranty -->
                    </ul>
                    <hr />
                    <!-- BEGIN: gift -->
                    <div class="alert alert-info">
                        <div class="pull-left">
                            <em class="fa fa-gift fa-3x">&nbsp;</em>
                        </div>
                        <div class="pull-left">
                            <h4>{gift_content}</h4>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!-- END: gift -->
					
					  <!-- BEGIN: setting_price -->
                    <div class="well hidden">
                        <div class="filter_setting_price">
                            <!-- BEGIN: price_s -->
                            <div id_setting_price ="{i}" title_setting="{price_s.title}" price_setting="{price_s.price}" class="row item_price_setting">
                                <div class="col-xs-8 col-sm-5">{price_s.title}</div>
                                <div class="col-xs-16 col-sm-19">
                                   {dau} {price_s.price}
                                </div>
                            </div>
                            <!-- END: price_s -->
                        </div>
                    </div>
                    <!-- END: setting_price -->
					
					<script>
						$('.filter_setting_price .item_price_setting').click(function(){
							$('.filter_setting_price').find('.item_price_setting').removeClass('border_red');
							$(this).addClass('border_red');
						});
					</script>
					
					
                    <!-- BEGIN: group -->
                    <div class="well">
                        <div class="filter_product">
                            <!-- BEGIN: items -->
                            <div class="row">
                                <!-- BEGIN: header -->
                                <div class="col-xs-8 col-sm-5" style="margin-top: 4px">{HEADER}</div>
                                <!-- END: header -->
                                <div class="col-xs-16 col-sm-19 itemsgroup" data-groupid="{GROUPID}" data-header="{HEADER}">
                                    <!-- BEGIN: loop -->
                                    <label class="label_group <!-- BEGIN: active -->active<!-- END: active -->"> <input type="radio" class="groupid" onclick="check_quantity( $(this) )" name="groupid[{GROUPID}]" value="{GROUP.groupid}"
                                    <!-- BEGIN: checked -->checked="checked" <!-- END: checked -->>{GROUP.title}
                                    </label>
                                    <!-- END: loop -->
                                </div>
                            </div>
                            <!-- END: items -->
                        </div>
                        <span id="group_error">&nbsp;</span>
                    </div>
                    <!-- END: group -->
					<div class="row align-items-xs-center">
						<!-- BEGIN: order_number -->
						<script>
							$(document).ready( function() {
								var elm = $('.htop{ID}');
								function spin( vl ) {
									if ((parseInt( elm.val(), 10 )<=1) && vl<0){
										elm.val(1);
									}
									else{
										if( (parseInt(elm.val(),10) + vl) <= {PRODUCT_NUMBER}){
											elm.val( parseInt( elm.val(), 10 ) + vl );
										}
										else{
											//alert('{LANG.detail_error_number} {PRODUCT_NUMBER}');
											elm.val( parseInt( elm.val(), 10 ) + vl );
											//elm.val( {PRODUCT_NUMBER} );
										}
									}
								}
								$('.increase{ID}').click( function() { spin( 1 );  } );
								$('.decrease{ID}').click( function() { spin( -1 ); } );
							});
							$('#pnum').attr( 'max', '{PRODUCT_NUMBER}' );
							$('#pnum').change(function(){
								if( intval($(this).val()) > intval($(this).attr('max')) ){
									alert('{LANG.detail_error_number} ' + $(this).attr('max') );
									$(this).val( $(this).attr('max') );
								}
							});
						</script>
						
						<div class="product_info_order col-xs-12 col-sm-12">
							<div class="product_info_order-title hidden">
								<strong>{LANG.detail_pro_number}:</strong>
							</div>
							<div class="product_info_order-value align-items-xs-center">
								<div class="product_info_order-left">
									<a class="iconminus decrease{ID}"><i class="icofont-minus"></i></a>
								</div>
								<div class="product_info_order-number">
									<input type="text" name="num" value="1" min="1" id="pnum" class="form-control htop{ID}">
								</div>
								<div class="product_info_order-right">
									<a class="iconplus increase{ID}"><i class="icofont-plus"></i></a>
								</div>
							</div>
						</div>

						<div class="row hidden">
							<div class="col-xs-8 col-sm-5">{LANG.detail_pro_number}</div>
							<div class="col-xs-16 col-sm-19">
								<!--input type="number" name="num" value="1" min="1" id="pnum" class="pull-left form-control" style="width: 100px; margin-right: 5px"-->
								<!-- BEGIN: product_number -->
								<span class="help-block pull-left" id="product_number">{LANG.detail_pro_number}: <strong>{PRODUCT_NUMBER}</strong> {pro_unit}
								</span>
								<!-- END: product_number -->
							</div>
						</div>
						<!-- END: order_number -->
						<!-- BEGIN: order -->
						<div class="product_info_btn col-xs-12 col-sm-12">
							<button class="btn btn-danger btn-order hidden" data-id="{proid}" onclick="cartorder_detail(this, {POPUP}, 0); return !1;">
								<em class="fa fa-shopping-cart fa-lg">&nbsp;</em> {LANG.add_cart}
							</button>
							<button class="btn_cus -bg_primary -white -brd_primary btn-order" data-id="{proid}" onclick="cartorder_detail(this, {POPUP}, 1); return !1;">
								<i class="icofont-cart-alt"></i> {LANG.buy_now}
							</button>
						</div>
						<!-- END: order -->
					</div>

                    <!-- BEGIN: typepeice -->
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th class="text-right">{LANG.detail_pro_number}</th>
                                <th class="text-left">{LANG.cart_price} ({money_unit})</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- BEGIN: items -->
                            <tr>
                                <td class="text-right">{ITEMS.number_from} -> {ITEMS.number_to}</td>
                                <td class="text-left">{ITEMS.price}</td>
                            </tr>
                            <!-- END: items -->
                        </tbody>
                    </table>
                    <!-- END: typepeice -->
                    <!-- BEGIN: product_empty -->
					<strong>{LANG.product_empty}</strong>
                    <button class="btn btn-danger hidden disabled">{LANG.product_empty}</button>
                    <!-- END: product_empty -->
                </div>
				<div class="col-xs-24 col-sm-24 col-md-24 col-lg-8">
					<div class="freecontent_camket2">
					    <div style="padding:16px" class="css-rfz8yf"><div class="css-5ri8n0"><svg fill="none" viewBox="0 0 24 24" size="24" class="css-135mojx" color="#53c305" height="24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M10.2437 8.8V10.077H10.5287C10.6548 10.077 10.7384 10.0429 10.7939 9.98729C10.8495 9.93171 10.8837 9.84817 10.8837 9.722V9.155C10.8837 9.02883 10.8495 8.94529 10.7939 8.88971C10.7384 8.83413 10.6548 8.8 10.5287 8.8H10.2437Z" fill="#30CD60"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M5 6C4.44772 6 4 6.44771 4 7V7.74985H0.625014C0.280006 7.74985 0 8.02986 0 8.37486C0 8.71987 0.280006 8.99988 0.625014 8.99988H4V10.2494H1.87453C1.52952 10.2494 1.24951 10.5294 1.24951 10.8744C1.24951 11.2194 1.52952 11.4994 1.87453 11.4994H4V12.75H3.12697C2.78196 12.75 2.50195 13.03 2.50195 13.375C2.50195 13.72 2.78196 14 3.12697 14H4V15C4 15.5523 4.44772 16 5 16L6.00197 16C6.05465 17.3322 7.15515 18.4 8.5 18.4C9.84482 18.4 10.9453 17.3322 10.998 16.0001L16.002 16.0002C16.0547 17.3323 17.1552 18.4 18.5 18.4C19.8448 18.4 20.9452 17.3323 20.998 16.0003L23.3751 16.0003C23.7201 16.0003 24.0002 15.7203 24.0002 15.3753V12.2502C24.0002 12.1365 23.9701 12.0252 23.9114 11.9289L22.0364 8.80388C21.9239 8.61512 21.7201 8.50012 21.5001 8.50012H20V7C20 6.44772 19.5523 6 19 6H5ZM22.6458 12.2499H20V9.74988H21.1458L22.6458 12.2499ZM7.5 15.9C7.5 15.35 7.948 14.9 8.5 14.9C9.052 14.9 9.5 15.35 9.5 15.9C9.5 16.45 9.052 16.9 8.5 16.9C7.948 16.9 7.5 16.45 7.5 15.9ZM18.5 14.9C17.948 14.9 17.5 15.35 17.5 15.9C17.5 16.45 17.948 16.9 18.5 16.9C19.052 16.9 19.5 16.45 19.5 15.9C19.5 15.35 19.052 14.9 18.5 14.9ZM6.30615 7.9H8.57815V8.8H7.24815V10.035H8.29815V10.935H7.24815V13H6.30615V7.9ZM9.30166 7.9H10.5637C10.9398 7.9 11.2496 8.01459 11.4818 8.25169C11.7138 8.48397 11.8257 8.79355 11.8257 9.169V9.708C11.8257 9.94543 11.7786 10.1598 11.6816 10.3487C11.5966 10.5142 11.4795 10.6493 11.3311 10.7527L11.9701 13H10.9908L10.4518 10.977H10.2437V13H9.30166V7.9ZM15.0007 7.9H12.6937V13H15.0007V12.1H13.6357V10.865H14.7207V9.965H13.6357V8.8H15.0007V7.9ZM15.7712 7.9H18.0782V8.8H16.7132V9.965H17.7982V10.865H16.7132V12.1H18.0782V13H15.7712V7.9Z" fill="#30CD60"></path></svg><div class="css-1plrovb">Sản phẩm được miễn phí giao hàng</div></div><div class="css-3tu0eq"></div><div class="css-1n0yghv"><div type="subtitle" class="css-ebjfn5">Chính sách bán hàng</div><div class="css-15yfvq4"><div height="24" width="24" class="css-yra7sp"><img src="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'> <path fill='%231435C3' d='M12.822 16.756h-.777c-.362 0-.654-.293-.654-.654V5.308H2.654c-.361 0-.654-.292-.654-.654C2 4.293 2.293 4 2.654 4h9.39c.362 0 .655.293.655.654v2.208h5.07c.3 0 .561.204.634.495l.643 2.57 2.592 1.297c.222.11.362.337.362.585v4.293c0 .361-.293.654-.654.654h-2.924v.061c0 1.547-1.253 2.8-2.8 2.8s-2.8-1.253-2.8-2.8v-.061zm1.388-.424c-.052.152-.08.315-.08.485 0 .824.668 1.492 1.492 1.492s1.492-.668 1.492-1.492c0-.17-.028-.333-.08-.485l-.01-.025c-.208-.573-.757-.982-1.402-.982-.645 0-1.194.41-1.403.982-.003.009-.005.017-.009.025zm-1.031-.885c.48-.853 1.394-1.43 2.443-1.43 1.05 0 1.964.577 2.443 1.43h2.627v-3.234l-2.5-1.25c-.171-.085-.296-.241-.343-.426l-.591-2.367h-4.56v7.277h.48zm-3.996-4.292c.361 0 .654.293.654.654 0 .361-.293.654-.654.654H5.248c-.362 0-.654-.293-.654-.654 0-.361.292-.654.654-.654h3.935zm0 3.577c.361 0 .654.293.654.654 0 .362-.293.654-.654.654h-.984c-.361 0-.654-.292-.654-.654 0-.361.293-.654.654-.654h.984zM3.28 8.886c-.361 0-.654-.293-.654-.654 0-.362.293-.655.654-.655h5.903c.361 0 .654.293.654.655 0 .36-.293.654-.654.654H3.28zm12.28.776v.777h.778c.36 0 .654.293.654.654 0 .362-.293.655-.654.655h-1.431c-.362 0-.655-.293-.655-.655v-1.43c0-.362.293-.655.655-.655.36 0 .654.293.654.654z'/></svg>" loading="lazy" height="24" decoding="async" class="css-9ljt03"></div><div class="css-yp9swi">Miễn phí giao hàng cho đơn hàng từ 800K</div></div><div class="css-15yfvq4"><div height="24" width="24" class="css-yra7sp"><img src="data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3e %3cpath fill='%231435C3' fill-rule='evenodd' d='M10.646 2.34c.496-.454 1.244-.454 1.74 0l.012.013c1.52 1.482 3.3 2.232 5.599 2.36 1.103.062 1.98.974 1.996 2.076.003.227.009.43.018.622v.016c.045 2.349.1 5.272-.88 7.93-.537 1.456-1.35 2.723-2.416 3.764-1.214 1.185-2.803 2.126-4.723 2.798-.063.022-.129.04-.195.053-.093.019-.187.028-.281.028-.094 0-.188-.01-.282-.028-.066-.013-.13-.03-.193-.053-1.923-.67-3.514-1.611-4.729-2.796-1.066-1.041-1.88-2.307-2.416-3.764-.976-2.649-.92-5.567-.876-7.912v-.036c.01-.194.016-.397.019-.621.016-1.103.893-2.015 1.996-2.077 2.3-.128 4.078-.878 5.598-2.36zm.942.863c-.044-.038-.1-.038-.145 0-.867.843-1.799 1.469-2.848 1.913-1.05.445-2.194.696-3.495.769-.49.027-.88.432-.888.922-.003.234-.01.446-.018.65v.013c-.046 2.363-.097 5.042.803 7.483 1.03 2.792 3.132 4.708 6.43 5.858.012.004.024.008.037.01.035.007.07.007.103 0 .013-.002.026-.006.037-.01 3.295-1.152 5.397-3.07 6.426-5.86.903-2.448.853-5.129.808-7.495-.01-.201-.015-.414-.019-.649-.007-.49-.397-.895-.888-.922-1.301-.073-2.444-.324-3.495-.769-1.048-.444-1.98-1.07-2.848-1.913zm4.097 6.004c.276.277.276.725 0 1.001L11.1 14.793c-.276.276-.724.276-1 0L7.807 12.5c-.276-.276-.276-.724 0-1 .277-.277.725-.277 1.001 0L10.6 13.29l4.084-4.084c.276-.276.725-.276 1.001 0z'/%3e%3c/svg%3e" loading="lazy" height="24" decoding="async" class="css-9ljt03"></div><div class="css-yp9swi">Cam kết hàng chính hãng 100%</div></div><div class="css-15yfvq4"><div height="24" width="24" class="css-yra7sp"><img src="data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3e %3cpath fill='%231435C3' d='M16.112 13.458v-3.019L12.982 12v3.337l3.13-1.878zm-3.692-2.43l3-1.495-3.84-1.926-3 1.496 3.84 1.925zm-.56 4.392V12l-3.972-1.99v3.42l3.972 1.99zm5.317-6.14c.038.075.047.16.057.234v4.261c0 .197-.103.384-.272.486l-4.252 2.542c-.159.103-.364.113-.533.029L7.075 14.28c-.187-.093-.309-.29-.309-.505V9.093c.01-.084.019-.159.056-.243.01-.009.02-.009.02-.018.018-.02.027-.038.046-.056.037-.057.093-.103.159-.14.009-.01.018-.029.028-.029l4.252-2.13c.159-.075.336-.075.495 0l5.103 2.55.028.029c.066.037.122.084.159.15l.047.046c0 .01.01.019.018.028zm-13.26 8.908l-.408 2.14c-.069.354-.41.587-.766.519-.355-.067-.588-.41-.52-.765l.723-3.785c.066-.343.389-.573.735-.525l3.955.56c.358.051.607.383.557.741-.052.357-.383.607-.74.555l-2.586-.366c1.56 2.307 4.208 3.737 7.133 3.737 4.78 0 8.692-3.912 8.692-8.691 0-.361.293-.654.654-.654.361 0 .654.293.654.654 0 5.502-4.498 10-10 10-3.281 0-6.267-1.57-8.083-4.12zM20.083 5.12l.408-2.14c.069-.355.41-.587.766-.52.355.068.588.411.52.766l-.723 3.784c-.065.343-.389.574-.735.525l-3.955-.56c-.358-.05-.607-.383-.557-.74.052-.357.383-.607.74-.556l2.586.367C17.573 3.738 14.925 2.308 12 2.308 7.22 2.308 3.308 6.221 3.308 11c0 .36-.292.654-.654.654-.361 0-.654-.293-.654-.654C2 5.498 6.498 1 12 1c3.281 0 6.267 1.57 8.083 4.12z'/%3e%3c/svg%3e" loading="lazy" height="24" decoding="async" class="css-9ljt03"></div><div class="css-yp9swi">Đổi trả trong vòng 10 ngày</div></div></div></div>
						[CAMKET2]
						
					</div>
                </div>
            </div>
        </div>
    </div>
    <!-- BEGIN: product_detail -->
    <!-- BEGIN: tabs -->
    <div role="tabpanel" class="tabs">
        <ul class="nav nav-tabs" role="tablist">
            <!-- BEGIN: tabs_title -->
            <li role="presentation"
                <!-- BEGIN: active -->class="active"<!-- END: active -->> <a href="#{TABS_KEY}-{TABS_ID}" aria-controls="{TABS_KEY}-{TABS_ID}" role="tab" data-toggle="tab"> <!-- BEGIN: iicon --> <img src="{TABS_ICON}" /> <!-- END: iicon --> <!-- BEGIN: iicon_default --> <em class="fa fa-bars">&nbsp;</em> <!-- END: iicon_default --> <span>{TABS_TITLE}</span>
            </a>
            </li>
            <!-- END: tabs_title -->
        </ul>
        <div class="tab-content">
            <!-- BEGIN: tabs_content -->
            <div role="tabpanel" class="tab-pane fade <!-- BEGIN: active -->active in<!-- END: active -->" id="{TABS_KEY}-{TABS_ID}">{TABS_CONTENT}</div>
            <!-- END: tabs_content -->
        </div>
    </div>
    <!-- END: tabs -->
    <!-- BEGIN: tags -->
    <div class="">
        <div class="">
            <div class="tags">
                <em class="fa fa-tags">&nbsp;</em><strong>{LANG.tags}: </strong>
                <!-- BEGIN: loop -->
                <a title="{TAGS}" href="{LINK_TAGS}"><em>{TAGS}</em></a>{SLASH}
                <!-- END: loop -->
            </div>
        </div>
    </div>
    <!-- END: tags -->
    <!-- BEGIN: oother -->
    <div class="detail_other">
        <div class="detail_other-heading">{LANG.detail_others}</div>
        <div class="detail_other-body">{OTHER}</div>
    </div>
    <!-- END: oother -->
    <!-- BEGIN: oother_view -->
    <div class="">
        <div class="panel-heading">{LANG.detail_others_view}</div>
        <div class="">{OTHER_VIEW}</div>
    </div>
    <!-- END: oother_view -->
    <!-- END: product_detail -->
</div>
<div class="modal fade" id="idmodals" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                &nbsp;
            </div>
            <div class="modal-body">
                <p class="text-center">
                    <em class="fa fa-spinner fa-spin fa-3x">&nbsp;</em>
                </p>
            </div>
        </div>
    </div>
</div>
<!-- BEGIN: allowed_print_js -->
<script type="text/javascript" data-show="after">
	$(function() {
		$('#click_print').click(function(event) {
			var href = $(this).attr("href");
			event.preventDefault();
			nv_open_browse(href, '', 640, 500, 'resizable=no,scrollbars=yes,toolbar=no,location=no,status=no');
			return false;
		});
	});
</script>
<!-- END: allowed_print_js -->
<!-- BEGIN: imagemodal -->

<!-- END: imagemodal -->

<script type="text/javascript" data-show="after">
	$('.open_modal').click(function(e){
		e.preventDefault();
 		$('#idmodals .modal-body').html( '<img src="' + $(this).data('src') + '" alt="" class="img-responsive" />' );
 		$('#idmodals').modal('show');
	});
</script>

<!-- BEGIN: order_number_limit -->
<script type="text/javascript" data-show="after">
	$('#pnum').attr( 'max', '{PRODUCT_NUMBER}' );
	$('#pnum').change(function(){
		if( intval($(this).val()) > intval($(this).attr('max')) ){
			alert('{LANG.detail_error_number} ' + $(this).attr('max') );
			$(this).val( $(this).attr('max') );
		}
	});
</script>
<!-- END: order_number_limit -->
<script type="text/javascript">
	var detail_error_group = '{LANG.detail_error_group}';
	function check_quantity( _this ){
		$('input[name="'+_this.attr('name')+'"]').parent().css('border-color', '#ccc');
		if( _this.is(':checked') ) {
		    _this.parent().css('border-color', 'blue');
		}
		$('#group_error').css( 'display', 'none' );
		<!-- BEGIN: check_price -->
		check_price( '{proid}', '{pro_unit}' );
		<!-- END: check_price -->
        resize_popup();
	}
</script>
<script src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/lightSlider/js/lightslider.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#imageGallery').lightSlider({
        gallery:true,
        item:1,
        loop:true,
        thumbItem:5,
        slideMargin:0,
        enableDrag: true,
		adaptiveHeight:true,
        currentPagerPosition:'left',
        onSliderLoad: function(el) {
            //el.lightGallery({
            //    selector: '#imageGallery .lslide'
            //});
        }
    });
  });
</script>
<!-- BEGIN: popup -->
<script type="text/javascript">
$(window).on('load', function() {
    resize_popup();
});
</script>
<!-- END: popup -->

<style>
.css-rfz8yf {
    background: white;
    border-radius: 8px;
}
.css-5ri8n0 {
    color: #53c305;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
.css-3tu0eq {
    border-bottom: 1px dashed #e0e0e0;
    margin: 1rem 0;
}
.css-1n0yghv {
    border-style: none;
    border-width: 1px;
    border-color: unset;
    opacity: 1;
    background-color: rgb(255, 255, 255);
    border-radius: 0.5rem;
}
.css-ebjfn5 {
    margin: 0px 0px 0.5rem;
    padding: 0px;
    border-style: none;
    border-radius: 0px;
    border-width: 1px;
    border-color: unset;
    opacity: 1;
    background-color: transparent;
    color: inherit;
    font-weight: 500;
    text-decoration: unset;
    font-size: 15px;
    line-height: 24px;
    overflow: hidden;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: unset;
    max-width: unset;
    min-width: unset;
    transition: color 0.3s ease 0s;
}

.css-15yfvq4 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    margin-bottom: 8px;    gap: 8px;
}

</style>
<!-- END: main -->