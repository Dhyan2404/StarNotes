.class public Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ResourceResolver;


# instance fields
.field public final e:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;->e:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public static convertToStreamSource(Ljavax/xml/transform/sax/SAXSource;)Ljavax/xml/transform/stream/StreamSource;
    .locals 3

    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object p0

    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0}, Ljavax/xml/transform/stream/StreamSource;-><init>()V

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/transform/stream/StreamSource;->setInputStream(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/transform/stream/StreamSource;->setReader(Ljava/io/Reader;)V

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/transform/stream/StreamSource;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/xml/transform/stream/StreamSource;->setReader(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getWrappedURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;->e:Ljavax/xml/transform/URIResolver;

    return-object p0
.end method

.method public resolve(Lnet/sf/saxon/lib/ResourceRequest;)Ljavax/xml/transform/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p1, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_0
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;->e:Ljavax/xml/transform/URIResolver;

    iget-object v1, p1, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p0

    const-string v0, "https://www.iana.org/assignments/media-types/text/plain"

    iget-object p1, p1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, p0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p0, Ljavax/xml/transform/sax/SAXSource;

    invoke-static {p0}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;->convertToStreamSource(Ljavax/xml/transform/sax/SAXSource;)Ljavax/xml/transform/stream/StreamSource;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
