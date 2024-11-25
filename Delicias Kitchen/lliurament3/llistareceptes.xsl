<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
        <xsl:template match="recetas">
                    <html lang="es">
                        <head>
                            <meta charset="UTF-8"/>
                            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                            <title>Delicias Kitchen</title>
                            <link rel="stylesheet" href="./llistastyle.css"/>
                        </head>
                        <body>
                            <!-- Encabezado con logo y menú -->
                            <header>
                                <img src="../imatges/Logo-Delicias.png" alt="Delicias Kitchen - Vegetarian &amp; Healthy"/>
                                <nav>
                                    <hr/>
                                    <ul>
                                        <li><a href="../lliurament1/Main_page.html">INICIO</a></li>
                                        <li><a href="../lliurament2/WiP.html">SOBRE MÍ</a></li>
                                        <li><a href="../lliurament3/llistareceptes.html">RECETAS</a></li>
                                        <li><a href="../lliurament2/WiP.html">CONTACTO</a></li>
                                        <li><a href="../lliurament2/WiP.html">OTRAS COSAS</a></li>
                                    </ul>
                                    <hr/>
                                </nav>
                            </header>

                            <main>
                                <section class="llistareceptes">
                                    <h1>Recetas</h1>
                                    <p>Nuestra lista personal de recetas... ¡Prueba alguna!</p>
                                    <ul class="lista">
                                        <xsl:for-each select="receta">
                                            <li>
                                                <details>
                                                    <summary><xsl:value-of select="nombre"/></summary>
                                                    <div>
                                                        <ul class="caracteristicas">
                                                            <xsl:for-each select="informacion/*">
                                                                <li><xsl:value-of select="."/></li>
                                                            </xsl:for-each>
                                                        </ul>
                                                        <p><xsl:value-of select="descripcion"/></p>
                                                        <img>
                                                            <xsl:attribute name="src">
                                                                <xsl:text>../imatges/</xsl:text>
                                                                    <xsl:value-of select="imagen"/>
                                                                <xsl:text>.jpg</xsl:text>
                                                            </xsl:attribute>
                                                            <xsl:attribute name="alt">
                                                                <xsl:value-of select="nombre"/>
                                                            </xsl:attribute>
                                                        </img>
                                                        <br/>
                                                        <button>
                                                            <a>
                                                                <xsl:attribute name="href">
                                                                <xsl:text>receta</xsl:text>
                                                                    <xsl:value-of select="id"/>
                                                                <xsl:text>.html</xsl:text>
                                                                </xsl:attribute>Ver receta
                                                            </a>
                                                        </button>
                                                    </div>
                                                </details>
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </section>
                            </main>

                            <footer>
                                <ul>
                                    <li><a href="#">FACEBOOK</a></li>
                                    <li><a href="#">TWITTER</a></li>
                                    <li><a href="#">INSTAGRAM</a></li>
                                    <li><a href="#">PINTEREST</a></li>
                                    <li><a href="#">EMAIL</a></li>
                                    <li><a href="#">RSS</a></li>
                                </ul>
                            </footer>
                        </body>
                    </html>
        </xsl:template>
</xsl:stylesheet>
