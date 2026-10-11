.class public Lcom/sun/org/apache/xalan/internal/lib/ExsltDynamic;
.super Lcom/sun/org/apache/xalan/internal/lib/ExsltBase;
.source "SourceFile"


# static fields
.field public static final EXSL_URI:Ljava/lang/String; = "http://exslt.org/common"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/ExsltBase;-><init>()V

    return-void
.end method

.method public static closure(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Lorg/w3c/dom/NodeList;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->setShouldCacheNodes(Z)V

    :goto_0
    new-instance v1, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    new-instance v2, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-direct {v2, p1, p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lorg/w3c/dom/NodeList;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushContextNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->item(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    :try_start_0
    new-instance v6, Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v8

    invoke-direct {v6, p2, v7, v8, v3}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v7

    invoke-virtual {v6, p0, v5, v7}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v5

    instance-of v6, v5, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-eqz v6, :cond_3

    check-cast v5, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v5}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v6, v3

    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sun/org/apache/xpath/internal/NodeSet;->contains(Lorg/w3c/dom/Node;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v1, v7}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNode(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    new-instance p1, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    new-instance p0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    :goto_3
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-ge v3, p1, :cond_6

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->contains(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-gtz p1, :cond_7

    return-object v0

    :cond_7
    move-object p1, v1

    goto/16 :goto_0

    :cond_8
    :goto_4
    new-instance p0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    return-object p0

    :cond_9
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    const-string p2, "ER_INVALID_CONTEXT_PASSED"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static evaluate(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    move-object v1, p0

    check-cast v1, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;I)V

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object p1

    invoke-virtual {v1, v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    return-object p0

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    const-string v0, "ER_INVALID_CONTEXT_PASSED"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static map(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Lorg/w3c/dom/NodeList;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-direct {v0, p1, p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lorg/w3c/dom/NodeList;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushContextNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    new-instance v1, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->setShouldCacheNodes(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->item(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    :try_start_0
    new-instance v7, Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v9

    invoke-direct {v7, p2, v8, v9, v3}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v8

    invoke-virtual {v7, p0, v6, v8}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v6

    instance-of v7, v6, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-eqz v7, :cond_2

    check-cast v6, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v6}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v7, v3

    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sun/org/apache/xpath/internal/NodeSet;->contains(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v1, v8}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    :cond_3
    instance-of v7, v6, Lcom/sun/org/apache/xpath/internal/objects/XNumber;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "http://exslt.org/common"

    if-eqz v7, :cond_4

    :try_start_1
    const-string v7, "exsl:number"

    invoke-interface {v4, v8, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    goto :goto_2

    :cond_4
    instance-of v7, v6, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    if-eqz v7, :cond_5

    const-string v7, "exsl:boolean"

    invoke-interface {v4, v8, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    goto :goto_2

    :cond_5
    const-string v7, "exsl:string"

    invoke-interface {v4, v8, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    :goto_2
    invoke-virtual {v6}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v7, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v1, v7}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNode(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    new-instance p0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    return-object v1

    :cond_8
    :goto_3
    new-instance p0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    return-object p0

    :cond_9
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    const-string p2, "ER_INVALID_CONTEXT_PASSED"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static max(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Lorg/w3c/dom/NodeList;Ljava/lang/String;)D
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-direct {v2, p1, p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lorg/w3c/dom/NodeList;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushContextNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    const/4 p1, 0x0

    const-wide v3, -0x10000000000001L

    move v5, p1

    :goto_0
    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->item(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    :try_start_0
    new-instance v7, Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v9

    invoke-direct {v7, p2, v8, v9, p1}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v8

    invoke-virtual {v7, p0, v6, v8}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v6
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    cmpl-double v8, v6, v3

    if-lez v8, :cond_1

    move-wide v3, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    return-wide v0

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    return-wide v3

    :cond_3
    :goto_1
    return-wide v0

    :cond_4
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    const-string p2, "ER_INVALID_CONTEXT_PASSED"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static min(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Lorg/w3c/dom/NodeList;Ljava/lang/String;)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-direct {v2, p1, p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lorg/w3c/dom/NodeList;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushContextNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    const/4 v3, 0x0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v6, v3

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->item(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    :try_start_0
    new-instance v8, Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v10

    invoke-direct {v8, p2, v9, v10, v3}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v9

    invoke-virtual {v8, p0, v7, v9}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v7
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    cmpg-double v9, v7, v4

    if-gez v9, :cond_1

    move-wide v4, v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    return-wide v0

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    return-wide v4

    :cond_3
    :goto_1
    return-wide v0

    :cond_4
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    const-string p2, "ER_INVALID_CONTEXT_PASSED"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static sum(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Lorg/w3c/dom/NodeList;Ljava/lang/String;)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-direct {v2, p1, p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lorg/w3c/dom/NodeList;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushContextNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v6, v3

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->item(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    :try_start_0
    new-instance v8, Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v10

    invoke-direct {v8, p2, v9, v10, v3}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v9

    invoke-virtual {v8, p0, v7, v9}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v7
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popContextNodeList()V

    return-wide v4

    :cond_2
    :goto_1
    return-wide v0

    :cond_3
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    const-string p2, "ER_INVALID_CONTEXT_PASSED"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
