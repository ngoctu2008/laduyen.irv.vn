            </div>
        <!-- </div>
    </div>
</section>   -->
        
<footer id="footer">
    <div class="container">
        <div class="wraper">
            <div class="row mg5">
                <div class="col-xs-24 col-sm-12 col-lg-6">
                    [INFO]
                </div>
                <div class="col-xs-24 col-sm-12 col-lg-6">
                    [MENU_CHUYENMUC]
                </div>
                <div class="col-xs-24 col-sm-12 col-lg-6">
                    [MENU_DICHVU]
                </div>
                <div class="col-xs-24 col-sm-12 col-lg-6">
                    [COMPANY_INFO]
                </div>
            </div>
        </div>
    </div>
</footer>
<div id="footer2">
    <div class="container">
        <div class="wraper">
                    [COPYRIGHT]
                    [FOOTER_SITE]
            </div>
            <!-- BEGIN: theme_type -->
            <div class="theme-change">
            <!-- BEGIN: loop -->
                <!-- BEGIN: other -->
                <a href="{STHEME_TYPE}" rel="nofollow" title="{STHEME_INFO}"><em class="fa fa-{STHEME_ICON} fa-lg"></em></a>
                <!-- END: other -->
                <!-- BEGIN: current -->
                <span title="{LANG.theme_type_select}: {STHEME_TITLE}"><em class="fa fa-{STHEME_ICON} fa-lg"></em></span>
                <!-- END: current -->
            <!-- END: loop -->
            </div>
            <!-- END: theme_type -->
        </div>
    </div>
</div>
<div class="fixed_hotline">
	[HOTLINE] 
</div>

{ADMINTOOLBAR}
</div></div>
<!-- SiteModal Required!!! -->
<div id="sitemodal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <em class="fa fa-spinner fa-spin">&nbsp;</em>
            </div>
            <button type="button" class="close" data-dismiss="modal"><span class="fa fa-times"></span></button>
        </div>
    </div>
</div>
<script type="text/javascript" defer>
	function fadeToggleSearch(){
		// if($(window).width() < 786){
			$('.headerSearch-input').fadeToggle();
		// }
	}
	$(window).on('resize', function(){
		var wraperHeader = $('.wraperheader');
        var fixedWraperHeader = $('.fixed_wraperheader');
		fixedWraperHeader.height(wraperHeader.outerHeight());
	});
    $(window).ready(function(){
        var lazyLoadInstance = new LazyLoad({
            elements_selector: ".lazy-img"
            // ... more custom settings?
        });
        // $(".group_news-des").max(function(){return $(this).outerHeight();});
		
        var wraperHeader = $('.wraperheader');
        var topHeader = $('.top_header');
        var fixedWraperHeader = $('.fixed_wraperheader');
		
		// $('.cat_menu2-sub').width($('.block_slider, .main_content').width());
		// fixedWraperHeader.height(wraperHeader.outerHeight());

        $(window).scroll(function(){
            if($(window).scrollTop() > topHeader.outerHeight()){
                wraperHeader.addClass('fixed');
            }
            else{
                wraperHeader.removeClass('fixed');
            }
        });
    });
</script>