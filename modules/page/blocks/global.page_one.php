<?php

/**
 * @Project NUKEVIET 4.x
 * @Author DANGDINHTU (dlinhvan@gmail.com)
 * @Copyright (C) 2017 Nuke.vn. All rights reserved
 * @Forum support https://forum.nuke.vn/
 * @License GNU/GPL version 2 or any later version
 * @Createdate  Wed, 18 Oct 2016 00:00:01 GMT 
 */

if( ! defined( 'NV_MAINFILE' ) )
{
	die( 'Stop!!!' );
}

if( ! nv_function_exists( 'nv_page_one' ) )
{
	function nv_block_config_page_one( $module, $data_block, $lang_block )
	{
		global $db, $nv_Cache, $site_mods;

		$db->sqlreset()->select( 'id, title, alias, description' )->from( NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] )->where( 'status = 1' )->order( 'weight ASC' );

		$list = $nv_Cache->db( $db->sql(), 'id', $module );

		$html = '';
		$html .= '<tr>';
		$html .= '	<td>' . $lang_block['title_length'] . '</td>';
		$html .= '	<td><input type="text" class="form-control w200" name="config_title_length" size="5" value="' . $data_block['title_length'] . '"/></td>';
		$html .= '</tr>';
		
		$html .= '<tr>';
		$html .= '	<td>' . $lang_block['description_length'] . '</td>';
		$html .= '	<td><input type="text" class="form-control w200" name="config_description_length" size="5" value="' . $data_block['description_length'] . '"/></td>';
		$html .= '</tr>';
		
		$html .= '<tr>';
		$html .= '	<td>' . $lang_block['image_width'] . '</td>';
		$html .= '	<td><input type="text" class="form-control w200" name="config_image_width" size="5" value="' . $data_block['image_width'] . '"/></td>';
		$html .= '</tr>';
		
		$html .= '<tr>';
		$html .= '	<td>' . $lang_block['image_height'] . '</td>';
		$html .= '	<td><input type="text" class="form-control w200" name="config_image_height" size="5" value="' . $data_block['image_height'] . '"/></td>';
		$html .= '</tr>';
		
		$html .= '<tr>';
		$html .= '	<td>' . $lang_block['id'] . '</td>';
		$html .= '	<td>';
		$html .= '		<select type="text" name="config_id" class="form-control">';
		foreach( $list as $l )
		{
			$selected = ( $l['id'] == $data_block['id'] ) ? 'selected="selected"' : '';
			$html .= '		<option value="' . $l['id'] . '"  ' . $selected . '>' . $l['title'] . '</option>';
		}
		$html .= '		</select>';
		$html .= '	</td>';
		$html .= '</tr>';
		return $html;
	}

	function nv_block_config_page_one_submit( $module, $lang_block )
	{
		global $nv_Request;
		$return = array();
		$return['error'] = array();
		$return['config'] = array();
		$return['config']['title_length'] = $nv_Request->get_int( 'config_title_length', 'post', 60 );
		$return['config']['image_width'] = $nv_Request->get_int( 'config_image_width', 'post', 350 );
		$return['config']['image_height'] = $nv_Request->get_int( 'config_image_height', 'post', 262 );
		$return['config']['description_length'] = $nv_Request->get_int( 'config_description_length', 'post', 200 );
		$return['config']['id'] = $nv_Request->get_int( 'config_id', 'post', 0 );
		return $return;
	}

	/**
	 * nv_page_one()
	 *
	 * @return
	 */
	function nv_page_one( $block_config )
	{
		global $nv_Cache, $global_config, $site_mods, $db, $module_name;
		
		$module = $block_config['module'];

		if( ! isset( $site_mods[$module] ) )
		{
			return '';
		}

		$db->sqlreset()->select( 'id, title, alias, description, image' )->from( NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] )->where( 'status = 1 AND id=' . $block_config['id'] );

		$list = $nv_Cache->db( $db->sql(), 'id', $module );

		if( ! empty( $list ) )
		{
			if( file_exists( NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/page/block.page_one.tpl' ) )
			{
				$block_theme = $global_config['module_theme'];
			}
			elseif( file_exists( NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/modules/page/block.page_one.tpl' ) )
			{
				$block_theme = $global_config['site_theme'];
			}
			else
			{
				$block_theme = 'default';
			}

			$xtpl = new XTemplate( 'block.page_one.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/page' );
			$width = $block_config['image_width'];
			$height = $block_config['image_height'];
			foreach( $list as $l )
			{
				
				if( $l['image'] != '' and ( $imginfo = nv_is_image( NV_UPLOADS_REAL_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $l['image'] ) ) != array() )
				{
					$image = NV_UPLOADS_REAL_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $l['image'];

					if( $imginfo['width'] <= $width and $imginfo['height'] <= $height )
					{
						$l['image'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $l['image'];
					}
					else
					{
						$basename = preg_replace( '/(.*)(\.[a-z]+)$/i', $site_mods[$module]['module_data'] . '_' . $l['id'] . '_\1_' . $width . '-' . $height . '\2', basename( $image ) );
						if( file_exists( NV_ROOTDIR . '/' . NV_TEMP_DIR . '/' . $basename ) )
						{
							$imginfo = nv_is_image( NV_ROOTDIR . '/' . NV_TEMP_DIR . '/' . $basename );
							$l['image'] = NV_BASE_SITEURL . NV_TEMP_DIR . '/' . $basename;
						}
						else
						{
							$_image = new NukeViet\Files\Image( $image, NV_MAX_WIDTH, NV_MAX_HEIGHT );
							if( ( $width * $_image->fileinfo['height'] / $_image->fileinfo['width'] ) > $height )
							{
								$_image->resizeXY( $width, NV_MAX_HEIGHT );
							}
							else
							{
								$_image->resizeXY( NV_MAX_WIDTH, $height );
							}
							
							$_image->cropFromCenter( $width, $height );
							
							$_image->save( NV_ROOTDIR . '/' . NV_TEMP_DIR, $basename );
							if( file_exists( NV_ROOTDIR . '/' . NV_TEMP_DIR . '/' . $basename ) )
							{
								$l['image'] = NV_BASE_SITEURL . NV_TEMP_DIR . '/' . $basename;
							}
						}
					}
				}
				elseif( nv_is_url( $l['image'] ) )
				{
					$l['image'] = $l['image'];
				}

				else
				{
					$l['image'] = NV_BASE_SITEURL . 'themes/' . $global_config['site_theme'] . '/images/no_image.gif';

				}

				$l['title_cut'] = nv_clean60( $l['title'], $block_config['title_length'] );
				$l['description_cut'] = nv_clean60( $l['description'], $block_config['description_length'] );
				$l['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $l['alias'] . $global_config['rewrite_exturl'];

				$xtpl->assign( 'ROW', $l );
			}
			$xtpl->parse( 'main' );
			return $xtpl->text( 'main' );
		}
		else
		{
			return '';
		}
	}
}
if( defined( 'NV_SYSTEM' ) )
{
	$content = nv_page_one( $block_config );
}
