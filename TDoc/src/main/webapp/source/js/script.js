// JQuery hides preloader image
$(window).on("load", function(){
    // Anh cua div id=status mat dan
    $("#status").fadeOut();
    // Tuy div id=status mat dan nhung no la div con
    // nam trong div cha id=preloader nen de chac chan ta nen
    // fadeOut ca div cha id=preloader mac du div cha chi chua moi div con
    $("#preloader").delay(500).fadeOut();
});