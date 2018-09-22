//Author: PsyClone

$(document).ready(function(){
	
	var checkedPhoto = $("#radioPhotoInitial")[0];
	
	$(".photoSelector").click(function(){
		if(checkedPhoto != this)
		{
			$("#divPhotos").hide("slide", {direction: "left"}, 300);
			$("#divPhotos").html("<img src='Resources/photo"+this.value+".jpg' height='100%' width='auto'></img>");
			$("#divPhotos").show("slide", {direction: "right"}, 300);
			checkedPhoto = this;
		}
	});
	
	$("#cellModels").mouseenter(function(){
		$("#cellModels").css("background-color", "#FF1744");
		$("#divModels").show("slide", {direction: "up"}, 200);
	});
	
	$("#tableModels").mouseenter(function(){
		$("#cellModels").css("background-color", "#FF1744");
	});
	
	$("#tableModels").mouseleave(function(){
		$("#divModels").hide("slide", {direction: "up"}, 200);
		$("#cellModels").css("background-color", "transparent");
	});
	
});