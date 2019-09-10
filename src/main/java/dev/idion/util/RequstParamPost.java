package dev.idion.util;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

public class RequstParamPost {

	public static void requestParamMap(HttpServletRequest request, Map<String, Object> param) {
		for (String s : request.getParameterMap().keySet()) {
			param.put(s, request.getParameter(s));
		}
	}

}
