<script>

function categoryIdClick(childId){
	if(childId==null){
		sessionStorage.setItem("categoryId","");
		sessionStorage.setItem("searchName","");
		}else{
			sessionStorage.setItem("searchName","");
			sessionStorage.setItem("categoryId",childId);
			}
		window.location.href= "/weshop";	
}
function searchBtnClick () {
	  sessionStorage.setItem("categoryId","");
		sessionStorage.setItem("searchName",$("#searchBtnTxt").val());
		window.location.href= "/weshop";
};

</script>


<div>
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
		<input type="search" id="searchBtnTxt" placeholder="您想买点什么？" />
	<input type="button" id="searchBtn" value="检索" onclick="searchBtnClick()" />
	</div>
</div>
<div id="leftCategoryDiv">
	<table id="leftCategoryTable">
	<?php foreach ($categories as $category): ?>
		<tr>
			<td id="<?php echo $category['Category']['category_id']; ?>"><?php echo $category['Category']['category_name']; ?>
			</td>
		</tr>
		<?php endforeach; ?>
	</table>
</div>
<div id="rightCategoryDiv">
	<table id="rightCategoryTable">
	<?php for ($i = 0; $i < count($subCategories); $i += 2): ?>
	<?php if($i > count($subCategories) - 1) {break;} ?>
		<tr>
			<td id="<?php echo $subCategories[$i]['Category']['category_id']; ?>"
				onclick="categoryIdClick(<?php echo $subCategories[$i]['Category']['category_id']; ?>)">
				<div id="categoryImgDiv">
					<img
						src="img/categories/<?php echo $subCategories[$i]['Category']['image_name']; ?>" />
				</div>
				<div id="categoryNameDiv">
				<?php echo $subCategories[$i]['Category']['category_name']; ?>
				</div>
			</td>
			<?php if($i > count($subCategories) - 2) {break;} ?>
			<td
				id="<?php echo $subCategories[$i + 1]['Category']['category_id']; ?>">
				<div id="categoryImgDiv">
					<img
						src="img/categories/<?php echo $subCategories[$i + 1]['Category']['image_name']; ?>" />
				</div>
				<div id="categoryNameDiv">
				<?php echo $subCategories[$i + 1]['Category']['category_name']; ?>
				</div>
			</td>
		</tr>
		<?php endfor; ?>
	</table>
</div>
