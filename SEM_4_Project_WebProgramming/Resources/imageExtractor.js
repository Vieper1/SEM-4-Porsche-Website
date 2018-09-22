function extractImage(){
    var url = window.location.href;
    var twoStrings = url.split("=");
    var car_id = parseInt(twoStrings[1]);

    if (car_id < 20)
    {
        document.getElementById("divCarPhoto").innerHTML = "<img src='ContentsImage/contentPhoto" + car_id + ".jpg' height='100%' width='auto'></img>";
    }
    else
    {
        document.getElementById("divCarPhoto").innerHTML = "<img src='Resources/PorscheWall1.jpg' alt='N/A' height='100%' width='auto'></img>";
    }
    
}