.class public final Lnet/sf/saxon/tree/util/Orphan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/MutableNodeInfo;


# instance fields
.field public e:S

.field public f:Lnet/sf/saxon/om/NodeName;

.field public g:Lnet/sf/saxon/str/UnicodeString;

.field public h:Lnet/sf/saxon/type/SchemaType;

.field public i:I

.field public final j:Lnet/sf/saxon/om/GenericTreeInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Orphan;->f:Lnet/sf/saxon/om/NodeName;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Orphan;->h:Lnet/sf/saxon/type/SchemaType;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/tree/util/Orphan;->i:I

    new-instance v0, Lnet/sf/saxon/om/GenericTreeInfo;

    invoke-direct {v0, p1}, Lnet/sf/saxon/om/GenericTreeInfo;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Orphan;->j:Lnet/sf/saxon/om/GenericTreeInfo;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/om/GenericTreeInfo;->setRootNode(Lnet/sf/saxon/om/NodeInfo;)V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/util/Orphan;->i:I

    invoke-static {p0, p1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p0

    return p0
.end method

.method public addAttribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public addNamespace(Lnet/sf/saxon/om/NamespaceBinding;Z)V
    .locals 0

    return-void
.end method

.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Orphan;->getNodeKind()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/tree/util/Orphan;->h:Lnet/sf/saxon/type/SchemaType;

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/tree/util/Orphan;->h:Lnet/sf/saxon/type/SchemaType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lnet/sf/saxon/type/SchemaType;->atomize(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Orphan;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/tree/util/Orphan;->g:Lnet/sf/saxon/str/UnicodeString;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Orphan;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public final b(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lnet/sf/saxon/tree/util/Orphan;->i:I

    or-int/2addr p1, p2

    iput p1, p0, Lnet/sf/saxon/tree/util/Orphan;->i:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lnet/sf/saxon/tree/util/Orphan;->i:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lnet/sf/saxon/tree/util/Orphan;->i:I

    :goto_0
    return-void
.end method

.method public compareOrder(Lnet/sf/saxon/om/NodeInfo;)I
    .locals 1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/util/Orphan;->equals(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Orphan;->hashCode()I

    move-result p0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->hashCode()I

    move-result p1

    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public delete()V
    .locals 1

    const/4 v0, -0x1

    iput-short v0, p0, Lnet/sf/saxon/tree/util/Orphan;->e:S

    return-void
.end method

.method public effectiveBooleanValue()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public equals(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 1

    const/16 v0, 0x51

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Orphan;->hashCode()I

    move-result p0

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
    .locals 2

    iget-short v0, p0, Lnet/sf/saxon/tree/util/Orphan;->e:S

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Orphan;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/Orphan;->f:Lnet/sf/saxon/om/NodeName;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprint()I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/Orphan;->f:Lnet/sf/saxon/om/NodeName;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeKind()I
    .locals 0

    iget-short p0, p0, Lnet/sf/saxon/tree/util/Orphan;->e:S

    return p0
.end method

.method public getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/Orphan;->f:Lnet/sf/saxon/om/NodeName;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/Orphan;->j:Lnet/sf/saxon/om/GenericTreeInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/util/Orphan;->h:Lnet/sf/saxon/type/SchemaType;

    if-nez v0, :cond_1

    iget-short p0, p0, Lnet/sf/saxon/tree/util/Orphan;->e:S

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/Orphan;->j:Lnet/sf/saxon/om/GenericTreeInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTreeInfo()Lnet/sf/saxon/om/TreeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/Orphan;->j:Lnet/sf/saxon/om/GenericTreeInfo;

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/Orphan;->f:Lnet/sf/saxon/om/NodeName;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/Orphan;->g:Lnet/sf/saxon/str/UnicodeString;

    return-object p0
.end method

.method public hasChildNodes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasFingerprint()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public insertChildren([Lnet/sf/saxon/om/NodeInfo;ZZ)V
    .locals 0

    return-void
.end method

.method public insertSiblings([Lnet/sf/saxon/om/NodeInfo;ZZ)V
    .locals 0

    return-void
.end method

.method public isDeleted()Z
    .locals 1

    iget-short p0, p0, Lnet/sf/saxon/tree/util/Orphan;->e:S

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisableOutputEscaping()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/util/Orphan;->a(I)Z

    move-result p0

    return p0
.end method

.method public isId()Z
    .locals 2

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/util/Orphan;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-short v0, p0, Lnet/sf/saxon/tree/util/Orphan;->e:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/Orphan;->f:Lnet/sf/saxon/om/NodeName;

    sget-object v0, Lnet/sf/saxon/om/StandardNames;->XML_ID_NAME:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
.end method

.method public isIdref()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/util/Orphan;->a(I)Z

    move-result p0

    return p0
.end method

.method public iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown axis number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_1
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 1

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
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_1
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public newBuilder()Lnet/sf/saxon/event/Builder;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot create children for an Orphan node"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeAttribute(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    return-void
.end method

.method public removeTypeAnnotation()V
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Orphan;->h:Lnet/sf/saxon/type/SchemaType;

    return-void
.end method

.method public rename(Lnet/sf/saxon/om/NodeName;Z)V
    .locals 1

    iget-short p2, p0, Lnet/sf/saxon/tree/util/Orphan;->e:S

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    :cond_0
    iput-object p1, p0, Lnet/sf/saxon/tree/util/Orphan;->f:Lnet/sf/saxon/om/NodeName;

    :cond_1
    return-void
.end method

.method public replace([Lnet/sf/saxon/om/NodeInfo;Z)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot replace a parentless node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replaceStringValue(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/util/Orphan;->g:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public setAttributes(Lnet/sf/saxon/om/AttributeMap;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setDisableOutputEscaping(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/tree/util/Orphan;->b(IZ)V

    return-void
.end method

.method public setIsId(Z)V
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/tree/util/Orphan;->b(IZ)V

    return-void
.end method

.method public setIsIdref(Z)V
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/tree/util/Orphan;->b(IZ)V

    return-void
.end method

.method public setNodeKind(S)V
    .locals 0

    iput-short p1, p0, Lnet/sf/saxon/tree/util/Orphan;->e:S

    return-void
.end method

.method public setNodeName(Lnet/sf/saxon/om/NodeName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/util/Orphan;->f:Lnet/sf/saxon/om/NodeName;

    return-void
.end method

.method public setStringValue(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/util/Orphan;->g:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/Orphan;->j:Lnet/sf/saxon/om/GenericTreeInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/GenericTreeInfo;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public setTypeAnnotation(Lnet/sf/saxon/type/SchemaType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/util/Orphan;->h:Lnet/sf/saxon/type/SchemaType;

    return-void
.end method
