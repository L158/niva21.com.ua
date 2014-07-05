<!--noindex--><?php echo $header; ?><!--/noindex--><?php echo $column_left; ?><?php echo $column_right; ?>

<div id="content"><!--noindex--><?php echo $content_top; ?><!--/noindex-->
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a rel="nofollow" href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  



<?php if ($products) { ?>
    <!--noindex-->
  <div class="product-filter">
    <!--<div class="display"><b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display('grid');"><?php echo $text_grid; ?></a></div>-->
    
    <div class="sort"><b><?php echo $text_sort; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    
    <div class="limit"><b><?php echo $text_limit; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    <!--/noindex-->
  </div>
  <!--<div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>-->
  <div class="product-list">
    <?php foreach ($products as $product) { ?>
    
 
    
    
    <div class="product-list-item">
      <?php if ($product['thumb']) { ?>
      <div class="image"><a rel="nofollow" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
      <?php } ?>
      <div class="name"><a rel="nofollow" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
      
      
      
      <?php if ($product['manufacturer']) { ?>
      <div class="manufacturer">Производитель: <?php echo $product['manufacturer']; ?></div>
      <?php } ?>
      
      <?php if ($product['model']) { ?>
      <div class="model">Каталожный номер: <?php echo $product['model']; ?></div>
      <?php } ?>

      
      
      <?php if ($product['price']) { ?>
      <div class="price">Цена: 
        <?php if (!$product['special']) { ?>
        <?php echo $product['price']; ?>
        <?php } else { ?>
         <span class="price-new"><?php echo $product['special']; ?></span>
        <?php } ?>
        <?php if ($product['tax']) { ?>
        <br />
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?>
      </div>
      <?php } ?>
      
      <div class="cart">
        <input type="button" value="" onclick="addToCart('<?php echo $product['product_id']; ?>','1','<?php echo $product['thumb']; ?>','<?php echo $product['price']; ?>','<?php echo $product['special']; ?>');" class="button" />
      </div>
      
        <?php if ($product['stock']) { ?>
		    
        <div class="stock">
            <?php echo($product['stock']); ?>
            <div class="clear"></div>
        </div>
		
        <?php } ?>
      
      <!--<div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
      <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>-->
    </div>
    <?php } ?>
  </div>


  <?php } ?>
  
  
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a rel="nofollow" href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
  
<script type="text/javascript">
jQuery(document).ready(function(){
    var temp_string = 'Показано с 0 по 0 из 0 (всего 0 страниц)';
    if (jQuery('.pagination').children('.results').text().trim() == temp_string.trim()) {
        jQuery('.pagination').remove();
    }
});
</script>
  
              
    <div class="pagination"><?php echo $pagination; ?></div>
   


                           <?php if ($thumb || $description) { ?>
    <?php if (isset($this->request->get['page']) && ($this->request->get['page'] != '1')) { } else {?>
      <div class="category-info">
        <?php if ($thumb) { ?>
        <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <?php echo $description; ?>
        <?php } ?>
      </div>
    <?php } ?>
  <?php } ?>

<script type="text/javascript"><!--


function display(view) {

	if (view == 'list') {
	   
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
			html  = '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="stock">' + $(element).find('.stock').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';			
			
			html += '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			//html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			html += '<div class="manufacturer">-' + $(element).find('.manufacturer').html() + '</div>';
			html += '<div class="model">=' + $(element).find('.model').html() + '</div>';
           
			html += '</div>';

						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		$.cookie('display', 'list'); 
	} else {

		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			//html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			html += '<div class="manufacturer">' + $(element).find('.manufacturer').html() + '</div>';
			html += '<div class="model">' + $(element).find('.model').html() + '</div>';
           
                     
                     
                     
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="stock">' + $(element).find('.stock').html() + '</div>';
			//html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
		
		$.cookie('display', 'grid'); 
	}
    
}
display('grid');
//alert('grid');
/*
if (view) {
	display(view);
} else {
	display('list');
}
*/


//--></script>
<!--noindex--><?php echo $footer; ?><!--/noindex-->