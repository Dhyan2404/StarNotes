.class public final Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;
.super Ljavax/xml/transform/Transformer;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/DOMCache;
.implements Ljavax/xml/transform/ErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl$MessageHandler;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final LEXICAL_HANDLER_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field private static final NAMESPACE_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final NAMESPACE_PREFIXES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final NO_STRING:Ljava/lang/String; = "no"

.field private static final XML_STRING:Ljava/lang/String; = "xml"

.field private static final YES_STRING:Ljava/lang/String; = "yes"


# instance fields
.field private _dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

.field private _dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

.field private _encoding:Ljava/lang/String;

.field private _errorListener:Ljavax/xml/transform/ErrorListener;

.field private _indentNumber:I

.field private _isIdentity:Z

.field private _isSecureProcessing:Z

.field private _method:Ljava/lang/String;

.field private _ostream:Ljava/io/OutputStream;

.field private _parameters:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

.field private _properties:Ljava/util/Properties;

.field private _propertiesClone:Ljava/util/Properties;

.field private _readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

.field private _sourceSystemId:Ljava/lang/String;

.field private _tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

.field private _tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

.field private _translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

.field private _uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Ljava/util/Properties;ILcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_method:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_encoding:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_sourceSystemId:Ljava/lang/String;

    .line 8
    iput-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    .line 10
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    .line 11
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    .line 13
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_ostream:Ljava/io/OutputStream;

    .line 14
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    .line 15
    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getInstance()Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isIdentity:Z

    .line 17
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isSecureProcessing:Z

    .line 18
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_parameters:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    .line 19
    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    .line 20
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->createOutputProperties(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_properties:Ljava/util/Properties;

    .line 21
    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Properties;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_propertiesClone:Ljava/util/Properties;

    .line 22
    iput p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_indentNumber:I

    .line 23
    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;ILcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Ljava/util/Properties;ILcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isIdentity:Z

    return-void
.end method

.method private createOutputProperties(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 6

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "xml"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->setDefaults(Ljava/util/Properties;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    const-string v2, "method"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_encoding:Ljava/lang/String;

    const-string v3, "encoding"

    invoke-virtual {v1, v3, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_method:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {v1, v2, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, "html"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->setDefaults(Ljava/util/Properties;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "text"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->setDefaults(Ljava/util/Properties;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v1
.end method

.method private getDOM(Ljavax/xml/transform/Source;)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)V

    :cond_0
    move-object v3, v0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->hasIdCall()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getDTMManagerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZIZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz p1, :cond_5

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    :goto_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isIdentity:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->prepassDocument(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p1

    :cond_5
    return-object v0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->postErrorToListener(Ljava/lang/String;)V

    :cond_6
    new-instance p0, Ljavax/xml/transform/TransformerException;

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private isDefaultProperty(Ljava/lang/String;Ljava/util/Properties;)Z
    .locals 0

    invoke-virtual {p2, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeCDATAString(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private postErrorToListener(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private postWarningToListener(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setDefaults(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transferOutputProperties(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_properties:Ljava/util/Properties;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_properties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "encoding"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    iput-object v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_encoding:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v3, "method"

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    iput-object v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_method:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v3, "doctype-public"

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11
    iput-object v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_doctypePublic:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v3, "doctype-system"

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 13
    iput-object v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_doctypeSystem:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v3, "media-type"

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 15
    iput-object v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_mediaType:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v3, "standalone"

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 17
    iput-object v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_standalone:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v3, "version"

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 19
    iput-object v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_version:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v3, "omit-xml-declaration"

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "yes"

    const/4 v6, 0x0

    if-eqz v3, :cond_b

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1

    :cond_a
    move v4, v6

    :goto_1
    iput-boolean v4, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_omitHeader:Z

    goto :goto_0

    :cond_b
    const-string v3, "indent"

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2

    :cond_c
    move v4, v6

    :goto_2
    iput-boolean v4, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indent:Z

    goto/16 :goto_0

    :cond_d
    const-string v3, "{http://xml.apache.org/xslt}indent-amount"

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indentamount:I

    goto/16 :goto_0

    :cond_e
    const-string v3, "{http://xml.apache.org/xalan}indent-amount"

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indentamount:I

    goto/16 :goto_0

    :cond_f
    const-string v3, "cdata-section-elements"

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 29
    iput-object v1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_cdata:Ljava/util/Vector;

    .line 30
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 31
    :goto_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->addCdataElement(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    return-void
.end method

.method private transform(Ljavax/xml/transform/Source;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 p3, 0x0

    .line 22
    :try_start_0
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v0}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v0}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v0}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_4

    .line 23
    :cond_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 25
    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    if-eqz p1, :cond_3

    .line 27
    invoke-interface {v1, p1}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V

    :cond_3
    move-object p1, v1

    .line 28
    :cond_4
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isIdentity:Z

    if-eqz v0, :cond_5

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->transformIdentity(Ljavax/xml/transform/Source;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto :goto_0

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->getDOM(Ljavax/xml/transform/Source;)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->transform(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xalan/internal/xsltc/TransletException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :goto_0
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    .line 32
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_ostream:Ljava/io/OutputStream;

    if-eqz p1, :cond_6

    .line 33
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    :catch_0
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_ostream:Ljava/io/OutputStream;

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 35
    :try_start_2
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->postErrorToListener(Ljava/lang/String;)V

    .line 36
    :cond_7
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 37
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->postErrorToListener(Ljava/lang/String;)V

    .line 38
    :cond_8
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 39
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->postErrorToListener(Ljava/lang/String;)V

    .line 40
    :cond_9
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :goto_1
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    .line 42
    throw p1
.end method

.method private transformIdentity(Ljavax/xml/transform/Source;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_sourceSystemId:Ljava/lang/String;

    :cond_0
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamSource;

    const-string v1, "JAXP_NO_SOURCE_ERR"

    const-string v2, "http://xml.org/sax/features/namespace-prefixes"

    const-string v3, "http://xml.org/sax/properties/lexical-handler"

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    check-cast p1, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object p1

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    :try_start_0
    invoke-interface {v5, v3, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5, v2, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :goto_0
    :try_start_1
    invoke-interface {v5, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    if-eqz v0, :cond_1

    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-direct {p1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_sourceSystemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    new-instance p2, Lorg/xml/sax/InputSource;

    invoke-direct {p2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_sourceSystemId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    :goto_1
    move-object p1, p2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_sourceSystemId:Ljava/lang/String;

    if-eqz p1, :cond_3

    new-instance p2, Lorg/xml/sax/InputSource;

    invoke-direct {p2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    invoke-interface {v5, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    goto/16 :goto_7

    :cond_3
    :try_start_2
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    throw p1

    :cond_4
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_7

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object p1

    if-nez v0, :cond_5

    :try_start_3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x0

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_5
    move v1, v4

    :goto_4
    :try_start_4
    invoke-interface {v0, v3, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    move v4, v1

    goto :goto_6

    :catch_1
    :goto_5
    :try_start_5
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v1, :cond_b

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    goto :goto_7

    :goto_6
    if-nez v4, :cond_6

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_6
    throw p1

    :cond_7
    instance-of v0, p1, Ljavax/xml/transform/stax/StAXSource;

    if-eqz v0, :cond_9

    check-cast p1, Ljavax/xml/transform/stax/StAXSource;

    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXSource;->getXMLEventReader()Ljavax/xml/stream/XMLEventReader;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXSource;->getXMLEventReader()Ljavax/xml/stream/XMLEventReader;

    move-result-object p0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;-><init>(Ljavax/xml/stream/XMLEventReader;)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->parse()V

    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXSource;->getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXSource;->getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXStream2SAX;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXStream2SAX;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXStream2SAX;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXStream2SAX;->parse()V

    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    goto :goto_7

    :cond_9
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_a

    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;-><init>(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->parse()V

    goto :goto_7

    :cond_a
    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    invoke-virtual {p1, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->getDOM(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->copy(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    :cond_b
    :goto_7
    return-void

    :cond_c
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validOutputProperty(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "encoding"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "method"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "indent"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "doctype-public"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "doctype-system"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "cdata-section-elements"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "media-type"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "omit-xml-declaration"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "standalone"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "version"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x7b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    :cond_1
    return p0
.end method


# virtual methods
.method public clearParameters()V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isIdentity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_parameters:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->clear()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->clearParameters()V

    :goto_0
    return-void
.end method

.method public error(Ljavax/xml/transform/TransformerException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v3, "ERROR_PLUS_WRAPPED_MSG"

    invoke-direct {v1, v3, v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "ERROR_MSG"

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    throw p1
.end method

.method public fatalError(Ljavax/xml/transform/TransformerException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v3, "FATAL_ERR_PLUS_WRAPPED_MSG"

    invoke-direct {v1, v3, v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "FATAL_ERR_MSG"

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    throw p1
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method public getOutputHandler(Ljavax/xml/transform/Result;)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v0, "file:"

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_properties:Ljava/util/Properties;

    const-string v2, "method"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_method:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_properties:Ljava/util/Properties;

    const-string v2, "encoding"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_encoding:Ljava/lang/String;

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->newInstance()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setEncoding(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_method:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setOutputMethod(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_indentNumber:I

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setIndentNumber(I)V

    :cond_1
    :try_start_0
    instance-of v1, p1, Ljavax/xml/transform/sax/SAXResult;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    check-cast p1, Ljavax/xml/transform/sax/SAXResult;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setOutputType(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v1, p1, Ljavax/xml/transform/stax/StAXResult;

    if-eqz v1, :cond_6

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/stax/StAXResult;

    invoke-virtual {v0}, Ljavax/xml/transform/stax/StAXResult;->getXMLEventWriter()Ljavax/xml/stream/XMLEventWriter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    check-cast p1, Ljavax/xml/transform/stax/StAXResult;

    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXResult;->getXMLEventWriter()Ljavax/xml/stream/XMLEventWriter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setXMLEventWriter(Ljavax/xml/stream/XMLEventWriter;)V

    goto :goto_0

    :cond_4
    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/stax/StAXResult;

    invoke-virtual {v0}, Ljavax/xml/transform/stax/StAXResult;->getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    check-cast p1, Ljavax/xml/transform/stax/StAXResult;

    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXResult;->getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setXMLStreamWriter(Ljavax/xml/stream/XMLStreamWriter;)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setOutputType(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v1, p1, Ljavax/xml/transform/dom/DOMResult;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    move-object v1, p1

    check-cast v1, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {v1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setNode(Lorg/w3c/dom/Node;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setNextSibling(Lorg/w3c/dom/Node;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setOutputType(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v1, p1, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v1, :cond_f

    move-object v1, p1

    check-cast v1, Ljavax/xml/transform/stream/StreamResult;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setOutputType(I)V

    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setWriter(Ljava/io/Writer;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setOutputStream(Ljava/io/OutputStream;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-interface {p1}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_c

    :try_start_1
    const-string v1, "java.net.URI"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, ""

    :cond_a
    if-eqz p1, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-object v0, p1

    :catch_1
    move-object p1, v0

    :goto_1
    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setOutputStream(Ljava/io/OutputStream;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p0

    return-object p0

    :cond_c
    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_ostream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setOutputStream(Ljava/io/OutputStream;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_ostream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setOutputStream(Ljava/io/OutputStream;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "JAXP_NO_RESULT_ERR"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/net/UnknownServiceException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_f
    const/4 p0, 0x0

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_properties:Ljava/util/Properties;

    invoke-virtual {p0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->validOutputProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_properties:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v0, "JAXP_UNKNOWN_PROP_ERR"

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isIdentity:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_parameters:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getTransformerFactory()Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    return-object p0
.end method

.method public getTranslet()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    return-object p0
.end method

.method public getTransletOutputHandlerFactory()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object p0
.end method

.method public isIdentity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isIdentity:Z

    return p0
.end method

.method public isSecureProcessing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isSecureProcessing:Z

    return p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_method:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_encoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_sourceSystemId:Ljava/lang/String;

    iput-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_parameters:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_indentNumber:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->setOutputProperties(Ljava/util/Properties;)V

    return-void
.end method

.method public retrieveDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_0

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_0
    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-interface {p3, p2, p1}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p3

    if-nez p3, :cond_1

    new-instance p3, Ljavax/xml/transform/stream/StreamSource;

    invoke-static {p2, p1}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->getDOM(Ljavax/xml/transform/Source;)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->getDOM(Ljavax/xml/transform/Source;)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "File not found: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->postErrorToListener(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public setDOM(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_errorListener:Ljavax/xml/transform/ErrorListener;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl$MessageHandler;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl$MessageHandler;-><init>(Ljavax/xml/transform/ErrorListener;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->setMessageHandler(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/MessageHandler;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "ERROR_LISTENER_NULL_ERR"

    const-string v0, "Transformer"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->isDefaultProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->validOutputProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_properties:Ljava/util/Properties;

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "JAXP_UNKNOWN_PROP_ERR"

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_propertiesClone:Ljava/util/Properties;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_properties:Ljava/util/Properties;

    :cond_3
    return-void
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->validOutputProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_properties:Ljava/util/Properties;

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p2, "JAXP_UNKNOWN_PROP_ERR"

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isIdentity:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_parameters:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_parameters:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_parameters:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p2, "JAXP_INVALID_SET_PARAM_VALUE"

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSecureProcessing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isSecureProcessing:Z

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public transferOutputProperties(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 10

    .line 33
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_properties:Ljava/util/Properties;

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 36
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 37
    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_properties:Ljava/util/Properties;

    invoke-virtual {v5, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v6, "doctype-public"

    .line 38
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v2, v5

    goto :goto_0

    :cond_3
    const-string v6, "doctype-system"

    .line 39
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v3, v5

    goto :goto_0

    :cond_4
    const-string v6, "media-type"

    .line 40
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 41
    invoke-interface {p1, v5}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setMediaType(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v6, "standalone"

    .line 42
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 43
    invoke-interface {p1, v5}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setStandalone(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v6, "version"

    .line 44
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 45
    invoke-interface {p1, v5}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v6, "omit-xml-declaration"

    .line 46
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "yes"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_9

    .line 47
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_1

    :cond_8
    move v8, v9

    :goto_1
    invoke-interface {p1, v8}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    goto :goto_0

    :cond_9
    const-string v6, "indent"

    .line 48
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 49
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    move v8, v9

    :goto_2
    invoke-interface {p1, v8}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setIndent(Z)V

    goto/16 :goto_0

    :cond_b
    const-string v6, "{http://xml.apache.org/xslt}indent-amount"

    .line 50
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setIndentAmount(I)V

    goto/16 :goto_0

    :cond_c
    const-string v6, "{http://xml.apache.org/xalan}indent-amount"

    .line 52
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setIndentAmount(I)V

    goto/16 :goto_0

    :cond_d
    const-string v6, "cdata-section-elements"

    .line 54
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    .line 56
    :goto_3
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 57
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3a

    .line 58
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-lez v7, :cond_e

    .line 59
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_e
    move-object v8, v1

    :goto_4
    if-nez v5, :cond_f

    .line 61
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 62
    :cond_f
    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 64
    :cond_10
    invoke-interface {p1, v5}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setCdataSectionElements(Ljava/util/Vector;)V

    goto/16 :goto_0

    :cond_11
    if-nez v2, :cond_12

    if-eqz v3, :cond_13

    .line 65
    :cond_12
    invoke-interface {p1, v3, v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setDoctype(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isIdentity:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->transferOutputProperties(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "JAXP_NO_TRANSLET_ERR"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->getOutputHandler(Ljavax/xml/transform/Result;)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 7
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isIdentity:Z

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->setDOMCache(Lcom/sun/org/apache/xalan/internal/xsltc/DOMCache;)V

    .line 9
    :cond_2
    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_isIdentity:Z

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->transferOutputProperties(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_encoding:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->transform(Ljavax/xml/transform/Source;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Ljava/lang/String;)V

    .line 12
    :try_start_0
    instance-of p1, p2, Ljavax/xml/transform/dom/DOMResult;

    if-eqz p1, :cond_4

    .line 13
    check-cast p2, Ljavax/xml/transform/dom/DOMResult;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 14
    :cond_4
    instance-of p1, p2, Ljavax/xml/transform/stax/StAXResult;

    if-eqz p1, :cond_6

    .line 15
    move-object p1, p2

    check-cast p1, Ljavax/xml/transform/stax/StAXResult;

    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXResult;->getXMLEventWriter()Ljavax/xml/stream/XMLEventWriter;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 16
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getXMLEventWriter()Ljavax/xml/stream/XMLEventWriter;

    move-result-object p0

    invoke-interface {p0}, Ljavax/xml/stream/XMLEventWriter;->flush()V

    goto :goto_1

    .line 17
    :cond_5
    check-cast p2, Ljavax/xml/transform/stax/StAXResult;

    invoke-virtual {p2}, Ljavax/xml/transform/stax/StAXResult;->getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 18
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->_tohFactory:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p0

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 19
    :catch_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Result writing error"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    .line 20
    :cond_7
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "JAXP_NO_HANDLER_ERR"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public warning(Ljavax/xml/transform/TransformerException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v2, "WARNING_PLUS_WRAPPED_MSG"

    invoke-direct {v1, v2, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "WARNING_MSG"

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
