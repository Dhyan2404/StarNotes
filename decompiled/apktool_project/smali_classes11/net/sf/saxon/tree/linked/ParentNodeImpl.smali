.class public abstract Lnet/sf/saxon/tree/linked/ParentNodeImpl;
.super Lnet/sf/saxon/tree/linked/NodeImpl;
.source "SourceFile"


# instance fields
.field public h:Ljava/lang/Object;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized addChild(Lnet/sf/saxon/tree/linked/NodeImpl;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    const/16 v1, 0xa

    if-nez v0, :cond_0

    new-array v0, v1, [Lnet/sf/saxon/tree/linked/NodeImpl;

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lnet/sf/saxon/tree/linked/NodeImpl;

    if-eqz v2, :cond_1

    new-array v1, v1, [Lnet/sf/saxon/tree/linked/NodeImpl;

    check-cast v0, Lnet/sf/saxon/tree/linked/NodeImpl;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    move-object v0, v1

    goto :goto_0

    :cond_1
    check-cast v0, [Lnet/sf/saxon/tree/linked/NodeImpl;

    :goto_0
    array-length v1, v0

    if-lt p2, v1, :cond_2

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/tree/linked/NodeImpl;

    :cond_2
    aput-object p1, v0, p2

    invoke-virtual {p1, p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->setRawParent(Lnet/sf/saxon/tree/linked/ParentNodeImpl;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/tree/linked/NodeImpl;->setSiblingPosition(I)V

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b([Lnet/sf/saxon/om/NodeInfo;Z)[Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 4

    array-length v0, p1

    new-array v0, v0, [Lnet/sf/saxon/tree/linked/NodeImpl;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->d(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v2, p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->setRawParent(Lnet/sf/saxon/tree/linked/ParentNodeImpl;)V

    instance-of v3, v2, Lnet/sf/saxon/tree/linked/ElementImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lnet/sf/saxon/tree/linked/ElementImpl;

    invoke-virtual {v2, p2}, Lnet/sf/saxon/tree/linked/ElementImpl;->fixupInsertedNamespaces(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final c([Lnet/sf/saxon/tree/linked/NodeImpl;)[Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 10

    array-length p0, p1

    new-array v0, p0, [Lnet/sf/saxon/tree/linked/NodeImpl;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v6, p1, v3

    instance-of v7, v6, Lnet/sf/saxon/tree/linked/TextImpl;

    if-eqz v7, :cond_1

    if-eqz v5, :cond_0

    add-int/lit8 v7, v4, -0x1

    aget-object v7, v0, v7

    check-cast v7, Lnet/sf/saxon/tree/linked/TextImpl;

    invoke-virtual {v7}, Lnet/sf/saxon/tree/linked/TextImpl;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    invoke-interface {v6}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v6

    invoke-virtual {v8, v6}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v6

    invoke-virtual {v7, v6}, Lnet/sf/saxon/tree/linked/TextImpl;->replaceStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    goto :goto_1

    :cond_0
    invoke-interface {v6}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6, v4}, Lnet/sf/saxon/tree/linked/NodeImpl;->setSiblingPosition(I)V

    add-int/lit8 v5, v4, 0x1

    aput-object v6, v0, v4

    const/4 v4, 0x1

    move v9, v5

    move v5, v4

    move v4, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v4}, Lnet/sf/saxon/tree/linked/NodeImpl;->setSiblingPosition(I)V

    add-int/lit8 v5, v4, 0x1

    aput-object v6, v0, v4

    move v4, v5

    move v5, v2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-ne v4, p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/tree/linked/NodeImpl;

    return-object p0
.end method

.method public declared-synchronized compact(I)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    instance-of v0, p1, [Lnet/sf/saxon/tree/linked/NodeImpl;

    if-eqz v0, :cond_2

    check-cast p1, [Lnet/sf/saxon/tree/linked/NodeImpl;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    check-cast v0, [Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final d(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/tree/linked/NodeImpl;

    if-nez v0, :cond_4

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_2

    const/4 p0, 0x7

    if-eq v0, p0, :cond_1

    const/16 p0, 0x8

    if-ne v0, p0, :cond_0

    new-instance p0, Lnet/sf/saxon/tree/linked/CommentImpl;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/linked/CommentImpl;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot insert a node unless it is an element, comment, text node, or processing instruction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/tree/linked/ProcInstImpl;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lnet/sf/saxon/tree/linked/ProcInstImpl;-><init>(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/tree/linked/TextImpl;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/linked/TextImpl;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0

    :cond_3
    :try_start_0
    new-instance v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->open()V

    sget-object p0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1, p0}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->close()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/tree/linked/NodeImpl;

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to convert inserted element node to an instance of net.sf.saxon.om.tree.ElementImpl"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    check-cast p1, Lnet/sf/saxon/tree/linked/NodeImpl;

    return-object p1
.end method

.method public final getFirstChild()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 1

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lnet/sf/saxon/tree/linked/NodeImpl;

    return-object p0

    .line 5
    :cond_1
    check-cast p0, [Lnet/sf/saxon/tree/linked/NodeImpl;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public bridge synthetic getFirstChild()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getFirstChild()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLastChild()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getLastChild()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getLastChild()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 1

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lnet/sf/saxon/tree/linked/NodeImpl;

    return-object p0

    .line 5
    :cond_1
    check-cast p0, [Lnet/sf/saxon/tree/linked/NodeImpl;

    .line 6
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getNthChild(I)Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Lnet/sf/saxon/tree/linked/NodeImpl;

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/tree/linked/NodeImpl;

    :cond_1
    return-object v0

    :cond_2
    check-cast p0, [Lnet/sf/saxon/tree/linked/NodeImpl;

    if-ltz p1, :cond_4

    array-length v1, p0

    if-lt p1, v1, :cond_3

    goto :goto_0

    :cond_3
    aget-object p0, p0, p1

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public final getNumberOfChildren()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    check-cast p0, [Lnet/sf/saxon/om/NodeInfo;

    check-cast p0, [Lnet/sf/saxon/om/NodeInfo;

    array-length p0, p0

    return p0
.end method

.method public final getRawSequenceNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->i:I

    return p0
.end method

.method public final getSequenceNumber()J
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getRawSequenceNumber()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getRawSequenceNumber()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    :goto_0
    return-wide v0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getFirstChild()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    instance-of v2, v0, Lnet/sf/saxon/tree/linked/TextImpl;

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_1
    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextInDocument(Lnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public final hasChildNodes()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public insertChildren([Lnet/sf/saxon/om/NodeInfo;ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->insertChildrenAt([Lnet/sf/saxon/om/NodeInfo;IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getNumberOfChildren()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->insertChildrenAt([Lnet/sf/saxon/om/NodeInfo;IZ)V

    :goto_0
    return-void
.end method

.method public declared-synchronized insertChildrenAt([Lnet/sf/saxon/om/NodeInfo;IZ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->b([Lnet/sf/saxon/om/NodeInfo;Z)[Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iget-object p3, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_2

    array-length p2, p1

    if-ne p2, v0, :cond_1

    aget-object p1, p1, v1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/tree/linked/NodeImpl;->setSiblingPosition(I)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->c([Lnet/sf/saxon/tree/linked/NodeImpl;)[Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_2
    instance-of v2, p3, Lnet/sf/saxon/tree/linked/NodeImpl;

    if-eqz v2, :cond_7

    if-nez p2, :cond_3

    array-length v2, p1

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    instance-of v3, p3, Lnet/sf/saxon/tree/linked/TextImpl;

    if-eqz v3, :cond_5

    aget-object v3, p1, v2

    instance-of v4, v3, Lnet/sf/saxon/tree/linked/TextImpl;

    if-eqz v4, :cond_5

    if-nez p2, :cond_4

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    iget-object p3, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    check-cast p3, Lnet/sf/saxon/tree/linked/TextImpl;

    invoke-virtual {p3}, Lnet/sf/saxon/tree/linked/TextImpl;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-interface {v3, p2}, Lnet/sf/saxon/om/MutableNodeInfo;->replaceStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    goto :goto_1

    :cond_4
    check-cast p3, Lnet/sf/saxon/tree/linked/TextImpl;

    invoke-virtual {p3}, Lnet/sf/saxon/tree/linked/TextImpl;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    aget-object p3, p1, v2

    invoke-interface {p3}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-interface {v3, p2}, Lnet/sf/saxon/om/MutableNodeInfo;->replaceStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    :goto_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->c([Lnet/sf/saxon/tree/linked/NodeImpl;)[Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    array-length v2, p1

    add-int/2addr v2, v0

    new-array v2, v2, [Lnet/sf/saxon/tree/linked/NodeImpl;

    if-nez p2, :cond_6

    array-length p2, p1

    invoke-static {p1, v1, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    iget-object p2, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    check-cast p2, Lnet/sf/saxon/tree/linked/NodeImpl;

    aput-object p2, v2, p1

    goto :goto_2

    :cond_6
    check-cast p3, Lnet/sf/saxon/tree/linked/NodeImpl;

    aput-object p3, v2, v1

    array-length p2, p1

    invoke-static {p1, v1, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    invoke-virtual {p0, v2}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->c([Lnet/sf/saxon/tree/linked/NodeImpl;)[Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    goto :goto_3

    :cond_7
    check-cast p3, [Lnet/sf/saxon/tree/linked/NodeImpl;

    array-length v0, p3

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v0, v0, [Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-static {p3, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    invoke-static {p1, v1, v0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p1, p2

    array-length v1, p3

    sub-int/2addr v1, p2

    invoke-static {p3, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->c([Lnet/sf/saxon/tree/linked/NodeImpl;)[Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final iterateChildren(Lnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, v0, Lnet/sf/saxon/tree/linked/NodeImpl;

    if-eqz v1, :cond_3

    check-cast v0, Lnet/sf/saxon/tree/linked/NodeImpl;

    if-eqz p1, :cond_2

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {v0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz p1, :cond_5

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v0

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/sunia/HTREnginev2/itd;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/itd;-><init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object v0

    :cond_5
    :goto_1
    new-instance p1, Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    check-cast p0, [Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-direct {p1, p0}, Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;-><init>([Lnet/sf/saxon/om/NodeInfo;)V

    return-object p1
.end method

.method public removeChild(Lnet/sf/saxon/tree/linked/NodeImpl;)V
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    return-void

    :cond_1
    check-cast v0, [Lnet/sf/saxon/tree/linked/NodeImpl;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_6

    aget-object v3, v0, v2

    if-ne v3, p1, :cond_5

    array-length p1, v0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    rsub-int/lit8 p1, v2, 0x1

    aget-object p1, v0, p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    new-array p1, p1, [Lnet/sf/saxon/tree/linked/NodeImpl;

    if-lez v2, :cond_3

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_4

    add-int/lit8 v1, v2, 0x1

    array-length v3, v0

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->c([Lnet/sf/saxon/tree/linked/NodeImpl;)[Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public declared-synchronized replaceChildrenAt([Lnet/sf/saxon/om/NodeInfo;IZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->b([Lnet/sf/saxon/om/NodeInfo;Z)[Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p3

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    instance-of v1, v0, Lnet/sf/saxon/tree/linked/NodeImpl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    array-length p2, p3

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    array-length p2, p3

    if-ne p2, v2, :cond_2

    aget-object p1, p3, v3

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    array-length p2, p3

    new-array p2, p2, [Lnet/sf/saxon/tree/linked/NodeImpl;

    array-length p1, p1

    invoke-static {p3, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->c([Lnet/sf/saxon/tree/linked/NodeImpl;)[Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    check-cast v0, [Lnet/sf/saxon/tree/linked/NodeImpl;

    array-length p1, v0

    array-length v1, p3

    add-int/2addr p1, v1

    sub-int/2addr p1, v2

    new-array p1, p1, [Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-static {v0, v3, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p3

    invoke-static {p3, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, p2, 0x1

    array-length p3, p3

    add-int/2addr p3, p2

    array-length v3, v0

    sub-int/2addr v3, p2

    sub-int/2addr v3, v2

    invoke-static {v0, v1, p1, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->c([Lnet/sf/saxon/tree/linked/NodeImpl;)[Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setChildren(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->h:Ljava/lang/Object;

    return-void
.end method

.method public final setRawSequenceNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->i:I

    return-void
.end method
