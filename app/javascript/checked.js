// function check(){
//   const messages = document.querySelectorAll(".message")
//   messages.forEach(function (post) {
//     message.addEventListener("click", () => {
//       const dataId = message.getAttribute("data-id");
//       const XHR = new XMLHttpRequest();
//       XHR.open("GET", `/messages/${dataId}`, true);
//       XHR.responseType = "json";
//       XHR.send();
//       XHR.onload = () => {
//         if (XHR.status != 200) {
//           alert (`Error ${XHR.status}: ${XHR.statusText}`);
//           return nill;
//         }
//         const item = XHR.response.message;
//         if (item.checked === true){
//           message.setAttribute("data-check", "true");
//         } else if (item.checked === false) {
//           message.removeAttribute("data-check");
//         }
//       };
//     });
//   });
// }
// setInterval(check, 1000);