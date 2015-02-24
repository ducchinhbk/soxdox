<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		$this->load->language('common/footer');


        $data['base'] = '';

        return $this->load->view('default/template/common/footer.tpl', $data);
	
	}
}