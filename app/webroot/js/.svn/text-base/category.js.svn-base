$(function() {
  setIntClass();
  addLeftCategorySearch();
});

function setIntClass() {
  $("#leftCategoryTable").find("td").addClass("unSelectedLeftCategory");
  $("#leftCategoryTable").find("td:first").removeClass("unSelectedLeftCategory").addClass("selectedLeftCategory");
}

function addLeftCategorySearch() {
  $("#leftCategoryTable").find("td").unbind("click").bind("click", function() {
    
        $("#leftCategoryTable").find("td").removeClass("selectedLeftCategory").addClass("unSelectedLeftCategory");
        $(this).removeClass("unSelectedLeftCategory").addClass("selectedLeftCategory");

        $("#rightCategoryDiv").load("/weshop/categories #rightCategoryTable", {
          "categoryId" : $(this).attr("id")
        })
      });
}
