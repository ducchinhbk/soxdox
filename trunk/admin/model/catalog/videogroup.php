<?php
class ModelCatalogVideogroup extends Model {
	public function addVideogroup($data) {
		$this->event->trigger('pre.admin.videogroup.add', $data);
        
		$this->db->query("INSERT INTO " . DB_PREFIX . " videogroup SET category_id = '" . (int)$data['parent_id'] . "', `top` = '" . (isset($data['top']) ? (int)$data['top'] : 0) . "', `column` = '" . (int)$data['column'] . "', sort_order = '" . (int)$data['sort_order'] . "', status = '" . (int)$data['status'] . "', category_name = '" . (int)$data['path'] . "', date_modified = NOW(), date_added = NOW()");
        
		$videogroup_id = $this->db->getLastId();
        
        $url = 'videogroup/'.$this->remove_vietnamese( $data['category_description'][1]['name'].'-'.((int)$videogroup_id + 100) ).'.html';
    
        if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . " videogroup SET image = '" . $this->db->escape($data['image']) . "', url = '" . $this->db->escape($url) . "' WHERE videogroup_id = '" . (int)$videogroup_id . "'");
		}
        
		foreach ($data['category_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "videogroup_description SET videogroup_id = '" . (int)$videogroup_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "', description = '" . $this->db->escape($value['description']) . "', meta_title = '" . $this->db->escape($value['meta_title']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "'");
		}

		if (isset($data['keyword'])) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'videogroup_id=" . (int)$videogroup_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}

		$this->cache->delete('videogroup');

		$this->event->trigger('post.admin.videogroup.add', $videogroup_id);

		return $videogroup_id;
	}

	public function editVideogroup($videogroup_id, $data) {
		$this->event->trigger('pre.admin.videogroup.edit', $data);
        
		$this->db->query("UPDATE " . DB_PREFIX . "videogroup SET category_id = '" . (int)$data['parent_id'] . "', `top` = '" . (isset($data['top']) ? (int)$data['top'] : 0) . "', `column` = '" . (int)$data['column'] . "', sort_order = '" . (int)$data['sort_order'] . "', status = '" . (int)$data['status'] . "', category_name = '" . $data['path'] . "', date_modified = NOW() WHERE videogroup_id = '" . (int)$videogroup_id . "'");

		$url = 'videogroup/'.$this->remove_vietnamese( $data['category_description'][1]['name'].'-'.((int)$videogroup_id + 100) ).'.html';
        
        if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . " videogroup SET image = '" . $this->db->escape($data['image']) . "', url = '" . $this->db->escape($url) . "' WHERE videogroup_id = '" . (int)$videogroup_id . "'");
		}
        
		$this->db->query("DELETE FROM " . DB_PREFIX . "videogroup_description WHERE videogroup_id = '" . (int)$videogroup_id . "'");
        
		foreach ($data['category_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "videogroup_description SET videogroup_id = '" . (int)$videogroup_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "', description = '" . $this->db->escape($value['description']) . "', meta_title = '" . $this->db->escape($value['meta_title']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "'");
		}


		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'videogroup_id=" . (int)$videogroup_id . "'");

		if ($data['keyword']) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'videogroup_id=" . (int)$videogroup_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}

		$this->cache->delete('videogroup');

		$this->event->trigger('post.admin.videogroup.edit', $videogroup_id);
	}

	public function deleteVideogroup($videogroup_id) {
		$this->event->trigger('pre.admin.videogroup.delete', $videogroup_id);

		

		$this->db->query("DELETE FROM " . DB_PREFIX . "videogroup WHERE videogroup_id = '" . (int)$videogroup_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "videogroup_description WHERE videogroup_id = '" . (int)$videogroup_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "product_to_videogroup WHERE videogroup_id = '" . (int)$videogroup_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'videogroup_id=" . (int)$videogroup_id . "'");

		$this->cache->delete('videogroup');

		$this->event->trigger('post.admin.videogroup.delete', $videogroup_id);
	}

	public function repairVideogroups($parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "videogroup WHERE parent_id = '" . (int)$parent_id . "'");

		
	}

	public function getVideogroup($videogroup_id) {
		$query = $this->db->query("SELECT DISTINCT *, 
                                            (SELECT DISTINCT keyword FROM url_alias WHERE query = 'videogroup_id= " . (int)$videogroup_id . "') AS keyword 
                                    FROM videogroup v LEFT JOIN videogroup_description vd ON (v.videogroup_id = vd.videogroup_id) WHERE v.videogroup_id = '" . (int)$videogroup_id . "' AND vd.language_id = '" . (int)$this->config->get('config_language_id') . "'");

		return $query->row;
	}

	public function getVideogroups($data = array()) {
		$sql = "SELECT v.*, vd.* FROM " . DB_PREFIX . "videogroup v LEFT JOIN " . DB_PREFIX . "videogroup_description vd ON (v.videogroup_id = vd.videogroup_id) WHERE vd.language_id = '" . (int)$this->config->get('config_language_id') . "' ";

		if (!empty($data['filter_name'])) {
			$sql .= " AND vd.name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}

		$sql .= " GROUP BY v.videogroup_id";

		$sort_data = array(
			'name',
			'sort_order'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY sort_order";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getVideogroupDescriptions($videogroup_id) {
		$category_description_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "videogroup_description WHERE videogroup_id = '" . (int)$videogroup_id . "'");

		foreach ($query->rows as $result) {
			$category_description_data[$result['language_id']] = array(
				'name'             => $result['name'],
				'meta_title'       => $result['meta_title'],
				'meta_description' => $result['meta_description'],
				'meta_keyword'     => $result['meta_keyword'],
				'description'      => $result['description']
			);
		}

		return $category_description_data;
	}


	public function getTotalVideogroups() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "videogroup");

		return $query->row['total'];
	}
	
	public function remove_vietnamese($str)
    {
    	$accents_arr = array(
    		"à","á","ạ","ả","ã","â","ầ","ấ","ậ","ẩ","ẫ","ă","ằ","ắ","ặ","ẳ","ẵ",
            "è","é","ẹ","ẻ","ẽ","ê","ề","ế","ệ","ể","ễ",
    		"ì","í","ị","ỉ","ĩ",
    		"ò","ó","ọ","ỏ","õ","ô","ồ","ố","ộ","ổ","ỗ","ơ","ờ","ớ","ợ","ở","ỡ",
    		"ù","ú","ụ","ủ","ũ","ư","ừ","ứ","ự","ử","ữ",
    		"ỳ","ý","ỵ","ỷ","ỹ",
    		"đ",
    		"À","Á","Ạ","Ả","Ã","Â","Ầ","Ấ","Ậ","Ẩ","Ẫ","Ă","Ằ","Ắ","Ặ","Ẳ","Ẵ",
    		"È","É","Ẹ","Ẻ","Ẽ","Ê","Ề","Ế","Ệ","Ể","Ễ",
    		"Ì","Í","Ị","Ỉ","Ĩ",
    		"Ò","Ó","Ọ","Ỏ","Õ","Ô","Ồ","Ố","Ộ","Ổ","Ỗ","Ơ","Ờ","Ớ","Ợ","Ở","Ỡ",
    		"Ù","Ú","Ụ","Ủ","Ũ","Ư","Ừ","Ứ","Ự","Ử","Ữ",
    		"Ỳ","Ý","Ỵ","Ỷ","Ỹ",
    		"Đ"," ","\"","!","@","#","$","%","^","&","*","(",")",".",",",";","'","[","]","{","}",
			":","“","”","--",'.','>','<','--','---','‘','’','/','?','~',"|"
    	);
     
    	$no_accents_arr = array(
    		"a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a",
    		"e","e","e","e","e","e","e","e","e","e","e",
    		"i","i","i","i","i",
    		"o","o","o","o","o","o","o","o","o","o","o","o","o","o","o","o","o",
    		"u","u","u","u","u","u","u","u","u","u","u",
    		"y","y","y","y","y",
    		"d",
    		"a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a",
    		"e","e","e","e","e","e","e","e","e","e","e",
    		"i","i","i","i","i",
    		"o","o","o","o","o","o","o","o","o","o","o","o","o","o","o","o","o",
    		"u","u","u","u","u","u","u","u","u","u","u",
    		"y","y","y","y","y",
    		"d","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-",
    		"-","-","-","-",'-','-','-','-','---','-','-','-','','',''
    	);
        
    	return strtolower( str_replace( $accents_arr, $no_accents_arr, $str ) );
    }	
}
