<!-- BEGIN: main -->
<div class="page">
    <!-- BEGIN: bbodytext -->
    <div class="well">
    {CONTENT.bodytext}
    </div>
    <!-- END: bbodytext -->
    <div class="row">
        <div class="col-sm-12 col-md-14">
            <!-- BEGIN: ddep -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3>{DEP.full_name}</h3>
                </div>
                <div class="panel-body">
                    <!-- BEGIN: note -->
                    <div class="margin-bottom">{DEP.note}</div>
                    <!-- END: note -->
                    <!-- BEGIN: phone -->
                    <p><em class="fa fa-phone fa-horizon margin-right"></em>{LANG.phone}: 
                        <span><!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><!-- BEGIN: href --><a href="tel:{PHONE.href}" class="black"><!-- END: href -->{PHONE.number}<!-- BEGIN: href2 --></a><!-- END: href2 --><!-- END: item --></span>
                    </p>
                    <!-- END: phone -->
                    <!-- BEGIN: fax -->
                    <p><em class="fa fa-fax fa-horizon margin-right"></em>{LANG.fax}: 
                        <span>{DEP.fax}</span>
                    </p>
                    <!-- END: fax -->
                    <!-- BEGIN: email -->
                    <p><em class="fa fa-envelope fa-horizon margin-right"></em>{LANG.email}: 
                        <span><!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="mailto:{EMAIL}" class="black">{EMAIL}</a><!-- END: item --></span>
                    </p>
                    <!-- END: email -->
                    <!-- BEGIN: yahoo -->
                    <p><em class="icon-yahoo fa-horizon margin-right"></em>{YAHOO.name}: 
                        <span><!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="ymsgr:SendIM?{YAHOO.value}" class="black">{YAHOO.value}</a><!-- END: item --></span>
                    </p>
                    <!-- END: yahoo -->
                    <!-- BEGIN: skype -->
                    <p><em class="fa fa-skype fa-horizon margin-right"></em>{SKYPE.name}: 
                        <span><!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="skype:{SKYPE.value}?call" class="black">{SKYPE.value}</a><!-- END: item --></span>
                    </p>
                    <!-- END: skype -->
                    <!-- BEGIN: viber -->
                    <p><em class="icon-viber fa-horizon margin-right"></em>{VIBER.name}: 
                        <span><!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma -->{VIBER.value}<!-- END: item --></span>
                    </p>
                    <!-- END: viber -->
                    <!-- BEGIN: icq -->
                    <p><em class="icon-icq fa-horizon margin-right"></em>{ICQ.name}: 
                        <span><!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="icq:message?uin={ICQ.value}" class="black">{ICQ.value}</a><!-- END: item --></span>
                    </p>
                    <!-- END: icq -->
                    <!-- BEGIN: whatsapp -->
                    <p><em class="fa fa-whatsapp fa-horizon margin-right"></em>{WHATSAPP.name}: 
                        <span><!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a data-android="intent://send/{WHATSAPP.value}#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end" class="black">{WHATSAPP.value}</a><!-- END: item --></span>
                    </p>
                    <!-- END: whatsapp -->
                    <!-- BEGIN: other -->
                    <p>
                        <span>{OTHER.name}: </span>
                        <span>{OTHER.value}</span>
                    </p>
                    <!-- END: other -->
                </div>
            </div>
            <!-- END: ddep -->
        </div>
        <div class="col-sm-24 col-md-24">
            <div class="block_contact">
                <div class="block_contact-title template-default-heading">{LANG.contact}</div>
                <div class="block_contact-body loadContactForm">
                    <div class="block_info_contact row">
                        <div class="info_phone col-xs-24 col-sm-12 col-md-12">
                            <div class="icon_info_contact">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                            </div>
                            <div class="content_info_contact">
                                [INFO_CONTACT_PHONE]
                            </div>
                        </div>
                        <div class="info_email col-xs-24 col-sm-12 col-md-12">
                            <div class="icon_info_contact">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </div>
                            <div class="content_info_contact">
                                [INFO_CONTACT_EMAIL]
                            </div>
                        </div>
                        
                    </div>
                    {FORM}
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: main -->