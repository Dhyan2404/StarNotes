.class public abstract Lnet/sf/saxon/jaxp/AbstractXMLFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/XMLFilter;


# instance fields
.field public e:Lorg/xml/sax/XMLReader;

.field public f:Lorg/xml/sax/ContentHandler;

.field public g:Lorg/xml/sax/ext/LexicalHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->f:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->e:Lorg/xml/sax/XMLReader;

    invoke-interface {p0, p1}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getParent()Lorg/xml/sax/XMLReader;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->e:Lorg/xml/sax/XMLReader;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->g:Lorg/xml/sax/ext/LexicalHandler;

    return-object p0

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->f:Lorg/xml/sax/ContentHandler;

    instance-of v0, p1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->g:Lorg/xml/sax/ext/LexicalHandler;

    if-nez v0, :cond_0

    check-cast p1, Lorg/xml/sax/ext/LexicalHandler;

    iput-object p1, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->g:Lorg/xml/sax/ext/LexicalHandler;

    :cond_0
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->e:Lorg/xml/sax/XMLReader;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setParent(Lorg/xml/sax/XMLReader;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->e:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of p1, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    iput-object p2, p0, Lnet/sf/saxon/jaxp/AbstractXMLFilter;->g:Lorg/xml/sax/ext/LexicalHandler;

    return-void

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    const-string p1, "Lexical Handler must be instance of org.xml.sax.ext.LexicalHandler"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
