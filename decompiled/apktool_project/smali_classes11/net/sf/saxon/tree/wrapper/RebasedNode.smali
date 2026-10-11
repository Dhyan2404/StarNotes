.class public Lnet/sf/saxon/tree/wrapper/RebasedNode;
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

.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/RebasedNode;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    .line 4
    iput-object p2, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->parent:Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    return-void
.end method

.method public static makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/RebasedDocument;Lnet/sf/saxon/tree/wrapper/RebasedNode;)Lnet/sf/saxon/tree/wrapper/RebasedNode;
    .locals 1

    .line 2
    new-instance v0, Lnet/sf/saxon/tree/wrapper/RebasedNode;

    invoke-direct {v0, p0, p2}, Lnet/sf/saxon/tree/wrapper/RebasedNode;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/RebasedNode;)V

    .line 3
    iput-object p1, v0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    check-cast p0, Lnet/sf/saxon/tree/wrapper/RebasedDocument;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/RebasedDocument;->getBaseUriMapper()Ljava/util/function/Function;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    check-cast p0, Lnet/sf/saxon/tree/wrapper/RebasedDocument;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/RebasedDocument;->getSystemIdMapper()Ljava/util/function/Function;

    move-result-object p0

    return-object p0
.end method

.method public compareOrder(Lnet/sf/saxon/om/NodeInfo;)I
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/RebasedNode;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    check-cast p1, Lnet/sf/saxon/tree/wrapper/RebasedNode;

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

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/RebasedNode;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    check-cast p1, Lnet/sf/saxon/tree/wrapper/RebasedNode;

    iget-object p1, p1, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

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

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/RebasedNode;->a()Ljava/util/function/Function;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
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

    check-cast v1, Lnet/sf/saxon/tree/wrapper/RebasedDocument;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/tree/wrapper/RebasedNode;->makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/RebasedDocument;Lnet/sf/saxon/tree/wrapper/RebasedNode;)Lnet/sf/saxon/tree/wrapper/RebasedNode;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->parent:Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->parent:Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/RebasedNode;->b()Ljava/util/function/Function;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->hashCode()I

    move-result p0

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

.method public makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/VirtualNode;)Lnet/sf/saxon/tree/wrapper/RebasedNode;
    .locals 1

    .line 4
    new-instance v0, Lnet/sf/saxon/tree/wrapper/RebasedNode;

    check-cast p2, Lnet/sf/saxon/tree/wrapper/RebasedNode;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/tree/wrapper/RebasedNode;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/RebasedNode;)V

    .line 5
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    iput-object p0, v0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    return-object v0
.end method

.method public bridge synthetic makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/VirtualNode;)Lnet/sf/saxon/tree/wrapper/VirtualNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/tree/wrapper/RebasedNode;->makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/VirtualNode;)Lnet/sf/saxon/tree/wrapper/RebasedNode;

    move-result-object p0

    return-object p0
.end method
