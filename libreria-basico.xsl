<?xml version="1.0" encoding="ISO-8859-1"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<body>
		<h1>Mi biblioteca</h1>
			<table>
			<tr bgcolor="#887788">
				<th>Titulo</th>
				<th>Autor</th>
				<th>precio</th>
				<!--<th>editor</th>-->
			</tr>
			<xsl:for-each select="libreria/libro">
			<xsl:sort select="titulo" data-type="number" order="ascending"/>
			<tr bgcolor="00ff00">
				<td><xsl:value-of select="titulo"/></td>
				<td><xsl:value-of select="autor"/></td>
				<td><xsl:value-of select="precio"/></td>
				<!--<td><xsl:value-of select="editor"/></td>-->
			</tr>
			</xsl:for-each>
			</table>
		</body>
		</html>
	</xsl:template>
	</xsl:stylesheet>