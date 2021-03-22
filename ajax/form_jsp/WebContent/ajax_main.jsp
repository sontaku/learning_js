<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뷁</title>
<script type="text/javascript">

// window.onload = function() {
window.onload = () => {
	document.querySelector("#ok").onclick = fn_click
}
function fn_click(){

//XMLHttpRequest 객체의 생성
let req = new XMLHttpRequest();
// 비동기 방식으로 Request를 오픈한다
req.open('GET', 'time.jsp', true);
// Request를 전송한다
req.send();

//XMLHttpRequest.readyState 프로퍼티가 변경(이벤트 발생)될 때마다 콜백함수(이벤트 핸들러)를 호출한다.
req.onreadystatechange = function (e) {
  // readyStates는 XMLHttpRequest의 상태(state)를 반환
  // readyState: 4 => DONE(서버 응답 완료)
  if (req.readyState === XMLHttpRequest.DONE) {
    // status는 response 상태 코드를 반환 : 200 => 정상 응답
    if(req.status == 200) {
      // console.log(req.responseText);
      show_data(req.responseText);
    } else {
      console.log("Error!");
    }
  }
};
}


function show_data(txt) {
	let h1 = document.querySelector("h1")
	h1.textContent = txt
}
</script>
</head>
<body>
	<h1>Ajax Test</h1>
	<button id="ok">OK</button>
</body>
</html>