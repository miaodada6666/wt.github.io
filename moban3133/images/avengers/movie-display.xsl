<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- A simple plaintext-type stylsheet for the advertising, edited by 孙国钦 71116139 -->
<xsl:template match="/">
    <html>
        <body   
             style="padding:200px 100px; background-image:url(background4.jpg);background-repeat:no-repeat ;background-size:100% 100%;background-attachment: fixed;background-position: center center ;opacity: 1;">
            <xsl:for-each select="电影列表/电影[@名称='复仇者联盟3：无限战争']">
            <div  style="width:70%;margin-left:220px;text-align:center;background-color:rgba(255,235,245,.8);">
                <div>
                    <div style="margin-left:20px;background-image:url(icon.png);background-repeat:no-repeat ;">
                        <p style="margin-top:90px;font-size:30pt;"><font color="#8B7500">复仇者联盟3：无限战争</font></p>
                        <p style="font-size:15pt;"><font color="#B22222">片长:<xsl:value-of select="商品属性/片长"/></font></p>
                        <p style="font-size:15pt;"><font color="#B22222">导演:<xsl:value-of select="商品属性/导演"/></font></p>
                        <p style="font-size:15pt;"><font color="#B22222">制片地区:<xsl:value-of select="商品属性/制片地区"/></font></p>
                        <p style="font-size:15pt;"><font color="#B22222">类型:<xsl:value-of select="艺术属性/类型"/></font></p>
                        <p style="font-size:15pt;"><font color="#B22222">主演:小罗伯特·唐尼/乔什·布洛林/克里斯·埃文斯/克里斯·海姆斯沃斯/斯嘉丽·约翰逊</font></p>
                    </div>
                    <div>        
                        <p style="font-size:15pt;"><font color="#8A2BE2">剧情简介:<xsl:value-of select="艺术属性/剧情简介"/></font></p>
                    </div>
                </div>
            </div>
            </xsl:for-each>

        </body>
    </html>
</xsl:template>

</xsl:stylesheet>