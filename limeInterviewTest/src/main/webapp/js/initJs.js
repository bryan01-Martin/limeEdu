	var snb;
	var snbList = [
		               {fileUrl : "test1",text:"LIME 필기"}
					  ];


	function onLoadInit() {
		initEvent();
		snb = jQuery("#snb");
		createSnbElement();
	}
	function initEvent() {
		$(document).on("click","#screenShot", function() {
			var targetElement = document.body;
			getScreenshotOfElement(targetElement, afterScreenShot );
		});
		$(".content").on("blur", "input[type='text'], textarea", function() {
			if(this.tagName === 'TEXTAREA') {
				this.textContent = this.value;
			} else {
				this.setAttribute("value", this.value);
			}
			saveTemplateToLocalStorage();
		});
		$(".content").on("click", "#initScreen", function () {
			initScreen(this);
		})
		
		document.getElementById("snb").addEventListener("click", function (e) { 
			var target = document.querySelectorAll("#snb > li");
			var thisElement = checkTargetElement(target, e.path);
			if(thisElement != undefined && thisElement != null) {
				loadTemplate(thisElement) 
			}
		});
		
	}
	
	function createSnbElement(callback) {
		$.each(snbList, function (index, rowData) {
			var appendLiElement = document.createElement("li");
			$(appendLiElement).data("fileUrl", rowData.fileUrl);
			$(appendLiElement).append($(document.createElement("a")).text(rowData.text));
			snb.append(appendLiElement);
		});
		
		
		if(callback) callback();
		
	}
	
	function checkTargetElement(targetList, eventList) {
		var target;
		for (let elem of targetList) {
			if(eventList.indexOf(elem) > -1) {
				target = elem;
				break;
			}
		}
		return target;
	}