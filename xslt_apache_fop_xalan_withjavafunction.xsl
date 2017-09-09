<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:java="http://xml.apache.org/xslt/java"
                xmlns:dateConversion="xalan://com.astonitas.util.PDFUtil"
                extension-element-prefixes="dateConversion"
                exclude-result-prefixes="fo dateConversion" version="1.1">
                
  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
  
       <fo:page-sequence master-reference="Letter-Landscape" id="ps-sequence">
        <fo:static-content flow-name="xsl-region-before">
          <fo:block margin=".25in" border-bottom="1pt black solid" text-align="center">
            <fo:inline font-weight="bold">
            	<xsl:value-of select="dateConversion:getDateDifference()"/>

<! --
*************************** Java file ****
public static String getDateDifference() {
		return "Este es mi return";
	}
-->
