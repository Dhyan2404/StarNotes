.class public Lorg/apache/xerces/jaxp/SAXParserImpl;
.super Ljavax/xml/parsers/SAXParser;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/jaxp/JAXPConstants;
.implements Lorg/apache/xerces/xs/PSVIProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;
    }
.end annotation


# static fields
.field public static final n:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field public static final o:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field public static final p:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final q:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field public static final r:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field public static final s:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"


# instance fields
.field public final e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

.field public f:Ljava/lang/String;

.field public final g:Ljavax/xml/validation/Schema;

.field public final h:Lorg/apache/xerces/xni/parser/XMLComponent;

.field public final i:Lorg/apache/xerces/xni/parser/XMLComponentManager;

.field public final j:Lorg/apache/xerces/impl/validation/ValidationManager;

.field public final k:Lcom/sunia/HTREnginev2/aun;

.field public final l:Lorg/xml/sax/ErrorHandler;

.field public final m:Lorg/xml/sax/EntityResolver;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xerces/jaxp/SAXParserImpl;-><init>(Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParser;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->f:Ljava/lang/String;

    new-instance v1, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-direct {v1, p0}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;-><init>(Lorg/apache/xerces/jaxp/SAXParserImpl;)V

    iput-object v1, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->isNamespaceAware()Z

    move-result v2

    const-string v3, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v1, v3, v2}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->s(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->isNamespaceAware()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v1, v4, v2}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->s(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->s(Ljava/lang/String;Z)V

    :cond_0
    if-eqz p3, :cond_1

    new-instance p3, Lorg/apache/xerces/util/SecurityManager;

    invoke-direct {p3}, Lorg/apache/xerces/util/SecurityManager;-><init>()V

    const-string v2, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v1, v2, p3}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->t(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/xerces/jaxp/SAXParserImpl;->setFeatures(Ljava/util/Hashtable;)V

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->isValidating()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/sunia/HTREnginev2/i1f;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/i1f;-><init>()V

    iput-object p2, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->l:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {v1, p2}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/apache/xerces/parsers/AbstractSAXParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->l:Lorg/xml/sax/ErrorHandler;

    :goto_0
    const-string p2, "http://xml.org/sax/features/validation"

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->isValidating()Z

    move-result p3

    invoke-virtual {v1, p2, p3}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->s(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->g:Ljavax/xml/validation/Schema;

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getXMLParserConfiguration()Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object p2

    instance-of p3, p1, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    if-eqz p3, :cond_3

    new-instance p3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {p3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    new-instance v0, Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v0}, Lorg/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->j:Lorg/apache/xerces/impl/validation/ValidationManager;

    new-instance v2, Lcom/sunia/HTREnginev2/aun;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/aun;-><init>(Lorg/apache/xerces/impl/validation/ValidationManager;)V

    iput-object v2, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->k:Lcom/sunia/HTREnginev2/aun;

    invoke-interface {p2, v2}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    invoke-virtual {v2, v1}, Lcom/sunia/HTREnginev2/aun;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    new-instance v2, Lcom/sunia/HTREnginev2/v5m;

    check-cast p1, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    invoke-direct {v2, p2, p1, v0}, Lcom/sunia/HTREnginev2/v5m;-><init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;Lorg/apache/xerces/impl/validation/ValidationManager;)V

    iput-object v2, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->i:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    goto :goto_1

    :cond_3
    new-instance p3, Lcom/sunia/HTREnginev2/sqi;

    invoke-virtual {p1}, Ljavax/xml/validation/Schema;->newValidatorHandler()Ljavax/xml/validation/ValidatorHandler;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/sunia/HTREnginev2/sqi;-><init>(Ljavax/xml/validation/ValidatorHandler;)V

    iput-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->j:Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->k:Lcom/sunia/HTREnginev2/aun;

    iput-object p2, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->i:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    :goto_1
    invoke-interface {p3}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-interface {p3, v1}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-virtual {v1, p3}, Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    iput-object p3, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->h:Lorg/apache/xerces/xni/parser/XMLComponent;

    goto :goto_2

    :cond_4
    iput-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->j:Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->k:Lcom/sunia/HTREnginev2/aun;

    iput-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->i:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    iput-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->h:Lorg/apache/xerces/xni/parser/XMLComponent;

    :goto_2
    invoke-virtual {v1}, Lorg/apache/xerces/parsers/AbstractSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->m:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public static synthetic a(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/xni/parser/XMLComponent;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->h:Lorg/apache/xerces/xni/parser/XMLComponent;

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/xerces/jaxp/SAXParserImpl;)Ljavax/xml/validation/Schema;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->g:Ljavax/xml/validation/Schema;

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/xerces/jaxp/SAXParserImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/xerces/jaxp/SAXParserImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic e(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/impl/validation/ValidationManager;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->j:Lorg/apache/xerces/impl/validation/ValidationManager;

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lcom/sunia/HTREnginev2/aun;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->k:Lcom/sunia/HTREnginev2/aun;

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/xni/parser/XMLComponentManager;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->i:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    return-object p0
.end method


# virtual methods
.method public getAttributePSVI(I)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xs/PSVIProvider;->getAttributePSVI(I)Lorg/apache/xerces/xs/AttributePSVI;

    move-result-object p0

    return-object p0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xs/PSVIProvider;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;

    move-result-object p0

    return-object p0
.end method

.method public getElementPSVI()Lorg/apache/xerces/xs/ElementPSVI;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {p0}, Lorg/apache/xerces/xs/PSVIProvider;->getElementPSVI()Lorg/apache/xerces/xs/ElementPSVI;

    move-result-object p0

    return-object p0
.end method

.method public getParser()Lorg/xml/sax/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->g:Ljavax/xml/validation/Schema;

    return-object p0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    return-object p0
.end method

.method public isNamespaceAware()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidating()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isXIncludeAware()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    iget-object p2, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->parse(Lorg/xml/sax/InputSource;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    iget-object p2, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->parse(Lorg/xml/sax/InputSource;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public reset()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->r()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0}, Lorg/apache/xerces/parsers/AbstractSAXParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->l:Lorg/xml/sax/ErrorHandler;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0}, Lorg/apache/xerces/parsers/AbstractSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->m:Lorg/xml/sax/EntityResolver;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p0, v1}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_1
    return-void
.end method

.method public final setFeatures(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v2, v1, v0}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->s(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserImpl;->e:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
