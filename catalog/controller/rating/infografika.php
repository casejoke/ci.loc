<?php
class ControllerRatingInfografika extends Controller {
  private $error = array();
  public function index() {
    //загрузим язык
    $this->load->language('rating/infografika ');



    $data['heading_title'] = $this->config->get('config_meta_title');
    //seo
    $this->document->setTitle($data['heading_title']);
    $this->document->setDescription($this->language->get('config_meta_description'));
    $this->document->setKeywords($this->language->get('config_meta_keywords'));

    if (isset($this->request->get['route'])) {
      $this->document->addLink(HTTP_SERVER, 'canonical');
    }

    $this->document->addScript('catalog/view/module_script/infografika.js');
    $this->document->addStyle('/infografika/css/perfect-scrollbar.css');
    $this->document->addStyle('/infografika/css/style.css');

    $data['column_left'] = $this->load->controller('common/column_left');
    $data['column_right'] = $this->load->controller('common/column_right');
    $data['content_top'] = $this->load->controller('common/content_top');
    $data['content_bottom'] = $this->load->controller('common/content_bottom');
    $data['footer'] = $this->load->controller('common/footer');
    $data['header'] = $this->load->controller('common/header');

    if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/rating/infografika.tpl')) {
      $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/rating/infografika.tpl', $data));
    } else {
      $this->response->setOutput($this->load->view('default/template/rating/infografika.tpl', $data));
    }
  }
  protected function validate() {
    if (!isset($this->request->post['email'])) {
     // $this->error['warning'] = $this->language->get('error_email');
    }
    return !$this->error;
  }
}
