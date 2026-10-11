.class public Lcom/sun/org/apache/xalan/internal/processor/ProcessorLRE;
.super Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x14ae5165319c871cL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method

.method private declaredXSLNS(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getDeclaredPrefixes()Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public endElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getIsLiteralResultAsStylesheet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;->endElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getStylesheetRoot(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getSchema()Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetProcessor()Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljavax/xml/transform/ErrorListener;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetProcessor()Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->isSecureProcessing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->setSecureProcessing(Z)V

    :cond_0
    return-object p0
.end method

.method public startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v0, p5

    const-string v6, "stylesheet"

    const-string v7, "http://www.w3.org/1999/XSL/Transform"

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v8

    if-nez v8, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v8

    const-string v12, "xsl:stylesheet"

    invoke-virtual {v2, v7, v6, v12}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v12

    invoke-virtual {v2, v8}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushProcessor(Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_9

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorLRE;->getStylesheetRoot(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v8
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_9

    :try_start_2
    new-instance v13, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    invoke-direct {v13}, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-interface {v14}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v15

    invoke-virtual {v13, v15}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    invoke-interface {v14}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v15

    invoke-virtual {v13, v15}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    invoke-interface {v14}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    invoke-interface {v14}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v8, v13}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    invoke-virtual {v2, v8}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushStylesheet(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    new-instance v14, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v14}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    new-instance v21, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct/range {v21 .. v21}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-interface/range {p5 .. p5}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v15

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v15, :cond_4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v16, v15

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v9, :cond_1

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v9, 0x0

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v23, v16

    move-object v15, v14

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    move-object/from16 v18, v11

    invoke-virtual/range {v15 .. v20}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move/from16 v23, v16

    const-string v5, "xmlns:"

    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "xmlns"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, v21

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    invoke-virtual/range {v15 .. v20}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_9

    :goto_1
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, p4

    move/from16 v15, v23

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-virtual {v12, v2, v6, v14, v8}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {v2, v8}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;-><init>()V

    invoke-virtual {v0, v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;->appendAndPush(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    new-instance v5, Lcom/sun/org/apache/xpath/internal/XPath;

    const-string v14, "/"

    const/16 v17, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetProcessor()Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v18

    move-object v13, v5

    move-object v15, v8

    move-object/from16 v16, v8

    invoke-direct/range {v13 .. v18}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setMatch(Lcom/sun/org/apache/xpath/internal/XPath;)V

    invoke-virtual {v8, v0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setTemplate(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v8

    move-object/from16 v5, v21

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getDeclaredPrefixes()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {v1, v8}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorLRE;->declaredXSLNS(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_6
    :goto_2
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "WG_OLD_XSLT_NS"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    move-object v5, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->getElemDef()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getClassObject()Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v22, 0x0

    :goto_4
    if-eqz v8, :cond_d

    instance-of v10, v8, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    if-eqz v10, :cond_8

    move-object v10, v8

    check-cast v10, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-virtual {v10, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v10

    move v11, v10

    goto :goto_5

    :cond_8
    instance-of v10, v8, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    if-eqz v10, :cond_b

    move-object v10, v8

    check-cast v10, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    invoke-virtual {v10, v3}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    if-eqz v3, :cond_a

    const-string v11, "http://xml.apache.org/xalan"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "http://xml.apache.org/xslt"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_9
    move v11, v10

    const/16 v22, 0x1

    goto :goto_5

    :cond_a
    move v11, v10

    const/4 v9, 0x1

    :cond_b
    :goto_5
    if-eqz v11, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v8
    :try_end_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_4

    :cond_d
    :goto_6
    const-string v8, "ER_FAILED_CREATING_ELEMLITRSLT"

    if-eqz v11, :cond_e

    :try_start_5
    new-instance v7, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;

    invoke-direct {v7}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;-><init>()V

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v9, p4

    const/4 v7, 0x0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v9, p4

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_e
    if-eqz v22, :cond_f

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    goto :goto_7

    :cond_f
    if-eqz v9, :cond_10

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    :try_end_5
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_7

    :cond_10
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_9

    :try_start_7
    check-cast v7, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    :try_end_7
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_9

    :goto_7
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v9

    invoke-virtual {v7, v9, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V

    instance-of v0, v7, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    if-eqz v0, :cond_11

    move-object v0, v7

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->setNamespace(Ljava/lang/String;)V

    move-object v0, v7

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->setLocalName(Ljava/lang/String;)V

    move-object v0, v7

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;
    :try_end_8
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_9

    move-object/from16 v9, p4

    :try_start_9
    invoke-virtual {v0, v9}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->setRawName(Ljava/lang/String;)V

    move-object v0, v7

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->setIsLiteralResultAsStylesheet(Z)V
    :try_end_9
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_8

    :cond_11
    move-object/from16 v9, p4

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v9, p4

    goto :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v9, p4

    :goto_8
    const/4 v6, 0x0

    goto :goto_a

    :goto_9
    const/4 v6, 0x0

    :try_start_a
    invoke-virtual {v2, v8, v6, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_b

    :catch_8
    move-exception v0

    move-object/from16 v9, p4

    const/4 v6, 0x0

    move-object v7, v6

    :goto_a
    invoke-virtual {v2, v8, v6, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_b
    invoke-virtual {v1, v2, v9, v5, v7}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    if-nez v11, :cond_12

    instance-of v0, v7, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    if-eqz v0, :cond_12

    move-object v0, v7

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v7, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;

    invoke-direct {v7}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    invoke-virtual {v7, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->setNamespace(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->setLocalName(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->setRawName(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v9, v5, v7}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_12
    invoke-virtual {v1, v2, v7}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;->appendAndPush(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    :try_end_a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_a} :catch_9

    return-void

    :catch_9
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
