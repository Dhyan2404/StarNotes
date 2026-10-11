.class public Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;


# instance fields
.field protected fEntityResolver:Lorg/xml/sax/EntityResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    return-void
.end method


# virtual methods
.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;->fEntityResolver:Lorg/xml/sax/EntityResolver;

    return-object p0
.end method

.method public resolveEntity(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;->fEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0, v0, v1}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-direct {v4, v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {v4, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p1

    :goto_0
    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_2
    return-object v2
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;->fEntityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method
