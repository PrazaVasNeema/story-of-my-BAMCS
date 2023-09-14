/*function onClick() {
    alert("click");
  }
window.addEventListener('DOMContentLoaded', function (event) {
    console.log("DOM fully loaded and parsed");
    let a=document.getElementsByName("types");
    switch (a){
        case "dual-bladed":
            let b = document.getElementById("click1");
            b.addEventListener("click", onClick);
    }
  });*/
  function clickPrice() {
      var checkboxx=document.getElementById("myCheck");
      if(checkboxx.checked==true){
          myFunction();
          return false;
      }
    let f1 = document.getElementsByName("colour");
    let f2 = document.getElementsByName("quantity");
    let f3 = document.getElementsByName("type");
    if (/[0-9a-z]/.test(f2[0].value)==false)
    { 
        alert("Plese input a value");
       return false; 
    }  
    if (/[a-z]/.test(f2[0].value)==true)
    { 
        alert("Plese input a correct value");
       return false; 
    }  
    if (f3[0].value=="dual-bladed"){
        alert("Sorry! Dual-bladed lightsabers are out of stock!")
        return false;
    }
    let r = document.getElementById("price");
    var multi=parseInt(f1[0].value)*parseInt(f2[0].value);
    r.innerHTML = multi + "£";
    let img = document.getElementById("lightsaber preview");
    switch (parseInt(f1[0].value)){
        case 1000:
          img.src = 'lightsabers previews/red.png';
          break;
        case 1100:
            img.src = "lightsabers previews/blue.png";
          break;
        case 1800:
            img.src = "yellow.png";
          break;
        case 1900:
            img.src = "gold.png";
          break;
        case 2200:
            img.src = "silver.png";
          break;
        case 3700:
            img.src = "green.png";
          break;
        case 8000:
            img.src = "purple.png";
            break;
        case 9900:
            img.src = "turquoise.png";
            break;
        case 16500:
            img.src = "viridian.png";
            break;
        case 19000:
            img.src = "sunshine.png";
    }
    return false;
  }
  function myFunction() {
    var x = document.getElementById("myVideo");
    var vid = document.getElementById("myVideo");
    var y=document.getElementById("main")
    var z=document.getElementById("header-text");
    if (x.style.display !== "none") {
        vid.play();
      x.style.display = "block";
      document.getElementById("header-text").className="rickroll";
      z.innerHTML="U've been rickrolled";
      y.style.display = "none"
    } else {
        vid.pause();
      x.style.display = "none";
      document.getElementById("header-text").className="header-text";
      z.innerHTML="Lightsabers for sale"
    }

  }