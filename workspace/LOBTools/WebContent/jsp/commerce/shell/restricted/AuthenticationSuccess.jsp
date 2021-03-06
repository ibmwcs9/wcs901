<?xml version="1.0" encoding="UTF-8"?>

<%--
 =================================================================
  Licensed Materials - Property of IBM

  WebSphere Commerce

  (C) Copyright IBM Corp. 2008, 2016 All Rights Reserved.

  US Government Users Restricted Rights - Use, duplication or
  disclosure restricted by GSA ADP Schedule Contract with
  IBM Corp.
 =================================================================
--%>
<%@page contentType="text/xml;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://commerce.ibm.com/foundation" prefix="wcf"%>
<c:set var="responseMap" value="${requestScope['com.ibm.commerce.responseMap']}"/>
<values>
  <identityId><wcf:cdata data="${responseMap.encryptedIdentityId}"/></identityId>
  <unencryptedIdentityId><wcf:cdata data="${responseMap.identityTokenID[0]}"/></unencryptedIdentityId>
  <identitySignature><wcf:cdata data="${responseMap.identityTokenSignature[0]}"/></identitySignature>
  <logonId><wcf:cdata data="${param.logonId}"/></logonId>
  <userId><wcf:cdata data="${responseMap.userId[0]}"/></userId>
  <WCToken><wcf:cdata data="${responseMap.WCToken}"/></WCToken>
  <WCTrustedToken><wcf:cdata data="${responseMap.WCTrustedToken}"/></WCTrustedToken>
</values>
