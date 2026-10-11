.class public Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;
.super Ljavax/xml/parsers/DocumentBuilderFactory;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field public static final g:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final h:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field public static final i:Ljava/lang/String; = "http://apache.org/xml/features/dom/include-ignorable-whitespace"

.field public static final j:Ljava/lang/String; = "http://apache.org/xml/features/dom/create-entity-ref-nodes"

.field public static final k:Ljava/lang/String; = "http://apache.org/xml/features/include-comments"

.field public static final l:Ljava/lang/String; = "http://apache.org/xml/features/create-cdata-nodes"


# instance fields
.field public a:Ljava/util/Hashtable;

.field public b:Ljava/util/Hashtable;

.field public c:Ljavax/xml/validation/Schema;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->e:Z

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;

    iget-object v2, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->a:Ljava/util/Hashtable;

    iget-object v3, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->b:Ljava/util/Hashtable;

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    invoke-virtual {v1}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->a()Lorg/apache/xerces/parsers/DOMParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xerces/parsers/DOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0, p1}, Lorg/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object p0

    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->e:Z

    return p0

    :cond_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->isNamespaceAware()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->isValidating()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isXIncludeAware()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->isIgnoringElementContentWhitespace()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_4
    const-string v0, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->isExpandEntityReferences()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_5
    const-string v0, "http://apache.org/xml/features/include-comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->isIgnoringComments()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_6
    const-string v0, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->isCoalescing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_7
    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_8
    :try_start_0
    new-instance v0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;

    iget-object v1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->a:Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->b:Ljava/util/Hashtable;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    invoke-virtual {v0}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->a()Lorg/apache/xerces/parsers/DOMParser;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->c:Ljavax/xml/validation/Schema;

    return-object p0
.end method

.method public isXIncludeAware()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->d:Z

    return p0
.end method

.method public newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->c:Ljavax/xml/validation/Schema;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "schema-already-specified"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->a:Ljava/util/Hashtable;

    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/xml/parsers/ParserConfigurationException;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljavax/xml/parsers/ParserConfigurationException;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;

    iget-object v1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->a:Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->b:Ljava/util/Hashtable;

    iget-boolean v3, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->e:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V
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

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p2, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->a:Ljava/util/Hashtable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->a:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->a:Ljava/util/Hashtable;

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance p2, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;

    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->b:Ljava/util/Hashtable;

    invoke-direct {p2, p0, v0, v1}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->a:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->e:Z

    return-void

    :cond_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    return-void

    :cond_1
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    return-void

    :cond_2
    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setXIncludeAware(Z)V

    return-void

    :cond_3
    const-string v0, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    return-void

    :cond_4
    const-string v0, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    return-void

    :cond_5
    const-string v0, "http://apache.org/xml/features/include-comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    return-void

    :cond_6
    const-string v0, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    return-void

    :cond_7
    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->b:Ljava/util/Hashtable;

    :cond_8
    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->b:Ljava/util/Hashtable;

    if-eqz p2, :cond_9

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_9
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance p2, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;

    iget-object v0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->b:Ljava/util/Hashtable;

    invoke-direct {p2, p0, v0, v1}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->b:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-virtual {p2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p2

    iget-object p0, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->b:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-virtual {p2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->c:Ljavax/xml/validation/Schema;

    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->d:Z

    return-void
.end method
