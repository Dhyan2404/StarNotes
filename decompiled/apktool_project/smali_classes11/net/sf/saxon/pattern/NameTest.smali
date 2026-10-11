.class public Lnet/sf/saxon/pattern/NameTest;
.super Lnet/sf/saxon/pattern/NodeTest;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/pattern/QNameTest;


# instance fields
.field public final i:I

.field public final j:I

.field public final k:Lnet/sf/saxon/type/UType;

.field public final l:Lnet/sf/saxon/om/NamePool;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILnet/sf/saxon/om/NamePool;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lnet/sf/saxon/pattern/NodeTest;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->m:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->n:Ljava/lang/String;

    .line 11
    iput p1, p0, Lnet/sf/saxon/pattern/NameTest;->i:I

    const v0, 0xfffff

    and-int/2addr p2, v0

    .line 12
    iput p2, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    .line 13
    iput-object p3, p0, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    .line 14
    invoke-static {p1}, Lnet/sf/saxon/type/UType;->fromTypeCode(I)Lnet/sf/saxon/type/UType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pattern/NameTest;->k:Lnet/sf/saxon/type/UType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/pattern/NodeTest;-><init>()V

    .line 2
    iput-object p2, p0, Lnet/sf/saxon/pattern/NameTest;->m:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lnet/sf/saxon/pattern/NameTest;->n:Ljava/lang/String;

    .line 4
    iput p1, p0, Lnet/sf/saxon/pattern/NameTest;->i:I

    .line 5
    invoke-virtual {p4, p2, p3}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const p3, 0xfffff

    and-int/2addr p2, p3

    iput p2, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    .line 6
    iput-object p4, p0, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    .line 7
    invoke-static {p1}, Lnet/sf/saxon/type/UType;->fromTypeCode(I)Lnet/sf/saxon/type/UType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pattern/NameTest;->k:Lnet/sf/saxon/type/UType;

    return-void
.end method

.method public constructor <init>(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamePool;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lnet/sf/saxon/pattern/NodeTest;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->m:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->n:Ljava/lang/String;

    .line 18
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->m:Ljava/lang/String;

    .line 19
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->n:Ljava/lang/String;

    .line 20
    iput p1, p0, Lnet/sf/saxon/pattern/NameTest;->i:I

    .line 21
    invoke-interface {p2, p3}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result p2

    iput p2, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    .line 22
    iput-object p3, p0, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    .line 23
    invoke-static {p1}, Lnet/sf/saxon/type/UType;->fromTypeCode(I)Lnet/sf/saxon/type/UType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pattern/NameTest;->k:Lnet/sf/saxon/type/UType;

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/pattern/NameTest;[I[BI)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/NameTest;->e([I[BI)Z

    move-result p0

    return p0
.end method

.method private synthetic e([I[BI)Z
    .locals 1

    aget p1, p1, p3

    const v0, 0xfffff

    and-int/2addr p1, v0

    iget v0, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    if-ne p1, v0, :cond_0

    aget-byte p1, p2, p3

    and-int/lit8 p1, p1, 0xf

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->i:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    iget v1, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/NamePool;->getUnprefixedQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/pattern/NameTest;->m:Ljava/lang/String;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->n:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/NameTest;

    iget-object v0, p1, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    iget-object v1, p0, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lnet/sf/saxon/pattern/NameTest;->i:I

    iget v1, p0, Lnet/sf/saxon/pattern/NameTest;->i:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lnet/sf/saxon/pattern/NameTest;->j:I

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Item;",
            "Lnet/sf/saxon/type/TypeHierarchy;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/pattern/NodeTest;->explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const-string p0, "The node has the wrong name"

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public exportQNameTest()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generateJavaScriptNameTest(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->d()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "q.uri===\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->m:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->jsEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'&&q.local===\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/NameTest;->n:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultPriority()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFingerprint()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    return p0
.end method

.method public getFullAlphaCode()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getBasicAlphaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->d()V

    iget-object p0, p0, Lnet/sf/saxon/pattern/NameTest;->n:Ljava/lang/String;

    return-object p0
.end method

.method public getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNodeKindArray()[B

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNameCodeArray()[I

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/fsj;

    invoke-direct {v1, p0, p1, v0}, Lcom/sunia/HTREnginev2/fsj;-><init>(Lnet/sf/saxon/pattern/NameTest;[I[B)V

    invoke-static {v1}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0
.end method

.method public getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->d()V

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    iget-object v1, p0, Lnet/sf/saxon/pattern/NameTest;->m:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/pattern/NameTest;->n:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v2, v1, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->d()V

    iget-object p0, p0, Lnet/sf/saxon/pattern/NameTest;->m:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeKind()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->i:I

    return p0
.end method

.method public getPrimitiveType()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->i:I

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

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntSingletonSet;-><init>(I)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/NameTest;->k:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/pattern/NameTest;->i:I

    shl-int/lit8 v0, v0, 0x14

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z
    .locals 1

    .line 1
    iget p3, p0, Lnet/sf/saxon/pattern/NameTest;->i:I

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->hasFingerprint()Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getFingerprint()I

    move-result p1

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    if-ne p1, p0, :cond_1

    move v0, p3

    :cond_1
    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->d()V

    .line 5
    iget-object p1, p0, Lnet/sf/saxon/pattern/NameTest;->m:Ljava/lang/String;

    invoke-interface {p2, p1}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/pattern/NameTest;->n:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, p3

    :cond_3
    return v0
.end method

.method public matches(Lnet/sf/saxon/om/StructuredQName;)Z
    .locals 2

    .line 6
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->d()V

    .line 7
    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/pattern/NameTest;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/NameTest;->m:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public test(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 4

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    iget v1, p0, Lnet/sf/saxon/pattern/NameTest;->i:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result p1

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    if-ne p1, p0, :cond_1

    move v2, v1

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->d()V

    iget-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->n:Ljava/lang/String;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lnet/sf/saxon/pattern/NameTest;->m:Ljava/lang/String;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v2, v1

    :cond_3
    return v2
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/pattern/NameTest;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->getFingerprint()I

    move-result p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/om/NamePool;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->getFingerprint()I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/om/NamePool;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/pattern/NameTest;->i:I

    const/4 v1, 0x1

    const-string v2, ")"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    const/16 v2, 0x29

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/om/NamePool;->getEQName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "namespace-node("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    invoke-virtual {v1, p0}, Lnet/sf/saxon/om/NamePool;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processing-instruction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    invoke-virtual {v1, p0}, Lnet/sf/saxon/om/NamePool;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attribute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    invoke-virtual {v1, p0}, Lnet/sf/saxon/om/NamePool;->getEQName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "element("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/pattern/NameTest;->l:Lnet/sf/saxon/om/NamePool;

    iget p0, p0, Lnet/sf/saxon/pattern/NameTest;->j:I

    invoke-virtual {v1, p0}, Lnet/sf/saxon/om/NamePool;->getEQName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
