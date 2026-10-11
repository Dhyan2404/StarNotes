.class public Lnet/sf/saxon/lib/EntityResolverWrappingResourceResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ext/EntityResolver2;


# instance fields
.field public final e:Lnet/sf/saxon/lib/ResourceResolver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/ResourceResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/lib/EntityResolverWrappingResourceResolver;->e:Lnet/sf/saxon/lib/ResourceResolver;

    return-void
.end method


# virtual methods
.method public getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0, p1, v0, p2}, Lnet/sf/saxon/lib/EntityResolverWrappingResourceResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/lib/EntityResolverWrappingResourceResolver;->e:Lnet/sf/saxon/lib/ResourceResolver;

    instance-of v1, v0, Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lorg/xml/sax/ext/EntityResolver2;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ext/EntityResolver2;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    .line 4
    iput-object p3, v0, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    .line 5
    iput-object p1, v0, Lnet/sf/saxon/lib/ResourceRequest;->entityName:Ljava/lang/String;

    .line 6
    iput-object p2, v0, Lnet/sf/saxon/lib/ResourceRequest;->publicId:Ljava/lang/String;

    .line 7
    iput-object p4, v0, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    const-string p1, "https://www.iana.org/assignments/media-types/application/xml-external-parsed-entity"

    .line 8
    iput-object p1, v0, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const-string p1, "resolveEntity()"

    .line 9
    iput-object p1, v0, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    .line 10
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/lib/EntityResolverWrappingResourceResolver;->e:Lnet/sf/saxon/lib/ResourceResolver;

    invoke-interface {p0, v0}, Lnet/sf/saxon/lib/ResourceResolver;->resolve(Lnet/sf/saxon/lib/ResourceRequest;)Ljavax/xml/transform/Source;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_1
    instance-of p1, p0, Ljavax/xml/transform/stream/StreamSource;

    if-eqz p1, :cond_4

    .line 12
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 13
    check-cast p0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 14
    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 16
    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    :cond_3
    return-object p1

    .line 17
    :cond_4
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Unexpected Source type in resolveEntity()"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
