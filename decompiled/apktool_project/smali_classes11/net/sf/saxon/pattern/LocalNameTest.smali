.class public final Lnet/sf/saxon/pattern/LocalNameTest;
.super Lnet/sf/saxon/pattern/NodeTest;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/pattern/QNameTest;


# instance fields
.field public final i:Lnet/sf/saxon/om/NamePool;

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:Lnet/sf/saxon/type/UType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/pattern/NodeTest;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pattern/LocalNameTest;->i:Lnet/sf/saxon/om/NamePool;

    iput p2, p0, Lnet/sf/saxon/pattern/LocalNameTest;->j:I

    iput-object p3, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    invoke-static {p2}, Lnet/sf/saxon/type/UType;->fromTypeCode(I)Lnet/sf/saxon/type/UType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pattern/LocalNameTest;->l:Lnet/sf/saxon/type/UType;

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/z/IntSet;[I[BI)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/LocalNameTest;->g(Lnet/sf/saxon/z/IntSet;[I[BI)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(I)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/pattern/LocalNameTest;->f(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lnet/sf/saxon/pattern/LocalNameTest;[B[II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/LocalNameTest;->h([B[II)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic g(Lnet/sf/saxon/z/IntSet;[I[BI)Z
    .locals 1

    aget p1, p1, p3

    const v0, 0xfffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    aget-byte p0, p2, p3

    and-int/lit8 p0, p0, 0xf

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic h([B[II)Z
    .locals 1

    aget-byte p1, p1, p3

    and-int/lit8 p1, p1, 0xf

    iget v0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->j:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->i:Lnet/sf/saxon/om/NamePool;

    aget p2, p2, p3

    const p3, 0xfffff

    and-int/2addr p2, p3

    invoke-virtual {p0, p2}, Lnet/sf/saxon/om/NamePool;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/pattern/LocalNameTest;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/LocalNameTest;

    iget v0, p1, Lnet/sf/saxon/pattern/LocalNameTest;->j:I

    iget v1, p0, Lnet/sf/saxon/pattern/LocalNameTest;->j:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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
    const-string p0, "The node has the wrong local name"

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public exportQNameTest()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generateJavaScriptNameTest(I)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "q.local===\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultPriority()D
    .locals 2

    const-wide/high16 v0, -0x4030000000000000L    # -0.25

    return-wide v0
.end method

.method public getFullAlphaCode()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getBasicAlphaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " n*:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 4

    invoke-interface {p1}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNodeKindArray()[B

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNameCodeArray()[I

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/pattern/LocalNameTest;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    instance-of v2, p1, Lnet/sf/saxon/tree/tiny/TinyTree;

    if-eqz v2, :cond_1

    check-cast p1, Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getLocalNameIndex()Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/z/IntSet;

    if-nez p0, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/o0j;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/o0j;-><init>()V

    invoke-static {p0}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lcom/sunia/HTREnginev2/p0j;

    invoke-direct {p1, p0, v1, v0}, Lcom/sunia/HTREnginev2/p0j;-><init>(Lnet/sf/saxon/z/IntSet;[I[B)V

    invoke-static {p1}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Lcom/sunia/HTREnginev2/q0j;

    invoke-direct {p1, p0, v0, v1}, Lcom/sunia/HTREnginev2/q0j;-><init>(Lnet/sf/saxon/pattern/LocalNameTest;[B[I)V

    invoke-static {p1}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->i:Lnet/sf/saxon/om/NamePool;

    return-object p0
.end method

.method public getNodeKind()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->j:I

    return p0
.end method

.method public getPrimitiveType()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->j:I

    return p0
.end method

.method public getRequiredNodeNames()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lnet/sf/saxon/z/IntSet;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->l:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->j:I

    shl-int/lit8 v0, v0, 0x14

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p3, p0, Lnet/sf/saxon/pattern/LocalNameTest;->j:I

    if-ne p1, p3, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matches(Lnet/sf/saxon/om/StructuredQName;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public test(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->j:I

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/pattern/LocalNameTest;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@*:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;->k:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
