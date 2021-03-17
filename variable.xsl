<xsl:stylesheet version = '1.0'
     xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>

<!--<xsl:variable name="text">Chapter</xsl:variable>-->
<xsl:template match="/">
<html>
	<body>
     <ul>
          <xsl:for-each select="//chapter">
               
                    <li>
                         <xsl:variable name="tex">
                              <xsl:choose>
                                   <xsl:when test="position() = 1">First chapter</xsl:when>
                                   <xsl:when test="position()=last()">Last chapter</xsl:when>
                                   <xsl:otherwise>
                                        <!--<xsl:value-of select="$text"/>-->
										<xsl:text> Chapter </xsl:text>
                                   </xsl:otherwise>
                              </xsl:choose>
                         </xsl:variable>
                         <xsl:value-of select="$tex"/>
                         <xsl:text> : </xsl:text>
                         <xsl:value-of select="."/>
                    </li>
               
			   <BR/>
          </xsl:for-each>
     </ul>
	 </body>
</html>
</xsl:template>
</xsl:stylesheet> 