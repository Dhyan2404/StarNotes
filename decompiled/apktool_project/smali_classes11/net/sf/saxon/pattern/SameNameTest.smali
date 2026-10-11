.class public Lnet/sf/saxon/pattern/SameNameTest;
.super Lnet/sf/saxon/pattern/NodeTest;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/pattern/QNameTest;


# instance fields
.field public final i:Lnet/sf/saxon/om/NodeInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/pattern/NodeTest;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/pattern/SameNameTest;[B[ILnet/sf/saxon/tree/tiny/NodeVectorTree;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sf/saxon/pattern/SameNameTest;->d([B[ILnet/sf/saxon/tree/tiny/NodeVectorTree;I)Z

    move-result p0

    return p0
.end method

.method private synthetic d([B[ILnet/sf/saxon/tree/tiny/NodeVectorTree;I)Z
    .locals 2

    aget-byte p1, p1, p4

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result p1

    if-eqz p1, :cond_3

    aget p1, p2, p4

    const p2, 0xfffff

    and-int/2addr p1, p2

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result p0

    if-ne p1, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    invoke-interface {p3, p4}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNode(I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p1, p0}, Lnet/sf/saxon/tree/util/Navigator;->haveSameName(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/pattern/SameNameTest;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/SameNameTest;

    iget-object p1, p1, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/SameNameTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public exportQNameTest()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public generateJavaScriptNameTest(I)Ljava/lang/String;
    .locals 0

    const-string p0, "false"

    return-object p0
.end method

.method public final getDefaultPriority()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEquivalentNameTest()Lnet/sf/saxon/pattern/NameTest;
    .locals 4

    new-instance v0, Lnet/sf/saxon/pattern/NameTest;

    iget-object v1, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    iget-object v2, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    return-object v0
.end method

.method public getFingerprint()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 3

    invoke-interface {p1}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNodeKindArray()[B

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNameCodeArray()[I

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/n0m;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/sunia/HTREnginev2/n0m;-><init>(Lnet/sf/saxon/pattern/SameNameTest;[B[ILnet/sf/saxon/tree/tiny/NodeVectorTree;)V

    invoke-static {v2}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeKind()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    return p0
.end method

.method public getPrimitiveType()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    return p0
.end method

.method public getRequiredNodeNames()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lnet/sf/saxon/z/IntSet;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/z/IntSingletonSet;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/SameNameTest;->getFingerprint()I

    move-result p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntSingletonSet;-><init>(I)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/type/UType;->fromTypeCode(I)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    shl-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z
    .locals 1

    .line 1
    iget-object p3, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p3

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->hasFingerprint()Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getFingerprint()I

    move-result p1

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result p0

    if-ne p1, p0, :cond_1

    move v0, p3

    :cond_1
    return v0

    .line 4
    :cond_2
    iget-object p1, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, p3

    :cond_3
    return v0
.end method

.method public matches(Lnet/sf/saxon/om/StructuredQName;)Z
    .locals 0

    .line 5
    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public test(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    if-eq p1, v0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p1, p0}, Lnet/sf/saxon/tree/util/Navigator;->haveSameName(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

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

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ")"

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    const/16 v2, 0x29

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const-string p0, "***"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "namespace-node("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "document-node()"

    return-object p0

    :cond_2
    const-string p0, "comment()"

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processing-instruction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "text()"

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attribute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "element("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/SameNameTest;->i:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
