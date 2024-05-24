<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title></title>
                <style>
                </style>
            </head>
            <body>
                <ul>
                    <xsl:for-each select="centro/ciclos/ciclo">
                        <li>
                            <xsl:value-of select="@id" /><br/>
                            <xsl:value-of select="nombre" />, Ciclo Formativo de Grado <xsl:value-of select="grado" /> creado en <xsl:value-of select="decretoTitulo/@anio" />
                        </li>
                    </xsl:for-each>
                </ul>              
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>