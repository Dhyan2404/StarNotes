.class public Lnet/sf/saxon/s9api/XdmNode;
.super Lnet/sf/saxon/s9api/XdmItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmItem;-><init>(Lnet/sf/saxon/om/Item;)V

    return-void
.end method


# virtual methods
.method public asSource()Ljavax/xml/transform/Source;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p0

    return-object p0
.end method

.method public attribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public axisIterator(Lnet/sf/saxon/s9api/Axis;)Lnet/sf/saxon/s9api/XdmSequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/Axis;",
            ")",
            "Lnet/sf/saxon/s9api/XdmSequenceIterator<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Axis;->getAxisNumber()I

    move-result p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;->ofNodes(Lnet/sf/saxon/tree/iter/AxisIterator;)Lnet/sf/saxon/s9api/XdmSequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public axisIterator(Lnet/sf/saxon/s9api/Axis;Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/XdmSequenceIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/Axis;",
            "Lnet/sf/saxon/s9api/QName;",
            ")",
            "Lnet/sf/saxon/s9api/XdmSequenceIterator<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Lnet/sf/saxon/s9api/XdmNode$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    .line 5
    new-instance v0, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    .line 7
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Axis;->getAxisNumber()I

    move-result p1

    invoke-interface {p0, p1, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;->ofNodes(Lnet/sf/saxon/tree/iter/AxisIterator;)Lnet/sf/saxon/s9api/XdmSequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public children()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lnet/sf/saxon/s9api/streams/Steps;->child()Lnet/sf/saxon/s9api/streams/Step;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XdmValue;->select(Lnet/sf/saxon/s9api/streams/Step;)Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/streams/XdmStream;->asListOfNodes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public children(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lnet/sf/saxon/s9api/streams/Steps;->child(Ljava/lang/String;)Lnet/sf/saxon/s9api/streams/Step;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XdmValue;->select(Lnet/sf/saxon/s9api/streams/Step;)Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/streams/XdmStream;->asListOfNodes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public children(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1, p2}, Lnet/sf/saxon/s9api/streams/Steps;->child(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/streams/Step;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XdmValue;->select(Lnet/sf/saxon/s9api/streams/Step;)Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/streams/XdmStream;->asListOfNodes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public children(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lnet/sf/saxon/s9api/streams/Steps;->child(Ljava/util/function/Predicate;)Lnet/sf/saxon/s9api/streams/Step;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XdmValue;->select(Lnet/sf/saxon/s9api/streams/Step;)Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/streams/XdmStream;->asListOfNodes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/s9api/XdmNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/s9api/XdmNode;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAttributeValue(Lnet/sf/saxon/s9api/QName;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBaseURI()Ljava/net/URI;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "baseURI"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getColumnNumber()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getDocumentURI()Ljava/net/URI;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "documentURI"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getExternalNode()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    invoke-interface {p0}, Lnet/sf/saxon/tree/wrapper/VirtualNode;->getRealNode()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getLineNumber()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getNodeKind()Lnet/sf/saxon/s9api/XdmNodeKind;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->NAMESPACE:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "nodeKind"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->DOCUMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->COMMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0

    :cond_3
    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0

    :cond_4
    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->TEXT:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0

    :cond_5
    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->ATTRIBUTE:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0

    :cond_6
    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->ELEMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0
.end method

.method public getNodeName()Lnet/sf/saxon/s9api/QName;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    :cond_1
    new-instance v0, Lnet/sf/saxon/s9api/QName;

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    invoke-direct {v1, v2, v2, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    return-object v0

    :cond_2
    new-instance v0, Lnet/sf/saxon/s9api/QName;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getParent()Lnet/sf/saxon/s9api/XdmNode;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmNode;

    :goto_0
    return-object p0
.end method

.method public getProcessor()Lnet/sf/saxon/s9api/Processor;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getProcessor()Lnet/sf/saxon/Configuration$ApiProvider;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/s9api/Processor;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/s9api/Processor;

    return-object v0

    :cond_0
    new-instance v0, Lnet/sf/saxon/s9api/Processor;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/Processor;-><init>(Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public getRoot()Lnet/sf/saxon/s9api/XdmNode;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmNode;

    :goto_0
    return-object p0
.end method

.method public getTypedValue()Lnet/sf/saxon/s9api/XdmValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/AtomicSequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingValue()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingValue()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUnderlyingValue()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingValue()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingValue()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 3
    invoke-super {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->hashCode()I

    move-result p0

    return p0
.end method

.method public stream()Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x22

    const-string v3, "=\""

    const-string v4, "&quot;"

    const-string v5, "\""

    const-string v6, "&lt;"

    const-string v7, "<"

    const-string v8, "&amp;"

    const-string v9, "&"

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "xmlns"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmlns:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "]]>"

    const-string v1, "]]&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :try_start_0
    invoke-static {p0}, Lnet/sf/saxon/query/QueryResult;->serialize(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
