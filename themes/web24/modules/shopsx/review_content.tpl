<!-- BEGIN: main -->
<div class="panel panel-default">
	<div class="panel-body">
		<div class="row form-review">
			<div class="col-xs-24 col-sm-11 border-right">
				<form id="review_form" class="rating_form">
					<div class="form-group">
						<input type="text" class="form-control rating_form-input" name="sender" value="{SENDER}" placeholder="{LANG.profile_user_name}">
					</div>
					<div class="form-group">
						<div class="rate-ex2-cnt">
							<div id="1" class="rate-btn-1 rate-btn"></div>
							<div id="2" class="rate-btn-2 rate-btn"></div>
							<div id="3" class="rate-btn-3 rate-btn"></div>
							<div id="4" class="rate-btn-4 rate-btn"></div>
							<div id="5" class="rate-btn-5 rate-btn"></div>
						</div>
					</div>
					<div class="form-group">
						<textarea name="comment" class="form-control rating_form-textarea" placeholder="{LANG.rate_comment}"></textarea>
					</div>
					<!-- BEGIN: captcha -->
					<div class="form-group">
						<div class="d-inline-flex">
							<div class="">
								<input type="text" maxlength="6" value="" id="fcode_iavim" name="fcode" class="form-control rating_form-input" style="width: 100%" placeholder="{LANG.rate_captcha}" />
							</div>
							<div style="width: 250px;">
								&nbsp;&nbsp;<img src="{NV_BASE_SITEURL}index.php?scaptcha=captcha" width="{GFX_WIDTH}" height="{GFX_HEIGHT}" alt="{LANG.captcha}" class="captchaImg display-inline-block" />
								&nbsp;<em class="fa fa-pointer fa-refresh fa-lg" onclick="change_captcha('#fcode_iavim');">&nbsp;</em>
							</div>
						</div>
					</div>
					<!-- END: captcha -->
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="{LANG.rate}" />
					</div>
				</form>
			</div>
			<div class="col-xs-24 col-sm-13 border">
				<div id="rate_list">
					<p class="text-center">
						<em class="fa fa-spinner fa-spin fa-3x">&nbsp;</em>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" data-show="after">
	$("#rate_list").load('{LINK_REVIEW}&showdata=1');
	var rating = 0;
	$('.rate-btn').hover(function() {
		$('.rate-btn').removeClass('rate-btn-hover');
		rating = $(this).attr('id');
		for (var i = rating; i >= 0; i--) {
			$('.rate-btn-' + i).addClass('rate-btn-hover');
		};
	});

	$('#review_form').submit(function() {
		var sender = $(this).find('input[name="sender"]').val();
		var comment = $(this).find('textarea[name="comment"]').val();
		var fcode = $(this).find('input[name="fcode"]').val();
		if(rating !=0) {
		    if(sender == '') {
			    $('input[name="sender"]').focus();
			}
			else if(fcode == '') {
			    $('input[name="fcode"]').focus();
			}
		}		
		
		$.ajax({
			type : "POST",
			url : '{LINK_REVIEW}' + '&nocache=' + new Date().getTime(),
			data : 'sender=' + sender + '&rating=' + rating + '&comment=' + comment + '&fcode=' + fcode,
			success : function(data) {
			
			var s = data.split('_');
				alert(s[1]);
				if (s[0] == 'OK') {
					$('#review_form input[name="sender"], #review_form input[name="fcode"], #review_form textarea').val('');
					$('.rate-btn').removeClass('rate-btn-hover');
					$("#rate_list").load('{LINK_REVIEW}&showdata=1');
					window.location.href = 	$(location).attr('href')+'#detail';
				}
				else {				    
				    change_captcha();
					$("[name=fcode]",a).val('');
				}				
			}
		});		
		return !1;
	});
</script>
<!-- END: main -->