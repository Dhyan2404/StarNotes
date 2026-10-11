.class public Lnet/sf/saxon/jaxp/FilterImpl;
.super Lnet/sf/saxon/jaxp/AbstractXMLFilter;
.source "SourceFile"


# instance fields
.field public final h:Lnet/sf/saxon/jaxp/TransformerImpl;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/jaxp/TransformerImpl;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/jaxp/AbstractXMLFilter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/jaxp/FilterImpl;->h:Lnet/sf/saxon/jaxp/TransformerImpl;

    return-void
.end method


# virtual methods
.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/FilterImpl;->h:Lnet/sf/saxon/jaxp/TransformerImpl;

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
    new-instance v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    invoke-virtual {v0, p1}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    iget-object p1, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->e:Lorg/xml/sax/XMLReader;

    invoke-virtual {v0, p1}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    new-instance p1, Lnet/sf/saxon/event/ContentHandlerProxy;

    invoke-direct {p1}, Lnet/sf/saxon/event/ContentHandlerProxy;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/jaxp/FilterImpl;->h:Lnet/sf/saxon/jaxp/TransformerImpl;

    invoke-virtual {v1}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/event/ContentHandlerProxy;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iget-object v1, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->f:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/event/ContentHandlerProxy;->setUnderlyingContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v1, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->g:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/event/ContentHandlerProxy;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    :cond_1
    :try_start_1
    iget-object v1, p0, Lnet/sf/saxon/jaxp/FilterImpl;->h:Lnet/sf/saxon/jaxp/TransformerImpl;

    invoke-virtual {v1}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getOutputProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/event/ContentHandlerProxy;->setOutputProperties(Ljava/util/Properties;)V

    iget-object p0, p0, Lnet/sf/saxon/jaxp/FilterImpl;->h:Lnet/sf/saxon/jaxp/TransformerImpl;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/jaxp/TransformerImpl;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of v0, p1, Lorg/xml/sax/SAXException;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Lorg/xml/sax/SAXException;

    throw p1

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
