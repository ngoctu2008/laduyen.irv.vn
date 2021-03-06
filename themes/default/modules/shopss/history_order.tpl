<!-- BEGIN: main -->
<div class="table-responsive">
    <table class="table table-hover">
        <thead>
            <tr>
                <th align="center" width="20">{LANG.order_no_products}</th>
                <th width="110">{LANG.order_code}</th>
                <th width="140">{LANG.history_date}</th>
                <!-- BEGIN: price1 -->
                <th class="text-right">{LANG.history_total}</th>
                <!-- END: price1 -->
                <th>{LANG.history_payment}</th>
                <th width="80">&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            <!-- BEGIN: rows -->
            <tr {bg}>
                <td align="center">{TT}</td>
                <td><a title="{history_date} {LANG.order_moment} {history_moment}" href="{link}"><strong>{order_code}</strong></a></td>
                <td>{history_date} {LANG.order_moment} {history_moment}</td>
                <!-- BEGIN: price2 -->
                <td class="money" align="right">{history_total} ({unit_total})</td>
                <!-- END: price2 -->
                <td>{history_payment}</td>
                <td class="text-right">
                    <!-- BEGIN: checkorder -->
                    <a title="{LANG.history_update}" href="#" class="text-info" data-toggle="checkorder" data-checksess="{CHECK_SESS}" data-id="{CHECK_ID}"><i class="fa fa-fw fa-refresh"></i></a>
                    <!-- END: checkorder -->
                    <!-- BEGIN: remove -->
                    <a class="del delhisorder" title="{LANG.history_remove}" href="{link_remove}"><em class="fa fa-times-circle error">&nbsp;</em></a>
                    <!-- END: remove -->
                    <!-- BEGIN: no_remove -->
                    <em class="fa fa-minus-circle">&nbsp;</em>
                    <!-- END: no_remove -->
                </td>
            </tr>
            <!-- END: rows -->
        </tbody>
    </table>
</div>
<div class="clear"></div>
	<!-- BEGIN: page -->
    <div class="text-center">{PAGE}</div>
    <!-- END: page -->
	
	
<script type="text/javascript" data-show="after">
$(function() {
    $('a.delhisorder').click(function(event) {
        event.preventDefault();
        if (confirm("{LANG.history_del_confirm}")) {
            var href = $(this).attr('href');
            $.ajax({
                type : 'GET',
                url : href + "&nocache=" + new Date().getTime(),
                data : '',
                success : function(data) {
                    var s = data.split('_');
                    var strText = s[1];
                    var intIndexOfMatch = strText.indexOf('#@#');
                    while (intIndexOfMatch != -1) {
                        strText = strText.replace('#@#', '_');
                        intIndexOfMatch = strText.indexOf('#@#');
                    }
                    alert(strText);
                    window.location = '{URL_DEL_BACK}';
                }
            });
            return false;
        }
    });
});
</script>
<!-- END: main -->