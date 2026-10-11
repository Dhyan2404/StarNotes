.class public Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;
.super Ljavax/xml/transform/sax/SAXTransformerFactory;
.source "SourceFile"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "SmartTransformerFactoryImpl"


# instance fields
.field private _currFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

.field private _errorlistener:Ljavax/xml/transform/ErrorListener;

.field private _uriresolver:Ljavax/xml/transform/URIResolver;

.field private _xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

.field private _xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

.field private featureSecureProcessing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXTransformerFactory;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_currFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_errorlistener:Ljavax/xml/transform/ErrorListener;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_uriresolver:Ljavax/xml/transform/URIResolver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->featureSecureProcessing:Z

    return-void
.end method

.method private createXSLTCTransformerFactory()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_currFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    return-void
.end method

.method private createXalanTransformerFactory()V
    .locals 4

    const-string v0, "com.sun.org.apache.xalan.internal.xsltc.trax.SmartTransformerFactoryImpl could not create an com.sun.org.apache.xalan.internal.processor.TransformerFactoryImpl."

    :try_start_0
    const-string v1, "com.sun.org.apache.xalan.internal.processor.TransformerFactoryImpl"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/sax/SAXTransformerFactory;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_currFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    return-void
.end method


# virtual methods
.method public getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_currFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXSLTCTransformerFactory()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_currFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/xml/transform/TransformerFactory;->getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p0

    return-object p0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "translet-name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "debug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXalanTransformerFactory()V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {p0, p1}, Ljavax/xml/transform/TransformerFactory;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXSLTCTransformerFactory()V

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {p0, p1}, Ljavax/xml/transform/TransformerFactory;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_errorlistener:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "http://javax.xml.transform.dom.DOMSource/feature"

    const-string v1, "http://javax.xml.transform.dom.DOMResult/feature"

    const-string v2, "http://javax.xml.transform.sax.SAXSource/feature"

    const-string v3, "http://javax.xml.transform.sax.SAXResult/feature"

    const-string v4, "http://javax.xml.transform.stream.StreamSource/feature"

    const-string v5, "http://javax.xml.transform.stream.StreamResult/feature"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->featureSecureProcessing:Z

    return p0

    :cond_2
    return v1

    :cond_3
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "JAXP_GET_FEATURE_NULL_NAME"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_uriresolver:Ljavax/xml/transform/URIResolver;

    return-object p0
.end method

.method public newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXSLTCTransformerFactory()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_errorlistener:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_uriresolver:Ljavax/xml/transform/URIResolver;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_currFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p0

    return-object p0
.end method

.method public newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXSLTCTransformerFactory()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_errorlistener:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_uriresolver:Ljavax/xml/transform/URIResolver;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;

    move-result-object p0

    return-object p0
.end method

.method public newTransformer()Ljavax/xml/transform/Transformer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXalanTransformerFactory()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_errorlistener:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_uriresolver:Ljavax/xml/transform/URIResolver;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_currFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    .line 8
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXalanTransformerFactory()V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_errorlistener:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_uriresolver:Ljavax/xml/transform/URIResolver;

    if-eqz v0, :cond_2

    .line 14
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_currFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    .line 16
    invoke-virtual {v0, p1}, Ljavax/xml/transform/TransformerFactory;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXalanTransformerFactory()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_errorlistener:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_uriresolver:Ljavax/xml/transform/URIResolver;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object p0

    return-object p0
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Source;)Ljavax/xml/transform/sax/TransformerHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXalanTransformerFactory()V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_errorlistener:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_uriresolver:Ljavax/xml/transform/URIResolver;

    if-eqz v0, :cond_2

    .line 13
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 14
    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {p0, p1}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler(Ljavax/xml/transform/Source;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object p0

    return-object p0
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXSLTCTransformerFactory()V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_errorlistener:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_1

    .line 18
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_uriresolver:Ljavax/xml/transform/URIResolver;

    if-eqz v0, :cond_2

    .line 20
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 21
    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {p0, p1}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object p0

    return-object p0
.end method

.method public newXMLFilter(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXSLTCTransformerFactory()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_errorlistener:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_uriresolver:Ljavax/xml/transform/URIResolver;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;

    move-result-object p0

    return-object p0
.end method

.method public newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 9
    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;-><init>(Ljavax/xml/transform/Templates;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 10
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXSLTCTransformerFactory()V

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerFactory;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 13
    :try_start_1
    invoke-interface {p0, p1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p0, 0x0

    return-object p0

    :catch_1
    move-exception p0

    .line 14
    new-instance v0, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v0, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    .line 15
    :cond_1
    throw p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "translet-name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "debug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXalanTransformerFactory()V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xalanFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->createXSLTCTransformerFactory()V

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_xsltcFactory:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_errorlistener:Ljavax/xml/transform/ErrorListener;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->featureSecureProcessing:Z

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p2, "JAXP_UNSUPPORTED_FEATURE"

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "JAXP_SET_FEATURE_NULL_NAME"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SmartTransformerFactoryImpl;->_uriresolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method
