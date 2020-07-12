function loadTemplate(obj) {
	var fileUrl = $(obj).data("fileUrl");
	if(fileUrl == undefined || fileUrl == "") {
		return;
	}
	$(".content").empty();
	if(checkSavedTemplate(fileUrl)) {
		$(".content").html(localStorage.getItem(fileUrl));
		afterLoadTemplate();
	} else {
		$(".content").load("/getTemplateHtml.do", {fileUrl : fileUrl}, afterLoadTemplate);
	}
	$(".content").data("templateName", fileUrl);
}
function checkSavedTemplate(templateName) {
	var templateHtml = localStorage.getItem(templateName);
	if (templateHtml != undefined && templateHtml != null && templateHtml != "") {
		return true;
	}
	return false;
}
function afterLoadTemplate() {
	var height = document.querySelector(".content").scrollHeight;
	document.querySelector("aside").style.height =  height;
	document.querySelector(".content").style.height =  height;
}
function saveTemplateToLocalStorage() {
	var templateName = $(".content").data("templateName");
	var templateHtml = $(".content").html();
	
	localStorage.setItem(templateName, templateHtml);
	
}


function initScreen(obj) {
	if(confirm("화면 초기화를 진행시 저장 된 정보가 모두 초기화 됩니다. 초기화 하시겠습니까?")) {
		localStorage.clear();
		let targetForm = obj.closest("form");
		clearInputText(targetForm);
		targetForm.reset();
		afterScreen();
	}
}
function clearInputText(obj) {
	var inputList = obj.querySelectorAll("input[type='text']");
	for(let input of inputList) {
		input.setAttribute("value", "");
	}
}
function afterScreen() {
	var templateName = $(".content").data("templateName");
	var targetSnbMenu ;
	$(snb).children().each(function (index, rowData) {
		var fileUrl = $(rowData).data("fileUrl");
		if(fileUrl == templateName) {
			targetSnbMenu = rowData;
			return false;
		}
	});
	targetSnbMenu.click();
}

