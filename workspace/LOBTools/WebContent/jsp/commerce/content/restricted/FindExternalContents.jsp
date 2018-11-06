<?xml version="1.0" encoding="UTF-8"?>

<%--
 =================================================================
  Licensed Materials - Property of IBM

  WebSphere Commerce

  (C) Copyright IBM Corp. 2016 All Rights Reserved.

  US Government Users Restricted Rights - Use, duplication or
  disclosure restricted by GSA ADP Schedule Contract with
  IBM Corp.
 =================================================================
--%>
<%@page contentType="text/xml;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
%><%@ taglib uri="http://commerce.ibm.com/foundation" prefix="wcf"
%>

<c:choose>
	<c:when test="${(empty param.searchText)}">	
		<%-- No search criteria is specified --%>
		<objects
			recordSetCompleteIndicator="true"
		 	recordSetReferenceId=""
			recordSetStartNumber=""
			recordSetCount="0"
			recordSetTotal="0">
		</objects> 
	</c:when>
	
	<c:otherwise>
   		<wcf:getData type="com.ibm.commerce.content.facade.datatypes.ExternalContentType[]"
				var="contents"
				expressionBuilder="findExternalContentSearch"
				varShowVerb="showVerb"
				recordSetStartNumber="${param.recordSetStartNumber}"
				recordSetReferenceId="${param.recordSetReferenceId}"
				maxItems="${param.maxItems}">		 
				<wcf:contextData name="storeId" data="${param.storeId}"/>			
				<wcf:param name="name" value="${param.searchText}"/>
				<wcf:param name="Type" value="${param.Type}"/>
		</wcf:getData>	
		
		<objects recordSetCompleteIndicator="${showVerb.recordSetCompleteIndicator}"
		 	recordSetReferenceId="${showVerb.recordSetReferenceId}"
			recordSetStartNumber="${showVerb.recordSetStartNumber}"
			recordSetCount="${showVerb.recordSetCount}"
			recordSetTotal="${showVerb.recordSetTotal}">
			
	 		<c:if test="${!(empty contents)}">
	   				<jsp:directive.include file="serialize/SerializeExternalContents.jspf"/>
			</c:if>
		</objects>
		
	</c:otherwise>
</c:choose>		