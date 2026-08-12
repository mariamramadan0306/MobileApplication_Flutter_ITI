// WebStorage
// LocalStorage & SessionStorage
// Cookies

document.getElementById("btn").onclick = function () {
  var usrnm = document.getElementById("usrnm").value;
  var usrage = document.getElementById("usrage").value;
  localStorage.setItem("username", usrnm);
  localStorage.setItem("age", usrage);
  sessionStorage.setItem("count", 0);
};

if (window.localStorage) {
}
