<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- A simple plaintext-type stylsheet for the movie list, edited by 苗继欣 71116319 -->
<xsl:template match="/">
  <html>
    <div>

        <table>
<tr>
<td><a ><img src="logo.png"  /></a></td>
<td><a ><img src="logo.png"  /></a></td>
<td><a ><img src="logo.png"  /></a></td>
<td><a ><img src="logo.png"  /></a></td>
</tr>
</table>
<!--         <ul>
    <li>
    <img src="logo.png" width="25%" height="100" />
    </li>
    <li>
    <img src="logo.png" width="25%" height="100" />
   </li>
    <li>
    <img src="logo.png" width="25%" height="100" />
    </li>
    <li>
    <img src="logo.png" width="25%" height="100" />
    </li>
         </ul> -->
    </div>
     <h1 style="text-align:center">无糖组小组信息</h1>
     <p  style="text-align:center">小组简介：XXXXXXXXXXXXXXXXXXXXXXXXXXXXXml</p>

     <xsl:for-each select="biographylist/biography">
     <xsl:sort select="basic/id"/>
     <div>
                <h2 style="text-align:center">
                    <p><xsl:value-of select="basic/name"/></p>
                    <font color="#FF0000">(<xsl:value-of select="basic/id"/>)</font>
                </h2>
     </div>

                    <div>
                        <h3 style="text-align:left">基本信息</h3>
                        <p>学号:<xsl:value-of select="basic/id"/></p>
                        <p>性别:<xsl:value-of select="basic/gender"/></p>
                        <p>年龄:<xsl:value-of select="basic/age"/></p>
                        <p>地址:<xsl:value-of select="contact/addr"/></p>
                        <p>电话:<xsl:value-of select="contact/tel"/></p>
                        <p>邮件:<xsl:value-of select="contact/email"/></p>
                        <p>大学:<xsl:value-of select="extend/education"/></p>
                        <p>开始时间:<xsl:value-of select="extend/education/@start"/></p>
                        <p>结束时间:<xsl:value-of select="extend/education/@end"/></p>
                    </div>
     </xsl:for-each>
  </html>
</xsl:template>
</xsl:stylesheet>