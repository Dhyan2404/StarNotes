.class public Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mode:Lcom/sun/org/apache/xml/internal/utils/QName;

.field private sourceNode:I

.field private sourceTree:Lcom/sun/org/apache/xml/internal/dtm/DTM;

.field private stylesheetTree:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

.field private transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->stylesheetTree:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMode()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->mode:Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->sourceNode:I

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->sourceTree:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    return-void
.end method


# virtual methods
.method public getContextNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->sourceTree:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->sourceNode:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getMode()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->mode:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-object p0
.end method

.method public getSourceTree()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->sourceTree:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->sourceNode:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocumentRoot(I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->stylesheetTree:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    return-object p0
.end method

.method public getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    return-object p0
.end method

.method public outputToResultTree(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    instance-of v1, p2, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    check-cast p2, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    goto/16 :goto_2

    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object p2, v0

    goto/16 :goto_2

    :cond_1
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {v0, p2}, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;-><init>(Z)V

    goto :goto_0

    :cond_2
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_3

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    goto :goto_0

    :cond_3
    instance-of v1, p2, Lorg/w3c/dom/DocumentFragment;

    if-eqz v1, :cond_4

    check-cast p2, Lorg/w3c/dom/DocumentFragment;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p2

    new-instance v1, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;

    invoke-direct {v1, p2, v0}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;-><init>(ILcom/sun/org/apache/xpath/internal/XPathContext;)V

    :goto_1
    move-object p2, v1

    goto :goto_2

    :cond_4
    instance-of v1, p2, Lcom/sun/org/apache/xml/internal/dtm/DTM;

    if-eqz v1, :cond_5

    check-cast p2, Lcom/sun/org/apache/xml/internal/dtm/DTM;

    new-instance v1, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;

    invoke-direct {v1}, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;-><init>()V

    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result p2

    invoke-interface {v1, p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    new-instance p2, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-direct {p2, v1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    goto :goto_2

    :cond_5
    instance-of v1, p2, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v1, :cond_6

    check-cast p2, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;

    invoke-direct {v0, p2, v2}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)V

    new-instance p2, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-direct {p2, v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    goto :goto_2

    :cond_6
    instance-of v1, p2, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz v1, :cond_7

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    check-cast p2, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-direct {v0, p2}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    goto :goto_0

    :cond_7
    instance-of v1, p2, Lorg/w3c/dom/traversal/NodeIterator;

    if-eqz v1, :cond_8

    new-instance v1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    new-instance v3, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    check-cast p2, Lorg/w3c/dom/traversal/NodeIterator;

    invoke-direct {v3, p2, v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lorg/w3c/dom/traversal/NodeIterator;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    invoke-direct {v1, v3}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    goto :goto_1

    :cond_8
    instance-of v1, p2, Lorg/w3c/dom/Node;

    if-eqz v1, :cond_9

    new-instance v1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    check-cast p2, Lorg/w3c/dom/Node;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p2

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(ILcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    goto :goto_1

    :cond_9
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_2
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v3, 0x2

    if-eq v0, v3, :cond_12

    const/4 v3, 0x3

    if-eq v0, v3, :cond_12

    const/4 v3, 0x4

    if-eq v0, v3, :cond_b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    goto/16 :goto_5

    :cond_a
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/serialize/SerializerUtils;->outputResultTreeFragment(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result p2

    if-eq v2, p2, :cond_13

    invoke-interface {p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    move v3, p2

    :goto_3
    if-eq v2, v3, :cond_c

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v4

    invoke-static {v3, v4, v0, p1, v1}, Lcom/sun/org/apache/xalan/internal/transformer/ClonerToResultTree;->cloneToResultTree(IILcom/sun/org/apache/xml/internal/dtm/DTM;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Z)V

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstChild(I)I

    move-result v4

    :cond_d
    if-ne v2, v4, :cond_11

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v5
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-ne v1, v5, :cond_e

    :try_start_1
    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v6, v5}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    if-ne p2, v3, :cond_f

    goto :goto_4

    :cond_f
    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextSibling(I)I

    move-result v4

    if-ne v2, v4, :cond_d

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result v3

    if-ne p2, v3, :cond_d

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v4

    if-ne v1, v4, :cond_10

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v6, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    move v3, v2

    goto :goto_3

    :cond_11
    :goto_4
    move v3, v4

    goto :goto_3

    :cond_12
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_13
    :goto_5
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
