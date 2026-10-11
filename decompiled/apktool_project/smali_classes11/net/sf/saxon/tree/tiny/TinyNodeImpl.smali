.class public abstract Lnet/sf/saxon/tree/tiny/TinyNodeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeInfo;


# static fields
.field public static final NODE_LETTER:[C


# instance fields
.field protected nodeNr:I

.field protected parent:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

.field protected tree:Lnet/sf/saxon/tree/tiny/TinyTree;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->NODE_LETTER:[C

    return-void

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x74s
        0x78s
        0x78s
        0x78s
        0x70s
        0x63s
        0x72s
        0x78s
        0x78s
        0x78s
        0x6es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->parent:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    return-void
.end method

.method public static getParentNodeNr(Lnet/sf/saxon/tree/tiny/TinyTree;I)I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aget v0, v0, p1

    :goto_0
    if-le v0, p1, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget p0, p0, v0

    return p0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public final compareOrder(Lnet/sf/saxon/om/NodeInfo;)I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getSequenceNumber()J

    move-result-wide v0

    instance-of v2, p1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    if-eqz v2, :cond_0

    check-cast p1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getSequenceNumber()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->isSameNodeInfo(Lnet/sf/saxon/om/NodeInfo;)Z

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
    .locals 2

    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v0}, Lnet/sf/saxon/om/GenericTreeInfo;->getDocumentNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->NODE_LETTER:[C

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

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

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getColumnNumber(I)I

    move-result p0

    return p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

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

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprint()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget p0, v0, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const v0, 0xfffff

    and-int/2addr p0, v0

    return p0
.end method

.method public getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->NODE:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getLineNumber(I)I

    move-result p0

    return p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget p0, v1, p0

    if-gez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/om/NamePool;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    return-object p0
.end method

.method public getNodeNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    return p0
.end method

.method public bridge synthetic getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;
    .locals 2

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->parent:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-static {v0, v1}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getParentNodeNr(Lnet/sf/saxon/tree/tiny/TinyTree;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->parent:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget v0, v0, v1

    const-string v1, ""

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lnet/sf/saxon/om/NamePool;->isPrefixed(I)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->A0:Lnet/sf/saxon/om/PrefixPool;

    shr-int/lit8 v0, v0, 0x14

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/PrefixPool;->getPrefix(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSequenceNumber()J
    .locals 2

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getSystemId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTree()Lnet/sf/saxon/tree/tiny/TinyTree;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    return-object p0
.end method

.method public getTreeInfo()Lnet/sf/saxon/om/TreeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget p0, v1, p0

    if-gez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    const v1, 0xfffff

    and-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lnet/sf/saxon/om/NamePool;->getURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasChildNodes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hasFingerprint()Z
    .locals 0

    const/4 p0, 0x1

    return p0
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

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    xor-int/2addr v0, v1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    shl-int/lit8 p0, p0, 0xe

    xor-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic head()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->head()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public head()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 1
    return-object p0
.end method

.method public isAncestorOrSelf(Lnet/sf/saxon/tree/tiny/TinyNodeImpl;)Z
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, p1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    instance-of p1, p1, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    instance-of p1, p0, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;

    if-eqz p1, :cond_2

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    if-ne p0, v1, :cond_1

    move v2, v3

    :cond_1
    return v2

    :cond_2
    iget-object p1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    aget v1, p1, v1

    :cond_3
    instance-of p1, p0, Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;

    if-eqz p1, :cond_4

    return v2

    :cond_4
    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    if-le p1, v1, :cond_5

    return v2

    :cond_5
    if-ne p1, v1, :cond_6

    return v3

    :cond_6
    instance-of v4, p0, Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;

    if-nez v4, :cond_7

    return v2

    :cond_7
    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v4, v0, p1

    aget-short v0, v0, v1

    if-lt v4, v0, :cond_8

    return v2

    :cond_8
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v4, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aget v4, v4, p1

    if-ltz v4, :cond_c

    if-le v4, v1, :cond_9

    goto :goto_1

    :cond_9
    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v0, v0, v4

    if-nez v0, :cond_a

    return v3

    :cond_a
    if-ge v4, p1, :cond_b

    move p1, v4

    goto :goto_0

    :cond_b
    return v2

    :cond_c
    :goto_1
    return v3
.end method

.method public isId()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIdref()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNilled()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->isNilled(I)Z

    move-result p0

    return p0
.end method

.method public isSameNodeInfo(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 3

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    iget-object v2, v1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    if-ne v0, v2, :cond_0

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    iget v1, v1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p1

    if-ne p0, p1, :cond_0

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

.method public isStreamed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lnet/sf/saxon/tree/tiny/g;

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v0, p0, v1, v2}, Lnet/sf/saxon/tree/tiny/g;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;Z)V

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 6

    .line 5
    invoke-static {p2}, Lnet/sf/saxon/tree/util/Navigator;->nodeTestFromPredicate(Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p2

    .line 6
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/16 v3, 0xd

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    .line 7
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
    if-ne v0, v1, :cond_0

    .line 8
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Lnet/sf/saxon/tree/tiny/e;

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-direct {p1, v0, p0, p2, v5}, Lnet/sf/saxon/tree/tiny/e;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;Z)V

    return-object p1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p1

    .line 11
    new-instance v0, Lnet/sf/saxon/tree/iter/PrependAxisIterator;

    new-instance v1, Lnet/sf/saxon/tree/tiny/e;

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-direct {v1, p0, p1, p2, v5}, Lnet/sf/saxon/tree/tiny/e;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;Z)V

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/tree/iter/PrependAxisIterator;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/iter/AxisIterator;)V

    return-object v0

    .line 12
    :pswitch_1
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_2
    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    .line 13
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget-short v0, v0, v1

    if-nez v0, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    new-instance v0, Lnet/sf/saxon/tree/tiny/f;

    invoke-direct {v0, p1, p0, p2}, Lnet/sf/saxon/tree/tiny/f;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object v0

    .line 15
    :cond_4
    :goto_1
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_3
    if-eq v0, v4, :cond_7

    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget-short v0, v0, v1

    if-nez v0, :cond_6

    .line 17
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 18
    :cond_6
    new-instance v0, Lnet/sf/saxon/tree/tiny/e;

    invoke-direct {v0, p1, p0, p2, v2}, Lnet/sf/saxon/tree/tiny/e;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;Z)V

    return-object v0

    .line 19
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_4
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    .line 21
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_5
    if-eq v0, v5, :cond_8

    .line 22
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 23
    :cond_8
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/NamespaceNode;->makeIterator(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_6
    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_a

    .line 24
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget-short v0, v0, v1

    if-nez v0, :cond_9

    goto :goto_3

    .line 25
    :cond_9
    new-instance v0, Lnet/sf/saxon/tree/tiny/g;

    invoke-direct {v0, p1, p0, p2, v2}, Lnet/sf/saxon/tree/tiny/g;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;Z)V

    return-object v0

    .line 26
    :cond_a
    :goto_3
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_7
    if-eq v0, v4, :cond_d

    if-ne v0, v3, :cond_b

    goto :goto_4

    .line 27
    :cond_b
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object p1, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget-short p1, p1, v0

    if-nez p1, :cond_c

    .line 28
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 29
    :cond_c
    new-instance p1, Lnet/sf/saxon/tree/tiny/c;

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-direct {p1, v0, p0, p2, v2}, Lnet/sf/saxon/tree/tiny/c;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;Z)V

    return-object p1

    .line 30
    :cond_d
    :goto_4
    new-instance p1, Lnet/sf/saxon/tree/tiny/c;

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    invoke-direct {p1, v0, p0, p2, v5}, Lnet/sf/saxon/tree/tiny/c;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;Z)V

    return-object p1

    :pswitch_8
    const/4 p1, 0x4

    .line 31
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    .line 32
    invoke-virtual {p2, p0}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 33
    new-instance p2, Lnet/sf/saxon/tree/iter/PrependAxisIterator;

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/tree/iter/PrependAxisIterator;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/iter/AxisIterator;)V

    return-object p2

    :cond_e
    return-object p1

    :pswitch_9
    if-ne v0, v1, :cond_f

    .line 34
    instance-of p1, p2, Lnet/sf/saxon/pattern/NameTest;

    if-eqz p1, :cond_f

    .line 35
    invoke-virtual {p2}, Lnet/sf/saxon/pattern/NodeTest;->getPrimitiveType()I

    move-result p1

    if-ne p1, v5, :cond_f

    .line 36
    check-cast p0, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/NodeTest;->getFingerprint()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->a(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 37
    :cond_f
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 38
    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 39
    new-instance p1, Lnet/sf/saxon/tree/tiny/a;

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-direct {p1, v0, p0, p2}, Lnet/sf/saxon/tree/tiny/a;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    .line 40
    :cond_10
    new-instance p1, Lnet/sf/saxon/tree/tiny/b;

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-direct {p1, v0, p0, p2}, Lnet/sf/saxon/tree/tiny/b;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    .line 41
    :cond_11
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 42
    :pswitch_a
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 43
    instance-of p1, p2, Lnet/sf/saxon/pattern/NameTest;

    if-eqz p1, :cond_12

    move-object p1, p2

    check-cast p1, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/NameTest;->getNodeKind()I

    move-result v0

    if-ne v0, v5, :cond_12

    .line 44
    new-instance p2, Lnet/sf/saxon/tree/tiny/d;

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/NameTest;->getFingerprint()I

    move-result p1

    invoke-direct {p2, v0, p0, p1}, Lnet/sf/saxon/tree/tiny/d;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;I)V

    return-object p2

    .line 45
    :cond_12
    new-instance p1, Lnet/sf/saxon/tree/tiny/g;

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-direct {p1, v0, p0, p2, v5}, Lnet/sf/saxon/tree/tiny/g;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;Z)V

    return-object p1

    .line 46
    :cond_13
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_b
    if-eq v0, v5, :cond_14

    .line 47
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 48
    :cond_14
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget v0, v0, p0

    if-gez v0, :cond_15

    .line 49
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 50
    :cond_15
    new-instance v0, Lcom/sunia/HTREnginev2/kh;

    invoke-direct {v0, p1, p0, p2}, Lcom/sunia/HTREnginev2/kh;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;ILnet/sf/saxon/pattern/NodeTest;)V

    return-object v0

    .line 51
    :pswitch_c
    new-instance p1, Lnet/sf/saxon/tree/tiny/AncestorIterator;

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/tree/tiny/AncestorIterator;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodeTest;)V

    .line 52
    invoke-virtual {p2, p0}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 53
    new-instance p2, Lnet/sf/saxon/tree/iter/PrependAxisIterator;

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/tree/iter/PrependAxisIterator;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/iter/AxisIterator;)V

    return-object p2

    :cond_16
    return-object p1

    .line 54
    :pswitch_d
    new-instance p1, Lnet/sf/saxon/tree/tiny/AncestorIterator;

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/tree/tiny/AncestorIterator;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodeTest;)V

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

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public setParentNode(Lnet/sf/saxon/tree/tiny/TinyNodeImpl;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->parent:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->v(ILjava/lang/String;)V

    return-void
.end method
