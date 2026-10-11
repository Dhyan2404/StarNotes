.class public Lnet/sf/saxon/resource/ActiveSAXSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ActiveSource;


# instance fields
.field public g:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lorg/xml/sax/XMLReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/xml/transform/sax/SAXSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 5
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 6
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/transform/sax/SAXSource;->setSystemId(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied SAXSource contains no XMLReader"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/xml/sax/InputSource;Lnet/sf/saxon/Configuration;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 10
    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getSourceParser()Lorg/xml/sax/XMLReader;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 11
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/transform/sax/SAXSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public static a(Lorg/xml/sax/XMLReader;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected XML parser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static configureParser(Lorg/xml/sax/XMLReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "The SAX2 parser "

    :try_start_0
    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not support setting the \'namespace-prefixes\' feature to false"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not recognize the \'namespace-prefixes\' feature"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not support setting the \'namespaces\' feature to true"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v1

    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not recognize the \'namespaces\' feature"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/resource/ActiveSAXSource;->configureParser(Lorg/xml/sax/XMLReader;)V

    new-instance v4, Lnet/sf/saxon/event/ReceivingContentHandler;

    invoke-direct {v4}, Lnet/sf/saxon/event/ReceivingContentHandler;-><init>()V

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lnet/sf/saxon/event/ReceivingContentHandler;->setReceiver(Lnet/sf/saxon/event/Receiver;)V

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/sf/saxon/event/ReceivingContentHandler;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    const-string v6, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v3, v6, v4}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/lib/ParseOptions;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/lib/ParseOptions;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Lnet/sf/saxon/lib/StandardErrorHandler;

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/lib/ParseOptions;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/sf/saxon/lib/StandardErrorHandler;-><init>(Lnet/sf/saxon/lib/ErrorReporter;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lnet/sf/saxon/lib/StandardErrorHandler;

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/sf/saxon/lib/StandardErrorHandler;-><init>(Lnet/sf/saxon/lib/ErrorReporter;)V

    :cond_1
    :goto_0
    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/lib/ParseOptions;->isExpandAttributeDefaults()Z

    move-result v5
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    if-nez v5, :cond_3

    :try_start_1
    const-string v5, "http://xml.org/sax/features/use-attributes2"

    invoke-interface {v3, v5, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    :catch_0
    :cond_3
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/lib/ParseOptions;->getDTDValidationMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/lib/ParseOptions;->getParserFeatures()Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/lib/ParseOptions;->getParserProperties()Ljava/util/Map;

    move-result-object v8
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    const-string v9, " does not support XInclude processing"

    const-string v10, " does not recognize request for XInclude processing"

    const-string v11, "http://apache.org/xml/features/xinclude"

    if-eqz v6, :cond_7

    :try_start_3
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;
    :try_end_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    :try_start_4
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_4
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    if-eqz v15, :cond_6

    :try_start_5
    invoke-interface {v3, v13, v14}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    const/4 v15, 0x0

    goto :goto_3

    :catch_1
    move v15, v1

    :goto_3
    if-eqz v15, :cond_5

    :try_start_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "-aware"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13, v14}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_6
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v13, v0

    :try_start_7
    new-instance v14, Lnet/sf/saxon/trans/XPathException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lnet/sf/saxon/resource/ActiveSAXSource;->a(Lorg/xml/sax/XMLReader;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v14, v7, v13}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :catch_3
    move-exception v0

    move-object v7, v0

    new-instance v13, Lnet/sf/saxon/trans/XPathException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lnet/sf/saxon/resource/ActiveSAXSource;->a(Lorg/xml/sax/XMLReader;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v7}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    :cond_6
    invoke-interface {v3, v13, v14}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_7
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    goto :goto_2

    :catch_4
    :try_start_8
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lnet/sf/saxon/resource/ActiveSAXSource;->a(Lorg/xml/sax/XMLReader;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " does not support the feature "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_5
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lnet/sf/saxon/resource/ActiveSAXSource;->a(Lorg/xml/sax/XMLReader;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " does not recognize the feature "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;
    :try_end_8
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    :try_start_9
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v3, v8, v12}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_4

    :catch_6
    :try_start_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lnet/sf/saxon/resource/ActiveSAXSource;->a(Lorg/xml/sax/XMLReader;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " does not support the property "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    goto :goto_4

    :catch_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lnet/sf/saxon/resource/ActiveSAXSource;->a(Lorg/xml/sax/XMLReader;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " does not recognize the property "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/lib/ParseOptions;->isXIncludeAware()Z

    move-result v6
    :try_end_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_a .. :try_end_a} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_a .. :try_end_a} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    if-eqz v6, :cond_9

    :try_start_b
    const-string v6, "http://apache.org/xml/features/xinclude-aware"

    invoke-interface {v3, v6, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_b
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_b .. :try_end_b} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_b .. :try_end_b} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    const/4 v7, 0x0

    goto :goto_5

    :catch_8
    move v7, v1

    :goto_5
    if-eqz v7, :cond_9

    :try_start_c
    invoke-interface {v3, v11, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_c
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_c .. :try_end_c} :catch_a
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_c .. :try_end_c} :catch_9
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_c .. :try_end_c} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_c .. :try_end_c} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_6

    :catch_9
    move-exception v0

    move-object v2, v0

    :try_start_d
    new-instance v4, Lnet/sf/saxon/trans/XPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lnet/sf/saxon/resource/ActiveSAXSource;->a(Lorg/xml/sax/XMLReader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_a
    move-exception v0

    move-object v2, v0

    new-instance v4, Lnet/sf/saxon/trans/XPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lnet/sf/saxon/resource/ActiveSAXSource;->a(Lorg/xml/sax/XMLReader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_9
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    instance-of v3, v4, Lnet/sf/saxon/lib/StandardErrorHandler;

    if-eqz v3, :cond_e

    move-object v3, v4

    check-cast v3, Lnet/sf/saxon/lib/StandardErrorHandler;

    invoke-virtual {v3}, Lnet/sf/saxon/lib/StandardErrorHandler;->getFatalErrorCount()I

    move-result v3
    :try_end_d
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_d .. :try_end_d} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_d .. :try_end_d} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    const-string v6, "The XML parser reported "

    if-lez v3, :cond_b

    :try_start_e
    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne v3, v1, :cond_a

    const-string v3, " error"

    goto :goto_7

    :cond_a
    const-string v3, " errors"

    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    check-cast v4, Lnet/sf/saxon/lib/StandardErrorHandler;

    invoke-virtual {v4}, Lnet/sf/saxon/lib/StandardErrorHandler;->getErrorCount()I

    move-result v3

    if-lez v3, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lnet/sf/saxon/expr/number/Numberer_en;

    invoke-direct {v6}, Lnet/sf/saxon/expr/number/Numberer_en;-><init>()V

    int-to-long v7, v3

    invoke-virtual {v6, v7, v8}, Lnet/sf/saxon/expr/number/Numberer_en;->toWords(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " validation error"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v1, :cond_c

    const-string v3, ""

    goto :goto_8

    :cond_c
    const-string v3, "s"

    :goto_8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Processing continues, because recovery from validation errors was requested"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v2, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_e .. :try_end_e} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_e .. :try_end_e} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    :cond_e
    :goto_9
    move-object/from16 v2, p0

    :try_start_f
    iget-object v3, v2, Lnet/sf/saxon/resource/ActiveSAXSource;->g:Ljava/util/function/Consumer;

    if-eqz v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_f
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_f .. :try_end_f} :catch_10
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_f .. :try_end_f} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    :cond_f
    return-void

    :catch_b
    move-exception v0

    goto :goto_a

    :catch_c
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catch_d
    move-exception v0

    move-object/from16 v2, p0

    :goto_a
    move-object v1, v0

    new-instance v3, Lnet/sf/saxon/trans/XPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O error reported by XML parser processing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljavax/xml/transform/sax/SAXSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_e
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/trans/XPathException;

    if-nez v4, :cond_11

    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_10

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    :cond_10
    new-instance v3, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v3, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    const-string v2, "SXXP0003"

    invoke-virtual {v3, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    throw v3

    :cond_11
    check-cast v3, Lnet/sf/saxon/trans/XPathException;

    throw v3

    :catch_f
    move-exception v0

    move-object v1, v0

    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v2, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_10
    move-exception v0

    move-object v1, v0

    throw v1
.end method

.method public setParserPool(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/xml/sax/XMLReader;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/resource/ActiveSAXSource;->g:Ljava/util/function/Consumer;

    return-void
.end method
