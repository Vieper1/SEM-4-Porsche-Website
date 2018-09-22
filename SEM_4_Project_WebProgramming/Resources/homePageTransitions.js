//Author: PsyClone

$(document).ready(function(){
	
	$("#cellModels").mouseenter(function(){
		$("#cellModels").css("background-color", "#FF1744");
		$("#divModels").show("slide", {direction: "up"}, 300);
	});
	
	$("#tableModels").mouseenter(function(){
		$("#cellModels").css("background-color", "#FF1744");
	});
	
	$("#tableModels").mouseleave(function(){
		$("#divModels").hide("slide", {direction: "up"}, 300);
		$("#cellModels").css("background-color", "transparent");
	});
	
	var checkedPhoto = $("#radioPhotoInitial")[0];
	var photoList = $(".photoSelector");
	
	$(".photoSelector").click(function(){
		if(checkedPhoto != this)
		{
			$("#divPhotos").hide("slide", {direction: "left"}, 300);
			$("#divPhotos").html("<img src='Resources/photo"+this.value+".jpg' height='100%' width='auto'></img>");
			$("#divPhotos").show("slide", {direction: "right"}, 300);
			checkedPhoto = this;
		}
	});
	
	setInterval(function(){
		var i;
		for(i=0; i<photoList.length; i++)
			if(photoList[i] == checkedPhoto)
			{
				i = (i+1)%(photoList.length);
				break;
			}
		$(photoList[i]).prop("checked", true)
		$("#divPhotos").hide("slide", {direction: "left"}, 300);
		$("#divPhotos").html("<img src='Resources/photo"+photoList[i].value+".jpg' height='100%' width='auto'></img>");
		$("#divPhotos").show("slide", {direction: "right"}, 300);
		checkedPhoto = photoList[i];
	}, 4000);
	
});