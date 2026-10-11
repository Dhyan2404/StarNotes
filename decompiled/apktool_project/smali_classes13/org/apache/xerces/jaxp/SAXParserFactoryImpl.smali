.class public Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;
.super Ljavax/xml/parsers/SAXParserFactory;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field public static final f:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final g:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"


# instance fields
.field public a:Ljava/util/Hashtable;

.field public b:Ljavax/xml/validation/Schema;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/parsers/SAXParserFactory;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lorg/apache/xerces/jaxp/SAXParserImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/xerces/jaxp/SAXParserImpl;

    iget-object v1, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->a:Ljava/util/Hashtable;

    invoke-direct {v0, p0, v1}, Lorg/apache/xerces/jaxp/SAXParserImpl;-><init>(Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;)V
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

    iget-boolean p0, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->d:Z

    return p0

    :cond_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->isNamespaceAware()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->isValidating()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware()Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->a()Lorg/apache/xerces/jaxp/SAXParserImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/SAXParserImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->b:Ljavax/xml/validation/Schema;

    return-object p0
.end method

.method public isXIncludeAware()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->c:Z

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
    new-instance v0, Lorg/apache/xerces/jaxp/SAXParserImpl;

    iget-object v1, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->a:Ljava/util/Hashtable;

    iget-boolean v2, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->d:Z

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/xerces/jaxp/SAXParserImpl;-><init>(Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V
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

    iput-boolean p2, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->d:Z

    return-void

    :cond_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    return-void

    :cond_1
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    return-void

    :cond_2
    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->setXIncludeAware(Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->a:Ljava/util/Hashtable;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->a:Ljava/util/Hashtable;

    :cond_4
    iget-object v0, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->a:Ljava/util/Hashtable;

    if-eqz p2, :cond_5

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->a()Lorg/apache/xerces/jaxp/SAXParserImpl;
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->a:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p2

    :catch_1
    move-exception p2

    iget-object p0, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->a:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p2
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->b:Ljavax/xml/validation/Schema;

    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->c:Z

    return-void
.end method
