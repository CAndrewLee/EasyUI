<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.somnus.util.base.UEditorUtil"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	UEditorUtil up = new UEditorUtil(request);
	up.setSavePath("upload");
	String[] fileType = { ".gif", ".png", ".jpg", ".jpeg", ".bmp" };
	up.setAllowFiles(fileType);
	up.setMaxSize(10000); //单位KB
	up.upload();
	response.getWriter().print("{'original':'" + up.getOriginalName() + "','url':'" + up.getUrl() + "','title':'" + up.getTitle() + "','state':'" + up.getState() + "'}");
%>
