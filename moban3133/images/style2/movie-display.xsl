<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- A simple plaintext-type stylsheet for the movie list, edited by 张嘉琦 71116140 -->
<xsl:template match="/">
    <html>
        <body background="background.jpg">
            <h1 style="text-align:center">电影列表</h1>

            <xsl:for-each select="电影列表/电影">
            <xsl:sort select="@编号"/>
            <div>
                <h2 style="text-align:center">
                    <u><xsl:value-of select="@名称"/></u>
                    <font color="#FF0000">(<xsl:value-of select="艺术属性/评分"/>)</font>
                </h2>
                <div>
                    <div>
                        <h3 style="text-align:left">商品属性</h3>
                        <p>片长:<xsl:value-of select="商品属性/片长"/></p>
                        <p>导演:<xsl:value-of select="商品属性/导演"/></p>
                        <p>编剧:<xsl:value-of select="商品属性/编剧"/></p>
                        <p>制片地区:<xsl:value-of select="商品属性/制片地区"/></p>
                    </div>

                    <div>
                        <h3 style="text-align:left">艺术属性</h3>
                        <p>类型:<xsl:value-of select="艺术属性/类型"/></p>
                        <p>剧情简介:<xsl:value-of select="艺术属性/剧情简介"/></p>
                    </div>
                </div>
            </div>

            </xsl:for-each>
            
            <!--<table border="1">
                <tr bgcolor="#FFFF00">
                    <th align="left">名称</th>
                    <th align="left">编号</th>
                    <th align="left">片长</th>
                    <th align="left">制片地区</th>
                    <th align="left">类型</th>
                    <th align="left">导演</th>
                    <th align="left" bgcolor="#FF0000">评分(0~10)</th>
                </tr>

                <xsl:for-each select="电影列表/电影">
                    <xsl:sort select="艺术属性/评分"/>
                    <tr>
                        <td><xsl:value-of select="@名称"/></td>
                        <xsl:choose>
                            <xsl:when test="@编号 &gt; 201800">
                                <td bgcolor="#33FFFF"><xsl:value-of select="@编号"/></td>
                            </xsl:when>

                            <xsl:when test="@编号 &gt; 201700">
                                <td bgcolor="#33CCCC"><xsl:value-of select="@编号"/></td>
                            </xsl:when>

                            <xsl:otherwise>
                                <td bgcolor="#33FF99"><xsl:value-of select="@编号"/></td>
                            </xsl:otherwise>
                        </xsl:choose>

                        <td><xsl:value-of select="商品属性/片长"/></td>
                        <td><xsl:value-of select="商品属性/制片地区"/></td>
                        <td><xsl:value-of select="艺术属性/类型"/></td>
                        <td><xsl:value-of select="商品属性/导演"/></td>
                        <xsl:choose>
                            <xsl:when test="艺术属性/评分 &gt; 8">
                                <td bgcolor="#FF9900"><xsl:value-of select="艺术属性/评分"/></td>
                            </xsl:when>

                            <xsl:otherwise>
                                <td><xsl:value-of select="艺术属性/评分"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                    </tr>
                </xsl:for-each>
            </table>-->
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>