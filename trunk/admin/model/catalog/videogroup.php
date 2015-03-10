<?php
class ModelCatalogVideogroup extends Model {
	public function addVideogroup($data) {
		$this->event->trigger('pre.admin.videogroup.add', $data);
        
		$this->db->query("INSERT INTO " . DB_PREFIX . " videogroup SET category_id = '" . (int)$data['parent_id'] . "', image = '" . $this->db->escape($data['image']) . "', `top` = '" . (isset($data['top']) ? (int)$data['top'] : 0) . "', `column` = '" . (int)$data['column'] . "', sort_order = '" . (int)$data['sort_order'] . "', status = '" . (int)$data['status'] . "', category_name = '" . (int)$data['path'] . "', date_modified = NOW(), date_added = NOW()");
        
		$videogroup_id = $this->db->getLastId();
        

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
        
		$this->db->query("UPDATE " . DB_PREFIX . "videogroup SET category_id = '" . (int)$data['parent_id'] . "', image = '" . $this->db->escape($data['image']) . "', `top` = '" . (isset($data['top']) ? (int)$data['top'] : 0) . "', `column` = '" . (int)$data['column'] . "', sort_order = '" . (int)$data['sort_order'] . "', status = '" . (int)$data['status'] . "', category_name = '" . $data['path'] . "', date_modified = NOW() WHERE videogroup_id = '" . (int)$videogroup_id . "'");

		
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
	
		
}
