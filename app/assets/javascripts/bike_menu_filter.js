function filter_function() {
  // Declare variables 
  var input, filter, table, tr, td, i, ul, li;
  input_brand = document.getElementById("brand");
  input_type = document.getElementById("type");
  filter_brand = input_brand.value.toUpperCase();
  filter_type = input_type.value.toUpperCase();
  ul = document.getElementById("myUL");
  li = ul.getElementsByTagName("li");
console.log(input);

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < li.length; i++) {
    li_brand = li[i].getElementsByTagName("h3")[0];//select colum 0
    li_type = li[i].getElementsByTagName("p")[0];//select colum 3
    if (li_brand || li_type) {
      if ((li_brand.innerHTML.toUpperCase().indexOf(filter_brand) > -1 || filter_brand == "-") && (li_type.innerHTML.toUpperCase().indexOf(filter_type) > -1 || filter_type == "-")) {
        li[i].style.display = "";
      } else {
        li[i].style.display = "none";
      }
    } 
  }
}

