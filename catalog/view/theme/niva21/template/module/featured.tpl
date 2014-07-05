<script type="text/javascript">
		(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
	$(window).load(function(){
		if($(".maxheight-feat").length){
		$(".maxheight-feat").equalHeights()}
	})
</script>

<div class="box featured">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
      <ul>
        <?php $i=0; ?>
        <?php foreach ($products as $product) { $i++; ?>
        <?php 
          if ($i%3==1) {
            $a='class="first-in-line"';
          }
          elseif ($i%3==0) {
            $a='class="last-in-line"';
          }
          else {
            $a='';
          }
        ?>
        <li  <?php echo $a; ?>>
          <div class="inner-indent">
            <?php if ($product['thumb']) { ?>
            <div class="image2">
              <a href="<?php echo $product['href']; ?>">
                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
              </a>
            </div>
            <?php } else { ?>
            <div class="image2">
              <a href="<?php echo $product['href']; ?>">
                <img src="<?php echo 'http://'.$_SERVER['SERVER_NAME']; ?>/image/data/logo_small.png" alt="<?php echo $product['name']; ?>" />
              </a>
            </div>
            <?php } ?>
            <div class="name maxheight-feat">
              <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            </div>
            <div class="manufacturer_and_cat_number">
              <span>Производитель: </span>
              <?php
                echo $product['manufacturer']; 
              ?>
              <br />
              <span>Каталожный номер: </span><br />
              <?php
                echo $product['model']; 
              ?>
              <br />
            </div>
            <div class="wrapper">
              <!--<div class="review-count"><?php echo $product['reviews'].' '.$reviews;?></div>-->
              <?php if ($product['price']) { ?>
                <div class="price">
                  Цена:<br /> <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span>
                  <span class="price-old"><?php echo $product['price']; ?></span> 
                  <?php } ?>
                </div>
              <?php } ?>
            </div>
            <div class="cart">
              <a data-id="<?php echo $product['product_id']; ?>;" class="button addToCart"></a>
              <!--<div class="extra-button">
                <div class="wishlist"><a class="tip"  onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"><?php echo $button_wishlist; ?></a></div>
                <div class="compare"><a class="tip2"  onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $button_compare; ?>"><?php echo $button_compare; ?></a></div>
              </div>-->
              <div class="clear"></div>
            </div>
            <div class="stock">
              <?php echo($product['stock']); ?>
              <div class="clear"></div>
            </div>
          </div>
        </li>
        <?php } ?>
      </ul>
    </div>
  </div>
</div>
