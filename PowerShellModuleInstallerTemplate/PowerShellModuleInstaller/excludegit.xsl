<?xml version="1.0" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:wix="http://schemas.microsoft.com/wix/2006/wi">
  <!-- Copy all attributes and elements to the output. -->
  <xsl:template match="@*|*">
    <xsl:copy>
      <xsl:apply-templates select="@*" />
      <xsl:apply-templates select="*" />
    </xsl:copy>
  </xsl:template>
  <xsl:output method="xml" indent="yes" />

  <!-- Search directories for the components that will be removed. -->
  <xsl:key name="git-search" match="wix:File[contains(@Source, '.git')]" use="descendant::wix:Componentd" />

  <!-- Remove directories. -->
  <xsl:template match="wix:Directory[@Name='.git']" />

  <!-- Remove componentsrefs referencing components in those directories. -->
  <xsl:template match="wix:Component[wix:File[contains(@Source, '.git')]]" />
</xsl:stylesheet>