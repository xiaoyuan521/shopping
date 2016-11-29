
<!DOCTYPE html>
<html class="ui-mobile">
<head>
<?= $this->Html->script('jquery-1.11.2.min.js') ?>
<?= $this->Html->css('product.css') ?>
<script>
var categoryId = sessionStorage.getItem("categoryId");
var searchName = sessionStorage.getItem("searchName");
if(categoryId==null){
	categoryId="";
}
if(searchName==null){
	searchName="";
}
  $.ajax({
      type: "get",
      dataType: "HTML",
      url: "/weshop/index?&searchName=" + searchName +"&categoryId=" + categoryId,
	  cache: false,
      success: function(data) {
    	  $("#divContent").html("");
    	  $("#divContent").html($(data).find("#divContent").html());
    	  sessionStorage.setItem("categoryId","");
    	  sessionStorage.setItem("searchName","");
      },
      error: function(e) {
          alert("An error occurred: " + e.responseText.message);
          console.log(e);
      }
  });
  function searchBtnClick () {
	  sessionStorage.setItem("categoryId","");
		sessionStorage.setItem("searchName",$("#searchBtnTxt").val());
		 categoryId = sessionStorage.getItem("categoryId");
		 searchName = sessionStorage.getItem("searchName");
	  $.ajax({
          type: "get",
          dataType: "HTML",
          url: "/weshop/index?&searchName=" + searchName +"&categoryId=" + categoryId,
		  cache: false,
          success: function(data) {
        	  $("#divContent").html("");
        	  $("#divContent").html($(data).find("#divContent").html());
        	  sessionStorage.setItem("categoryId","");
        	  sessionStorage.setItem("searchName","");
          },
          error: function(e) {
              alert("An error occurred: " + e.responseText.message);
              console.log(e);
          }
      });
};

function categoriesBtnClick () {
		window.location.href= "/weshop/categories";
};


    </script>
<?= $this->Html->charset() ?>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>微告商城</title>
<?= $this->Html->meta('icon') ?>

</head>

<body class="ui-mobile">
	<div data-role="header" class="ui-header ui-bar-inherit">
		<div id="divAd"
			style="overflow: hidden; background-image: url(img/bg-g.jpg);">
			<!--广告背景-->
			<div class="slides test" data-role="none"
				style="-webkit-transition-duration: 0.6s; transition-duration: 0.6s; width: 400%; -webkit-transform: translate3d(0px, 0px, 0px);">
			</div>
			<div
				style="display: block; margin: 0% auto; text-align: center; height: 100px;">
				<img
					style="width: 360px; height: 100px; display: block; margin: 0% auto; text-align: center;"
					src="img/banner.png">
			</div>
		</div>
	</div>
	<div id="searchDiv">
		<div>
			<input type="search" id="searchBtnTxt" placeholder="您想买点什么？" /> <input
				type="button" id="searchBtn" value="检索" onclick="searchBtnClick()" />
			<input type="button" id="categoriesBtn" value="分类"
				onclick="categoriesBtnClick()" />
		</div>
	</div>
	<div id="divContent" role="main" class="ui-content-1"
		style="width: 100%; height: 100%; margin: 0% auto; padding: 0px; margin-top: 1px;">

		<?php if (sizeof($products)==0):?>

		<div
			style="width: 50%; height: 300px; float: left; margin-left: 5px; margin-top: 30px; padding: 3px; position: relative;">
			<?php echo "无数据"?>
		</div>
		<?php else:?>
		<?php foreach($products as $prod): ?>

		<div
			style="width: 50%; height: 300px; float: left; position: relative;text-align: center;">

			<div style="width: 50%; height: 90px; text-align: center;padding-left: 30px;">
				<img
					src="img/products/<?php echo $prod['Product']['image_name']; ?>"
					style="max-width: 110px; max-height: 110px;">
			</div>
			<div
				style="width: 50%; text-align: center;padding-top: 30px;padding-left: 30px;">
				<p style="display: inline-block; width: auto;">
				<?php echo"【".$prod['Brand']['brand_name']."】".$prod['Product']['name']."|".$prod['Product']['name']."|".$prod['Product']['spec'].$prod['Product']['spec_unit'] ?>
				</p>
				<!--  
			<p style="display: inline-block;width:auto;"><?php echo"【".$prod['Brand']['brand_name']."】." ?></p>
			<p style="width:38%;display: inline-block;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;vertical-align: middle;padding-top: 10px;margin-left: -5px;"><?php echo $prod['Product']['name']."|" ?></p>
			<p style="width:auto;display: inline-block;"><?php echo $prod['Product']['spec'].$prod['Product']['spec_unit'];?></p>
			-->
			</div>
			<div style="width: 50%; text-align: center;padding-left: 30px;">
				<p>
				<?php echo "￥".$prod['Product']['price']."元";?>
				</p>
			</div>

		</div>
		<?php endforeach; ?>
		<?php endif; ?>

	</div>
</body>
</html>


