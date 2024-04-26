<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- Plantilla general -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Yohanna Gelo. Clash Royale</title>
                <link rel="icon" href="img/favicon.png" type="image/x-icon"></link>
                    <!-- estilos del documento -->
                    <link rel="stylesheet" type="text/css" href="clashRoyale.css" />  

            </head>

            <body>
                    <div class="whiteBox"></div>
                    <main>
                
                        <a name="inicio"></a>
                        <img src="img/logo.png" class="logo"/>
                

                        <!-- INFORMACIÓN DE USUARIO -->
                        <div class="user">
                            <xsl:apply-templates select="clashRoyale/usuario" />
                        </div>

  
                        <div>
                            <h2><a href="#favourCards">Mis cartas favoritas</a>
                                <a href="#nearbyArenas">Arenas cercanas</a>
                                <a href="#chests">Algunos cofres</a>
                            </h2>
                        </div>
                
                        <!-- Imágen a modo espaciador -->
                        <a href="#inicio"><img src="img/War_Shield.webp" class="logoShield"/></a>
                
                        <a name="favourCards"></a>
                        <h2>Mis cartas favoritas</h2>


                
                        <!-- CARTAS -->
                        <!-- // PARA CADA CARTA // -->
                        <xsl:for-each select="clashRoyale/cartas/carta">
                            <div class="boxCard">

                                <img src="img/ElectroWizardCard.webp" class="cards"/>
                    
                                <div class="boxCard1">
                                    <h5>Nombre: <font><xsl:value-of select="nombre" /></font></h5>
                                    <h5>Descripción: <font><xsl:value-of select="descripcion" /></font></h5>
                                    <h5>Tipo: <font><xsl:value-of select="tipo/@opciones" /></font></h5>
                                    <h5>Nivel: <font><xsl:value-of select="nivel" /></font></h5>
                                    <h5>Objetivos: <font><xsl:value-of select="objetivos" /></font></h5>
                                    <h5>¿Evolución?: <font>
                                        <!-- Con esto escribo 'No' si la etiqueta no existe -->
                                        <xsl:choose>
                                            <xsl:when test="evolucion">
                                                <xsl:value-of select="evolucion" />
                                            </xsl:when>
                                            <xsl:otherwise>No</xsl:otherwise>
                                        </xsl:choose>
                                    </font></h5>
                                    <h5>¿Estructura?: <font>
                                        <!-- Con esto escribo 'No' si la etiqueta no existe -->
                                        <xsl:choose>
                                            <xsl:when test="estructura">
                                                <xsl:value-of select="estructura" />
                                            </xsl:when>
                                            <xsl:otherwise>No</xsl:otherwise>
                                        </xsl:choose>
                                    </font></h5>
                                </div>

                                <div class="boxCard2">
                                    <h5>Características:</h5>
                                    <ul>

                                        <!-- Para cada carecterística -->
                                        <xsl:for-each select="caracteristicas/caracteristica">
                                            <li>
                                                <font><xsl:value-of select="id" />. <xsl:value-of select="descripcion" />: <xsl:value-of select="valor" /></font>  
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                            </div>
                        </xsl:for-each>

                        <br/><br/>

                        <!-- Imágen a modo espaciador -->
                        <a href="#inicio"><img src="img/War_Shield.webp" class="logoShield"/></a>
                
                
                        <!-- ARENAS -->
                        <a name="nearbyArenas"></a>
                        <h2>Arenas cercanas</h2>
                
                        <div class="boxCard">

                            <!-- Para cada arena -->
                            <xsl:for-each select="clashRoyale/arenas/arena">
                                <div>
                                    <h6>Arena: <xsl:value-of select="id" /></h6>
                                    <img src="img/arena-17-clash-royale-cripta-real-crypt.png" class="arenas"/><br/>
                                    <h6><xsl:value-of select="nombre" /></h6>
                                    <font class="fontCenter"><xsl:value-of select="copasNecesarias" /> copas</font>
                                </div>
                            </xsl:for-each>
 
                        </div>
                
                
                        <!-- Imágen a modo espaciador -->
                        <a href="#inicio"><img src="img/War_Shield.webp" class="logoShield"/></a>
                
                        
                        <!-- COFRES -->
                        <a name="chests"></a>
                        <h2>Algunos cofres</h2>
                
                        <div class="center">

                            <!-- Para cada arena -->
                            <xsl:for-each select="clashRoyale/cofres/cofre">

                                <div class="center2">
                                    <h7><xsl:value-of select="tipoCofre" /></h7>
                                    <p>Desbloqueo: <xsl:value-of select="tiempoDesbloqueo" /></p>
                                    <img src="img/Golden_Chest.webp" class="chestImg"/><br/>
                                    <h7>Contenido:</h7>
                                    <ul class="chest">
                                        <li>Oro: <xsl:value-of select="contenido/oro" /></li>
                                        <li>Cartas: <xsl:value-of select="contenido/cantidadCartas" /></li>
                                        <li>Especiales: <xsl:value-of select="contenido/especiales" /></li>
                                        <li>Épicas: 
                                            <!-- Con esto escribo 'No' si la etiqueta no existe -->
                                            <xsl:choose>
                                                <xsl:when test="contenido/epicas">
                                                    <xsl:value-of select="contenido/epicas" />
                                                </xsl:when>
                                                <xsl:otherwise>No</xsl:otherwise>
                                            </xsl:choose>
                                        </li>
                                        <li>Lengendarias: 
                                            <!-- Con esto escribo 'No' si la etiqueta no existe -->
                                            <xsl:choose>
                                                <xsl:when test="contenido/legendarias">
                                                    <xsl:value-of select="contenido/legendarias" />
                                                </xsl:when>
                                                <xsl:otherwise>No</xsl:otherwise>
                                            </xsl:choose>
                                        </li>
                                    </ul>
                                </div>

                            </xsl:for-each>

                        </div>


                        <!-- Imágen a modo espaciador -->
                        <a href="#inicio"><img src="img/War_Shield.webp" class="logoShield"/></a>
    
                    </main>


                    <!-- Pie de página -->
                    <footer>
                        <p>· Página Web creada por: <font>Yohanna Gelo</font> · Asignatura: <font>Lenguaje de Marcas 2023/24</font> · Curso: <font>1º DAW</font></p>
                    </footer>
            
                  
                  <img src="img/emojis.png" class="finalImg" />
                
            </body>
        </html>

    </xsl:template>

    <!-- PLANTILLAS EXTRAS -->
    
    <!-- Información de usuario -->
    <xsl:template match="usuario">
    
        <h2>Usuario</h2>
        <p class="userText">Username: <font ><b><xsl:value-of select="//nick" /></b></font></p>
        <p class="userText">Trofeos: <font><b><xsl:value-of select="//trofeos" /></b></font></p>
        <p class="userText">Nivel: <font><b><xsl:value-of select="//nivel" /></b></font></p>
        <p class="userText">Arena: <font><b><xsl:value-of select="//nombreArenaActual" /></b></font></p>
        <p class="userText">Batallas ganadas: <font><b><xsl:value-of select="//batallasGanadas" /></b></font></p>
        <h3>Clan</h3>
        <p class="userText">Nombre: <font><b><xsl:value-of select="//clan/nombre" /></b></font></p>
        <p class="userText">Miembro: <font><b><xsl:value-of select="//clan/tipoMiembro" /></b></font></p>
        <p class="userText">Puntos del clan: <font><b><xsl:value-of select="//clan/puntosClan" /></b></font></p>
        <p class="userText">Ubicación: <font><b><xsl:value-of select="//clan/ubicacion" /></b></font></p>

    </xsl:template>


</xsl:stylesheet>