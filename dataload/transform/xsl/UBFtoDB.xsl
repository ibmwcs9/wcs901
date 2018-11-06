<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

   <xsl:strip-space elements="UBF"/>

   <xsl:param name="Root" select="'UBF'"/>
   <xsl:param name="SchemaName" select="'UBFSchema.xsd'"/>
   <xsl:param name="LanguageID" select="'-1'"/> <!-- default for en_US -->

   <xsl:param name="Descriptions_EN" select="''"/>
   <xsl:param name="Descriptions_FR" select="''"/>
   <xsl:param name="Descriptions_DE" select="''"/>
   <xsl:param name="Descriptions_IT" select="''"/>
   <xsl:param name="Descriptions_ES" select="''"/>
   <xsl:param name="Descriptions_BR" select="''"/>
   <xsl:param name="Descriptions_CN" select="''"/>
   <xsl:param name="Descriptions_TW" select="''"/>
   <xsl:param name="Descriptions_KR" select="''"/>
   <xsl:param name="Descriptions_JP" select="''"/>
   <xsl:param name="Descriptions_RO" select="''"/>
   <xsl:param name="Descriptions_PL" select="''"/>
   <xsl:param name="Descriptions_RU" select="''"/>
   

   <xsl:variable name="Resolve_Key_Prefix">@</xsl:variable>

   <xsl:variable name="ExternalNodes_EN" select="document($Descriptions_EN)"/>
   <xsl:variable name="ExternalNodes_FR" select="document($Descriptions_FR)"/>
   <xsl:variable name="ExternalNodes_DE" select="document($Descriptions_DE)"/>
   <xsl:variable name="ExternalNodes_IT" select="document($Descriptions_IT)"/>
   <xsl:variable name="ExternalNodes_ES" select="document($Descriptions_ES)"/>
   <xsl:variable name="ExternalNodes_BR" select="document($Descriptions_BR)"/>
   <xsl:variable name="ExternalNodes_CN" select="document($Descriptions_CN)"/>
   <xsl:variable name="ExternalNodes_TW" select="document($Descriptions_TW)"/>
   <xsl:variable name="ExternalNodes_KR" select="document($Descriptions_KR)"/>
   <xsl:variable name="ExternalNodes_JP" select="document($Descriptions_JP)"/>
   <xsl:variable name="ExternalNodes_RO" select="document($Descriptions_RO)"/>
   <xsl:variable name="ExternalNodes_PL" select="document($Descriptions_PL)"/>
   <xsl:variable name="ExternalNodes_RU" select="document($Descriptions_RU)"/>

<!-- Transformation Rules Section Starts -->

   <!--
        *****************************************************************************
        Root Element Transformation Rule
        *****************************************************************************
   -->
   <xsl:template match="/">
<!--
      <xsl:text disable-output-escaping = "yes">&lt;!DOCTYPE </xsl:text>
      <xsl:value-of select="$Root" />
      <xsl:text disable-output-escaping = "yes"> SYSTEM &quot;</xsl:text>
      <xsl:value-of select="$SchemaName" />
      <xsl:text disable-output-escaping = "yes">&quot;&gt;</xsl:text>
      <xsl:text>&#10;</xsl:text>
-->
      <xsl:element name="{$Root}">
         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         <xsl:apply-templates/>
	   <xsl:call-template name="ApproveGroup">
       	<xsl:with-param name="Action" select="'HandleApproval'"/>
       	<xsl:with-param name="ActionGroup" select="'Approve'"/>
	   </xsl:call-template>
      </xsl:element>
   </xsl:template>


   <!-- *******************************************************************************************************  -->


   <xsl:template match="FlowDomain">

      <xsl:if test="string-length(@identifier)!=0">

         <xsl:element name="flowdomain">

            <xsl:attribute name = "FlowDomain_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="@identifier"/>
            </xsl:attribute>

            <xsl:copy-of select="@identifier | @priority"/>

         </xsl:element>

         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

	   <xsl:if test="string-length($Descriptions_EN)!=0">
		<xsl:call-template name="FlowDomainDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_EN"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_FR)!=0">
		<xsl:call-template name="FlowDomainDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_FR"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_DE)!=0">
		<xsl:call-template name="FlowDomainDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_DE"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_IT)!=0">
		<xsl:call-template name="FlowDomainDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_IT"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_ES)!=0">
		<xsl:call-template name="FlowDomainDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_ES"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_BR)!=0">
		<xsl:call-template name="FlowDomainDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_BR"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_CN)!=0">
		<xsl:call-template name="FlowDomainDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_CN"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_TW)!=0">
		<xsl:call-template name="FlowDomainDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_TW"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_KR)!=0">
		<xsl:call-template name="FlowDomainDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_KR"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_JP)!=0">
		<xsl:call-template name="FlowDomainDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_JP"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_RO)!=0">
		<xsl:call-template name="FlowDomainDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RO"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_PL)!=0">
		<xsl:call-template name="FlowDomainDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_PL"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_RU)!=0">
		<xsl:call-template name="FlowDomainDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RU"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>                  

	   <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

         <xsl:apply-templates select="./FlowType"/>

      </xsl:if>

   </xsl:template>

   <!-- *******************************************************************************************************  -->

   <xsl:template  name="FlowDomainDescription" >
	<xsl:param name="LanguageNode"/>

      <xsl:element name="fldomndesc">

         <xsl:attribute name = "FlowDomain_Id">
            <xsl:value-of select="$Resolve_Key_Prefix"/>
            <xsl:value-of select="current()/@identifier"/>
         </xsl:attribute>

         <xsl:attribute name = "Language_Id">
            <xsl:value-of select="$LanguageNode//LANGUAGE/@id"/>
         </xsl:attribute>

         <xsl:attribute name = "Description">
            <xsl:value-of select="$LanguageNode//FlowDomainDesc[attribute::identifier=current()/@identifier]/@description"/>
         </xsl:attribute>

         <xsl:attribute name = "LongDescription">
            <xsl:value-of select="$LanguageNode//FlowDomainDesc[attribute::identifier=current()/@identifier]/@longdescription"/>
         </xsl:attribute>

       </xsl:element>
   </xsl:template>

   <!-- *******************************************************************************************************  -->

   <xsl:template match="FlowDomain/FlowType">

      <xsl:if test="string-length(@identifier)!=0">

         <xsl:element name="flowtype">

            <xsl:attribute name = "FlowType_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="@identifier"/>
            </xsl:attribute>

            <xsl:attribute name = "FlowDomain_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="parent::FlowDomain/@identifier"/>
            </xsl:attribute>

            <xsl:attribute name = "BizFlowBeanClass">
               <xsl:value-of select="@bean"/>
            </xsl:attribute>

            <xsl:copy-of select=" @identifier | @attribute | @viewname | @priority"/>

         </xsl:element>

         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

	   <xsl:if test="string-length(@viewname)!=0">

      	   <xsl:call-template name="ApproveGroup">
             	<xsl:with-param name="Action" select="@viewname"/>
             	<xsl:with-param name="ActionGroup" select="'Approve'"/>
      	   </xsl:call-template>

      	   <xsl:call-template name="ApproveGroup">
             	<xsl:with-param name="Action" select="@viewname"/>
             	<xsl:with-param name="ActionGroup" select="'AllUsersViews'"/>
      	   </xsl:call-template>

	   </xsl:if>

         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

	   <xsl:if test="string-length($Descriptions_EN)!=0">
		<xsl:call-template name="FlowTypeDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_EN"/>
		</xsl:call-template>
 	      <xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_FR)!=0">
		<xsl:call-template name="FlowTypeDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_FR"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_DE)!=0">
		<xsl:call-template name="FlowTypeDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_DE"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_IT)!=0">
		<xsl:call-template name="FlowTypeDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_IT"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_ES)!=0">
		<xsl:call-template name="FlowTypeDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_ES"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_BR)!=0">
		<xsl:call-template name="FlowTypeDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_BR"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_CN)!=0">
		<xsl:call-template name="FlowTypeDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_CN"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_TW)!=0">
		<xsl:call-template name="FlowTypeDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_TW"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_KR)!=0">
		<xsl:call-template name="FlowTypeDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_KR"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_JP)!=0">
		<xsl:call-template name="FlowTypeDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_JP"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_RO)!=0">
		<xsl:call-template name="FlowTypeDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RO"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_PL)!=0">
		<xsl:call-template name="FlowTypeDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_PL"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_RU)!=0">
		<xsl:call-template name="FlowTypeDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RU"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>                           

	   <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

         <xsl:apply-templates select="./StateGroup/StateGroupEntry"/>

	   <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

         <xsl:apply-templates select="./StateDictionary/StateDictionaryEntry"/>

 	   <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

         <xsl:apply-templates select="./Flow"/>

 	   <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

      </xsl:if>
   </xsl:template>

   <!-- *******************************************************************************************************  -->

   <xsl:template  name="FlowTypeDescription" >
	<xsl:param name="LanguageNode"/>

      <xsl:element name="fltypedesc">

         <xsl:attribute name = "FlowType_Id">
            <xsl:value-of select="$Resolve_Key_Prefix"/>
            <xsl:value-of select="current()/@identifier"/>
         </xsl:attribute>

         <xsl:attribute name = "Language_Id">
            <xsl:value-of select="$LanguageNode//LANGUAGE/@id"/>
         </xsl:attribute>

         <xsl:attribute name = "Description">
            <xsl:value-of select="$LanguageNode//FlowTypeDesc[attribute::identifier=current()/@identifier]/@description"/>
         </xsl:attribute>

         <xsl:attribute name = "LongDescription">
            <xsl:value-of select="$LanguageNode//FlowTypeDesc[attribute::identifier=current()/@identifier]/@longdescription"/>
         </xsl:attribute>

       </xsl:element>
   </xsl:template>

   <!-- *******************************************************************************************************  -->


   <xsl:template match="FlowDomain/FlowType/StateGroup/StateGroupEntry">

      <xsl:if test="string-length(@identifier)!=0">

        <xsl:if test="@mandatory = '1'">

           <xsl:variable name="StatesForCurrentGroup" select="ancestor::FlowType/StateDictionary/StateDictionaryEntry[attribute::group=current()/@identifier]"/>

           <xsl:for-each select="$StatesForCurrentGroup">
              <xsl:variable name = "LookingForState" select="@identifier"/>
              <xsl:variable name = "LookingForGroup" select="@group"/>

              <xsl:for-each select="ancestor::FlowType/Flow">
                 <xsl:variable name = "InFlow" select="@identifier"/>

     		    <xsl:choose>
          	         <xsl:when test="State[attribute::identifier=$LookingForState]">
                     </xsl:when>

          	     	   <xsl:when test="StartState[attribute::identifier=$LookingForState]">
                     </xsl:when>

    	 	     	   <xsl:otherwise>
                         <xsl:message terminate = "no">
                            <xsl:text>[Error] No State is used from Mandatory State Group [</xsl:text>
                            <xsl:value-of select="$LookingForGroup"/>
                            <xsl:text>] in Flow : </xsl:text>
                            <xsl:value-of select="$InFlow"/>
                         </xsl:message>
                     </xsl:otherwise>

    		    </xsl:choose>

              </xsl:for-each>

           </xsl:for-each>

         </xsl:if>


         <xsl:element name="flstategp">

            <xsl:attribute name = "FlStateGp_Id">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="@identifier"/>
               <xsl:value-of select="ancestor::FlowType/@identifier"/>
            </xsl:attribute>

            <xsl:attribute name = "FlowType_Id">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="ancestor::FlowType/@identifier"/>
            </xsl:attribute>

            <xsl:attribute name = "MandatoryStateGp">
               <xsl:value-of select="@mandatory"/>
            </xsl:attribute>

            <xsl:copy-of select=" @identifier "/>

         </xsl:element>

         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

	   <xsl:if test="string-length($Descriptions_EN)!=0">
		<xsl:call-template name="FlowStateGroupDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_EN"/>
       		<xsl:with-param name="FlowType" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
	      <xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_FR)!=0">
		<xsl:call-template name="FlowStateGroupDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_FR"/>
       		<xsl:with-param name="FlowType" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_DE)!=0">
		<xsl:call-template name="FlowStateGroupDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_DE"/>
       		<xsl:with-param name="FlowType" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_IT)!=0">
		<xsl:call-template name="FlowStateGroupDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_IT"/>
       		<xsl:with-param name="FlowType" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_ES)!=0">
		<xsl:call-template name="FlowStateGroupDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_ES"/>
       		<xsl:with-param name="FlowType" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_BR)!=0">
		<xsl:call-template name="FlowStateGroupDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_BR"/>
       		<xsl:with-param name="FlowType" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_CN)!=0">
		<xsl:call-template name="FlowStateGroupDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_CN"/>
       		<xsl:with-param name="FlowType" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_TW)!=0">
		<xsl:call-template name="FlowStateGroupDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_TW"/>
       		<xsl:with-param name="FlowType" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_KR)!=0">
		<xsl:call-template name="FlowStateGroupDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_KR"/>
       		<xsl:with-param name="FlowType" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_JP)!=0">
		<xsl:call-template name="FlowStateGroupDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_JP"/>
       		<xsl:with-param name="FlowType" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_RO)!=0">
		<xsl:call-template name="FlowStateGroupDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RO"/>
       		<xsl:with-param name="FlowType" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_PL)!=0">
		<xsl:call-template name="FlowStateGroupDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_PL"/>
       		<xsl:with-param name="FlowType" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_RU)!=0">
		<xsl:call-template name="FlowStateGroupDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RU"/>
       		<xsl:with-param name="FlowType" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>                           

      </xsl:if>

   </xsl:template>

   <!-- *******************************************************************************************************  -->

   <xsl:template  name="FlowStateGroupDescription" >
	<xsl:param name="LanguageNode"/>
	<xsl:param name="FlowType"/>

	<xsl:variable name="FlowTypeNode" select="$LanguageNode//FlowTypeDesc[attribute::identifier=$FlowType]"/>
	<xsl:variable name="StateGroupNode" select="$FlowTypeNode/StateGroup"/>

      <xsl:element name="flstgpdsc">

            <xsl:attribute name = "FlStateGp_Id">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="@identifier"/>
               <xsl:value-of select="$FlowTypeNode/@identifier"/>
            </xsl:attribute>

            <xsl:attribute name = "Language_Id">
               <xsl:value-of select="$LanguageNode//LANGUAGE/@id"/>
            </xsl:attribute>

            <xsl:attribute name = "Description">
               <xsl:value-of select="$StateGroupNode/StateGroupEntryDesc[attribute::identifier=current()/@identifier]/@description"/>
            </xsl:attribute>

       </xsl:element>
   </xsl:template>

   <!--  *******************************************************************************************************  -->


   <xsl:template match="FlowDomain/FlowType/StateDictionary/StateDictionaryEntry">

      <xsl:if test="string-length(@identifier)!=0">

         <xsl:element name="flstatedct">

            <xsl:attribute name = "FlStateDct_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="@identifier"/>
               <xsl:value-of select="ancestor::FlowType/@identifier"/>
            </xsl:attribute>

            <xsl:attribute name = "StateName">
               <xsl:value-of select="@identifier"/>
            </xsl:attribute>

            <xsl:attribute name = "FlowType_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="ancestor::FlowType/@identifier"/>
            </xsl:attribute>

            <xsl:variable name="StateGroup" select="ancestor::FlowType/StateGroup/StateGroupEntry[attribute::identifier=current()/@group]"/>

            <xsl:if test="$StateGroup">
               <xsl:attribute name = "FlStateGp_ID">
                  <xsl:value-of select="$Resolve_Key_Prefix"/>
                  <xsl:value-of select="$StateGroup/@identifier"/>
	            <xsl:value-of select="ancestor::FlowType/@identifier"/>
               </xsl:attribute>
            </xsl:if>

            <xsl:attribute name = "identifier">
               <xsl:value-of select="@id"/>
            </xsl:attribute>

            <xsl:attribute name = "approvermbrgrpname">
               <xsl:value-of select="child::ApproverGroup/@name"/>
            </xsl:attribute>

            <xsl:attribute name = "STATETYPE">
     		    <xsl:choose>
          	         <xsl:when test="string-length(@StateType)!=0">
		               <xsl:value-of select="@StateType"/>
                     </xsl:when>

    	 	     	   <xsl:otherwise>
                            <xsl:text>1</xsl:text>
                     </xsl:otherwise>

    		    </xsl:choose>
            </xsl:attribute>

         </xsl:element>

         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

         <xsl:apply-templates select="./ApproverGroup"/>

	   <xsl:if test="string-length($Descriptions_EN)!=0">
		<xsl:call-template name="FlowStateDictDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_EN"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
            <xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_FR)!=0">
		<xsl:call-template name="FlowStateDictDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_FR"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_DE)!=0">
		<xsl:call-template name="FlowStateDictDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_DE"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_IT)!=0">
		<xsl:call-template name="FlowStateDictDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_IT"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_ES)!=0">
		<xsl:call-template name="FlowStateDictDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_ES"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_BR)!=0">
		<xsl:call-template name="FlowStateDictDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_BR"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_CN)!=0">
		<xsl:call-template name="FlowStateDictDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_CN"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_TW)!=0">
		<xsl:call-template name="FlowStateDictDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_TW"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_KR)!=0">
		<xsl:call-template name="FlowStateDictDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_KR"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_JP)!=0">
		<xsl:call-template name="FlowStateDictDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_JP"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_RO)!=0">
		<xsl:call-template name="FlowStateDictDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RO"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_PL)!=0">
		<xsl:call-template name="FlowStateDictDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_PL"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_RU)!=0">
		<xsl:call-template name="FlowStateDictDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RU"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>                           

      </xsl:if>

   </xsl:template>

   <!-- *******************************************************************************************************  -->

   <xsl:template  name="FlowStateDictDescription" >
	<xsl:param name="LanguageNode"/>
	<xsl:param name="FlowTypeIdentifier"/>

	<xsl:variable name="FlowTypeNode" select="$LanguageNode//FlowTypeDesc[attribute::identifier=$FlowTypeIdentifier]"/>
	<xsl:variable name="StateDictNode" select="$FlowTypeNode/StateDictionary"/>

      <xsl:element name="flstdctdsc">

            <xsl:attribute name = "FlStateDct_Id">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="@identifier"/>
               <xsl:value-of select="$FlowTypeIdentifier"/>
            </xsl:attribute>

            <xsl:attribute name = "Language_Id">
               <xsl:value-of select="$LanguageNode//LANGUAGE/@id"/>
            </xsl:attribute>

            <xsl:attribute name = "Description">
               <xsl:value-of select="$StateDictNode/StateDictionaryEntryDesc[attribute::identifier=current()/@identifier]/@description"/>
            </xsl:attribute>

       </xsl:element>
   </xsl:template>

   <!--  *******************************************************************************************************  -->

   <xsl:template match="ApproverGroup">

      <xsl:if test="string-length(@name)!=0">

         <xsl:element name="mbrgrptype">

            <xsl:attribute name = "MBRGRPTYPE_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="@name"/>
            </xsl:attribute>

            <xsl:attribute name = "Name">
               <xsl:value-of select="@name"/>
            </xsl:attribute>

            <xsl:attribute name = "Description">
               <xsl:value-of select="@description"/>
            </xsl:attribute>

            <xsl:attribute name = "Properties">
               <xsl:text>approval=y&amp;</xsl:text>
               <xsl:value-of select="@properties"/>
		</xsl:attribute>
         </xsl:element>

		<xsl:variable name="disableGroupName">DisableInherited_<xsl:value-of select="@name" /></xsl:variable>
		<xsl:variable name="disableGroupDescription">Disable Inherited <xsl:value-of select="@description" /></xsl:variable>
         <xsl:element name="mbrgrptype">
               <xsl:attribute name = "MBRGRPTYPE_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="$disableGroupName"/>
            </xsl:attribute>

            <xsl:attribute name = "Name">
               <xsl:value-of select="$disableGroupName"/>
            </xsl:attribute>

            <xsl:attribute name = "Description">
               <xsl:value-of select="$disableGroupDescription"/>
            </xsl:attribute>

            <xsl:attribute name = "Properties">
               <xsl:text>approval=y</xsl:text>
			</xsl:attribute>
         </xsl:element>

      </xsl:if>
   </xsl:template>

   <!--  *******************************************************************************************************  -->

   <xsl:template match="FlowDomain/FlowType/Flow">

      <xsl:if test = "(string-length(@identifier)!=0)">

         <xsl:element name="flow">

            <xsl:attribute name = "Flow_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="@identifier"/>
               <xsl:value-of select="parent::FlowType/@identifier"/>
            </xsl:attribute>

            <xsl:attribute name = "FlowType_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="parent::FlowType/@identifier"/>
            </xsl:attribute>

            <xsl:attribute name = "CompositeFlow">
               <xsl:text>0</xsl:text>  <!-- 0 for normal flow, 1 for composit flow -->
            </xsl:attribute>

            <xsl:copy-of select="@identifier | @attribute | @priority"/>

         </xsl:element>

         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

	   <xsl:if test="string-length($Descriptions_EN)!=0">
		<xsl:call-template name="FlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_EN"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="parent::FlowType/@identifier"/>
		</xsl:call-template>
            <xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_FR)!=0">
		<xsl:call-template name="FlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_FR"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_DE)!=0">
		<xsl:call-template name="FlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_DE"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_IT)!=0">
		<xsl:call-template name="FlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_IT"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_ES)!=0">
		<xsl:call-template name="FlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_ES"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_BR)!=0">
		<xsl:call-template name="FlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_BR"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_CN)!=0">
		<xsl:call-template name="FlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_CN"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_TW)!=0">
		<xsl:call-template name="FlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_TW"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_KR)!=0">
		<xsl:call-template name="FlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_KR"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_JP)!=0">
		<xsl:call-template name="FlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_JP"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_RO)!=0">
		<xsl:call-template name="FlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RO"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_PL)!=0">
		<xsl:call-template name="FlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_PL"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_RU)!=0">
		<xsl:call-template name="FlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RU"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>                           

         <xsl:apply-templates select="./StartState"/>

	   <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

         <xsl:apply-templates select="./State"/>

	   <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

      </xsl:if>
   </xsl:template>

   <!-- *******************************************************************************************************  -->

   <xsl:template  name="FlowDescription" >
	<xsl:param name="LanguageNode"/>
	<xsl:param name="FlowTypeIdentifier"/>

	<xsl:variable name="FlowTypeNode" select="$LanguageNode//FlowTypeDesc[attribute::identifier=$FlowTypeIdentifier]"/>

      <xsl:element name="flowdesc">

            <xsl:attribute name = "Flow_Id">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="@identifier"/>
               <xsl:value-of select="$FlowTypeIdentifier"/>
            </xsl:attribute>

            <xsl:attribute name = "Language_Id">
               <xsl:value-of select="$LanguageNode//LANGUAGE/@id"/>
            </xsl:attribute>

            <xsl:attribute name = "Description">
               <xsl:value-of select="$FlowTypeNode/FlowDesc[attribute::identifier=current()/@identifier]/@description"/>
            </xsl:attribute>

            <xsl:attribute name = "LongDescription">
               <xsl:value-of select="$FlowTypeNode/FlowDesc[attribute::identifier=current()/@identifier]/@longdescription"/>
            </xsl:attribute>

       </xsl:element>
   </xsl:template>

   <!-- *******************************************************************************************************  -->

   <xsl:template match="StartState">

      <xsl:if test = "(string-length(@identifier)!=0)">

         <xsl:variable name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
         <xsl:variable name="DictionaryFlowType" select="ancestor::FlowType/StateDictionary"/>
         <xsl:variable name="Flow" select="parent::Flow/@identifier"/>
	   <xsl:variable name="CurrentStateNode" select="current()"/>

	   <!--error reporting for state states with StateType other than 0-->
	   <xsl:if test="$DictionaryFlowType/StateDictionaryEntry[attribute::identifier=current()/@identifier]/@StateType!=0">
               <xsl:message terminate = "no">
                  <xsl:text>[Error] State with identifier </xsl:text>
	   	      <xsl:value-of select="current()/@identifier"/>
                  <xsl:text> to be used as StartState should have StateType=0 in StateDictionary</xsl:text>
               </xsl:message>
	   </xsl:if>

         <xsl:variable name="StartStateHasExit">
		<xsl:choose>
      	 <xsl:when test="descendant::TargetState[attribute::identifier!=current()/@identifier]">true</xsl:when>
		 <xsl:otherwise>false</xsl:otherwise>
		</xsl:choose>
         </xsl:variable>

   	   <xsl:if test="$StartStateHasExit!='true'">
            <xsl:message terminate = "no">
               <xsl:text>[Error] Start State has no exit!</xsl:text>
            </xsl:message>
	   </xsl:if>


         <xsl:element name="flstaterel">

            <xsl:attribute name = "FlStateDct_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="$DictionaryFlowType/StateDictionaryEntry[attribute::identifier=current()/@identifier]/@identifier"/>
               <xsl:value-of select="$FlowTypeIdentifier"/>
            </xsl:attribute>

            <xsl:attribute name = "Flow_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="$Flow"/>
               <xsl:value-of select="$FlowTypeIdentifier"/>
            </xsl:attribute>

            <xsl:attribute name = "EntryActnInterface">
               <xsl:value-of select="@entryactioninterface"/>
            </xsl:attribute>

            <xsl:attribute name = "ExitActnInterface">
               <xsl:value-of select="@exitactioninterface"/>
            </xsl:attribute>

            <xsl:attribute name = "ResponseViewName">
               <xsl:value-of select="@responseview"/>
            </xsl:attribute>

         </xsl:element>

         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

         <xsl:apply-templates select="./Transition">
		<xsl:with-param name="IsStartState" select='string("Yes")'/>
            <xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
            <xsl:with-param name="Flow" select="$Flow"/>
		<xsl:with-param name="State" select="$CurrentStateNode"/>
         </xsl:apply-templates>

      </xsl:if>

   </xsl:template>

   <!-- *******************************************************************************************************  -->

   <xsl:template match="State">

      <xsl:if test = "(string-length(@identifier)!=0)">

         <xsl:variable name="FlowTypeIdentifier" select="ancestor::FlowType/@identifier"/>
         <xsl:variable name="DictionaryFlowType" select="ancestor::FlowType/StateDictionary"/>
         <xsl:variable name="Flow" select="parent::Flow/@identifier"/>
	   <xsl:variable name="CurrentStateNode" select="current()"/>

         <xsl:element name="flstaterel">

            <xsl:attribute name = "FlStateDct_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="$DictionaryFlowType/StateDictionaryEntry[attribute::identifier=current()/@identifier]/@identifier"/>
               <xsl:value-of select="$FlowTypeIdentifier"/>
            </xsl:attribute>

            <xsl:attribute name = "Flow_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="$Flow"/>
               <xsl:value-of select="$FlowTypeIdentifier"/>
            </xsl:attribute>

            <xsl:attribute name = "EntryActnInterface">
               <xsl:value-of select="@entryactioninterface"/>
            </xsl:attribute>

            <xsl:attribute name = "ExitActnInterface">
               <xsl:value-of select="@exitactioninterface"/>
            </xsl:attribute>

            <xsl:attribute name = "ResponseViewName">
               <xsl:value-of select="@responseview"/>
            </xsl:attribute>

         </xsl:element>

         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

         <xsl:apply-templates select="./Transition">
		<xsl:with-param name="IsStartState" select='string("No")'/>
            <xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
            <xsl:with-param name="Flow" select="$Flow"/>
		<xsl:with-param name="State" select="$CurrentStateNode"/>
         </xsl:apply-templates>

      </xsl:if>

   </xsl:template>

   <!-- *******************************************************************************************************  -->

   <xsl:template match="Transition">

      <xsl:param name="IsStartState"/>
      <xsl:param name="FlowTypeIdentifier"/>
      <xsl:param name="Flow"/>
      <xsl:param name="State"/>
	<xsl:param name="Transition" select="current()"/>

         <xsl:element name="fltransitn">

            <xsl:attribute name = "FlTransitn_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="$FlowTypeIdentifier"/>
               <xsl:value-of select="$Flow"/>
               <xsl:value-of select="$State/@identifier"/>
               <xsl:value-of select="child::TargetState/@identifier"/>
  	         <xsl:choose>
                  <xsl:when test="@eventidentifier">
                        <xsl:value-of select="@eventidentifier"/>
                 </xsl:when>
                  <xsl:otherwise>
				<xsl:if test="$IsStartState='Yes'">
                           <xsl:message terminate = "no">
                              <xsl:text>[Error] Transition in the StartState </xsl:text>
            	   	      <xsl:value-of select="$State/@identifier"/>
                              <xsl:text> with TargetState </xsl:text>
            	   	      <xsl:value-of select="child::TargetState/@identifier"/>
                              <xsl:text> should have a eventidentifier.</xsl:text>
                           </xsl:message>
				</xsl:if>
				<xsl:text>NULL</xsl:text>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:attribute>

            <xsl:attribute name = "Flow_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="$Flow"/>
               <xsl:value-of select="$FlowTypeIdentifier"/>
            </xsl:attribute>

            <xsl:attribute name = "SourceState_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="$State/@identifier"/>
               <xsl:value-of select="$FlowTypeIdentifier"/>
            </xsl:attribute>

            <xsl:attribute name = "TargetState_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="./TargetState/@identifier"/>
               <xsl:value-of select="$FlowTypeIdentifier"/>
            </xsl:attribute>

            <xsl:if test="./Action">
               <xsl:attribute name = "ActionInterface">
                  <xsl:value-of select="./Action/@interface"/>
               </xsl:attribute>
            </xsl:if>

            <xsl:if test="./AccessControlGuard ">
               <xsl:attribute name = "AccessCtrlGuard">
                  <xsl:value-of select="./AccessControlGuard/@actiongroup"/>
               </xsl:attribute>
            </xsl:if>

            <xsl:if test="./BusinessLogicGuard">
               <xsl:attribute name = "BusinessLogicGuard">
                  <xsl:value-of select="./BusinessLogicGuard/@interface"/>
               </xsl:attribute>
            </xsl:if>

            <xsl:attribute name = "ResponseViewName">
               <xsl:value-of select="@responseview"/>
            </xsl:attribute>

            <xsl:if test="./SpawnFlowType">
               <xsl:attribute name = "SpawnFlwType_ID">
                  <xsl:value-of select="$Resolve_Key_Prefix"/>
                  <xsl:value-of select="./SpawnFlowType/@identifier"/>
               </xsl:attribute>

               <xsl:attribute name = "SpawnType">
                  <xsl:choose>
                     <xsl:when test="./SpawnFlowType/@type='Multi-stage'">
                        <xsl:text>1</xsl:text>
                     </xsl:when>
                     <xsl:when test="./SpawnFlowType/@type='Multi-round'">
                        <xsl:text>2</xsl:text>
                     </xsl:when>
                     <xsl:when test="./SpawnFlowType/@type='Versioning'">
                        <xsl:text>3</xsl:text>
                     </xsl:when>
                     <xsl:when test="./SpawnFlowType/@type='ChildCreation'">
                        <xsl:text>4</xsl:text>
                     </xsl:when>
                     <xsl:when test="./SpawnFlowType/@type='Application'">
                        <xsl:text>5</xsl:text>
                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:text>5</xsl:text>
                     </xsl:otherwise>
                  </xsl:choose>
               </xsl:attribute>
            </xsl:if>

            <xsl:attribute name = "eventidentifier">
  	         <xsl:choose>
                  <xsl:when test="@eventidentifier">
                        <xsl:value-of select="@eventidentifier"/>
                 </xsl:when>
                  <xsl:otherwise>
				<xsl:text>NULL</xsl:text>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:attribute>

            <xsl:attribute name = "approval">
     		    <xsl:choose>
          	         <xsl:when test="string-length(@approval)!=0">
		               <xsl:value-of select="@approval"/>
                     </xsl:when>
    	 	     	   <xsl:otherwise>
                            <xsl:text>0</xsl:text>
                     </xsl:otherwise>
    		    </xsl:choose>
            </xsl:attribute>

            <xsl:copy-of select="@priority"/>

         </xsl:element>

         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

	   <xsl:if test="string-length($Descriptions_EN)!=0">
		<xsl:call-template name="TransitionDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_EN"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
       		<xsl:with-param name="Flow" select="$Flow"/>
			<xsl:with-param name="IsStartState" select="$IsStartState"/>
       		<xsl:with-param name="State" select="$State"/>
       		<xsl:with-param name="TargetState" select="child::TargetState/@identifier"/>
		</xsl:call-template>
            <xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_FR)!=0">
		<xsl:call-template name="TransitionDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_FR"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
       		<xsl:with-param name="Flow" select="$Flow"/>
			<xsl:with-param name="IsStartState" select="$IsStartState"/>
       		<xsl:with-param name="State" select="$State"/>
       		<xsl:with-param name="TargetState" select="child::TargetState/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_DE)!=0">
		<xsl:call-template name="TransitionDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_DE"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
       		<xsl:with-param name="Flow" select="$Flow"/>
			<xsl:with-param name="IsStartState" select="$IsStartState"/>
       		<xsl:with-param name="State" select="$State"/>
       		<xsl:with-param name="TargetState" select="child::TargetState/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_IT)!=0">
		<xsl:call-template name="TransitionDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_IT"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
       		<xsl:with-param name="Flow" select="$Flow"/>
			<xsl:with-param name="IsStartState" select="$IsStartState"/>
       		<xsl:with-param name="State" select="$State"/>
       		<xsl:with-param name="TargetState" select="child::TargetState/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_ES)!=0">
		<xsl:call-template name="TransitionDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_ES"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
       		<xsl:with-param name="Flow" select="$Flow"/>
			<xsl:with-param name="IsStartState" select="$IsStartState"/>
       		<xsl:with-param name="State" select="$State"/>
       		<xsl:with-param name="TargetState" select="child::TargetState/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_BR)!=0">
		<xsl:call-template name="TransitionDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_BR"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
       		<xsl:with-param name="Flow" select="$Flow"/>
			<xsl:with-param name="IsStartState" select="$IsStartState"/>
       		<xsl:with-param name="State" select="$State"/>
       		<xsl:with-param name="TargetState" select="child::TargetState/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_CN)!=0">
		<xsl:call-template name="TransitionDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_CN"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
       		<xsl:with-param name="Flow" select="$Flow"/>
			<xsl:with-param name="IsStartState" select="$IsStartState"/>
       		<xsl:with-param name="State" select="$State"/>
       		<xsl:with-param name="TargetState" select="child::TargetState/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_TW)!=0">
		<xsl:call-template name="TransitionDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_TW"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
       		<xsl:with-param name="Flow" select="$Flow"/>
			<xsl:with-param name="IsStartState" select="$IsStartState"/>
       		<xsl:with-param name="State" select="$State"/>
       		<xsl:with-param name="TargetState" select="child::TargetState/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_KR)!=0">
		<xsl:call-template name="TransitionDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_KR"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
       		<xsl:with-param name="Flow" select="$Flow"/>
			<xsl:with-param name="IsStartState" select="$IsStartState"/>
       		<xsl:with-param name="State" select="$State"/>
       		<xsl:with-param name="TargetState" select="child::TargetState/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_JP)!=0">
		<xsl:call-template name="TransitionDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_JP"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
       		<xsl:with-param name="Flow" select="$Flow"/>
			<xsl:with-param name="IsStartState" select="$IsStartState"/>
       		<xsl:with-param name="State" select="$State"/>
       		<xsl:with-param name="TargetState" select="child::TargetState/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_RO)!=0">
		<xsl:call-template name="TransitionDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RO"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
       		<xsl:with-param name="Flow" select="$Flow"/>
			<xsl:with-param name="IsStartState" select="$IsStartState"/>
       		<xsl:with-param name="State" select="$State"/>
       		<xsl:with-param name="TargetState" select="child::TargetState/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_PL)!=0">
		<xsl:call-template name="TransitionDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_PL"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
       		<xsl:with-param name="Flow" select="$Flow"/>
			<xsl:with-param name="IsStartState" select="$IsStartState"/>
       		<xsl:with-param name="State" select="$State"/>
       		<xsl:with-param name="TargetState" select="child::TargetState/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_RU)!=0">
		<xsl:call-template name="TransitionDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RU"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
       		<xsl:with-param name="Flow" select="$Flow"/>
			<xsl:with-param name="IsStartState" select="$IsStartState"/>
       		<xsl:with-param name="State" select="$State"/>
       		<xsl:with-param name="TargetState" select="child::TargetState/@identifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>                           


         <xsl:apply-templates select="./AccessControlGuard">
            <xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
		<xsl:with-param name="State" select="$State"/>
		<xsl:with-param name="Transition" select="$Transition"/>
         </xsl:apply-templates>

         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

<!--
         <xsl:apply-templates select="./Action">
            <xsl:with-param name="FlowTypeIdentifier" select="$FlowTypeIdentifier"/>
		<xsl:with-param name="State" select="$State"/>
		<xsl:with-param name="Transition" select="$Transition"/>
         </xsl:apply-templates>

         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

-->

   </xsl:template>

   <!-- * The Entries into the Access control tables ********************************************* -->

   <xsl:template  name="TransitionDescription" >
	<xsl:param name="LanguageNode"/>
	<xsl:param name="FlowTypeIdentifier"/>
	<xsl:param name="Flow"/>
	<xsl:param name="IsStartState"/>
	<xsl:param name="State"/>
	<xsl:param name="TargetState"/>

	<xsl:variable name="FlowTypeNode" select="$LanguageNode//FlowTypeDesc[attribute::identifier=$FlowTypeIdentifier]"/>
	<xsl:variable name="FlowNode" select="$FlowTypeNode/FlowDesc[attribute::identifier=$Flow]"/>

	<xsl:variable name="StartStateNode" select="$FlowNode/StartState[attribute::identifier=$State/@identifier]"/>
	<xsl:variable name="StateNode" select="$FlowNode/State[attribute::identifier=$State/@identifier]"/>


      <xsl:element name="fltransdsc">

            <xsl:attribute name = "FlTransitn_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="$FlowTypeIdentifier"/>
               <xsl:value-of select="$Flow"/>
               <xsl:value-of select="$State/@identifier"/>
	         <xsl:value-of select="child::TargetState/@identifier"/>
  	         <xsl:choose>
                  <xsl:when test="@eventidentifier">
                        <xsl:value-of select="@eventidentifier"/>
                 </xsl:when>
                  <xsl:otherwise>
				<xsl:text>NULL</xsl:text>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:attribute>

            <xsl:attribute name = "Language_Id">
               <xsl:value-of select="$LanguageNode//LANGUAGE/@id"/>
            </xsl:attribute>

 	       <xsl:attribute name = "TransitionDesc">
	         <xsl:choose>
                  <xsl:when test="@eventidentifier">
      		   <xsl:choose>
      			<xsl:when test="$IsStartState='Yes'">
      	               <xsl:value-of select="$StartStateNode/TransitionDesc[attribute::eventidentifier=current()/@eventidentifier]/@transitiondescription"/>
      			</xsl:when>
      			<xsl:otherwise>
      			   <xsl:value-of select="$StateNode/TransitionDesc[attribute::eventidentifier=current()/@eventidentifier]/@transitiondescription"/>
      			</xsl:otherwise>
      		   </xsl:choose>
                  </xsl:when>
                  <xsl:otherwise>
      		   <xsl:choose>
      			<xsl:when test="$IsStartState='Yes'">
      		            <xsl:variable name="TargetStateNode" select="$StartStateNode/TransitionDesc/TargetState[attribute::identifier=$TargetState]"/>
      		            <xsl:value-of select="$TargetStateNode/parent::TransitionDesc/@transitiondescription"/>
      			</xsl:when>
      			<xsl:otherwise>
      		            <xsl:variable name="TargetStateNode" select="$StateNode/TransitionDesc/TargetState[attribute::identifier=$TargetState]"/>
      		            <xsl:value-of select="$TargetStateNode/parent::TransitionDesc/@transitiondescription"/>
      			</xsl:otherwise>
      		   </xsl:choose>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:attribute>

<!--
 	       <xsl:attribute name = "TransitionDesc">
	         <xsl:choose>
                  <xsl:when test="@eventidentifier">
      		   <xsl:choose>
      			<xsl:when test="$IsStartState='Yes'">
      	               <xsl:value-of select="$StartStateNode/TransitionDesc[attribute::eventidentifier=current()/@eventidentifier]/@transitiondescription"/>
      			</xsl:when>
      			<xsl:otherwise>
      			   <xsl:value-of select="$StateNode/TransitionDesc[attribute::eventidentifier=current()/@eventidentifier]/@transitiondescription"/>
      			</xsl:otherwise>
      		   </xsl:choose>
                  </xsl:when>
                  <xsl:otherwise>
      		   <xsl:choose>
      			<xsl:when test="$IsStartState='Yes'">
      		            <xsl:variable name="TargetStateNode" select="$StartStateNode/TransitionDesc/TargetState[attribute::identifier=$TargetState]"/>
      		            <xsl:value-of select="$TargetStateNode/parent::TransitionDesc/@transitiondescription"/>
      			</xsl:when>
      			<xsl:otherwise>
      		            <xsl:variable name="TargetStateNode" select="$StateNode/TransitionDesc/TargetState[attribute::identifier=$TargetState]"/>
      		            <xsl:value-of select="$TargetStateNode/parent::TransitionDesc/@transitiondescription"/>
      			</xsl:otherwise>
      		   </xsl:choose>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:attribute>
-->

            <xsl:attribute name = "EventDesc">
  	         <xsl:choose>
                  <xsl:when test="@eventidentifier">
      		   <xsl:choose>
      			<xsl:when test="$IsStartState='Yes'">
      	               <xsl:value-of select="$StartStateNode/TransitionDesc[attribute::eventidentifier=current()/@eventidentifier]/@eventdescription"/>
      			</xsl:when>
      			<xsl:otherwise>
      			   <xsl:value-of select="$StateNode/TransitionDesc[attribute::eventidentifier=current()/@eventidentifier]/@eventdescription"/>
      			</xsl:otherwise>
      		   </xsl:choose>
                 </xsl:when>
                  <xsl:otherwise>

      		   <xsl:choose>
      			<xsl:when test="$IsStartState='Yes'">
      		            <xsl:variable name="TargetStateNode" select="$StartStateNode/TransitionDesc/TargetState[attribute::identifier=$TargetState]"/>
      		            <xsl:value-of select="$TargetStateNode/parent::TransitionDesc/@eventdescription"/>
      			</xsl:when>
      			<xsl:otherwise>
      		            <xsl:variable name="TargetStateNode" select="$StateNode/TransitionDesc/TargetState[attribute::identifier=$TargetState]"/>
      		            <xsl:value-of select="$TargetStateNode/parent::TransitionDesc/@eventdescription"/>
      			</xsl:otherwise>
      		   </xsl:choose>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:attribute>

      </xsl:element>
   </xsl:template>

   <!-- *******************************************************************************************************  -->

   <xsl:template match="AccessControlGuard">

	<xsl:param name="FlowTypeIdentifier"/>
	<xsl:param name="State"/>
	<xsl:param name="Transition"/>

      <xsl:element name="acactgrp">
         <xsl:attribute name = "ACACTGRP_ID">
            <xsl:value-of select="$Resolve_Key_Prefix"/>
            <xsl:value-of select="@actiongroup"/>
         </xsl:attribute>

         <xsl:attribute name = "MEMBER_ID">
            <xsl:text>-2001</xsl:text>  <!--  a default owner id -->
         </xsl:attribute>

         <xsl:attribute name = "GROUPNAME">
            <xsl:value-of select="@actiongroup"/>
         </xsl:attribute>
      </xsl:element>

      <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

      <xsl:element name="acaction">
         <xsl:attribute name = "ACACTION_ID">
            <xsl:value-of select="$Resolve_Key_Prefix"/>
            <xsl:value-of select="ancestor::FlowType/@identifier"/>
            <xsl:value-of select="ancestor::Flow/@identifier"/>
	         <xsl:choose>
               <xsl:when test="$Transition/@eventidentifier">
                     <xsl:value-of select="$Transition/@eventidentifier"/>
              </xsl:when>
               <xsl:otherwise>
				<xsl:text>NULL</xsl:text>
               </xsl:otherwise>
            </xsl:choose>
            <xsl:value-of select="$State/@identifier"/>
            <xsl:value-of select="$Transition/TargetState/@identifier"/>
         </xsl:attribute>

         <xsl:attribute name = "ACTION">
            <xsl:value-of select="ancestor::FlowType/@identifier"/>
            <xsl:text>.</xsl:text>
            <xsl:value-of select="ancestor::Flow/@identifier"/>
            <xsl:text>.</xsl:text>
	         <xsl:choose>
               <xsl:when test="$Transition/@eventidentifier">
                     <xsl:value-of select="$Transition/@eventidentifier"/>
              </xsl:when>
               <xsl:otherwise>
				<xsl:text>NULL</xsl:text>
               </xsl:otherwise>
            </xsl:choose>
            <xsl:text>.</xsl:text>
            <xsl:value-of select="$State/@identifier"/>
            <xsl:text>.</xsl:text>
            <xsl:value-of select="$Transition/TargetState/@identifier"/>
         </xsl:attribute>
      </xsl:element>

      <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

      <xsl:element name="acactactgp">
         <xsl:attribute name = "ACACTGRP_ID">
            <xsl:value-of select="$Resolve_Key_Prefix"/>
            <xsl:value-of select="$Transition/AccessControlGuard/@actiongroup"/>
         </xsl:attribute>

         <xsl:attribute name = "ACACTION_ID">
            <xsl:value-of select="$Resolve_Key_Prefix"/>
            <xsl:value-of select="ancestor::FlowType/@identifier"/>
            <xsl:value-of select="ancestor::Flow/@identifier"/>
	         <xsl:choose>
               <xsl:when test="$Transition/@eventidentifier">
                     <xsl:value-of select="$Transition/@eventidentifier"/>
              </xsl:when>
               <xsl:otherwise>
				<xsl:text>NULL</xsl:text>
               </xsl:otherwise>
            </xsl:choose>
            <xsl:value-of select="$State/@identifier"/>
            <xsl:value-of select="$Transition/TargetState/@identifier"/>
         </xsl:attribute>
      </xsl:element>

   </xsl:template>

   <!-- *******************************************************************************************************  -->

   <xsl:template match="Action">

         <xsl:param name="State"/>
         <xsl:param name="Transition"/>

         <xsl:element name="acaction">
            <xsl:attribute name = "ACACTION_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="ancestor::FlowType/@identifier"/>
               <xsl:value-of select="ancestor::Flow/@identifier"/>
  	         <xsl:choose>
                  <xsl:when test="$Transition/@eventidentifier">
                        <xsl:value-of select="$Transition/@eventidentifier"/>
                 </xsl:when>
                  <xsl:otherwise>
				<xsl:text>NULL</xsl:text>
                  </xsl:otherwise>
               </xsl:choose>
               <xsl:value-of select="$State/@identifier"/>
               <xsl:value-of select="$Transition/TargetState/@identifier"/>
            </xsl:attribute>

            <xsl:attribute name = "ACTION">
               <xsl:value-of select="ancestor::FlowType/@identifier"/>
               <xsl:text>.</xsl:text>
               <xsl:value-of select="ancestor::Flow/@identifier"/>
               <xsl:text>.</xsl:text>
  	         <xsl:choose>
                  <xsl:when test="$Transition/@eventidentifier">
                        <xsl:value-of select="$Transition/@eventidentifier"/>
                 </xsl:when>
                  <xsl:otherwise>
				<xsl:text>NULL</xsl:text>
                  </xsl:otherwise>
               </xsl:choose>
               <xsl:text>.</xsl:text>
               <xsl:value-of select="$State/@identifier"/>
               <xsl:text>.</xsl:text>
               <xsl:value-of select="$Transition/TargetState/@identifier"/>
            </xsl:attribute>
         </xsl:element>

         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

         <xsl:element name="acactactgp">

            <xsl:attribute name = "ACACTGRP_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="$Transition/AccessControlGuard/@actiongroup"/>
            </xsl:attribute>

            <xsl:attribute name = "ACACTION_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="ancestor::FlowType/@identifier"/>
               <xsl:value-of select="ancestor::Flow/@identifier"/>
  	         <xsl:choose>
                  <xsl:when test="$Transition/@eventidentifier">
                        <xsl:value-of select="$Transition/@eventidentifier"/>
                 </xsl:when>
                  <xsl:otherwise>
				<xsl:text>NULL</xsl:text>
                  </xsl:otherwise>
               </xsl:choose>
               <xsl:value-of select="$State/@identifier"/>
               <xsl:value-of select="$Transition/TargetState/@identifier"/>
            </xsl:attribute>

         </xsl:element>
   </xsl:template>


   <!-- *******************************************************************************************************  -->


   <xsl:template match="CompositeFlowDefinition/CompositeFlow">

      <xsl:if test = "(string-length(@identifier)!=0)">

         <xsl:variable name="CompositeFlowID" select="@identifier"/>


         <xsl:element name="flow">

            <xsl:attribute name = "Flow_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="$CompositeFlowID"/>
               <xsl:value-of select="@typeidentifier"/>
            </xsl:attribute>

            <xsl:variable name="FirstStage" select="@identifier"/>

            <xsl:attribute name = "FlowType_ID">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="@typeidentifier"/>
            </xsl:attribute>

            <xsl:attribute name = "CompositeFlow">
               <xsl:text>1</xsl:text>  <!-- 0 for normal flow, 1 for composit flow -->
            </xsl:attribute>

            <xsl:copy-of select="@identifier | @attribute | @priority"/>

         </xsl:element>

         <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

	   <xsl:if test="string-length($Descriptions_EN)!=0">
		<xsl:call-template name="CompositeFlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_EN"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="@typeidentifier"/>
		</xsl:call-template>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_FR)!=0">
		<xsl:call-template name="CompositeFlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_FR"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="@typeidentifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_DE)!=0">
		<xsl:call-template name="CompositeFlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_DE"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="@typeidentifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_IT)!=0">
		<xsl:call-template name="CompositeFlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_IT"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="@typeidentifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_ES)!=0">
		<xsl:call-template name="CompositeFlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_ES"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="@typeidentifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_BR)!=0">
		<xsl:call-template name="CompositeFlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_BR"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="@typeidentifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_CN)!=0">
		<xsl:call-template name="CompositeFlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_CN"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="@typeidentifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_TW)!=0">
		<xsl:call-template name="CompositeFlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_TW"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="@typeidentifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_KR)!=0">
		<xsl:call-template name="CompositeFlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_KR"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="@typeidentifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>

	   <xsl:if test="string-length($Descriptions_JP)!=0">
		<xsl:call-template name="CompositeFlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_JP"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="@typeidentifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_RO)!=0">
		<xsl:call-template name="CompositeFlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RO"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="@typeidentifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_PL)!=0">
		<xsl:call-template name="CompositeFlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_PL"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="@typeidentifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>
         
	   <xsl:if test="string-length($Descriptions_RU)!=0">
		<xsl:call-template name="CompositeFlowDescription">
       		<xsl:with-param name="LanguageNode" select="$ExternalNodes_RU"/>
       		<xsl:with-param name="FlowTypeIdentifier" select="@typeidentifier"/>
		</xsl:call-template>
		<xsl:text disable-output-escaping="yes">&#10;</xsl:text>
         </xsl:if>                           

         <xsl:for-each select="./Stage">

		<xsl:variable name="FlowTypeNode" select="preceding::FlowType[attribute::identifier=current()/@typeidentifier]"/>
		<xsl:variable name="FlowNode" select="$FlowTypeNode/Flow[attribute::identifier=current()/@flowidentifier]"/>

		<xsl:if test="string-length($FlowNode/@identifier)=0">
               <xsl:message terminate = "no">
                  <xsl:text>[Error] Flow with identifier '</xsl:text>
	   	      <xsl:value-of select="current()/@flowidentifier"/>
                  <xsl:text>' is not defined under FlowType '</xsl:text>
	   	      <xsl:value-of select="current()/@typeidentifier"/>
                  <xsl:text>' as referenced in Stage</xsl:text>
	   	      <xsl:value-of select="current()/@identifier"/>
               </xsl:message>
		</xsl:if>

            <xsl:element name="flcompose">

               <xsl:attribute name = "CompositeFlow_ID">
                  <xsl:value-of select="$Resolve_Key_Prefix"/>
                  <xsl:value-of select="$CompositeFlowID"/>
                  <xsl:value-of select="parent::CompositeFlow/@typeidentifier"/>
               </xsl:attribute>

               <xsl:attribute name = "SingleFlow_ID">
                  <xsl:value-of select="$Resolve_Key_Prefix"/>
                  <xsl:value-of select="@flowidentifier"/>
                  <xsl:value-of select="parent::CompositeFlow/@typeidentifier"/>
               </xsl:attribute>

               <xsl:attribute name = "Sequence">
                  <xsl:number/>
               </xsl:attribute>

            </xsl:element>

            <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

         </xsl:for-each>

      </xsl:if>

   </xsl:template>

   <!-- *******************************************************************************************************  -->

   <xsl:template  name="CompositeFlowDescription" >
	<xsl:param name="LanguageNode"/>
	<xsl:param name="FlowTypeIdentifier"/>

	<xsl:variable name="CompositeFlowDescNode" select="$LanguageNode//CompositeFlowDesc[attribute::identifier=@identifier]"/>

      <xsl:element name="flowdesc">

            <xsl:attribute name = "Flow_Id">
               <xsl:value-of select="$Resolve_Key_Prefix"/>
               <xsl:value-of select="@identifier"/>
               <xsl:value-of select="$FlowTypeIdentifier"/>
            </xsl:attribute>

            <xsl:attribute name = "Language_Id">
               <xsl:value-of select="$LanguageNode//LANGUAGE/@id"/>
            </xsl:attribute>

            <xsl:attribute name = "Description">
               <xsl:value-of select="$CompositeFlowDescNode[attribute::identifier=current()/@identifier]/@description"/>
            </xsl:attribute>

            <xsl:attribute name = "LongDescription">
               <xsl:value-of select="$CompositeFlowDescNode[attribute::identifier=current()/@identifier]/@longdescription"/>
            </xsl:attribute>

       </xsl:element>
   </xsl:template>

   <!-- *******************************************************************************************************  -->

   <xsl:template name="ApproveGroup">

	<xsl:param name="Action"/>
	<xsl:param name="ActionGroup"/>

      <xsl:element name="acactgrp">
         <xsl:attribute name = "ACACTGRP_ID">
            <xsl:value-of select="$Resolve_Key_Prefix"/>
		<xsl:value-of select="$ActionGroup"/>
		<!-- <xsl:text>Approve</xsl:text> -->
         </xsl:attribute>

         <xsl:attribute name = "MEMBER_ID">
            <xsl:text>-2001</xsl:text>  <!--  a default owner id -->
         </xsl:attribute>

         <xsl:attribute name = "GROUPNAME">
		<xsl:value-of select="$ActionGroup"/>
		<!-- <xsl:text>Approve</xsl:text> -->
         </xsl:attribute>
      </xsl:element>

      <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

      <xsl:element name="acaction">

          <xsl:attribute name = "ACACTION_ID">
             <xsl:value-of select="$Resolve_Key_Prefix"/>
		 <xsl:value-of select="$Action"/>
  	 	 <!-- <xsl:text>ActionForApproveActionGroup</xsl:text> -->
          </xsl:attribute>

          <xsl:attribute name = "ACTION">
		 <xsl:value-of select="$Action"/>
             <!-- <xsl:text>HandleApproval</xsl:text> -->
          </xsl:attribute>

      </xsl:element>

      <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

      <xsl:element name="acactactgp">

         <xsl:attribute name = "ACACTGRP_ID">
             <xsl:value-of select="$Resolve_Key_Prefix"/>
		<xsl:value-of select="$ActionGroup"/>
		<!-- <xsl:text>Approve</xsl:text> -->
         </xsl:attribute>

         <xsl:attribute name = "ACACTION_ID">
            <xsl:value-of select="$Resolve_Key_Prefix"/>
		<xsl:value-of select="$Action"/>
		<!-- <xsl:text>ActionForApproveActionGroup</xsl:text> -->
         </xsl:attribute>

      </xsl:element>

      <xsl:text disable-output-escaping="yes">&#10;</xsl:text>

   </xsl:template>

</xsl:stylesheet>

