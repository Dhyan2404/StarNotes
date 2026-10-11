.class public Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;
.super Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field private static final DUMPTREE:Z


# instance fields
.field protected m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

.field m_dtm_offsets:[I

.field protected m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

.field private m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

.field protected m_readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    return-void
.end method


# virtual methods
.method public declared-synchronized addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;II)V
    .locals 5

    monitor-enter p0

    const/high16 v0, 0x10000

    if-ge p2, v0, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    array-length v1, v1

    if-gt v1, p2, :cond_0

    add-int/lit16 v2, p2, 0x100

    .line 3
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    new-array v2, v0, [Lcom/sun/org/apache/xml/internal/dtm/DTM;

    .line 5
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    .line 7
    new-array v0, v0, [I

    .line 8
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    aput-object p1, v0, p2

    .line 11
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aput p3, v0, p2

    .line 12
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->documentRegistration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 14
    :cond_1
    :try_start_1
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/DTMException;

    const-string p2, "ER_NO_DTMIDS_AVAIL"

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createDTMIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0

    monitor-enter p0

    .line 3
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized createDTMIterator(ILcom/sun/org/apache/xml/internal/dtm/DTMFilter;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized createDTMIterator(Ljava/lang/Object;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0

    monitor-enter p0

    .line 4
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized createDTMIterator(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0

    monitor-enter p0

    .line 2
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized createDocumentFragment()Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v0

    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/DTMException;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 2

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    ushr-int/lit8 v1, p1, 0x10

    aget-object p1, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 73
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v6, v8, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_xsf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v9

    shl-int/lit8 v4, v9, 0x10

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 3
    instance-of v1, v0, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v1, :cond_0

    .line 4
    new-instance v11, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;

    move-object v3, v0

    check-cast v3, Ljavax/xml/transform/dom/DOMSource;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/dom/DOMSource;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;Z)V

    .line 5
    invoke-virtual {v8, v11, v9, v10}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 6
    monitor-exit p0

    return-object v11

    :cond_0
    const/4 v11, 0x1

    if-eqz v0, :cond_1

    .line 7
    :try_start_1
    instance-of v1, v0, Ljavax/xml/transform/sax/SAXSource;

    goto :goto_0

    :cond_1
    move v1, v11

    :goto_0
    if-eqz v0, :cond_2

    .line 8
    instance-of v2, v0, Ljavax/xml/transform/stream/StreamSource;

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/DTMException;

    const-string v2, "ER_NOT_SUPPORTED"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :cond_4
    :goto_2
    const/4 v12, 0x0

    if-nez v0, :cond_5

    move-object v13, v12

    move-object v14, v13

    goto :goto_4

    .line 10
    :cond_5
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getXMLReader(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLReader;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 11
    :try_start_3
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_6

    .line 13
    :try_start_4
    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 14
    :catch_0
    :try_start_5
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can not absolutize URL: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    :goto_3
    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    move-object v13, v1

    move-object v14, v2

    :goto_4
    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    if-nez p4, :cond_7

    if-nez p5, :cond_7

    .line 16
    :try_start_6
    new-instance v15, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;Z)V

    goto :goto_5

    .line 17
    :cond_7
    new-instance v15, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;Z)V

    .line 18
    :goto_5
    invoke-virtual {v8, v15, v9, v10}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;II)V

    if-eqz v13, :cond_8

    .line 19
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sun.org.apache.xerces.internal.parsers.SAXParser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_8

    move v10, v11

    :cond_8
    if-eqz v10, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v11, p4

    .line 20
    :goto_6
    :try_start_7
    iget-boolean v0, v8, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_incremental:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_11

    if-eqz v11, :cond_11

    if-eqz v10, :cond_a

    :try_start_8
    const-string v0, "com.sun.org.apache.xml.internal.dtm.ref.IncrementalSAXSource_Xerces"

    .line 21
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 22
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    move-object v0, v12

    :goto_7
    if-nez v0, :cond_c

    if-nez v13, :cond_b

    .line 23
    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    goto :goto_8

    .line 24
    :cond_b
    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    .line 25
    invoke-virtual {v0, v13}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 26
    :cond_c
    :goto_8
    invoke-virtual {v15, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->setIncrementalSAXSource(Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v14, :cond_f

    if-eqz v13, :cond_e

    .line 27
    :try_start_a
    iget-boolean v0, v8, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_incremental:Z

    if-eqz v0, :cond_d

    if-nez v11, :cond_e

    .line 28
    :cond_d
    iget-object v0, v8, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v13, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 29
    iget-object v0, v8, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v13, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 30
    iget-object v0, v8, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v13, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    .line 31
    invoke-interface {v13, v0, v12}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 32
    :catch_2
    :cond_e
    :try_start_c
    invoke-virtual {v8, v13}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 33
    monitor-exit p0

    return-object v15

    .line 34
    :cond_f
    :try_start_d
    invoke-interface {v13}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v1

    if-nez v1, :cond_10

    .line 35
    invoke-interface {v13, v15}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 36
    :cond_10
    invoke-interface {v13, v15}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 37
    :try_start_e
    invoke-interface {v0, v14}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;->startParse(Lorg/xml/sax/InputSource;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 38
    :try_start_f
    invoke-virtual {v15}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 39
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 40
    invoke-virtual {v15}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 41
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_11
    if-nez v13, :cond_14

    if-eqz v13, :cond_13

    if-eqz v0, :cond_12

    if-nez v11, :cond_13

    .line 42
    :cond_12
    :try_start_10
    iget-object v0, v8, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v13, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 43
    iget-object v0, v8, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v13, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 44
    iget-object v0, v8, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v13, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    .line 45
    invoke-interface {v13, v0, v12}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 46
    :catch_5
    :cond_13
    :try_start_12
    invoke-virtual {v8, v13}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 47
    monitor-exit p0

    return-object v15

    .line 48
    :cond_14
    :try_start_13
    invoke-interface {v13, v15}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 49
    invoke-interface {v13, v15}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 50
    invoke-interface {v13}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    if-nez v0, :cond_15

    .line 51
    invoke-interface {v13, v15}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_15
    :try_start_14
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    .line 52
    invoke-interface {v13, v0, v15}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 53
    :catch_6
    :try_start_15
    invoke-interface {v13, v14}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :goto_9
    if-eqz v13, :cond_17

    .line 54
    :try_start_16
    iget-boolean v0, v8, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_incremental:Z

    if-eqz v0, :cond_16

    if-nez v11, :cond_17

    .line 55
    :cond_16
    iget-object v0, v8, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v13, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 56
    iget-object v0, v8, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v13, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 57
    iget-object v0, v8, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v13, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    .line 58
    invoke-interface {v13, v0, v12}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 59
    :catch_7
    :cond_17
    :try_start_18
    invoke-virtual {v8, v13}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 60
    monitor-exit p0

    return-object v15

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 61
    :try_start_19
    invoke-virtual {v15}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 62
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_9
    move-exception v0

    move-object v1, v0

    .line 63
    invoke-virtual {v15}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 64
    throw v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    move/from16 v11, p4

    :goto_a
    move-object v1, v13

    goto :goto_b

    :catchall_2
    move-exception v0

    move/from16 v11, p4

    goto :goto_b

    :catchall_3
    move-exception v0

    move/from16 v11, p4

    move-object v1, v12

    :goto_b
    if-eqz v1, :cond_19

    .line 65
    :try_start_1a
    iget-boolean v2, v8, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->m_incremental:Z

    if-eqz v2, :cond_18

    if-nez v11, :cond_19

    .line 66
    :cond_18
    iget-object v2, v8, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 67
    iget-object v2, v8, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 68
    iget-object v2, v8, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :try_start_1b
    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    .line 69
    invoke-interface {v1, v2, v12}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 70
    :catch_a
    :cond_19
    :try_start_1c
    invoke-virtual {v8, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 71
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    :try_start_0
    instance-of v1, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_2

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    instance-of v5, v4, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;

    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v4, v3, :cond_1

    monitor-exit p0

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_1
    move-object v2, p1

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_2

    :cond_4
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;

    instance-of v2, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I

    move-result v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v4, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_5
    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eq v3, p1, :cond_6

    monitor-exit p0

    return p1

    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "ER_COULD_NOT_RESOLVE_NODE"

    invoke-static {v1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_NODE_NON_NULL"

    invoke-static {v1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDTMIdentity(Lcom/sun/org/apache/xml/internal/dtm/DTM;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDTMIDs()Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    array-length v0, v0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aget v3, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    shl-int/lit8 p1, v2, 0x10

    monitor-exit p0

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getExpandedNameTable(Lcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    return-object p0
.end method

.method public declared-synchronized getFirstFreeDTMID()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    array-length v0, v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    aget-object v2, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getXMLReader(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLReader;
    .locals 2

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getInstance()Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/DTMException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(Lcom/sun/org/apache/xml/internal/dtm/DTM;Z)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    instance-of p2, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    :cond_0
    instance-of p2, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDTMIDs()Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-virtual {p2, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x10

    aput-object v0, v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getDTMIdentity(Lcom/sun/org/apache/xml/internal/dtm/DTM;)I

    move-result p2

    if-ltz p2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    ushr-int/lit8 p2, p2, 0x10

    aput-object v0, v2, p2

    :cond_2
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->documentRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_readerManager:Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
