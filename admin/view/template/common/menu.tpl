<ul id="menu">
  <li id="dashboard"><a href="<?php echo $home; ?>"><i class="fa fa-dashboard fa-fw"></i> <span><?php echo $text_dashboard; ?></span></a></li>
  <li id="catalog"><a class="parent"><i class="fa fa-tags fa-fw"></i> <span><?php echo $text_catalog; ?></span></a>
    <ul>
      <li><a href="<?php echo $category; ?>"><?php echo $text_category; ?></a></li>
      <li><a href="<?php echo $product; ?>"><?php echo $text_product; ?></a></li>
       <li><a href="<?php echo $review; ?>"><?php echo $text_review; ?></a></li>
      <li><a href="<?php echo $information; ?>"><?php echo $text_information; ?></a></li>
     
    </ul>
  </li>
  
  <li id="sale"><a class="parent"><i class="fa fa-shopping-cart fa-fw"></i> <span><?php echo $text_customer; ?></span></a>
    <ul>
        <li><a href="<?php echo $customer; ?>"><?php echo $text_customer; ?></a></li>
        <li><a href="<?php echo $customer_group; ?>"><?php echo $text_customer_group; ?></a></li>
        <li><a href="<?php echo $customer_ban_ip; ?>"><?php echo $text_customer_ban_ip; ?></a></li>
     
    </ul>
  </li>
 
  <li id="system"><a class="parent"><i class="fa fa-cog fa-fw"></i> <span><?php echo $text_system; ?></span></a>
    <ul>
      <li><a href="<?php echo $setting; ?>"><?php echo $text_setting; ?></a></li>
     
      </li>
      <li><a class="parent"><?php echo $text_users; ?></a>
        <ul>
          <li><a href="<?php echo $user; ?>"><?php echo $text_user; ?></a></li>
          <li><a href="<?php echo $user_group; ?>"><?php echo $text_user_group; ?></a></li>
          <li><a href="<?php echo $api; ?>"><?php echo $text_api; ?></a></li>
        </ul>
      </li>
      <li><a class="parent"><?php echo $text_localisation; ?></a>
        <ul>
          <li><a href="<?php echo $country; ?>"><?php echo $text_country; ?></a></li>
          <li><a href="<?php echo $language; ?>"><?php echo $text_language; ?></a></li>
        </ul>
      </li>
    </ul>
  </li>
  <li id="tools"><a class="parent"><i class="fa fa-wrench fa-fw"></i> <span><?php echo $text_tools; ?></span></a>
    <ul>
      <li><a href="<?php echo $upload; ?>"><?php echo $text_upload; ?></a></li>
      <li><a href="<?php echo $backup; ?>"><?php echo $text_backup; ?></a></li>
      <li><a href="<?php echo $error_log; ?>"><?php echo $text_error_log; ?></a></li>
    </ul>
  </li>
  <li id="reports"><a class="parent"><i class="fa fa-bar-chart-o fa-fw"></i> <span><?php echo $text_reports; ?></span></a>
    <ul>
      <li><a class="parent"><?php echo $text_sale; ?></a>
        <ul>
          <li><a href="<?php echo $report_sale_order; ?>"><?php echo $text_report_sale_order; ?></a></li>
          <li><a href="<?php echo $report_sale_tax; ?>"><?php echo $text_report_sale_tax; ?></a></li>
          <li><a href="<?php echo $report_sale_shipping; ?>"><?php echo $text_report_sale_shipping; ?></a></li>
          <li><a href="<?php echo $report_sale_return; ?>"><?php echo $text_report_sale_return; ?></a></li>
          <li><a href="<?php echo $report_sale_coupon; ?>"><?php echo $text_report_sale_coupon; ?></a></li>
        </ul>
      </li>
      <li><a class="parent"><?php echo $text_product; ?></a>
        <ul>
          <li><a href="<?php echo $report_product_viewed; ?>"><?php echo $text_report_product_viewed; ?></a></li>
          <li><a href="<?php echo $report_product_purchased; ?>"><?php echo $text_report_product_purchased; ?></a></li>
        </ul>
      </li>
      <li><a class="parent"><?php echo $text_customer; ?></a>
        <ul>
          <li><a href="<?php echo $report_customer_online; ?>"><?php echo $text_report_customer_online; ?></a></li>
          <li><a href="<?php echo $report_customer_activity; ?>"><?php echo $text_report_customer_activity; ?></a></li>
          <li><a href="<?php echo $report_customer_order; ?>"><?php echo $text_report_customer_order; ?></a></li>
          <li><a href="<?php echo $report_customer_reward; ?>"><?php echo $text_report_customer_reward; ?></a></li>
          <li><a href="<?php echo $report_customer_credit; ?>"><?php echo $text_report_customer_credit; ?></a></li>
        </ul>
      </li>
      <li><a class="parent"><?php echo $text_marketing; ?></a>
        <ul>
          <li><a href="<?php echo $report_marketing; ?>"><?php echo $text_marketing; ?></a></li>
          <li><a href="<?php echo $report_affiliate; ?>"><?php echo $text_report_affiliate; ?></a></li>
          <li><a href="<?php echo $report_affiliate_activity; ?>"><?php echo $text_report_affiliate_activity; ?></a></li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
