.class public Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;
.super Ljavax/xml/parsers/SAXParserFactory;
.source "SourceFile"


# static fields
.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"


# instance fields
.field private fSecureProcess:Z

.field private features:Ljava/util/Hashtable;

.field private grammar:Ljavax/xml/validation/Schema;

.field private isXIncludeAware:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/parsers/SAXParserFactory;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    return-void
.end method

.method private getFromFeatures(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private newSAXParserImpl()Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0

    :catch_2
    move-exception p0

    throw p0
.end method

.method private putInFeatures(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    if-eqz p2, :cond_1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->newSAXParserImpl()Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->grammar:Ljavax/xml/validation/Schema;

    return-object p0
.end method

.method public isNamespaceAware()Z
    .locals 1

    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->getFromFeatures(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isValidating()Z
    .locals 1

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->getFromFeatures(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isXIncludeAware()Z
    .locals 1

    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->getFromFeatures(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public newSAXParser()Ljavax/xml/parsers/SAXParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->putInFeatures(Ljava/lang/String;Z)V

    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->newSAXParserImpl()Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p2

    :catch_1
    move-exception p2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p2
.end method

.method public setNamespaceAware(Z)V
    .locals 1

    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->putInFeatures(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->grammar:Ljavax/xml/validation/Schema;

    return-void
.end method

.method public setValidating(Z)V
    .locals 1

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->putInFeatures(Ljava/lang/String;Z)V

    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 1

    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->putInFeatures(Ljava/lang/String;Z)V

    return-void
.end method
