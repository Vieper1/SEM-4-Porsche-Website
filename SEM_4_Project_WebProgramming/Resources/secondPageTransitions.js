//Author: PsyClone

$(document).ready(function () {

    $("#cellModels").mouseenter(function () {
        $("#cellModels").css("background-color", "#FF1744");
        $("#divModels").show("slide", { direction: "up" }, 200);
    });

    $("#tableModels").mouseenter(function () {
        $("#cellModels").css("background-color", "#FF1744");
    });

    $("#tableModels").mouseleave(function () {
        $("#divModels").hide("slide", { direction: "up" }, 200);
        $("#cellModels").css("background-color", "transparent");
    });

});