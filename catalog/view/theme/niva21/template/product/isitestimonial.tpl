<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>


<div id="content">
  <div class="top">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center">
      <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
      <h1><?php echo $heading_title ?></h1>
    </div>
  </div>
  <div class="middle">
  	
  	<div class="content"><p><?php echo $text_conditions ?></p></div>
  

  <style type="text/css">
    .footer-wrap {
        display:none;   
    }
    
    .row-1 {
        display:none;   
    }
    
    #menu {
        display:none;   
    }
    
    .center {
        display:none;   
    }
    
    #content {
        position: relative!important;
        width: 50%!important;  
        margin: 0!important;
        padding:0!important;
        float: none !important;
    }
    
     body {
        overflow: hidden !important;
    }
</style>
  
  
<script type="text/javascript">
jQuery(document).ready(function(){
    
    var has_form = false;
    jQuery('#testimonial').each(function(){
        has_form = true;
    });
    if (!has_form){
        window.location.href = '/index.php?route=product/isitestimonial';
    }
    //jQuery('#testimonial_ajax_frame #footer').remove();
});

</script>
  
  

    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="testimonial">
	<div class="content">
        <table width="100%">
          <!--<tr>
            <td><?php echo $entry_title ?><br />
              <input type="text" name="title" value="<?php echo $title; ?>" size = 90 />
              <?php if ($error_title) { ?>
              <span class="error"><?php echo $error_title; ?></span>
              <?php } ?></td>
          </tr>-->
          <tr>
            <td><?php echo $entry_name ?><br />
              <input type="text" name="name" value="<?php echo $name; ?>" />
              <?php if ($error_name) { ?>
              <span class="error"><?php echo $error_name; ?></span>
              <?php } ?>
            </td>

            <td>
    		  <?php echo $entry_email ?><br />
                  <input type="text" name="email" value="<?php echo $email; ?>" />
                  <?php if ($error_email) { ?>
                  <span class="error"><?php echo $error_email; ?></span>
                  <?php } ?>
              </td>

          </tr>
          <tr>
            <td colspan="2"><?php echo $entry_enquiry ?><span class="required">*</span><br />
              <textarea name="description" style="width: 99%; height: 125px;" rows="10"><?php echo $description; ?></textarea><br />

              <?php if ($error_enquiry) { ?>
              <span class="error"><?php echo $error_enquiry; ?></span>
              <?php } ?></td>
          </tr>
          
          <!--<tr>
             <td><?php echo $entry_city ?><br />
			<input type="text" name="city" value="<?php echo $city; ?>" />
		</td>
          </tr>-->

          <tr>
            <td colspan="2"><br/><?php echo $entry_rating; ?> &nbsp;&nbsp;&nbsp; <span><?php echo $entry_bad; ?></span>&nbsp;
        		<input type="radio" name="rating" value="1" style="margin: 0;" <?php if ( $rating == 1 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="2" style="margin: 0;" <?php if ( $rating == 2 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="3" style="margin: 0;" <?php if ( $rating == 3 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="4" style="margin: 0;" <?php if ( $rating == 4 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="5" style="margin: 0;" <?php if ( $rating == 5 ) echo 'checked="checked"';?> />
        		&nbsp; <span><?php echo $entry_good; ?></span><br /><br>

          	</td>
          </tr>
          <tr>
            <td>
              <?php if ($error_captcha) { ?>
              <span class="error"><?php echo $error_captcha; ?></span>
              <?php } ?>
              
              <img src="index.php?route=information/contact/captcha" /> <br>
		      <?php echo $entry_captcha; ?><span class="required">*</span> <br>

              <input type="text" name="captcha" value="<?php echo $captcha; ?>" /><br>
    		</td>
            <td>
              <div class="buttons">
                <table width=100%>
                  <tr>
                  <?php $button_send = 'Оставить комментарий'; ?>
                    <td><a  onclick="$('#testimonial').submit();" class="button"><span><?php echo $button_send; ?></span></a></td>
                  </tr>
                </table>
        
              </div>
            </td>
          </tr>
        </table>
	  </div>

    </form>
  </div>
  <div class="bottom">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
  </div>
</div>


<style type="text/css">
.button {
    width: 190px !important;
    float: right !important;
}

input[type="text"], input[type="password"] {
    background: none repeat scroll 0 0 #FFFFFF;
    border: 1px solid #E7E7E7;
    color: #929292;
    font-size: 11px;
    height: 25px;
    margin: 0;
    padding: 4px 3px;
    width: 150px!important;
}
textarea {
    background: none repeat scroll 0 0 #FFFFFF;
    border: 1px solid #E7E7E7;
    color: #929292;
    font-size: 11px;
    height: 25px;
    margin: 0;
    padding: 4px 3px;
    width: 465px!important;
}
</style>
<?php echo $footer; ?> 