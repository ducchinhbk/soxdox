<?php
class ControllerFrontLoadcurrentvideo extends Controller {
    
	public function index() {
	   
        $this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));
        
        if(isset($this->request->post['videoID']))
        {
            $temp = base64_decode(base64_decode($this->request->post['videoID']));
            $temp = explode('-', $temp);
            
            $videoID = $temp[0];
        }
        else{
             $videoID = 58;
        }
        $data['videodescription'] = array();
        $this->load->model('front/video');
        $result = $this->model_front_video->get_video_link_byID( $videoID );
        if( !empty($result) )
        {
            $data['videolink'] = $result;
        }
        else{
            $data['videolink'] = 'https://www.youtube.com/watch?v=aEkNB-nH_QU';
        }
        
        $de_result = $this->model_front_video->get_video_description_byID( $videoID );
        
        $data['videodescription'] = array(
		      'name'             =>  $de_result[0]['name'],
		      'description'      => $de_result[0]['description'],
		      'viewCount'        => number_format((int)$de_result[0]['viewCount']),
		      'favoriteCount'    => number_format((int)$de_result[0]['favoriteCount']),
		      'date_added'       => date("d.m.Y", strtotime($de_result[0]['date_added']))
		);
        $currentVideoHtml = 'default/template/front/loadcurrentvideo.tpl';
        $descriontionHtml = 'default/template/front/description.tpl';
        if (file_exists(DIR_TEMPLATE . $currentVideoHtml)) {
            extract($data);
            ob_start();
            require(DIR_TEMPLATE . $currentVideoHtml);

            $currentVideoHtml = ob_get_contents();
            ob_end_clean();
        } 
        else {
            trigger_error('Error: Could not load template ' . DIR_TEMPLATE . $currentVideoHtml . '!');
            exit();
        }
        
        if (file_exists(DIR_TEMPLATE . $descriontionHtml)) {
            extract($data);
            ob_start();
            require(DIR_TEMPLATE . $descriontionHtml);

            $descriontionHtml = ob_get_contents();
            ob_end_clean();
        } 
        else {
            trigger_error('Error: Could not load template ' . DIR_TEMPLATE . $descriontionHtml . '!');
            exit();
        }
		
        $json = array(
            'videoHtml' => $currentVideoHtml,
            'description' => $descriontionHtml
        );
        
        $this->response->setOutput(json_encode($json));
	}
}