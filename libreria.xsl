<?xml version="1.0" encoding="ISO-8859-1"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<body>
		<h1>Mi biblioteca</h1>
			<table>
			<tr bgcolor="#887788">
			
				<th>Titulo</th>
				<th >Autor</th >
				<th >precio</th >
				<!--<th >isbn</th >-->
			</tr>
			<xsl:for-each select="//libro">
			<xsl:sort select="precio" data-type="number" order="ascending"/> <!--hay que ponerlo detrás del for-each-->
			<xsl:if test="precio >= 10">
			
			<tr bgcolor="#ff0000">
				<td><xsl:value-of select="titulo"/> </td>
				<td><xsl:value-of select="autor"/> </td>
				<td><xsl:value-of select="precio"/> </td>

			</tr>
			</xsl:if>
			<xsl:if test="precio > 50 ">
			
			<tr bgcolor="#00ffaa">
				<td>
					<xsl:value-of select="titulo"/>
				</td>
				<td>
					<xsl:value-of select="autor"/>
				</td>
				<td>
					<xsl:value-of select="precio"/>
				</td>
			
			</tr>
			</xsl:if>
			</xsl:for-each>
			</table>
		</body>
		</html>
	</xsl:template>
	</xsl:stylesheet>
