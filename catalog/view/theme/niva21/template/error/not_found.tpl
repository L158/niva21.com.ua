<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="box-container">
    <div class="buttons">
      <div class="right"><a href="<?php echo $continue; ?>" class="button"><span>Перейти на главную</span></a></div>
    </div>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>


<style type="text/css">
.buttons {
    margin-bottom: 0 !important;
    margin-top: 0px !important;
    overflow: auto !important;
    padding: 0 !important;
}
.button {
    width: 240px !important;
}
#menu {
    display:none !important; 
}
</style>