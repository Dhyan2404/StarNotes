.class public final Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;
.super Lnet/sf/saxon/tree/tiny/TinyNodeImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyTree;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iput p2, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

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

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0, v1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getTypedValueOfAttribute(Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;I)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "copy() applied to attribute node"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->generateId(Ljava/lang/StringBuilder;)V

    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getColumnNumber()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget v0, v0, v1

    if-gez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {v0}, Lnet/sf/saxon/om/NamePool;->isPrefixed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprint()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget p0, v0, p0

    const v0, 0xfffff

    and-int/2addr p0, v0

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, v1, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget p0, v1, p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/om/NamePool;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget p0, v0, p0

    return p0
.end method

.method public getNodeKind()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;
    .locals 2

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget p0, v1, p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget v0, v0, v1

    invoke-static {v0}, Lnet/sf/saxon/om/NamePool;->isPrefixed(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->A0:Lnet/sf/saxon/om/PrefixPool;

    shr-int/lit8 v0, v0, 0x14

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/PrefixPool;->getPrefix(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->t0:[Lnet/sf/saxon/type/SimpleType;

    if-nez v1, :cond_0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_0
    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->n(I)Lnet/sf/saxon/type/SimpleType;

    move-result-object p0

    return-object p0
.end method

.method public getSequenceNumber()J
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getSequenceNumber()J

    move-result-wide v0

    const-wide/32 v2, 0x8000

    add-long/2addr v0, v2

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    aget p0, p0, v2

    aget p0, v3, p0

    sub-int/2addr v2, p0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getSystemId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget v0, v0, v1

    invoke-static {v0}, Lnet/sf/saxon/om/NamePool;->isPrefixed(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/NamePool;->getURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget-object p0, v0, p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v0}, Lnet/sf/saxon/om/GenericTreeInfo;->getDocumentNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x3ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    shl-int/lit8 v0, v0, 0x14

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    xor-int/2addr p0, v0

    const/high16 v0, 0xe0000

    xor-int/2addr p0, v0

    return p0
.end method

.method public isDefaultedAttribute()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->isDefaultedAttribute(I)Z

    move-result p0

    return p0
.end method

.method public isId()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->isIdAttribute(I)Z

    move-result p0

    return p0
.end method

.method public isIdref()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->isIdrefAttribute(I)Z

    move-result p0

    return p0
.end method

.method public isNilled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
