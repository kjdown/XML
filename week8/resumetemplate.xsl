<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/">
<html>
	<body>
	<xsl:apply-templates select="resumelist/resume"/>
	</body>
</html>
</xsl:template>

<xsl:template match="resume">
<table border="1" cellspacing="0">
<xsl:apply-templates select="name"/>
<xsl:apply-templates select="birthday"/>
		<tr/>
			<td>技能</td>
			<td colspan="5">
<table cellspacing="0">
	<xsl:apply-templates select="skill"/>
</table>			
			</td>
</table>
</xsl:template>

<xsl:template match="name">
<td>姓名</td>
<td>
<xsl:value-of select="."/>
</td>
</xsl:template>

<xsl:template match="sex">
<td>性别</td>
<td>
<xsl:value-of select="."/>
</td>
</xsl:template>

<xsl:template match="skill">
<td>技能</td>
<td>
<xsl:value-of select="."/>
</td>
</xsl:template>

<xsl:template match="birthday">
<td>技能</td>
<td>
<xsl:value-of select="."/>
</td>
</xsl:template>
</xsl:stylesheet>
