<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
<xsl:template match="catalog">
  <catalog>
    <xsl:apply-templates/>
  </catalog>
</xsl:template>
<xsl:template match="record">
  <record>
    <xsl:attribute name="nimi">
      <xsl:value-of select="title"/>
    </xsl:attribute>
    <xsl:attribute name="artisti">
      <xsl:value-of select="artist"/>
    </xsl:attribute>
    <xsl:attribute name="maa">
      <xsl:value-of select="country"/>
    </xsl:attribute>
    <xsl:attribute name="vuosi">
      <xsl:value-of select="year"/>
    </xsl:attribute>
  </record>
</xsl:template>
</xsl:stylesheet>
