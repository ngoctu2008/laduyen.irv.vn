<!-- BEGIN: main -->
<!-- BEGIN: display_button -->
<div class="btn_login -icon d-xs-inline-flex">
	<i class="icofont-ui-user"></i> <span class="btn_login -text">{GLANG.your_account}</span>
</div>
<div id="nv-block-login" class="btn_login-content">
    <button type="button" class="login btn_login-content-login" onclick="modalShowByObj('#guestLogin_{BLOCKID}', 'recaptchareset')">
        {GLANG.signin}
    </button><!-- BEGIN: allowuserreg2 --><button type="button" class="register btn_login-content-reg" onclick="modalShowByObj('#guestReg_{BLOCKID}', 'recaptchareset')">
        {GLANG.register}
    </button>
    <!-- END: allowuserreg2 -->
    <!-- BEGIN: allowuserreg_link -->
    <a href="{USER_REGISTER}" class="register btn btn-primary btn-sm">{GLANG.register}</a>
    <!-- END: allowuserreg_link -->
</div>
<script>
	$('.btn_login.-icon, .btn_login-content').hover(function(){
		// $('.btn_login-content').fadeToggle();
	});
</script>
<!-- START FORFOOTER -->
<div id="guestLogin_{BLOCKID}" class="hidden">
    <div class="page panel panel-default bg-lavender box-shadow">
        <div class="panel-body">
            <h2 class="text-center margin-bottom-lg">
                {LANG.login}
            </h2>
            {FILE "login_form.tpl"}
        </div>
    </div>
</div>
<!-- END FORFOOTER -->
<!-- END: display_button -->

<!-- BEGIN: display_form -->
{FILE "login_form.tpl"}
<!-- END: display_form -->

<!-- BEGIN: allowuserreg -->
<div id="guestReg_{BLOCKID}" class="hidden">
    <div class="page panel panel-default bg-lavender box-shadow">
        <div class="panel-body">
            <h2 class="text-center margin-bottom-lg">
                {LANG.register}
            </h2>
            {FILE "register_form.tpl"}
        </div>
    </div>
</div>
<!-- END: allowuserreg -->

<!-- BEGIN: datepicker -->
<link type="text/css" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/language/jquery.ui.datepicker-{NV_LANG_INTERFACE}.js"></script>
<!-- END: datepicker -->

<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{BLOCK_JS}/js/users.js"></script>
<!-- END: main -->

<!-- BEGIN: signed -->
<div class="content signed clearfix">
    <span><a title="{USER.full_name}" class="pointer button user btn_login -icon d-xs-inline-flex" data-toggle="tip" data-target="#userBlock_{BLOCKID}" data-click="y"> <!--style="background-image:url({AVATA})"--><i class="icofont-ui-user"></i><span class="admin btn_login -text"> {USER.full_name}</span></a></span>

    <div id="userBlock_{BLOCKID}" class="hidden">
        <div class="nv-info" style="display:none"></div>
        <div class="userBlock">
            <h3 class="text-center margin-bottom-lg"><span class="lev-{LEVEL} text-normal margin-right">{WELCOME}:</span>{USER.full_name}</h3>
            <div class="row margin-bottom-lg">
                <div class="col-xs-8 text-center">
                    <a title="{LANG.edituser}" href="#" onclick="changeAvatar('{URL_AVATAR}')"><img src="{AVATA}" alt="{USER.full_name}" class="img-thumbnail bg-gainsboro" /></a>
                </div>
                <div class="col-xs-16">
                    <ul class="nv-list-item sm">
                        <li class="active">
                            <a href="{URL_MODULE}">{LANG.user_info}</a>
                        </li>
                        <li>
                            <a href="{URL_HREF}editinfo">{LANG.editinfo}</a>
                        </li>
                        <!-- BEGIN: allowopenid -->
                        <li>
                            <a href="{URL_HREF}editinfo/openid">{LANG.openid_administrator}</a>
                        </li>
                        <!-- END: allowopenid -->
                        <!-- BEGIN: regroups -->
                        <li>
                            <a href="{URL_HREF}editinfo/group">{LANG.in_group}</a>
                        </li>
                        <!-- END: regroups -->
                    </ul>
                </div>
            </div>
            <!-- BEGIN: admintoolbar -->
            <div class="margin-top boder-top padding-top margin-bottom-lg">
                <p class="margin-bottom-sm"><strong>{GLANG.for_admin}</strong></p>
                <ul class="nv-list-item sm">
                    <li>
                        <em class="icofont-gear fa-horizon margin-right-sm"></em><a href="{NV_BASE_SITEURL}{NV_ADMINDIR}/index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}" title="{GLANG.admin_page}"><span>{GLANG.admin_page}</span></a>
                    </li>
                    <!-- BEGIN: is_modadmin -->
                    <li>
                        <em class="icofont-key fa-horizon margin-right-sm"></em><a href="{URL_ADMINMODULE}" title="{GLANG.admin_module_sector} {MODULENAME}"><span>{GLANG.admin_module_sector} {MODULENAME}</span></a>
                    </li>
                    <!-- END: is_modadmin -->
                    <!-- BEGIN: is_spadadmin -->
                    <li>
                        <em class="icofont-drag fa-horizon margin-right-sm"></em><a href="{URL_DBLOCK}" title="{LANG_DBLOCK}"><span>{LANG_DBLOCK}</span></a>
                    </li>
                    <!-- END: is_spadadmin -->
                    <li>
                        <em class="icofont-user fa-horizon margin-right-sm"></em><a href="{URL_AUTHOR}" title="{GLANG.admin_view}"><span>{GLANG.admin_view}</span></a>
                    </li>
                </ul>
            </div>
            <!-- END: admintoolbar -->
            <div class="row">
                <div class="col-xs-16 small">
                    <em class="button btn-sm icofont-login" title="{LANG.current_login}"></em>{USER.current_login_txt}
                </div>
                <div class="col-xs-8 text-right">
                    <button type="button" class="btn btn-default btn-sm active" onclick="{URL_LOGOUT}(this);">
                        <em class="icofont-logout"></em>&nbsp;{LANG.logout_title}&nbsp;
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{BLOCK_JS}/js/users.js"></script>
<!-- END: signed -->