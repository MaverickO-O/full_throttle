function filter_function() {
  // Declare variables 
  var input, filter, table, tr, td, i;
  input_brand = document.getElementById("brand");
  input_type = document.getElementById("type");
  filter_brand = input_brand.value.toUpperCase();
  filter_type = input_type.value.toUpperCase();
  table = document.getElementById("bike_table");
  tr = table.getElementsByTagName("tr");
console.log(input);

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td_brand = tr[i].getElementsByTagName("td")[0];//select colum 0
    td_type = tr[i].getElementsByTagName("td")[3];//select colum 3
    if (td_brand || td_type) {
      if ((td_brand.innerHTML.toUpperCase().indexOf(filter_brand) > -1 || filter_brand == "-") && (td_type.innerHTML.toUpperCase().indexOf(filter_type) > -1 || filter_type == "-")) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}

