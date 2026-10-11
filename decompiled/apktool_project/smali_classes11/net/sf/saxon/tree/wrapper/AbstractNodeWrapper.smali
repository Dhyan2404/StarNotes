.class public abstract Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeInfo;
.implements Lnet/sf/saxon/tree/wrapper/VirtualNode;


# instance fields
.field protected treeInfo:Lnet/sf/saxon/om/TreeInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;

    invoke-interface {p0}, Lnet/sf/saxon/tree/wrapper/VirtualNode;->getUnderlyingNode()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/tree/wrapper/VirtualNode;->getUnderlyingNode()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;
    .locals 3

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllNamespaces() not implemented for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_3

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    const-string v2, "base"

    invoke-interface {v0, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lnet/sf/saxon/om/NamespaceBinding;

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprint()I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getLineNumber()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    return-object p0
.end method

.method public final getRealNode()Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/tree/wrapper/VirtualNode;->getUnderlyingNode()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->treeInfo:Lnet/sf/saxon/om/TreeInfo;

    instance-of v0, p0, Lnet/sf/saxon/om/GenericTreeInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/om/GenericTreeInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getTreeInfo()Lnet/sf/saxon/om/TreeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->treeInfo:Lnet/sf/saxon/om/TreeInfo;

    return-object p0
.end method

.method public hasChildNodes()Z
    .locals 4

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public hasFingerprint()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/tree/wrapper/VirtualNode;->getUnderlyingNode()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public abstract iterateAttributes(Lnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/tree/iter/AxisIterator;
.end method

.method public iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 1

    .line 1
    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 6

    .line 2
    invoke-static {p2}, Lnet/sf/saxon/tree/util/Navigator;->nodeTestFromPredicate(Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p2

    .line 3
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    .line 4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown axis number "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :pswitch_0
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;

    invoke-direct {v0, p0, v5}, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    .line 6
    :pswitch_1
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_2
    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v1, :cond_0

    .line 7
    invoke-virtual {p0, p2, v3}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->iterateSiblings(Lnet/sf/saxon/pattern/NodeTest;Z)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_3
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;

    invoke-direct {v0, p0, v3}, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    .line 10
    :pswitch_4
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_5
    if-eq v0, v5, :cond_1

    .line 11
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/NamespaceNode;->makeIterator(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_6
    if-eq v0, v2, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v1, :cond_2

    .line 13
    invoke-virtual {p0, p2, v5}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->iterateSiblings(Lnet/sf/saxon/pattern/NodeTest;Z)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 14
    :cond_2
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_7
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    :pswitch_8
    if-eq v0, v5, :cond_4

    if-ne v0, v4, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 17
    :cond_4
    :goto_0
    invoke-virtual {p0, p2, v5}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->iterateDescendants(Lnet/sf/saxon/pattern/NodeTest;Z)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_9
    if-eq v0, v5, :cond_6

    if-ne v0, v4, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 19
    :cond_6
    :goto_1
    invoke-virtual {p0, p2, v3}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->iterateDescendants(Lnet/sf/saxon/pattern/NodeTest;Z)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_a
    if-eq v0, v5, :cond_8

    if-ne v0, v4, :cond_7

    goto :goto_2

    .line 20
    :cond_7
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 21
    :cond_8
    :goto_2
    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->iterateChildren(Lnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_b
    if-eq v0, v5, :cond_9

    .line 22
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 23
    :cond_9
    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/wrapper/AbstractNodeWrapper;->iterateAttributes(Lnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_c
    if-ne v0, v4, :cond_a

    .line 24
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 25
    :cond_a
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;

    invoke-direct {v0, p0, v5}, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    :pswitch_d
    if-ne v0, v4, :cond_b

    .line 26
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 27
    :cond_b
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;

    invoke-direct {v0, p0, v3}, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract iterateChildren(Lnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/tree/iter/AxisIterator;
.end method

.method public iterateDescendants(Lnet/sf/saxon/pattern/NodeTest;Z)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 2

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;ZZ)V

    instance-of p0, p1, Lnet/sf/saxon/pattern/AnyNodeTest;

    if-nez p0, :cond_0

    new-instance p0, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    invoke-direct {p0, v0, p1}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public abstract iterateSiblings(Lnet/sf/saxon/pattern/NodeTest;Z)Lnet/sf/saxon/tree/iter/AxisIterator;
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
