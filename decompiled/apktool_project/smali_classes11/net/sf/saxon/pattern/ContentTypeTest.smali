.class public Lnet/sf/saxon/pattern/ContentTypeTest;
.super Lnet/sf/saxon/pattern/NodeTest;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z


# instance fields
.field public final i:I

.field public final j:Lnet/sf/saxon/type/SchemaType;

.field public final k:Lnet/sf/saxon/Configuration;

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/pattern/NodeTest;-><init>()V

    iput p1, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->i:I

    iput-object p2, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    iput-object p3, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->k:Lnet/sf/saxon/Configuration;

    iput-boolean p4, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->l:Z

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/pattern/ContentTypeTest;[BLnet/sf/saxon/tree/tiny/NodeVectorTree;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/ContentTypeTest;->d([BLnet/sf/saxon/tree/tiny/NodeVectorTree;I)Z

    move-result p0

    return p0
.end method

.method private synthetic d([BLnet/sf/saxon/tree/tiny/NodeVectorTree;I)Z
    .locals 1

    aget-byte p1, p1, p3

    and-int/lit8 p1, p1, 0xf

    iget v0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->i:I

    if-ne p1, v0, :cond_1

    check-cast p2, Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p2, p3}, Lnet/sf/saxon/tree/tiny/TinyTree;->getSchemaType(I)Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/ContentTypeTest;->e(Lnet/sf/saxon/type/SchemaType;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->l:Z

    if-nez p0, :cond_0

    invoke-virtual {p2, p3}, Lnet/sf/saxon/tree/tiny/TinyTree;->isNilled(I)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final e(Lnet/sf/saxon/type/SchemaType;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->k:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    invoke-virtual {v1, p1, p0}, Lnet/sf/saxon/type/TypeHierarchy;->schemaTypeRelationship(Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/type/SchemaType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq p0, p1, :cond_3

    sget-object p1, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne p0, p1, :cond_4

    :cond_3
    move v0, v3

    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/pattern/ContentTypeTest;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/ContentTypeTest;

    iget v0, p1, Lnet/sf/saxon/pattern/ContentTypeTest;->i:I

    iget v1, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->i:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    iget-object v1, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lnet/sf/saxon/pattern/ContentTypeTest;->l:Z

    iget-boolean p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->l:Z

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;
    .locals 1
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

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/pattern/ContentTypeTest;->e(Lnet/sf/saxon/type/SchemaType;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p2

    const-string v0, "The supplied node has not been schema-validated"

    if-ne p0, p2, :cond_1

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p0, p2, :cond_2

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The supplied node has the wrong type annotation ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1}, Lnet/sf/saxon/functions/Nilled_1;->isNilled(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->l:Z

    if-nez p0, :cond_4

    const-string p0, "The supplied node has xsi:nil=\'true\', which the required type does not allow"

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;
    .locals 1

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    .line 3
    :try_start_0
    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->isAtomicType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    return-object p0

    .line 5
    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/type/ListType;

    if-eqz v0, :cond_1

    .line 6
    check-cast p0, Lnet/sf/saxon/type/ListType;

    invoke-interface {p0}, Lnet/sf/saxon/type/ListType;->getItemType()Lnet/sf/saxon/type/SimpleType;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Lnet/sf/saxon/type/SimpleType;->isAtomicType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    return-object p0

    .line 9
    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/type/ComplexType;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v0}, Lnet/sf/saxon/type/ComplexType;->isSimpleContent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    check-cast p0, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {p0}, Lnet/sf/saxon/type/ComplexType;->getSimpleContentType()Lnet/sf/saxon/type/SimpleType;

    move-result-object p0

    .line 11
    invoke-interface {p0}, Lnet/sf/saxon/type/SimpleType;->isAtomicType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    return-object p0

    .line 13
    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/type/ListType;

    if-eqz v0, :cond_3

    .line 14
    check-cast p0, Lnet/sf/saxon/type/ListType;

    invoke-interface {p0}, Lnet/sf/saxon/type/ListType;->getItemType()Lnet/sf/saxon/type/SimpleType;

    move-result-object p0

    .line 15
    invoke-interface {p0}, Lnet/sf/saxon/type/SimpleType;->isAtomicType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    check-cast p0, Lnet/sf/saxon/type/AtomicType;
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 17
    :cond_3
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    .line 18
    :catch_0
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public bridge synthetic getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/ContentTypeTest;->getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getContentType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    return-object p0
.end method

.method public final getDefaultPriority()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNodeKindArray()[B

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/pbe;

    invoke-direct {v1, p0, v0, p1}, Lcom/sunia/HTREnginev2/pbe;-><init>(Lnet/sf/saxon/pattern/ContentTypeTest;[BLnet/sf/saxon/tree/tiny/NodeVectorTree;)V

    invoke-static {v1}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0
.end method

.method public getNodeKind()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->i:I

    return p0
.end method

.method public getPrimitiveType()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->i:I

    return p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 1

    iget p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->i:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->i:I

    shl-int/lit8 v0, v0, 0x14

    iget-object p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    iget-object p1, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    check-cast p0, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {p0}, Lnet/sf/saxon/type/ComplexType;->getVariety()Lnet/sf/saxon/type/ComplexVariety;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/ComplexVariety;->ELEMENT_ONLY:Lnet/sf/saxon/type/ComplexVariety;

    if-eq p0, p1, :cond_0

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

.method public isNillable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->l:Z

    return p0
.end method

.method public matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z
    .locals 0

    iget p2, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->i:I

    if-ne p2, p1, :cond_0

    invoke-virtual {p0, p3}, Lnet/sf/saxon/pattern/ContentTypeTest;->e(Lnet/sf/saxon/type/SchemaType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setNillable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->l:Z

    return-void
.end method

.method public test(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    iget v1, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->i:I

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pattern/ContentTypeTest;->e(Lnet/sf/saxon/type/SchemaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->l:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/functions/Nilled_1;->isNilled(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toExportString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "element(*, "

    goto :goto_0

    :cond_0
    const-string v1, "attribute(*, "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    invoke-static {p0}, Lnet/sf/saxon/type/TypeHierarchy;->getNearestNamedType(Lnet/sf/saxon/type/SchemaType;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getEQName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "element(*, "

    goto :goto_0

    :cond_0
    const-string v1, "attribute(*, "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/ContentTypeTest;->j:Lnet/sf/saxon/type/SchemaType;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getEQName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
