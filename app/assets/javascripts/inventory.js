$(document).ready(function(){
  $('#add-image-div').on('click','#add-image',function(e){
    e.preventDefault();
    $(this).after("<div id='parent-photo' style='margin-top:2em'><button  style='display:inline-block' class='remove-file-option'>X</button><input style='display:inline-block;width:12.2em;' type='file' name='photos[]' id='photos_' multiple='multiple'><div style='display:inline-block' id='target'></div</div><br>");

      $('.remove-file-option').on('click',function(e){
        e.preventDefault();
        $(this).parent().remove();
      })

      $('#parent-photo' ).on('change', '#photos_', function(event) {
        var target_element = $(this).next();
        var files = event.target.files;
        var image = files[0]
        var reader = new FileReader();
        reader.onload = function(file) {
          var img = new Image();
          console.log(file);
          img.src = file.target.result;
          $(target_element).html(img);
          $("#target img").css('width','64px');
        }
        reader.readAsDataURL(image);
        console.log(files);
      })
    })


   $('#photos_').on('change', function(event) {
    var files = event.target.files;
    var image = files[0]
    var reader = new FileReader();
    reader.onload = function(file) {
      var img = new Image();
      console.log(file);
      img.src = file.target.result;
      $('#target').html(img);
      $('#target img').css('width','64px');
    }
    reader.readAsDataURL(image);
    console.log(files);
  })
})
