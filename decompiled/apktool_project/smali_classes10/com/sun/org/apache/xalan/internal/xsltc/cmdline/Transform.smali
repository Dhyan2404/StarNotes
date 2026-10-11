.class public final Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _className:Ljava/lang/String;

.field private _debug:Z

.field private _fileName:Ljava/lang/String;

.field private _handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

.field private _isJarFileSpecified:Z

.field private _iterations:I

.field private _jarFileSrc:Ljava/lang/String;

.field private _params:Ljava/util/Vector;

.field private _uri:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_isJarFileSpecified:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_params:Ljava/util/Vector;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_fileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_className:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_uri:Z

    iput-boolean p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_debug:Z

    iput p5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_iterations:I

    return-void
.end method

.method private doTransform()V
    .locals 12

    const-string v0, "INVALID_URI_ERR"

    const-string v1, "RUNTIME_ERROR_KEY"

    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_className:Ljava/lang/String;

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->postInitialization()V

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3
    :try_end_0
    .catch Lcom/sun/org/apache/xalan/internal/xsltc/TransletException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v3, v5, v4}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {v3, v4}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    :goto_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTMManagerClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    instance-of v4, v2, Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;

    invoke-direct {v4, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move-object v8, v4

    new-instance v6, Ljavax/xml/transform/sax/SAXSource;

    new-instance v4, Lorg/xml/sax/InputSource;

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_fileName:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v3, v4}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->hasIdCall()Z

    move-result v11

    invoke-virtual/range {v5 .. v11}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_fileName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->setDocumentURI(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->prepassDocument(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_params:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_1

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_params:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;

    iget-object v8, v7, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_name:Ljava/lang/String;

    iget-object v7, v7, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_value:Ljava/lang/Object;

    invoke-virtual {v2, v8, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->newInstance()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setOutputType(I)V

    iget-object v6, v2, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_encoding:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setEncoding(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_method:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setOutputMethod(Ljava/lang/String;)V

    iget v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_iterations:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->transform(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto/16 :goto_4

    :cond_2
    if-lez v6, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_3
    iget v8, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_iterations:I

    if-ge v5, v8, :cond_3

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->transform(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "\n<!--"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  transform  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v2, v2

    iget v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_iterations:I

    int-to-double v6, v6

    div-double v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  throughput = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_iterations:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " tps"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xalan/internal/xsltc/TransletException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_debug:Z

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v2

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_debug:Z

    if-eqz p0, :cond_6

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    if-eqz v2, :cond_7

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_3
    move-exception v2

    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_debug:Z

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_fileName:Ljava/lang/String;

    invoke-direct {v2, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_4
    move-exception v0

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_debug:Z

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v2, "CLASS_NOT_FOUND_ERR"

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_className:Ljava/lang/String;

    invoke-direct {v0, v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_5
    move-exception v2

    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_debug:Z

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_fileName:Ljava/lang/String;

    invoke-direct {v2, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_6
    move-exception v0

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_debug:Z

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v2, "FILE_NOT_FOUND_ERR"

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_fileName:Ljava/lang/String;

    invoke-direct {v0, v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :catch_7
    move-exception v0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_debug:Z

    if-eqz p0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :catch_8
    move-exception v0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_debug:Z

    if-eqz p0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    :goto_4
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12

    :try_start_0
    array-length v0, p0

    if-lez v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v6, v0

    move v7, v6

    move v9, v7

    move v8, v1

    move v1, v9

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    aget-object v3, p0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    aget-object v3, p0, v1

    const-string v4, "-u"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    aget-object v3, p0, v1

    const-string v5, "-x"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    aget-object v3, p0, v1

    const-string v5, "-j"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    aget-object v2, p0, v1

    move v9, v4

    goto :goto_1

    :cond_2
    aget-object v3, p0, v1

    const-string v5, "-n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    :try_start_1
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v8, v3

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->printUsage()V

    :catch_0
    :goto_1
    add-int/2addr v1, v4

    goto :goto_0

    :cond_4
    array-length v3, p0

    sub-int/2addr v3, v1

    const/4 v10, 0x2

    if-ge v3, v10, :cond_5

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->printUsage()V

    :cond_5
    new-instance v11, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, p0, v3

    aget-object v5, p0, v1

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    invoke-direct {v11, v9, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->setJarFileInputSrc(ZLjava/lang/String;)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    add-int/2addr v1, v10

    :goto_2
    array-length v3, p0

    if-ge v1, v3, :cond_7

    aget-object v3, p0, v1

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_6

    aget-object v4, p0, v1

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aget-object v5, p0, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;

    invoke-direct {v5, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->printUsage()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    array-length p0, p0

    if-ne v1, p0, :cond_9

    invoke-virtual {v11, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->setParameters(Ljava/util/Vector;)V

    invoke-direct {v11}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->doTransform()V

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->printUsage()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method

.method public static printUsage()V
    .locals 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v2, "TRANSFORM_USAGE_STR"

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private setJarFileInputSrc(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_isJarFileSpecified:Z

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_jarFileSrc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_className:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_fileName:Ljava/lang/String;

    return-object p0
.end method

.method public setParameters(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Transform;->_params:Ljava/util/Vector;

    return-void
.end method
