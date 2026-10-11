.class public Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field fStaxResolver:Ljavax/xml/stream/XMLResolver;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;->fStaxResolver:Ljavax/xml/stream/XMLResolver;

    return-void
.end method


# virtual methods
.method public getStaxEntityResolver()Ljavax/xml/stream/XMLResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;->fStaxResolver:Ljavax/xml/stream/XMLResolver;

    return-object p0
.end method

.method public getStaxInputSource(Ljava/lang/Object;)Lcom/sun/xml/internal/stream/StaxXMLInputSource;
    .locals 7

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_1

    new-instance p0, Lcom/sun/xml/internal/stream/StaxXMLInputSource;

    new-instance v6, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    check-cast v4, Ljava/io/InputStream;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/sun/xml/internal/stream/StaxXMLInputSource;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    return-object p0

    :cond_1
    instance-of v0, p1, Ljavax/xml/stream/XMLStreamReader;

    if-eqz v0, :cond_2

    new-instance p0, Lcom/sun/xml/internal/stream/StaxXMLInputSource;

    check-cast p1, Ljavax/xml/stream/XMLStreamReader;

    invoke-direct {p0, p1}, Lcom/sun/xml/internal/stream/StaxXMLInputSource;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    return-object p0

    :cond_2
    instance-of v0, p1, Ljavax/xml/stream/XMLEventReader;

    if-eqz v0, :cond_3

    new-instance p0, Lcom/sun/xml/internal/stream/StaxXMLInputSource;

    check-cast p1, Ljavax/xml/stream/XMLEventReader;

    invoke-direct {p0, p1}, Lcom/sun/xml/internal/stream/StaxXMLInputSource;-><init>(Ljavax/xml/stream/XMLEventReader;)V

    :cond_3
    return-object p0
.end method

.method public resolveEntity(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/xml/internal/stream/StaxXMLInputSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;->fStaxResolver:Ljavax/xml/stream/XMLResolver;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Ljavax/xml/stream/XMLResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;->getStaxInputSource(Ljava/lang/Object;)Lcom/sun/xml/internal/stream/StaxXMLInputSource;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public setStaxEntityResolver(Ljavax/xml/stream/XMLResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;->fStaxResolver:Ljavax/xml/stream/XMLResolver;

    return-void
.end method
