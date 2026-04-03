<?xml version="1.0" encoding="UTF-8"?>
<!-- This stylesheet transforms the XML book data into a simple HTML page. -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Output section: tells the processor to create an HTML document. -->
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <!-- Template match section: starts the transformation from the root of the XML document. -->
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <title>MS Buks Book Catalogue</title>
                <link rel="preconnect" href="https://fonts.googleapis.com"/>
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="crossorigin"/>
                <link href="https://fonts.googleapis.com/css2?family=Limelight&amp;family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet"/>
                <link rel="stylesheet" href="style.css"/>
            </head>
            <body>
                <!-- Header section: displays the bookstore logo only -->
                <header>
                    <a href="index.html"><img src="images/logo.png" alt="MS Buks logo" class="logo"/></a>
                    <h1>MS Buks</h1>
                    <div class="header-spacer"></div>
                </header>

                <!-- Navigation section: provides links to the main website and the catalogue section -->
                <nav>
                    <a href="index.html#about-us">About Us</a>
                    <a href="index.html#genres">Genres</a>
                    <a href="index.html#contact-us">Contact Us</a>
                    <a href="books.xml">Catalogue</a>
                </nav>

                <!-- Main content section: contains the catalogue card layout -->
                <main>
                    <section>
                        <!-- Card container section: groups all book cards in one layout -->
                        <div class="catalogue-grid">
                            <!-- Loop section: repeats once for every book element in the XML file -->
                            <xsl:for-each select="bookstore/book">
                                <div class="book-card">
                                    <!-- Image section: chooses the correct image file for each book card -->
                                    <img class="book-card-image">
                                        <xsl:attribute name="src">
                                            <xsl:choose>
                                                <xsl:when test="@id='b1'">images/harry-potter-1.png</xsl:when>
                                                <xsl:when test="@id='b2'">images/harry-potter-2.png</xsl:when>
                                                <xsl:when test="@id='b3'">images/harry-potter-3.png</xsl:when>
                                                <xsl:when test="@id='b4'">images/harry-potter-4.png</xsl:when>
                                                <xsl:when test="@id='b5'">images/harry-potter-5.png</xsl:when>
                                                <xsl:when test="@id='b6'">images/harry-potter-6.png</xsl:when>
                                                <xsl:when test="@id='b7'">images/harry-potter-7.png</xsl:when>
                                                <xsl:when test="@id='b8'">images/to-kill-a-mockingbird.png</xsl:when>
                                                <xsl:when test="@id='b9'">images/1984.png</xsl:when>
                                                <xsl:when test="@id='b10'">images/pride-and-prejudice.png</xsl:when>
                                                <xsl:when test="@id='b11'">images/the-hobbit.png</xsl:when>
                                                <xsl:when test="@id='b12'">images/the-alchemist.png</xsl:when>
                                                <xsl:when test="@id='b13'">images/the-great-gatsby.png</xsl:when>
                                                <xsl:when test="@id='b14'">images/the-book-thief.png</xsl:when>
                                                <xsl:when test="@id='b15'">images/the-little-prince.png</xsl:when>
                                            </xsl:choose>
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of select="title"/>
                                        </xsl:attribute>
                                    </img>

                                    <!-- Text content section: displays the main details for each book -->
                                    <div class="book-card-content">
                                        <h3><xsl:value-of select="title"/></h3>
                                        <p><strong>Author:</strong> <xsl:value-of select="author"/></p>
                                        <p><strong>Price:</strong> Rs <xsl:value-of select="price"/></p>
                                        <p><xsl:value-of select="description"/></p>
                                    </div>
                                </div>
                            </xsl:for-each>
                        </div>
                    </section>
                </main>

                <!-- Footer section: contains the contact icons and address information -->
                <footer id="contact-us">
                    <p>Royal Road, Quatre Bornes, Mauritius</p>
                    <div class="footer-icons">
                        <a href="https://msbuks.mu" target="_blank" rel="noopener noreferrer">
                            <img src="images/internet-explorer-brands-solid-full.svg" alt="Website icon" class="footer-icon"/>
                        </a>
                        <a href="mailto:hello@msbuks.mu">
                            <img src="images/at-solid-full.svg" alt="Email icon" class="footer-icon"/>
                        </a>
                        <a href="tel:+23054437821">
                            <img src="images/phone-solid-full.svg" alt="Phone icon" class="footer-icon"/>
                        </a>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
