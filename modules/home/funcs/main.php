<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Apr 20, 2010 10:47:41 AM
 */

if (!defined('NV_IS_MOD_PAGE')) {
    die('Stop!!!');
}
 $contents = '';

    $page_title = $module_info['site_title'];
    $key_words = $module_info['keywords'];
    $mod_title = isset($lang_module['main_title']) ? $lang_module['main_title'] : $module_info['custom_title'];


include NV_ROOTDIR . '/includes/header.php';
echo nv_site_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
