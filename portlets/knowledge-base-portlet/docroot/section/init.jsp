<%--
/**
 * Copyright (c) 2000-2011 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/init.jsp" %>

<%@ page import="com.liferay.knowledgebase.section.search.KBArticleSearch" %>

<%
PortletPreferences preferences = renderRequest.getPreferences();

String portletResource = ParamUtil.getString(request, "portletResource");

if (Validator.isNotNull(portletResource)) {
	preferences = PortletPreferencesFactoryUtil.getPortletSetup(request, portletResource);
}

boolean showKBArticlesSectionsTitle = GetterUtil.getBoolean(preferences.getValue("showKBArticlesSectionsTitle", null));
String[] kbArticlesSections = preferences.getValues("kbArticlesSections", new String[0]);
String kbArticleDisplayStyle = preferences.getValue("kbArticleDisplayStyle", StringPool.BLANK);
String kbArticleWindowState = preferences.getValue("kbArticleWindowState", StringPool.BLANK);
int kbArticlesDelta = GetterUtil.getInteger(preferences.getValue("kbArticlesDelta", null));
String kbArticlesOrderByCol = preferences.getValue("kbArticlesOrderByCol", StringPool.BLANK);
String kbArticlesOrderByType = preferences.getValue("kbArticlesOrderByType", StringPool.BLANK);

boolean enableKBArticleDescription = GetterUtil.getBoolean(preferences.getValue("enableKBArticleDescription", null));
boolean enableKBArticleAssetCategories = GetterUtil.getBoolean(preferences.getValue("enableKBArticleAssetCategories", null));
boolean enableKBArticleAssetTags = GetterUtil.getBoolean(preferences.getValue("enableKBArticleAssetTags", null));
boolean enableKBArticleRatings = GetterUtil.getBoolean(preferences.getValue("enableKBArticleRatings", null));
boolean showKBArticleAssetEntries = GetterUtil.getBoolean(preferences.getValue("showKBArticleAssetEntries", null));
boolean enableKBArticleKBComments = GetterUtil.getBoolean(preferences.getValue("enableKBArticleKBComments", null));
boolean showKBArticleKBComments = GetterUtil.getBoolean(preferences.getValue("showKBArticleKBComments", null));
boolean enableKBArticleViewCountIncrement = GetterUtil.getBoolean(preferences.getValue("enableKBArticleViewCountIncrement", null));

int rssDelta = GetterUtil.getInteger(preferences.getValue("rssDelta", null));
String rssDisplayStyle = preferences.getValue("rssDisplayStyle", StringPool.BLANK);
String rssFormat = preferences.getValue("rssFormat", StringPool.BLANK);

if (kbArticleWindowState.equals(WindowState.MAXIMIZED.toString()) && windowState.equals(WindowState.MAXIMIZED)) {
	PortletURL portletURL = renderResponse.createRenderURL();

	portletURL.setWindowState(WindowState.NORMAL);
	portletURL.setPortletMode(PortletMode.VIEW);

	portletDisplay.setURLBack(portletURL.toString());
}
%>