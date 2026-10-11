.class public Lnet/sf/saxon/jaxp/StreamingFilterImpl;
.super Lnet/sf/saxon/jaxp/AbstractXMLFilter;
.source "SourceFile"


# instance fields
.field public final h:Lnet/sf/saxon/s9api/Xslt30Transformer;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Xslt30Transformer;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/jaxp/AbstractXMLFilter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/jaxp/StreamingFilterImpl;->h:Lnet/sf/saxon/s9api/Xslt30Transformer;

    return-void
.end method


# virtual methods
.method public getTransformer()Lnet/sf/saxon/s9api/Xslt30Transformer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/StreamingFilterImpl;->h:Lnet/sf/saxon/s9api/Xslt30Transformer;

    return-object p0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->e:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v0}, Lnet/sf/saxon/Platform;->loadParser()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->e:Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->g:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->f:Lorg/xml/sax/ContentHandler;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ContentHandler and LexicalHandler must be the same object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    new-instance v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    invoke-virtual {v0, p1}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    iget-object p1, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->e:Lorg/xml/sax/XMLReader;

    invoke-virtual {v0, p1}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    new-instance p1, Lnet/sf/saxon/s9api/SAXDestination;

    iget-object v1, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->f:Lorg/xml/sax/ContentHandler;

    invoke-direct {p1, v1}, Lnet/sf/saxon/s9api/SAXDestination;-><init>(Lorg/xml/sax/ContentHandler;)V

    :try_start_1
    iget-object p0, p0, Lnet/sf/saxon/jaxp/StreamingFilterImpl;->h:Lnet/sf/saxon/s9api/Xslt30Transformer;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/s9api/Xslt30Transformer;->applyTemplates(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/Destination;)V
    :try_end_1
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
