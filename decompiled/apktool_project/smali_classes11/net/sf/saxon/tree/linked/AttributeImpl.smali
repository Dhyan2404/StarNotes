.class public Lnet/sf/saxon/tree/linked/AttributeImpl;
.super Lnet/sf/saxon/tree/linked/NodeImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/linked/ElementImpl;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->setRawParent(Lnet/sf/saxon/tree/linked/ParentNodeImpl;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/linked/NodeImpl;->setSiblingPosition(I)V

    return-void
.end method


# virtual methods
.method public final b()Lnet/sf/saxon/om/AttributeInfo;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result p0

    invoke-interface {v0, p0}, Lnet/sf/saxon/om/AttributeMap;->itemAt(I)Lnet/sf/saxon/om/AttributeInfo;

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

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public delete()V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->removeAttribute(Lnet/sf/saxon/om/NodeInfo;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->setRawParent(Lnet/sf/saxon/tree/linked/ParentNodeImpl;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->setSiblingPosition(I)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/tree/linked/AttributeImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lnet/sf/saxon/tree/linked/AttributeImpl;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/tree/linked/NodeImpl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result p0

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result p1

    if-ne p0, p1, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->generateId(Ljava/lang/StringBuilder;)V

    const/16 v0, 0x61

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getFingerprint()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    invoke-interface {v0, p0}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public getNextInDocument(Lnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextInDocument(Lnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getNextSibling()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getNextSibling()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->getNextSibling()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getNodeKind()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getNodeName()Lnet/sf/saxon/om/NodeName;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->b()Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviousInDocument()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousSibling()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getPreviousSibling()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->getPreviousSibling()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->b()Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object p0

    return-object p0
.end method

.method public getSequenceNumber()J
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getSequenceNumber()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x8000

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->b()Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->b()Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method public isDeleted()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->b()Lnet/sf/saxon/om/AttributeInfo;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/om/AttributeInfo$Deleted;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->isDeleted()Z

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

.method public isId()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->b()Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->isId()Z

    move-result p0

    return p0
.end method

.method public isIdref()Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->b()Lnet/sf/saxon/om/AttributeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v0

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->isIdRefNode(Lnet/sf/saxon/tree/linked/NodeImpl;)Z

    move-result p0

    return p0
.end method

.method public removeTypeAnnotation()V
    .locals 9

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/linked/ElementImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->b()Lnet/sf/saxon/om/AttributeInfo;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result p0

    new-instance v8, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v6

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual {v0, p0, v8}, Lnet/sf/saxon/tree/linked/ElementImpl;->setAttributeInfo(ILnet/sf/saxon/om/AttributeInfo;)V

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->removeTypeAnnotation()V

    :cond_0
    return-void
.end method

.method public rename(Lnet/sf/saxon/om/NodeName;Z)V
    .locals 10

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/linked/ElementImpl;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->b()Lnet/sf/saxon/om/AttributeInfo;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result v2

    new-instance v9, Lnet/sf/saxon/om/AttributeInfo;

    sget-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v7

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v8

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual {v0, v2, v9}, Lnet/sf/saxon/tree/linked/ElementImpl;->setAttributeInfo(ILnet/sf/saxon/om/AttributeInfo;)V

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-direct {v2, p1, v1}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/tree/linked/ElementImpl;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {v0, v2, p2}, Lnet/sf/saxon/tree/linked/ElementImpl;->addNamespace(Lnet/sf/saxon/om/NamespaceBinding;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Namespace binding of new name conflicts with existing namespace binding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public replace([Lnet/sf/saxon/om/NodeInfo;Z)V
    .locals 8

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->delete()V

    array-length p0, p1

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, p0, :cond_1

    aget-object v1, p1, v7

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, v0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lnet/sf/saxon/tree/linked/NodeImpl;->addAttribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;IZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Replacement nodes must be attributes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot replace a parentless node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot replace a deleted node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replaceStringValue(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 9

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/linked/ElementImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->b()Lnet/sf/saxon/om/AttributeInfo;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result p0

    new-instance v8, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v6

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual {v0, p0, v8}, Lnet/sf/saxon/tree/linked/ElementImpl;->setAttributeInfo(ILnet/sf/saxon/om/AttributeInfo;)V

    :cond_0
    return-void
.end method

.method public setTypeAnnotation(Lnet/sf/saxon/type/SchemaType;)V
    .locals 9

    instance-of v0, p1, Lnet/sf/saxon/type/SimpleType;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/linked/ElementImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/AttributeImpl;->b()Lnet/sf/saxon/om/AttributeInfo;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result p0

    new-instance v8, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lnet/sf/saxon/type/SimpleType;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v6

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual {v0, p0, v8}, Lnet/sf/saxon/tree/linked/ElementImpl;->setAttributeInfo(ILnet/sf/saxon/om/AttributeInfo;)V

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->removeTypeAnnotation()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attribute type must be a simple type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
