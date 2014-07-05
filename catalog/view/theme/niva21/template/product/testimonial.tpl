<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>  


<div id="content">
  <div class="top">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center">
      <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a rel="nofollow" href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
      <h1><?php echo $heading_title; ?></h1>
    </div>
  </div>
  <div class="middle">

    <?php if ($testimonials) { ?>
    
      <?php foreach ($testimonials as $testimonial) { ?>
      <table class="content" width="100%" border=0>
      <tr>
         <td valign="top" style="text-align:left;" colspan="2"><b><?php echo $testimonial['title']; ?></b></td>
      </tr>
      <tr>
      	<td colspan="2" style="text-align:left;">
                <?php echo $testimonial['description']; ?>
            </td>
      </tr>    

     <tr>
		<td style="font-size: 0.9em; text-align: right;">
                <?php if ($testimonial['rating']) { ?>
                <?php echo $text_average; ?><br>
                  <img src="catalog/view/theme/default/image/testimonials/stars-<?php echo $testimonial['rating'] . '.png'; ?>" style="margin-top: 2px;" />
                  <?php } ?><br>
&nbsp;<i><?php echo($testimonial['name'].' - '.$testimonial['date_added']); ?></i>
             </td>
        </td>
      </tr>

	</table>
      <?php } ?>

    	<?php if ( isset($pagination)) { ?>
    		<div class="pagination"><?php echo $pagination;?></div>
    		<!--<div class="buttons" align="right"><a rel="nofollow" class="button" href="<?php echo $write_url;?>" title="<?php echo $write;?>"><span><?php echo $write;?></span></a></div>-->
    	<?php }?>









    	<!--<?php if (isset($showall_url)) { ?>
    		<div class="buttons" align="right"><a rel="nofollow" class="button" href="<?php echo $write_url;?>" title="<?php echo $write;?>"><span><?php echo $write;?></span></a> &nbsp;<a rel="nofollow" class="button" href="<?php echo $showall_url;?>" title="<?php echo $showall;?>"><span><?php echo $showall;?></span></a></div>
    	<?php }?>-->
    <?php } ?>
  </div>
  <div class="bottom">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
    
    <div id="testimonial_ajax_frame">
        <iframe src ="/index.php?route=product/isitestimonial" width="100%" height="500"></iframe>
    </div>
  </div>
</div>

<script type="text/javascript">
var new_page = true;

function reload_page() {
    window.location = '/index.php?route=product/testimonial';
}

    function callIframe(url, callback) {
       jQuery('iframe').load(function()
        {
            callback(this);
        });
    }
    
        callIframe('/', function(){
            if (new_page) {
                new_page = false;
            }
            else {
                reload_page();
            }
                
        });
        
jQuery(document).ready(function(){
    
    

        
});

</script>

<style type="text/css">
    #testimonial_ajax_frame {
        overflow: hidden!important;
    }
    #testimonial_ajax_frame iframe {
        border: none!important;
        
    }
    
    
#column-left + #column-right + #content, #column-left + #content {
    float: none!important;
    margin-left: 0 !important;
    position: relative!important;
    width: 100%!important;
}


</style>


<?php echo $footer; ?> 