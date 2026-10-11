.class public Lnet/sf/saxon/tree/wrapper/SnapshotNode;
.super Lnet/sf/saxon/tree/wrapper/VirtualCopy;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeInfo;


# instance fields
.field protected pivot:Lnet/sf/saxon/om/NodeInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V
    .locals 1

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    iput-object p2, p0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->pivot:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method

.method public static makeSnapshot(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/SnapshotNode;
    .locals 4

    new-instance v0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;

    invoke-direct {v0, p0, p0}, Lnet/sf/saxon/tree/wrapper/SnapshotNode;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    new-instance v1, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    invoke-direct {v1, p0}, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDocumentNumberAllocator()Lnet/sf/saxon/tree/util/DocumentNumberAllocator;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/DocumentNumberAllocator;->allocateDocumentNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/om/GenericTreeInfo;->setDocumentNumber(J)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;->setCopyAccumulators(Z)V

    iput-object v1, v0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->tree:Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/om/GenericTreeInfo;->setRootNode(Lnet/sf/saxon/om/NodeInfo;)V

    return-object v0
.end method


# virtual methods
.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getNodeKind()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->pivot:Lnet/sf/saxon/om/NodeInfo;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {v0, v1}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->pivot:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lnet/sf/saxon/tree/util/Navigator;->copy(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public final e()Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->pivot:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->pivot:Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/SnapshotNode;

    move-result-object v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/sf/saxon/om/NodeInfo;->isSameNodeInfo(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lnet/sf/saxon/om/NodeInfo;->isSameNodeInfo(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->parent:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/SnapshotNode;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->parent:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->parent:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getPublicId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    invoke-super {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->pivot:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {v0, v1}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->pivot:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public isId()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->isId()Z

    move-result p0

    return p0
.end method

.method public isIdref()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->isIdref()Z

    move-result p0

    return p0
.end method

.method public isIncludedInCopy(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->pivot:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {v0, p1}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->pivot:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p1, p0}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->isIncludedInCopy(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method public isNilled()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->isNilled()Z

    move-result p0

    return p0
.end method

.method public iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 9

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getNodeKind()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x7

    const/4 v8, 0x3

    if-eq v0, v1, :cond_6

    if-eq v0, v8, :cond_6

    if-eq v0, v7, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->pivot:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/NodeInfo;->isSameNodeInfo(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->pivot:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {v0, v1}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eq p1, v8, :cond_4

    if-eq p1, v5, :cond_1

    if-eq p1, v6, :cond_1

    if-eq p1, v4, :cond_0

    if-eq p1, v7, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;

    const/4 v1, 0x1

    if-ne p1, v6, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;ZZ)V

    instance-of p0, p2, Lnet/sf/saxon/pattern/AnyNodeTest;

    if-nez p0, :cond_3

    new-instance p0, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    invoke-direct {p0, v0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    move-object v0, p0

    :cond_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->e()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_6
    if-eq p1, v8, :cond_7

    if-eq p1, v5, :cond_7

    if-eq p1, v6, :cond_7

    if-eq p1, v4, :cond_7

    if-eq p1, v7, :cond_7

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_7

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/SnapshotNode;
    .locals 2

    .line 2
    new-instance v0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->pivot:Lnet/sf/saxon/om/NodeInfo;

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/tree/wrapper/SnapshotNode;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->tree:Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    iput-object p0, v0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->tree:Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    return-object v0
.end method

.method public bridge synthetic wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/VirtualCopy;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/SnapshotNode;

    move-result-object p0

    return-object p0
.end method
