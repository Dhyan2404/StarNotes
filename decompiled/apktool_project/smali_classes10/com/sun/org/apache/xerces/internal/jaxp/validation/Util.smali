.class final Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;
    .locals 2

    instance-of v0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lorg/xml/sax/SAXException;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Lorg/xml/sax/SAXException;

    return-object p0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static toSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;
    .locals 8

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Lorg/xml/sax/SAXParseException;

    return-object p0

    :cond_0
    new-instance v7, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getLineNumber()I

    move-result v4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v5

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V

    return-object v7
.end method

.method public static final toXMLInputSource(Ljavax/xml/transform/stream/StreamSource;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 7

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
