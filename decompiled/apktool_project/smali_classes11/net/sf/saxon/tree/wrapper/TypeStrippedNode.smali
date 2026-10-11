.class public Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;
.super Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/wrapper/WrappingFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    .line 4
    iput-object p2, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->parent:Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    return-void
.end method

.method public static makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;)Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;
    .locals 1

    .line 1
    new-instance v0, Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;

    invoke-direct {v0, p0, p2}, Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;)V

    .line 2
    iput-object p1, v0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    return-object v0
.end method


# virtual methods
.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public compareOrder(Lnet/sf/saxon/om/NodeInfo;)I
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    check-cast p1, Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;

    iget-object p1, p1, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    return p0
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    and-int/lit8 p2, p2, -0x5

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    check-cast p1, Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;

    iget-object p1, p1, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->parent:Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    check-cast v1, Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;->makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;)Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->parent:Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->parent:Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->getNodeKind()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->hashCode()I

    move-result p0

    return p0
.end method

.method public isNilled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 2

    new-instance v0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1, p1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lnet/sf/saxon/tree/wrapper/WrappingIterator;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/wrapper/WrappingFunction;Lnet/sf/saxon/tree/wrapper/VirtualNode;)V

    return-object v0
.end method

.method public makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/VirtualNode;)Lnet/sf/saxon/tree/wrapper/VirtualNode;
    .locals 1

    .line 3
    new-instance v0, Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;

    check-cast p2, Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;)V

    .line 4
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    iput-object p0, v0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    return-object v0
.end method
