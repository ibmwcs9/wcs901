<?xml version="1.0" encoding="UTF-8"?>

<%--
 =================================================================
  Licensed Materials - Property of IBM

  WebSphere Commerce

  (C) Copyright IBM Corp. 2007, 2009 All Rights Reserved.

  US Government Users Restricted Rights - Use, duplication or
  disclosure restricted by GSA ADP Schedule Contract with
  IBM Corp.
 =================================================================
--%>
<%@page contentType="text/xml;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<object>
	<objectStoreId>${param.storeId}</objectStoreId>
	<xdata_attrId>${catalogEntries[0].catalogEntryAttributes.attributes[0].extendedData.attrId}</xdata_attrId>
	<attrDataType readonly="true">${catalogEntries[0].catalogEntryAttributes.attributes[0].attributeDataType}</attrDataType>
</object>

