.class public Lcom/sun/org/apache/xalan/internal/lib/PipeDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pipeDocument(Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/transform/TransformerConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v3

    const-string v4, "source"

    invoke-virtual {v0, v4, v2, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getBaseURLOfSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v0, v5, v3, v4}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->hasChildNodes()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    new-instance v8, Ljava/util/Vector;

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v10, v11, :cond_2

    invoke-interface {v7, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    move-object v12, v11

    check-cast v12, Lorg/w3c/dom/Element;

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v12

    const-string v14, "stylesheet"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    instance-of v12, v11, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    if-eqz v12, :cond_1

    move-object v12, v11

    check-cast v12, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const-string v14, "href"

    invoke-virtual {v12, v14}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getLiteralResultAttribute(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-result-object v12

    invoke-virtual {v12, v4, v5, v0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v14, v12}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v12

    invoke-interface {v12}, Ljavax/xml/transform/sax/TransformerHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v14

    invoke-virtual {v8, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v12, v15, :cond_1

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v13, :cond_0

    move-object v9, v15

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    const-string v13, "param"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    instance-of v9, v15, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    if-eqz v9, :cond_0

    check-cast v15, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const-string v9, "name"

    invoke-virtual {v15, v9}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getLiteralResultAttribute(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-result-object v9

    invoke-virtual {v9, v4, v5, v0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "value"

    invoke-virtual {v15, v13}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getLiteralResultAttribute(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-result-object v13

    invoke-virtual {v13, v4, v5, v0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v9, v13}, Ljavax/xml/transform/Transformer;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v9, p0

    invoke-virtual {v9, v8, v2, v3}, Lcom/sun/org/apache/xalan/internal/lib/PipeDocument;->usePipe(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public usePipe(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/transform/TransformerConfigurationException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/sax/TransformerHandler;

    invoke-interface {p0, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const-string v1, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {p0, v1, v0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/sax/TransformerHandler;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/transform/sax/TransformerHandler;

    new-instance v3, Ljavax/xml/transform/sax/SAXResult;

    invoke-direct {v3, v2}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v1, v3}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/xml/transform/sax/TransformerHandler;

    invoke-interface {p1}, Ljavax/xml/transform/sax/TransformerHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/Transformer;->getOutputProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    new-instance p3, Ljavax/xml/transform/sax/SAXResult;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-direct {p3, v0}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1, p3}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V

    invoke-interface {p0, p2}, Lorg/xml/sax/XMLReader;->parse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p0
.end method
