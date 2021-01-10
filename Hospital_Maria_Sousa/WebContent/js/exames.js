
window.addEventListener('load', boot);

function boot(){


var btnValidar = document.getElementById('validar');
var modalSplit = document.getElementsByClassName('modal-split');

modalSplit[0].style.display="block";
modalSplit[1].style.display="none";

btnValidar.addEventListener('click',nextSplit);

function nextSplit(){
  modalSplit[0].style.display="none";
  modalSplit[1].style.display="block";
}


}
