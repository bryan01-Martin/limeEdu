
function getScreenshotOfElement(_element, _callback) {
	html2canvas(_element).then( (canvas) => _callback(canvas.toDataURL('img/png') )); 
}

function afterScreenShot(data) {
	let userName = prompt("이름??");
	if(userName == undefined || userName == "") {
		alert("이름을 입력해 주세요.");
		return;
	}
	
	var link = document.createElement('a');
	
	link.href=data;
	link.download = "LIME_TEST_"+userName+".png";
	document.body.appendChild(link);
	link.click();
	document.body.removeChild(link);
	
 
}