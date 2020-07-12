package com.lime.common;

import java.net.URLDecoder;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class CommUtils {

	public static Map<String, Object> getRequestParams(HttpServletRequest request) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		Enumeration<?> keys = request.getParameterNames();
		
		String key, value;
		
		if(request == null || keys == null || !keys.hasMoreElements()) {
			return returnMap;
		}
		
		while (keys.hasMoreElements()) {
			try {
				key = keys.nextElement().toString();
				try {
					value = URLDecoder.decode(request.getParameter(key), "UTF-8"); 
				} catch (Exception e) {
					value = request.getParameter(key);
				}
				returnMap.put(key, value);
			
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return returnMap;
	}
	
	public static boolean isIE(HttpServletRequest request) throws Exception {
		boolean isIE = false;
		
		String userAgent = request.getHeader("User-Agent");
		
		if(userAgent.indexOf("Trident") != -1 || userAgent.indexOf("MSIE") != -1) {
			isIE = true;
		}
		
		return isIE;
	}
}
