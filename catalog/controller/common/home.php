<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}
        
        $data['videos'] = array();
        $data['newVideos'] = array();
        $this->load->model('tool/image');
        
        $this->load->model('front/video');
        $allVideo = $this->model_front_video->get_all_video();
        
        foreach ($allVideo as $allVideo) {
			if (is_file(DIR_IMAGE . $allVideo['image'])) {
				$image = $this->model_tool_image->resize($allVideo['image'], 200, 200);
			} else {
				$image = $this->model_tool_image->resize('no_image.png', 200, 200);
			}

			$data['videos'][] = array(
				'videoID' => $allVideo['product_id'],
				'image'      => HTTP_CATALOG.'image/' .$allVideo['image'],
				'name'       => $allVideo['name'],
                'duration'   => $allVideo['duration'],
                'link'       => $allVideo['link'],
				'actLink'       => $this->url->link('front/detail'),
                'videoID_decode' => base64_encode(base64_encode($allVideo['product_id'].'-@124bv'))
			);
		}
        
        //get 9 new videos
        $newVideos = $this->model_front_video->get_9_new_videos();
        
        foreach ($newVideos as $newVideo) {
			if (is_file(DIR_IMAGE . $newVideo['image'])) {
				$image = $this->model_tool_image->resize($newVideo['image'], 384, 288);
			} else {
				$image = $this->model_tool_image->resize('no_image.png', 384, 288);
			}

			$data['newVideos'][] = array(
				'videoID' => $newVideo['product_id'],
				'image'      => $image,//HTTP_CATALOG.'image/' .$newVideo['image'],
				'name'       => $newVideo['name'],
                'duration'   => $newVideo['duration'],
                'viewCount'  => number_format((int)$newVideo['viewCount']),
                'link'       => $newVideo['link'],
				'actLink'       => $this->url->link('front/detail'),
                'videoID_decode' => base64_encode(base64_encode($newVideo['product_id'].'-@124bv'))
			);
		}
        
        
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
	
	}
}