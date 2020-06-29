/*****************************************************************
 * LIME Company Interview Test에서 사용될 common.js파일입니다.   *
 * 필요한 내용은 직접 만들어 사용하셔도 됩니다.                  *
 *****************************************************************/



function doAjax(_url, _data, _success, _fail, _contentType, _dataType, _type, _async) {
	
	/****************************
	 * option parameter defined *
	 ****************************/
	_type = (typeof _type == "undefined") ? "POST" : _type;
	_success = (typeof _success == "undefined") ? null : _success;
	_fail = (typeof _fail == "undefined") ? null : _fail;
	_contentType = (typeof _contentType == "undefined") ? "application/json" : _contentType;
	_dataType = (typeof _dataType == "undefined") ? "json" : _dataType;
	
	$.ajax({
		url : _url,
		data : _data,
		contentType : _contentType,
		dataType : _dataType,
		success : _success,
		error : _fail
	});
	
}

function isEmpty(input) {
	var flag = false;
	if((typeof input).toUpperCase() == "OBJECT" ) 
		flag = isEmptyObject(input); 
	else if(input == undefined || input == null || input == "") 
		flag = true;
	return flag;
}

function isEmptyObject(input) {
	var flag = false;
	if(Object.keys(input) == []) 
		flag = true;
	return flag;
}

function toCamelFromSnake(str) {
	return str.replace(/[A-Z]/g, (v) => v.replace(v, "_"+v.toLowerCase()) );
}

function toSnakeFromCamel(str) {
	return str.toLowerCase().replace(/\_[a-z]/g, (v) => v.replace(/\_/, "").toUpperCase());
}