<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title></title>
                <style>
                    table, td, th{
                        border: 1px solid black;
                    }
                    th{
                        background-color: red;
                        color: white;
                    }
                    tr:nth-child(even){background-color: pink;}
                    tr:nth-child(odd){background-color: magenta;}
                    h2{
                        color: magenta;
                    }
                </style>
            </head>
            <body>
                <h2>Ciclos formativos del IES Gregorio Prieto</h2>
                <p>Página web: <a href="https://somosdelprieto.com" target="_blank">https://somosdelprieto.com </a>  </p>
                <table>
                    <thead>
                        <th>Nombre del ciclo</th>
                        <th>Grado</th>
                        <th>Año del titulo</th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="centro/ciclos/ciclo">
                        <tr>
                            <td>
                                
                                <xsl:value-of select="nombre" />
                            </td>
                            <td>
                                <xsl:value-of select="grado" />
                            </td>
                            <td>
                                <xsl:value-of select="decretoTitulo/@anio" />
                            </td>
                        </tr>
                        
                    </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>