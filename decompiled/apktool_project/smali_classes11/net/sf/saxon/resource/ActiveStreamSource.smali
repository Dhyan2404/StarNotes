.class public Lnet/sf/saxon/resource/ActiveStreamSource;
.super Ljavax/xml/transform/stream/StreamSource;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ActiveSource;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/stream/StreamSource;)V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/transform/stream/StreamSource;-><init>()V

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/transform/stream/StreamSource;->setInputStream(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/transform/stream/StreamSource;->setReader(Ljava/io/Reader;)V

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setPublicId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->obtainXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSourceParser()Lorg/xml/sax/XMLReader;

    move-result-object p0

    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/XMLReader;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Lnet/sf/saxon/resource/ActiveSAXSource;

    invoke-direct {v4, p0, v2}, Lnet/sf/saxon/resource/ActiveSAXSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    invoke-virtual {v4, v1}, Ljavax/xml/transform/sax/SAXSource;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Lnet/sf/saxon/resource/ActiveSAXSource;->deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    if-eqz v3, :cond_2

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->reuseSourceParser(Lorg/xml/sax/XMLReader;)V

    :cond_2
    return-void
.end method
