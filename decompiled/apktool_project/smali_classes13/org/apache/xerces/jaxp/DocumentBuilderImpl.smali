.class public Lorg/apache/xerces/jaxp/DocumentBuilderImpl;
.super Ljavax/xml/parsers/DocumentBuilder;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/jaxp/JAXPConstants;


# static fields
.field public static final m:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field public static final n:Ljava/lang/String; = "http://apache.org/xml/features/dom/include-ignorable-whitespace"

.field public static final o:Ljava/lang/String; = "http://apache.org/xml/features/dom/create-entity-ref-nodes"

.field public static final p:Ljava/lang/String; = "http://apache.org/xml/features/include-comments"

.field public static final q:Ljava/lang/String; = "http://apache.org/xml/features/create-cdata-nodes"

.field public static final r:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field public static final s:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field public static final t:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final u:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"


# instance fields
.field public final e:Lorg/apache/xerces/parsers/DOMParser;

.field public final f:Ljavax/xml/validation/Schema;

.field public final g:Lorg/apache/xerces/xni/parser/XMLComponent;

.field public final h:Lorg/apache/xerces/xni/parser/XMLComponentManager;

.field public final i:Lorg/apache/xerces/impl/validation/ValidationManager;

.field public final j:Lcom/sunia/HTREnginev2/aun;

.field public final k:Lorg/xml/sax/ErrorHandler;

.field public final l:Lorg/xml/sax/EntityResolver;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljavax/xml/parsers/DocumentBuilder;-><init>()V

    new-instance v0, Lorg/apache/xerces/parsers/DOMParser;

    invoke-direct {v0}, Lorg/apache/xerces/parsers/DOMParser;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isValidating()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/i1f;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/i1f;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->k:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {p0, v1}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xerces/parsers/DOMParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->k:Lorg/xml/sax/ErrorHandler;

    :goto_0
    const-string v1, "http://xml.org/sax/features/validation"

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isValidating()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isNamespaceAware()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isIgnoringElementContentWhitespace()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isExpandEntityReferences()Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v3, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isIgnoringComments()Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v3, "http://apache.org/xml/features/include-comments"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isCoalescing()Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v3, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isXIncludeAware()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    :cond_1
    if-eqz p4, :cond_2

    new-instance p4, Lorg/apache/xerces/util/SecurityManager;

    invoke-direct {p4}, Lorg/apache/xerces/util/SecurityManager;-><init>()V

    const-string v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v0, v1, p4}, Lorg/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->f:Ljavax/xml/validation/Schema;

    const/4 p4, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lorg/apache/xerces/parsers/DOMParser;->getXMLParserConfiguration()Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object v1

    instance-of v2, p1, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    if-eqz v2, :cond_3

    new-instance p4, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {p4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    new-instance v2, Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v2}, Lorg/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->i:Lorg/apache/xerces/impl/validation/ValidationManager;

    new-instance v3, Lcom/sunia/HTREnginev2/aun;

    invoke-direct {v3, v2}, Lcom/sunia/HTREnginev2/aun;-><init>(Lorg/apache/xerces/impl/validation/ValidationManager;)V

    iput-object v3, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->j:Lcom/sunia/HTREnginev2/aun;

    invoke-interface {v1, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    invoke-virtual {v3, v0}, Lcom/sunia/HTREnginev2/aun;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    invoke-virtual {v0, v3}, Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    new-instance v3, Lcom/sunia/HTREnginev2/v5m;

    check-cast p1, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    invoke-direct {v3, v1, p1, v2}, Lcom/sunia/HTREnginev2/v5m;-><init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;Lorg/apache/xerces/impl/validation/ValidationManager;)V

    iput-object v3, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->h:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/sunia/HTREnginev2/sqi;

    invoke-virtual {p1}, Ljavax/xml/validation/Schema;->newValidatorHandler()Ljavax/xml/validation/ValidatorHandler;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/sunia/HTREnginev2/sqi;-><init>(Ljavax/xml/validation/ValidatorHandler;)V

    iput-object p4, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->i:Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object p4, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->j:Lcom/sunia/HTREnginev2/aun;

    iput-object v1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->h:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    move-object p4, v2

    :goto_1
    invoke-interface {p4}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {p4}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    invoke-interface {v1, p4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-interface {p4, v0}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-virtual {v0, p4}, Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_2

    :cond_4
    iput-object p4, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->i:Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object p4, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->j:Lcom/sunia/HTREnginev2/aun;

    iput-object p4, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->h:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    :goto_2
    iput-object p4, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->g:Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {p0, p3}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->setFeatures(Ljava/util/Hashtable;)V

    invoke-virtual {p0, p2}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->setDocumentBuilderFactoryAttributes(Ljava/util/Hashtable;)V

    invoke-virtual {v0}, Lorg/apache/xerces/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->l:Lorg/xml/sax/EntityResolver;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/xerces/parsers/DOMParser;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    return-object p0
.end method

.method public getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-static {}, Lorg/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->f:Ljavax/xml/validation/Schema;

    return-object p0
.end method

.method public isNamespaceAware()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z

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
    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z

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
    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public newDocument()Lorg/w3c/dom/Document;
    .locals 0

    new-instance p0, Lorg/apache/xerces/dom/DocumentImpl;

    invoke-direct {p0}, Lorg/apache/xerces/dom/DocumentImpl;-><init>()V

    return-object p0
.end method

.method public parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->g:Lorg/apache/xerces/xni/parser/XMLComponent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->i:Lorg/apache/xerces/impl/validation/ValidationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->j:Lcom/sunia/HTREnginev2/aun;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/aun;->a()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->resetSchemaValidator()V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/parsers/DOMParser;->parse(Lorg/xml/sax/InputSource;)V

    iget-object p1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {p1}, Lorg/apache/xerces/parsers/AbstractDOMParser;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/AbstractDOMParser;->dropDocumentReferences()V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "jaxp-null-input-source"

    const/4 v0, 0x0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    invoke-static {v1, p1, v0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0}, Lorg/apache/xerces/parsers/DOMParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->k:Lorg/xml/sax/ErrorHandler;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/DOMParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0}, Lorg/apache/xerces/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->l:Lorg/xml/sax/EntityResolver;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {p0, v1}, Lorg/apache/xerces/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_1
    return-void
.end method

.method public final resetSchemaValidator()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->g:Lorg/apache/xerces/xni/parser/XMLComponent;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->h:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {v0, p0}, Lorg/apache/xerces/xni/parser/XMLComponent;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final setDocumentBuilderFactoryAttributes(Ljava/util/Hashtable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v2, v1}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v3, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    if-eqz v4, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->isValidating()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    const-string v2, "http://apache.org/xml/features/validation/schema"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v1, v3, v5}, Lorg/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->isValidating()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "jaxp-order-not-supported"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    invoke-static {v1, p1, v0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    iget-object v3, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v3, v2, v1}, Lorg/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/DOMParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

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

    iget-object v2, p0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->e:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v2, v1, v0}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
