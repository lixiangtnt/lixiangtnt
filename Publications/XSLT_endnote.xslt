<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/">
        <dataroot>
            <xsl:apply-templates select="@*|node()"/>
        </dataroot>
    </xsl:template>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>



<xsl:template match="author|title|secondary-title|periodical|pages|volume|number|year|abstract|foreign-keys|isbn|publisher|urls">
    <xsl:copy>
        <xsl:value-of select="@*|node()"/>
    </xsl:copy>
</xsl:template>




 <xsl:template match="xml">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>



    <xsl:template match="records">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>

 <xsl:template match="contributors">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>

 <xsl:template match="authors">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>

 <xsl:template match="titles">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>

<xsl:template match="full-title">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>

<xsl:template match="dates">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>

<xsl:template match="keywords">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>

<xsl:template match="keyword">
        <keyword>
            <rec-number><xsl:value-of select="../../rec-number"/></rec-number>
            <xsl:apply-templates select="@*|node()"/>
        </keyword>
    </xsl:template>

</xsl:stylesheet>