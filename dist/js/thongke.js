//b1 bắt event từ button để lấy được value id (VD: id="red" => get value = red)
//b2 Khi lấy được value gán text có style color = value (color = red = id)

$(document).ready(function() {
    $(".mau").click(function() {
    //    console.log($(this));
         var valueID = $(this).attr('id');
        
         $("#txtcontent").css("color", valueID);
    });
});