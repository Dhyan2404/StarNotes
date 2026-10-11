.class public Lnet/sf/saxon/tree/NamespaceNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeInfo;


# instance fields
.field public e:Lnet/sf/saxon/om/NodeInfo;

.field public f:Lnet/sf/saxon/om/NamespaceBinding;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NamespaceBinding;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    iput-object p2, p0, Lnet/sf/saxon/tree/NamespaceNode;->f:Lnet/sf/saxon/om/NamespaceBinding;

    iput p3, p0, Lnet/sf/saxon/tree/NamespaceNode;->g:I

    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/saxon/tree/NamespaceNode;->h:I

    return-void
.end method

.method public static makeIterator(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v4}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    new-instance v5, Lnet/sf/saxon/tree/NamespaceNode;

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v5, p0, v4, v3}, Lnet/sf/saxon/tree/NamespaceNode;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NamespaceBinding;I)V

    invoke-interface {p1, v5}, Lnet/sf/saxon/pattern/NodePredicate;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    new-instance v1, Lnet/sf/saxon/tree/NamespaceNode;

    sget-object v2, Lnet/sf/saxon/om/NamespaceBinding;->XML:Lnet/sf/saxon/om/NamespaceBinding;

    invoke-direct {v1, p0, v2, v3}, Lnet/sf/saxon/tree/NamespaceNode;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NamespaceBinding;I)V

    invoke-interface {p1, v1}, Lnet/sf/saxon/pattern/NodePredicate;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p0, Lnet/sf/saxon/tree/iter/NodeListIterator;

    invoke-direct {p0, v0}, Lnet/sf/saxon/tree/iter/NodeListIterator;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/NamespaceNode;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public compareOrder(Lnet/sf/saxon/om/NodeInfo;)I
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/tree/NamespaceNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/tree/NamespaceNode;

    iget-object v2, v1, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, v2}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->g:I

    iget p1, v1, Lnet/sf/saxon/tree/NamespaceNode;->g:I

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

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

    invoke-interface {p1, p0}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/tree/NamespaceNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    check-cast p1, Lnet/sf/saxon/tree/NamespaceNode;

    iget-object v1, p1, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->f:Lnet/sf/saxon/om/NamespaceBinding;

    iget-object p1, p1, Lnet/sf/saxon/tree/NamespaceNode;->f:Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamespaceBinding;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, p1}, Lnet/sf/saxon/om/NodeInfo;->generateId(Ljava/lang/StringBuilder;)V

    const-string v0, "n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->g:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/NamespaceNode;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprint()I
    .locals 3

    iget v0, p0, Lnet/sf/saxon/tree/NamespaceNode;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/tree/NamespaceNode;->f:Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/tree/NamespaceNode;->f:Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/tree/NamespaceNode;->h:I

    :cond_1
    iget p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->h:I

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->f:Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/NamespaceNode;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    return-object p0
.end method

.method public getNodeKind()I
    .locals 0

    const/16 p0, 0xd

    return p0
.end method

.method public getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->f:Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTreeInfo()Lnet/sf/saxon/om/TreeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->f:Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public hasChildNodes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasFingerprint()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hashCode()I

    move-result v0

    iget p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->g:I

    shl-int/lit8 p0, p0, 0xd

    xor-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic head()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/NamespaceNode;->head()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public head()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 1
    return-object p0
.end method

.method public isStreamed()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->isStreamed()Z

    move-result p0

    return p0
.end method

.method public iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 2

    invoke-static {p2}, Lnet/sf/saxon/tree/util/Navigator;->nodeTestFromPredicate(Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p2

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

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

    :pswitch_0
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v1, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {p1, v1, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    :pswitch_1
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    :pswitch_3
    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    :pswitch_5
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p2, p0}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/tree/iter/PrependAxisIterator;

    iget-object v1, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1, v0, p2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/tree/iter/PrependAxisIterator;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/iter/AxisIterator;)V

    return-object p1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, v0, p2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lnet/sf/saxon/tree/NamespaceNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, v0, p2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
