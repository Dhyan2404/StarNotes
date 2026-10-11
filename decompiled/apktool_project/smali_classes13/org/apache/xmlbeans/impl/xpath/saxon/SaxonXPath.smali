.class public Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xpath/Path;


# instance fields
.field private contextVar:Ljava/lang/String;

.field private defaultNS:Ljava/lang/String;

.field private final namespaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;->namespaceMap:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;->path:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;->contextVar:Ljava/lang/String;

    const-string p1, "$xmlbeans!default_uri"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;->defaultNS:Ljava/lang/String;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getUnderlyingNode(Lnet/sf/saxon/tree/wrapper/VirtualNode;)Lorg/w3c/dom/Node;
    .locals 1

    :goto_0
    instance-of v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    invoke-interface {p0}, Lnet/sf/saxon/tree/wrapper/VirtualNode;->getUnderlyingNode()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method


# virtual methods
.method public execute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xpath/XPathEngine;
    .locals 0

    new-instance p2, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;-><init>(Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-object p2
.end method

.method public selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .locals 4

    :try_start_0
    check-cast p1, Lorg/w3c/dom/Node;

    new-instance v0, Lnet/sf/saxon/Configuration;

    invoke-direct {v0}, Lnet/sf/saxon/Configuration;-><init>()V

    new-instance v1, Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-direct {v1, v0}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;->defaultNS:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lnet/sf/saxon/sxpath/IndependentContext;->setDefaultElementNamespace(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;->namespaceMap:Ljava/util/Map;

    new-instance v3, Lcom/sunia/HTREnginev2/c1m;

    invoke-direct {v3, v1}, Lcom/sunia/HTREnginev2/c1m;-><init>(Lnet/sf/saxon/sxpath/IndependentContext;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/Configuration;->unravel(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    new-instance v2, Lnet/sf/saxon/sxpath/XPathEvaluator;

    invoke-direct {v2, v0}, Lnet/sf/saxon/sxpath/XPathEvaluator;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/sxpath/XPathEvaluator;->setStaticContext(Lnet/sf/saxon/sxpath/XPathStaticContext;)V

    const-string v0, ""

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;->contextVar:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lnet/sf/saxon/sxpath/IndependentContext;->declareVariable(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/sxpath/XPathVariable;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;->path:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lnet/sf/saxon/sxpath/XPathEvaluator;->createExpression(Ljava/lang/String;)Lnet/sf/saxon/sxpath/XPathExpression;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/sxpath/XPathExpression;->createDynamicContext(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/sxpath/XPathDynamicContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setContextItem(Lnet/sf/saxon/om/Item;)V

    invoke-virtual {v1, v0, p1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setVariable(Lnet/sf/saxon/sxpath/XPathVariable;Lnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/sxpath/XPathExpression;->evaluate(Lnet/sf/saxon/sxpath/XPathDynamicContext;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Item;

    instance-of v1, v0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;->getUnderlyingNode(Lnet/sf/saxon/tree/wrapper/VirtualNode;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lnet/sf/saxon/value/GDateValue;

    if-eqz v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->convertToJava(Lnet/sf/saxon/om/Item;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public selectPath(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
