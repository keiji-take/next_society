document.addEventListener('DOMContentLoaded', function(){
  const iconImagePosition = document.getElementById('icon-image-preview')
  document.getElementById('self-image').addEventListener('change',function(e){
    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);
    
    iconImagePosition.setAttribute('src', blob);
  });
});