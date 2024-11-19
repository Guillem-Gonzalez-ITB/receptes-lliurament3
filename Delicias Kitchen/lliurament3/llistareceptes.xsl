<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
        <xsl:template match="/">
            <xsl:for-each select="receta">
                <xsl:result-document href="./receta_{position()}.html">
                    <html>
                        <head>
                            <title><xsl:value-of select="informacion/nombre"/></title>
                            <link rel="stylesheet" href="recetastyle.css"/>
                        </head>
                        <body>
                            <header>
                                <img src="../imatges/Logo-Delicias.png" alt="Delicias Kitchen - Vegetarian ;&amp; Healthy"/>
                                <nav>
                                    <hr>
                                    <ul>
                                        <li><a href="../lliurament1/Main_page.html">INICIO</a></li>
                                        <li><a href="../lliurament2/WiP.html">SOBRE MÍ</a></li>
                                        <li><a href="../lliurament2/llistareceptes.html">RECETAS</a></li>
                                        <li><a href="../lliurament2/WiP.html">CONTACTO</a></li>
                                        <li><a href="../lliurament2/WiP.html">OTRAS COSAS</a></li>
                                    </ul>
                                    </hr>
                                </nav>
                            </header>

                        <!--NOMBRE Y DESCRIPCION-->
                            <section class="recipe-header">
                                <h1><xsl:value-of select="nombre"/></h1>
                                <p><xsl:value-of select="descripcion"/></p>
                            </section>

                        <!--INFO-->
                            <section class="info">
                                <h2>Información de la receta</h2>
                                <ul>                            
                                    <xsl:for-each select="informacion">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each> 
                                </ul>
                            </section>

                        <!--INGREDIENTES-->
                            <section class="ingredients">
                                <h2>Ingredientes</h2>
                                <ul>
                                    <xsl:for-each select="ingredientes">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </section>

                        <!--INSTRUCCIONES-->
                            <section class="instructions">
                                <h2>Pasos</h2>
                                <ul>
                                    <xsl:for-each select="pasos">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </section>

                    <!-- Footer con enlaces a redes sociales -->
                            <section class="footer">
                                <ul>
                                    <li><a href="#">FACEBOOK</a></li>
                                    <li><a href="#">TWITTER</a></li>
                                    <li><a href="#">INSTAGRAM</a></li>
                                    <li><a href="#">PINTEREST</a></li>
                                    <li><a href="#">EMAIL</a></li>
                                    <li><a href="#">RSS</a></li>
                                </ul>
                            </section>
                        </body>
                    </html>
                </xsl:result-document>
            </xsl:for-each>
        </xsl:template>
</xsl:stylesheet>
