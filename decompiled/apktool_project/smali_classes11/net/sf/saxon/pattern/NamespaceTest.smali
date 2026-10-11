.class public final Lnet/sf/saxon/pattern/NamespaceTest;
.super Lnet/sf/saxon/pattern/NodeTest;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/pattern/QNameTest;


# instance fields
.field public final i:Lnet/sf/saxon/om/NamePool;

.field public final j:I

.field public final k:Lnet/sf/saxon/type/UType;

.field public final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/pattern/NodeTest;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pattern/NamespaceTest;->i:Lnet/sf/saxon/om/NamePool;

    iput p2, p0, Lnet/sf/saxon/pattern/NamespaceTest;->j:I

    iput-object p3, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

    invoke-static {p2}, Lnet/sf/saxon/type/UType;->fromTypeCode(I)Lnet/sf/saxon/type/UType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pattern/NamespaceTest;->k:Lnet/sf/saxon/type/UType;

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/pattern/NamespaceTest;[I[BI)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/NamespaceTest;->d([I[BI)Z

    move-result p0

    return p0
.end method

.method private synthetic d([I[BI)Z
    .locals 1

    aget p1, p1, p3

    const v0, 0xfffff

    and-int/2addr p1, v0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    aget-byte p2, p2, p3

    and-int/lit8 p2, p2, 0xf

    iget p3, p0, Lnet/sf/saxon/pattern/NamespaceTest;->j:I

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->i:Lnet/sf/saxon/om/NamePool;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamePool;->getURI(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    instance-of v0, p1, Lnet/sf/saxon/pattern/NamespaceTest;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/NamespaceTest;

    iget-object v0, p1, Lnet/sf/saxon/pattern/NamespaceTest;->i:Lnet/sf/saxon/om/NamePool;

    iget-object v1, p0, Lnet/sf/saxon/pattern/NamespaceTest;->i:Lnet/sf/saxon/om/NamePool;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lnet/sf/saxon/pattern/NamespaceTest;->j:I

    iget v1, p0, Lnet/sf/saxon/pattern/NamespaceTest;->j:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

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
    const-string p0, "The node is in the wrong namespace"

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public exportQNameTest()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Q{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}*"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generateJavaScriptNameTest(I)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "q.uri===\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

    invoke-static {p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->jsEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    const-string v1, " nQ{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}*"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNodeKindArray()[B

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNameCodeArray()[I

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/osj;

    invoke-direct {v1, p0, p1, v0}, Lcom/sunia/HTREnginev2/osj;-><init>(Lnet/sf/saxon/pattern/NamespaceTest;[I[B)V

    invoke-static {v1}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeKind()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->j:I

    return p0
.end method

.method public getPrimitiveType()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->j:I

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

    iget-object p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->k:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->j:I

    add-int/lit8 p0, p0, 0x5

    shl-int p0, v0, p0

    return p0
.end method

.method public matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

    invoke-interface {p2, p0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

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
    iget-object p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public test(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    iget v1, p0, Lnet/sf/saxon/pattern/NamespaceTest;->j:I

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

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

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->j:I

    const/4 v1, 0x1

    const-string v2, "}*"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/pattern/NamespaceTest;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*)Q{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Q{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Q{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;->l:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
