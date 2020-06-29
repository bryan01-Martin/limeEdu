/**
 * 
 */


function getScreenshotOfElement(_element, _posX, _posY, _width, _height, _callback) {
	html2canvas(_element).then(
				function (canvas) {
					var context = canvas.getContext("2d");
					var imageData = context.getImageData(_posX, _posY, _width, _height).data;
					var outputCanvas = document.createElement("canvas");
					var outputContext = outputCanvas.getContext("2d");
					
					outputCanvas.width = _width;
					outputCanvas.height = _height;
					
					var idata = outputContext.createImageData(_width, _height);
					idata.data.set(imageData);
					outputContext.putImageData(idata, 0,0);
					_callback(outputCanvas.toDataURL().replace("data:image/png;base64,", ""));
					
				}
			) 
	
	
}

function getScreenShot(_element, _callback) {
	
	html2canvas(_element).then(_callback(data))
}