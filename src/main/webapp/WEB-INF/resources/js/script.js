
const deleteContact=(pid)=>{
	swal({
  title: "Are you sure?",
  text: "You want to DELETE this product?",
  icon: "warning",
  buttons: true,
  dangerMode: true,
})
.then((willDelete) => {
  if (willDelete) {
    window.location="deleteProduct/"+pid;
  } else {
    swal("Your Product Details is SAFE!");
  }
});

};