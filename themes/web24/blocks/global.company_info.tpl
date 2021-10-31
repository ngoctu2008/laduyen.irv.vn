<!-- BEGIN: main -->
	<ul class="company_info" itemscope itemtype="http://schema.org/LocalBusiness">
	    <!-- BEGIN: company_name -->
	    <li class="company_name block_simple-heading">
	    	<span itemprop="name">{DATA.company_name}</span><!-- BEGIN: company_sortname --> (<span itemprop="alternateName">{DATA.company_sortname}</span>)<!-- END: company_sortname -->
	    </li>
	    <!-- END: company_name -->

	    <!-- BEGIN: company_regcode -->
	    <li>
	    	<span>{LICENSE}</span>
	    </li>
	    <!-- END: company_regcode -->

	    <!-- BEGIN: company_responsibility -->
	    <li>
	    	<span><strong>{LANG.company_responsibility}:</strong> <span itemprop="founder" itemscope itemtype="http://schema.org/Person"><span itemprop="name">{DATA.company_responsibility}</span></span></span>
	    </li>
	    <!-- END: company_responsibility -->

	    <!-- BEGIN: company_address -->
	    <li>
	        <span><strong>{LANG.company_address}:</strong> <span itemprop="address" itemscope itemtype="http://schema.org/PostalAddress"><span itemprop="addressLocality" class="company-address">{DATA.company_address}</span></span></span>
	    </li>
	    <!-- END: company_address -->

	    <!-- BEGIN: company_phone -->
	    <li><span><strong>{LANG.company_phone}:</strong>
	            <!-- BEGIN: item -->
	            <!-- BEGIN: comma -->&nbsp;-&nbsp;
	            <!-- END: comma -->
	            <!-- BEGIN: href --><a href="tel:{PHONE.href}">
	                <!-- END: href --><span itemprop="telephone">{PHONE.number}</span><!-- BEGIN: href2 --></a><!-- END: href2 -->
	            <!-- END: item --></span>
	    </li>
	    <!-- END: company_phone -->

	    <!-- BEGIN: company_fax -->
	    <li>
	    	<span><strong>{LANG.company_fax}:</strong> <span itemprop="faxNumber">{DATA.company_fax}</span></span>
	    </li>
	    <!-- END: company_fax -->

	    <!-- BEGIN: company_email -->
	    <li>
	    	
	    	<span><strong>{LANG.company_email}:</strong>
	            <!-- BEGIN: item -->
	            <!-- BEGIN: comma -->&nbsp;-&nbsp;
	            <!-- END: comma --><a href="mailto:{EMAIL}"><span itemprop="email">{EMAIL}</span></a><!-- END: item --></span>
	    </li>
	    <!-- END: company_email -->

	    <!-- BEGIN: company_website -->
	    <li>
	    	
	    	<span><strong>{LANG.company_website}:</strong>
	            <!-- BEGIN: item -->
	            <!-- BEGIN: comma -->&nbsp;
	            <!-- END: comma --><a href="{WEBSITE}" target="_blank"><span itemprop="url">{WEBSITE}</span></a><!-- END: item --></span>
	    </li>
	    <!-- END: company_website -->

	</ul>
	<!-- BEGIN: company_map_modal -->
	<div class="modal fade company-map-modal" id="company-map-modal-{DATA.bid}" data-trigger="false" data-apikey="{DATA.company_mapapikey}">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-body">
	                <div class="company-map" id="company-map-{DATA.bid}" data-clat="{DATA.company_mapcenterlat}" data-clng="{DATA.company_mapcenterlng}" data-lat="{DATA.company_maplat}" data-lng="{DATA.company_maplng}" data-zoom="{DATA.company_mapzoom}"></div>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- END: company_map_modal -->
<!-- END: main -->