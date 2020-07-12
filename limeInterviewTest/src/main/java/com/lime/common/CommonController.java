package com.lime.common;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	@RequestMapping(value="/getTemplateHtml.do")
	public String loadTemplate(HttpServletRequest request) throws Exception {
		
		Map<String, Object> paramMap = CommUtils.getRequestParams(request);
		String viewName = (String)paramMap.get("fileUrl");
		viewName = "template/layout/content/" + viewName;
		return viewName;
	}
	
	

	
	@RequestMapping(value="/downloadFile.do")
	public String downloadFile(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Map<String, Object> paramMap = CommUtils.getRequestParams(request);
		
		String dataString = paramMap.get("data").toString().replaceAll(" ", "+");
		String fileName = "";
		if(CommUtils.isIE(request)) {
			fileName = URLEncoder.encode(paramMap.get("fileName").toString(), "UTF-8");
		} else {
			fileName = new String(paramMap.get("fileName").toString().getBytes("UTF-8"), "ISO-8859-1");
		}
		
 		byte[] data = Base64.decodeBase64(dataString);

		OutputStream out = response.getOutputStream();
		
		response.setContentType("application/octet-stream");
		response.setHeader("Content-Disposition", "attachment; filename=\""+fileName+"\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		out.write(data);
		out.flush();
		out.close();
		
		return null;
	}
	

}
