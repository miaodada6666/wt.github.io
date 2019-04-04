<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- A simple plaintext-type stylsheet for the advertising, edited by 孙国钦 71116139 -->
<xsl:template match="/">
    <html>
        <body   
             style="padding:200px 100px; background-image:url(background2.jpg);background-repeat:no-repeat ;background-size:95% 95%;background-attachment: fixed;background-position: center center ;opacity: 1;">
            <xsl:for-each select="电影列表/电影[@名称='西虹市首富']">
            <div  style="width:70%;margin-left:220px;text-align:center;background-color:rgba(255,235,245,.8);">
                <div>
                    <div style="margin-left:20px;background-image:url(icon.png);background-repeat:no-repeat ;">
                        <p style="margin-top:90px;font-size:30pt;"><font color="#008B00">西虹市首富</font></p>
                        <p style="font-size:15pt;"><font color="#FF6A6A">片长:<xsl:value-of select="商品属性/片长"/></font></p>
                        <p style="font-size:15pt;"><font color="#FF6A6A">导演:<xsl:value-of select="商品属性/导演"/></font></p>
                        <p style="font-size:15pt;"><font color="#FF6A6A">制片地区:<xsl:value-of select="商品属性/制片地区"/></font></p>
                        <p style="font-size:15pt;"><font color="#FF6A6A">类型:<xsl:value-of select="艺术属性/类型"/></font></p>
                        <p style="font-size:15pt;"><font color="#FF6A6A">主演:沈腾/宋芸桦</font></p>
                    </div>
                    <div>        
                        <p style="font-size:15pt;"><font color="#8B7500">剧情简介:<xsl:value-of select="艺术属性/剧情简介"/></font></p>
                    </div>
                </div>
            </div>
            </xsl:for-each>

        </body>
    </html>
</xsl:template>

</xsl:stylesheet>