window.addEventListener('load', function(){
  const pullDownImage = document.getElementById("user-icon")
  const pullDownUserEdit = document.getElementById("pull-down")
  pullDownImage.addEventListener('click', function(){
    if (pullDownUserEdit.getAttribute("style") == "display:block;"){
      pullDownUserEdit.removeAttribute("style", "display:block;")
    } else{
      pullDownUserEdit.setAttribute("style", "display:block;")
    }
  })
})