<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
        <div class="image">
          <a href="<?php echo $product['href']; ?>">
            <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
        </div>
        <?php } ?>
        <div class="name">
          <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
        </div>
        <!-- Added brand, article -->
        <div class="manufacturer"><?php echo $product['manufacturer']; ?></div>
        <div class="sku"><span><?php echo $product['sku']; ?></span></div>
        <!-- Added brand, article -->
        <?php if ($product['price']) { ?>
        <div class="price">
          <span>Цена:</span>
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?> </span>
          <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
        </div>
        <?php } ?>
        <div class="cart">
          <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
        </div>
        <!-- Added status -->
        <div class="stock"><?php echo $product['stock']; ?></div>
        <!-- Added status -->
      </div>
      <?php } ?>
    </div>
  </div>
</div>
