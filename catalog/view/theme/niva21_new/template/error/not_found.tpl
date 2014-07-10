<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php 
    foreach ($breadcrumbs as $i=> $breadcrumb) {
      echo $breadcrumb['separator']; 
      if($i+1<count($breadcrumbs)) { 
    ?>
    <a href="<?php echo $breadcrumb['href']; ?>" title="Продажа <?php echo $breadcrumb['text']; ?> купить в ГОРОД-СТРАНА цена"><?php echo $breadcrumb['text']; ?></a>
    <?php 
      } else { 
      echo $breadcrumb['text']; 
      } 
    } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="content"><?php echo $text_error; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>