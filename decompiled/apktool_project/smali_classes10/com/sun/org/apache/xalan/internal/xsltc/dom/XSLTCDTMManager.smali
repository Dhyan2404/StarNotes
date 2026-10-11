.class public Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager"

.field private static final DEFAULT_PROP_NAME:Ljava/lang/String; = "com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager"

.field private static final DUMPTREE:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;-><init>()V

    return-void
.end method

.method public static getDTMManagerClass()Ljava/lang/Class;
    .locals 2

    const-string v0, "com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager"

    const/4 v1, 0x0

    invoke-static {v0, v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    :goto_0
    return-object v0
.end method

.method public static newInstance()Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v9}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZIZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v8, p6

    .line 2
    invoke-virtual/range {v0 .. v9}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZIZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZIZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 4
    invoke-virtual/range {v0 .. v9}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZIZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZIZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 17

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v12

    shl-int/lit8 v4, v12, 0x10

    const/4 v1, 0x0

    const/4 v13, 0x0

    if-eqz v0, :cond_5

    .line 6
    instance-of v2, v0, Ljavax/xml/transform/stax/StAXSource;

    if-eqz v2, :cond_5

    .line 7
    move-object v2, v0

    check-cast v2, Ljavax/xml/transform/stax/StAXSource;

    .line 8
    invoke-virtual {v2}, Ljavax/xml/transform/stax/StAXSource;->getXMLEventReader()Ljavax/xml/stream/XMLEventReader;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v2}, Ljavax/xml/transform/stax/StAXSource;->getXMLEventReader()Ljavax/xml/stream/XMLEventReader;

    move-result-object v2

    .line 10
    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;-><init>(Ljavax/xml/stream/XMLEventReader;)V

    move-object v15, v1

    move-object v14, v3

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v2}, Ljavax/xml/transform/stax/StAXSource;->getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v2}, Ljavax/xml/transform/stax/StAXSource;->getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    .line 13
    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXStream2SAX;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXStream2SAX;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v14, v1

    move-object v15, v3

    goto :goto_0

    :cond_1
    move-object v14, v1

    move-object v15, v14

    :goto_0
    if-gtz p7, :cond_2

    .line 14
    new-instance v16, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    const/4 v6, 0x0

    const/16 v8, 0x200

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V

    goto :goto_1

    .line 15
    :cond_2
    new-instance v16, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    const/4 v6, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V

    .line 16
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->setDocumentURI(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v11, v1, v12, v13}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;II)V

    if-eqz v14, :cond_3

    .line 18
    :try_start_0
    invoke-virtual {v14, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 19
    invoke-virtual {v14}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->parse()V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    if-eqz v15, :cond_4

    .line 20
    invoke-virtual {v15, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXStream2SAX;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 21
    invoke-virtual {v15}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXStream2SAX;->parse()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 22
    :goto_2
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 23
    :goto_3
    throw v0

    :cond_4
    :goto_4
    return-object v1

    :cond_5
    if-eqz v0, :cond_7

    .line 24
    instance-of v2, v0, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v2, :cond_7

    .line 25
    move-object v1, v0

    check-cast v1, Ljavax/xml/transform/dom/DOMSource;

    .line 26
    invoke-virtual {v1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 27
    new-instance v14, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;

    invoke-direct {v14, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;-><init>(Lorg/w3c/dom/Node;)V

    if-gtz p7, :cond_6

    .line 28
    new-instance v15, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    const/4 v6, 0x0

    const/16 v8, 0x200

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V

    goto :goto_5

    .line 29
    :cond_6
    new-instance v15, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    const/4 v6, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V

    .line 30
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->setDocumentURI(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v11, v15, v12, v13}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;II)V

    .line 32
    invoke-virtual {v14, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 33
    :try_start_1
    invoke-virtual {v14}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->parse()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v15

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 34
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 35
    throw v1

    :cond_7
    if-eqz v0, :cond_8

    .line 36
    instance-of v2, v0, Ljavax/xml/transform/sax/SAXSource;

    goto :goto_6

    :cond_8
    const/4 v2, 0x1

    :goto_6
    if-eqz v0, :cond_9

    .line 37
    instance-of v3, v0, Ljavax/xml/transform/stream/StreamSource;

    goto :goto_7

    :cond_9
    move v3, v13

    :goto_7
    if-nez v2, :cond_b

    if-eqz v3, :cond_a

    goto :goto_8

    .line 38
    :cond_a
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/DTMException;

    const-string v2, "ER_NOT_SUPPORTED"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_8
    if-nez v0, :cond_c

    move-object v10, v1

    move-object v15, v10

    move v14, v13

    goto :goto_a

    .line 39
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getXMLReader(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 40
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 42
    :try_start_2
    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_9

    .line 43
    :catch_4
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not absolutize URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    :goto_9
    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    :cond_d
    move/from16 v14, p6

    move-object v15, v1

    move-object v10, v2

    :goto_a
    if-gtz p7, :cond_e

    .line 45
    new-instance v16, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    const/4 v6, 0x0

    const/16 v8, 0x200

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v9, p8

    move-object v0, v10

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V

    goto :goto_b

    .line 46
    :cond_e
    new-instance v16, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    const/4 v6, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v0, v10

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V

    .line 47
    :goto_b
    invoke-virtual {v11, v1, v12, v13}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;II)V

    if-nez v15, :cond_f

    return-object v1

    .line 48
    :cond_f
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getBuilder()Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMBuilder;

    move-result-object v2

    invoke-interface {v15, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    if-eqz v14, :cond_10

    .line 49
    invoke-interface {v15}, Lorg/xml/sax/XMLReader;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v2

    if-nez v2, :cond_11

    .line 50
    :cond_10
    invoke-interface {v15, v1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    :cond_11
    if-eqz v14, :cond_12

    .line 51
    invoke-interface {v15}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v2

    if-nez v2, :cond_13

    .line 52
    :cond_12
    invoke-interface {v15, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_13
    :try_start_3
    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    .line 53
    invoke-interface {v15, v2, v1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_3 .. :try_end_3} :catch_5

    .line 54
    :catch_5
    :try_start_4
    invoke-interface {v15, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v14, :cond_14

    .line 55
    invoke-virtual {v11, v15}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_14
    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 56
    :try_start_5
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 57
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_c
    if-nez v14, :cond_15

    .line 58
    invoke-virtual {v11, v15}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 59
    :cond_15
    throw v0
.end method

.method public getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 3
    invoke-virtual/range {v0 .. v9}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZIZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    return-object v0
.end method
