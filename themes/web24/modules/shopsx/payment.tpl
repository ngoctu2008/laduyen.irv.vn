<!-- BEGIN: main -->
<div class="block clearfix">
    <div class="">
        <p class="alert alert-info info_point">
            Cảm ơn Quý Khách ..., đơn hàng của Quý Khách đã được đặt thành công!
        </p>
    </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="col-xs-16">
                <div class="title-payment cart_title">Đơn hàng {DATA.order_code}</div>
                <div class="row">
                    <div class="col-md-10">
                        <strong>{LANG.order_name}:</strong>
                    </div>
                    <div class="col-md-14">
                        {DATA.order_name}
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-10">
                        <strong>{LANG.order_email}:</strong>
                    </div>
                    <div class="col-md-14">
                        {DATA.order_email}
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-10">
                        <strong>{LANG.order_phone}:</strong>
                    </div>
                    <div class="col-md-14">
                        {DATA.order_phone}
                    </div>
                </div>

                <!-- BEGIN: order_address -->
                <div class="row">
                    <div class="col-md-10">
                        <strong>{LANG.order_address}:</strong>
                    </div>
                    <div class="col-md-14">
                        {DATA.order_address} - {xaphuong}{quanhuyen}{tinhthanh}
                    </div>
                </div>
                <!-- END: order_address -->

                <div class="row">
                    <div class="col-md-10">
                        <strong>Hình thức thanh toán:</strong>
                    </div>
                    <div class="col-md-14">
                        {DATA.httt}
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-10">
                        <strong>{LANG.order_date}:</strong>
                    </div>
                    <div class="col-md-14">
                        {dateup} {LANG.order_moment} {moment}
                    </div>
                </div>
            </div>
            <div class="col-xs-10 hidden">
                <div class="text-center">
                    {LANG.order_code}
                    <br>
                    <span>{DATA.order_code}</span>
                    <br>
                    <span class="payment">{DATA.transaction_name}</span>
                    <a href="{url_print}" title="" id="click_print" class="btn btn-success hidden-xs" style="margin-top:5px"><em class="fa fa-print fa-fw"></em>{LANG.order_print}</a>
                    <!-- BEGIN: order_action -->
                    <a href="{url_action}" title="{LANG.order_edit}" class="btn btn-danger hidden-xs" style="margin-top:5px"><em class="fa fa-edit fa-fw"></em>{LANG.order_edit}</a>
                    <!-- END: order_action -->
                </div>
            </div>
        </div>
    </div>

    <!-- BEGIN: price6 -->
    <span class="text-right help-block hidden"><strong>{LANG.product_unit_price}:</strong> {unit}</span>
    <!-- END: price6 -->
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                    <th align="center" width="30px"> {LANG.order_no_products} </th>
                    <th class="text-center"> {LANG.cart_products} </th>
                    <!-- BEGIN: main_group -->
                    <th>{MAIN_GROUP.title}</th>
                    <!-- END: main_group -->
                    <!-- BEGIN: price1 -->
                    <th class="price text-right" width="150px">
                        {LANG.cart_price}
                        <span class="info_icon hidden" data-toggle="tooltip" title="" data-original-title="{LANG.cart_price_note}">&nbsp;</span>
                    </th>
                    <!-- END: price1 -->
                    <th class="text-center" width="100px"> {LANG.cart_numbers} </th>
                    <th class="text-center hidden">{LANG.cart_unit}</th>
                    <!-- BEGIN: price4 -->
                    <th class="text-center" width="140px">{LANG.cart_price_total}</th>
                    <!-- END: price4 -->
                </tr>
            </thead>

            <tbody>
                <!-- BEGIN: loop -->
                <tr {bg}>
                    <td align="center"> {pro_no} </td>
                    <td><a title="{product_name}" href="{link_pro}">{product_name}</a><!-- BEGIN: display_group -->
                    <p>
                        <!-- BEGIN: group -->
                        <span class="show"><span class="text-muted">{group.parent_title}: <strong>{group.title}</strong></span></span>
                        <!-- END: group -->
                    </p><!-- END: display_group --></td>
                    <!-- BEGIN: sub_group -->
                    <td>
                        <!-- BEGIN: loop -->
                        <a href="{SUB_GROUP.link}" title="{SUB_GROUP.title}">{SUB_GROUP.title}</a>
                        <!-- END: loop -->
                    </td>
                    <!-- END: sub_group -->
                    <!-- BEGIN: price2 -->
                    <td class="money text-right">
						<strong>{product_price} {unit}</strong>
						<!-- BEGIN: setting_price -->
						<div class="setting_price_cart">({setting_price.title} {dau} {setting_price.price})</div>
						<!-- END: setting_price -->
					</td>
                    <!-- END: price2 -->
                    <td class="text-center" align="center"> {product_number} </td>
                    <td class="text-right hidden">{product_unit}</td>
                    <!-- BEGIN: price5 -->
                    <td class="text-right money">{product_price_total} {unit}</td>
                    <!-- END: price5 -->
                </tr>
                <!-- END: loop -->
            </tbody>
        </table>
    </div>

    <!-- BEGIN: data_shipping -->
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover">
            <caption>{LANG.shipping_info}</caption>
            <thead>
                <tr>
                    <th>{LANG.shipping_name}</th>
                    <th>{LANG.order_address}</th>
                    <th>{LANG.carrier}</th>
                    <th>{LANG.weights}</th>
                    <th class="text-right">{LANG.carrier_price}</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{DATA_SHIPPING.ship_name} - {DATA_SHIPPING.ship_phone}</td>
                    <td>
                        {DATA_SHIPPING.ship_location_title}
                        <span class="help-block">{DATA_SHIPPING.ship_address_extend}</span>
                    </td>
                    <td>{DATA_SHIPPING.ship_shops_title}</td>
                    <td>{DATA_SHIPPING.weight}{DATA_SHIPPING.weight_unit}</td>
                    <td class="text-right">{DATA_SHIPPING.ship_price} {DATA_SHIPPING.ship_price_unit}</td>
                </tr>
            </tbody>
        </table>
    </div>
    <!-- END: data_shipping -->
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="col-xs-12">
                <!-- BEGIN: order_note -->
                <em>{LANG.cart_note} : {DATA.order_note}</em>
                <!-- END: order_note -->
            </div>
            <div class="col-xs-12 text-right">
                <!-- BEGIN: price3 -->
                <!-- BEGIN: total_coupons -->
                <p class="pull-right">
                    {LANG.coupon}: <strong>{order_coupons}</strong> {unit}
                </p>
                <div class="clear"></div>
                <!-- END: total_coupons -->
                {LANG.cart_total}: <strong id="total">{order_total}</strong> {unit} <!-- END: price3 -->
            </div>
        </div>
    </div>

   <!-- BEGIN: aactpay -->
	<!-- BEGIN: payment -->
	<div role="tabpanel" id="paytab">
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active">
				<a href="#vitien" aria-controls="vitien" role="tab" data-toggle="tab">{LANG.vitien}</a>
			</li>

			<li role="presentation">
				<a href="#payport" aria-controls="payport" role="tab" data-toggle="tab">{LANG.payport}</a>
			</li>
			
			<!-- BEGIN: payment_point1 -->
			<li role="presentation">
				<a href="#point" aria-controls="point" role="tab" data-toggle="tab">{LANG.point_cart_text}</a>
			</li>
			<!-- END: payment_point1 -->
		</ul>

		<div class="tab-content">
		
			<div role="tabpanel" class="tab-pane fade in active" id="vitien">
				<div>
					<div class="payment_info">
						
						<p><button class="btn btn-info" onclick="payment_vitien( {order_id}, '{checkss}', '{LANG.point_payment_vitien_confirm}' )">{LANG.vitien}</button></p>
					</div>
				</div>
			</div>
			
			<div role="tabpanel" class="tab-pane fade" id="payport">
				<div class="text-center">
					<div class="payment_info">
						<!-- BEGIN: paymentloop -->
							<span class="payment_items"><a title="Ngân lượng" href="{url_checkout}"><img src="https://www.baokim.vn/application/uploads/buttons/btn_pay_now_3.png" alt="{DATA_PAYMENT.name}" class="img-thumbnail" /></a>
							<br/>
							Ngân lượng </span>
						<!-- END: paymentloop -->
					</div>
				</div>
			</div>
			
			
			
			<!-- BEGIN: payment_point2 -->
			<div role="tabpanel" class="tab-pane fade" id="point">
				<h3>{LANG.point_payment}</h3>
				{LANG.point_payment_info}<br /><br />
				<p><button class="btn btn-info" onclick="payment_point( {order_id}, '{checkss}', '{LANG.point_payment_point_confirm}' )">{LANG.point_payment_point}</button></p>
			</div>
			<!-- END: payment_point2 -->
		</div>
	</div>
	<!-- END: payment -->
	<!-- END: aactpay -->
	
    <!-- BEGIN: intro_pay -->
    <div class="panel panel-default">
        <div class="panel-body">
            {intro_pay}
            <br />
            <!-- BEGIN: cancel_url -->
            <br />
            <p class="text-center">
                <a href="{cancel_url}" title="{LANG.product_payment_cancel}">[{LANG.product_payment_cancel}]</a>
            </p>
            <!-- END: cancel_url -->
        </div>
    </div>
    <!-- END: intro_pay -->
</div>

<form action="" method="post">
    <input type="hidden" value="{order_id}" name="order_id"><input type="hidden" value="1" name="save">
</form>
<script type="text/javascript" data-show="after">
$(function() {
    $('[data-toggle="tooltip"]').tooltip();

    $('#click_print').click(function(event) {
        var href = $(this).attr("href");
        event.preventDefault();
        nv_open_browse(href, '', 640, 500, 'resizable=no,scrollbars=yes,toolbar=no,location=no,status=no');
        return false;
    });
});
</script>
<!-- END: main -->