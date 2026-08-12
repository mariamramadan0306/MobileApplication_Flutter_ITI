// GeoLocation

document.getElementById("btn").onclick = function () {
  navigator.geolocation.getCurrentPosition(successFun, errorFun, options);
};

function successFun(position) {
  console.log(position);
  var lat = position.coords.latitude;
  var long = position.coords.longitude;
  console.log(lat + "::::" + long);
  location.assign("http://maps.google.com/maps?q=" + lat + ",+" + long);
  //   var url = "http://maps.google.com/maps?q=" + lat + ",+" + long;
  //   open(url, "_blank");
}

function errorFun(err) {
  console.log(err);
  switch (err.code) {
    case 1:
      alert("please allow to share location");
      break;

    case 3:
      alert("check your connection , timeout");
      break;
  }
}

var options = {
  enableHighAccuracy: true,
  timeout: 3000,
};
