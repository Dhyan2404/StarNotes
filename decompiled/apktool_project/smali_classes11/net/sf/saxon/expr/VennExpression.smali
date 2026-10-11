.class public Lnet/sf/saxon/expr/VennExpression;
.super Lnet/sf/saxon/expr/BinaryExpression;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/BinaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public final computeCardinality()I
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    iget v2, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/16 v3, 0x17

    const/16 v4, 0x2000

    if-eq v2, v3, :cond_3

    const/16 v1, 0x18

    if-eq v2, v1, :cond_0

    const p0, 0xe000

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    or-int/lit16 p0, v0, 0x2000

    or-int/lit16 p0, p0, 0x4000

    return p0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v4

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v4

    :cond_5
    and-int p0, v0, v1

    or-int/2addr p0, v4

    or-int/lit16 p0, p0, 0x4000

    return p0

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    or-int p0, v0, v1

    or-int/lit16 p0, p0, 0x4000

    const v0, 0x8000

    or-int/2addr p0, v0

    return p0
.end method

.method public computeHashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/VennExpression;->o(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x30000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x20000

    :goto_0
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/VennExpression;->p(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    :cond_1
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/VennExpression;->j(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/high16 p0, 0x800000

    or-int/2addr v2, p0

    :cond_2
    return v2
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/VennExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/expr/VennExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/expr/VennExpression;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lnet/sf/saxon/expr/VennExpression;

    iget v0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    iget v2, p1, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-eq v0, v2, :cond_2

    const/16 v2, 0x17

    if-ne v0, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget v2, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/expr/VennExpression;->gatherComponents(ILjava/util/Set;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    iget p0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {p1, p0, v2}, Lnet/sf/saxon/expr/VennExpression;->gatherComponents(ILjava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public gatherComponents(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/VennExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/VennExpression;

    iget v0, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/VennExpression;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/VennExpression;->gatherComponents(ILjava/util/Set;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/VennExpression;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/VennExpression;

    iget v0, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/VennExpression;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/VennExpression;->gatherComponents(ILjava/util/Set;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "except"

    return-object p0

    :cond_1
    const-string p0, "intersect"

    return-object p0

    :cond_2
    const-string p0, "union"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getOperandRole(I)Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/UType;->intersection(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "VennExpression"

    return-object p0
.end method

.method public final i(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    instance-of p0, p1, Lnet/sf/saxon/expr/ContextItemExpression;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of p0, p2, Lnet/sf/saxon/functions/CurrentGroupCall;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->getFocusSettingContainer(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p2, Lnet/sf/saxon/functions/CurrentGroupCall;

    invoke-virtual {p2}, Lnet/sf/saxon/functions/CurrentGroupCall;->getControllingInstruction()Lnet/sf/saxon/expr/instruct/ForEachGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/DifferenceEnumeration;

    invoke-static {}, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/GlobalOrderComparer;

    move-result-object v1

    invoke-direct {p1, v0, p0, v1}, Lnet/sf/saxon/expr/DifferenceEnumeration;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unknown operator in Venn Expression"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/IntersectionEnumeration;

    invoke-static {}, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/GlobalOrderComparer;

    move-result-object v1

    invoke-direct {p1, v0, p0, v1}, Lnet/sf/saxon/expr/IntersectionEnumeration;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V

    return-object p1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/VennExpression;->k(Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;)V

    new-instance p0, Lnet/sf/saxon/expr/UnionIterator;

    invoke-static {}, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/GlobalOrderComparer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lnet/sf/saxon/expr/UnionIterator;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public final j(II)Z
    .locals 0

    const/high16 p0, 0x800000

    and-int/2addr p1, p0

    if-eqz p1, :cond_0

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/SequenceIterator;",
            ">;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/expr/VennExpression;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/expr/VennExpression;

    iget v3, v1, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-ne v3, v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/VennExpression;->k(Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/expr/VennExpression;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/VennExpression;

    iget v1, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/VennExpression;->k(Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public final l(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/expr/ItemChecker;

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/ItemChecker;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    :cond_0
    instance-of p0, p1, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz p0, :cond_1

    check-cast p1, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final o(II)Z
    .locals 4

    iget p0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_4

    const/16 v3, 0x17

    if-eq p0, v3, :cond_2

    const/16 p2, 0x18

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    and-int p0, p1, v0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    or-int p0, p1, p2

    and-int/2addr p0, v0

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    and-int p0, p1, p2

    and-int/2addr p0, v0

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super/range {p0 .. p2}, Lnet/sf/saxon/expr/BinaryExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-eq v3, v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    iget v6, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/high16 v7, 0x20000

    const/16 v8, 0x18

    const/4 v9, 0x2

    const/16 v10, 0x17

    const/4 v11, 0x1

    if-eq v6, v11, :cond_9

    if-eq v6, v10, :cond_5

    if-eq v6, v8, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {v4}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v4

    :cond_2
    invoke-static {v5}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v6

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/expr/VennExpression;->i(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {v0, v5, v4}, Lnet/sf/saxon/expr/VennExpression;->i(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v0, Lnet/sf/saxon/expr/TailExpression;

    invoke-direct {v0, v4, v9}, Lnet/sf/saxon/expr/TailExpression;-><init>(Lnet/sf/saxon/expr/Expression;I)V

    return-object v0

    :cond_5
    invoke-static {v4}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_6

    return-object v4

    :cond_6
    invoke-static {v5}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_7

    return-object v5

    :cond_7
    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/expr/VennExpression;->i(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_8

    return-object v4

    :cond_8
    invoke-virtual {v0, v5, v4}, Lnet/sf/saxon/expr/VennExpression;->i(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_d

    return-object v5

    :cond_9
    invoke-static {v4}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v6

    and-int/2addr v6, v7

    if-eqz v6, :cond_a

    return-object v5

    :cond_a
    invoke-static {v5}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v6

    and-int/2addr v6, v7

    if-eqz v6, :cond_b

    return-object v4

    :cond_b
    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/expr/VennExpression;->i(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_c

    return-object v5

    :cond_c
    invoke-virtual {v0, v5, v4}, Lnet/sf/saxon/expr/VennExpression;->i(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_d

    return-object v4

    :cond_d
    :goto_0
    instance-of v6, v4, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v6, :cond_10

    instance-of v12, v5, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v12, :cond_10

    move-object v12, v4

    check-cast v12, Lnet/sf/saxon/expr/AxisExpression;

    move-object v13, v5

    check-cast v13, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v12}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v14

    invoke-virtual {v13}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v15

    if-ne v14, v15, :cond_10

    invoke-virtual {v12}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v1

    invoke-virtual {v13}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v0, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-ne v0, v8, :cond_e

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_e
    return-object v12

    :cond_f
    new-instance v1, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v12}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v2

    new-instance v3, Lnet/sf/saxon/pattern/CombinedNodeTest;

    invoke-virtual {v12}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v4

    iget v5, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {v13}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v1

    :cond_10
    instance-of v12, v4, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v12, :cond_11

    instance-of v12, v5, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v12, :cond_11

    iget v12, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-ne v12, v11, :cond_11

    move-object v12, v4

    check-cast v12, Lnet/sf/saxon/expr/SlashExpression;

    move-object v13, v5

    check-cast v13, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {v12}, Lnet/sf/saxon/expr/SlashExpression;->getFirstStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v14

    invoke-virtual {v13}, Lnet/sf/saxon/expr/SlashExpression;->getFirstStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v15

    invoke-virtual {v14, v15}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v14

    if-eqz v14, :cond_11

    new-instance v3, Lnet/sf/saxon/expr/VennExpression;

    invoke-virtual {v12}, Lnet/sf/saxon/expr/SlashExpression;->getRemainingSteps()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    iget v5, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {v13}, Lnet/sf/saxon/expr/SlashExpression;->getRemainingSteps()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lnet/sf/saxon/expr/VennExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v12}, Lnet/sf/saxon/expr/SlashExpression;->getFirstStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-static {v4, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v3, v1, v2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_11
    instance-of v12, v4, Lnet/sf/saxon/expr/FilterExpression;

    const/4 v13, 0x0

    if-eqz v12, :cond_15

    instance-of v12, v5, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz v12, :cond_15

    move-object v12, v4

    check-cast v12, Lnet/sf/saxon/expr/FilterExpression;

    move-object v14, v5

    check-cast v14, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {v12, v3}, Lnet/sf/saxon/expr/FilterExpression;->isPositional(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v15

    if-nez v15, :cond_15

    invoke-virtual {v14, v3}, Lnet/sf/saxon/expr/FilterExpression;->isPositional(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v15

    if-nez v15, :cond_15

    invoke-virtual {v12}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v15

    invoke-virtual {v14}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {v15, v7}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget v3, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-eq v3, v11, :cond_14

    if-eq v3, v10, :cond_13

    if-ne v3, v8, :cond_12

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    new-array v4, v11, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v14}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    aput-object v5, v4, v13

    const-string v5, "not"

    invoke-static {v5, v3, v4}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    new-instance v4, Lnet/sf/saxon/expr/AndExpression;

    invoke-virtual {v12}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lnet/sf/saxon/expr/AndExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_12
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_13
    new-instance v4, Lnet/sf/saxon/expr/AndExpression;

    invoke-virtual {v12}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v14}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lnet/sf/saxon/expr/AndExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_14
    new-instance v4, Lnet/sf/saxon/expr/OrExpression;

    invoke-virtual {v12}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v14}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lnet/sf/saxon/expr/OrExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :goto_1
    invoke-static {v0, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance v3, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {v12}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v3}, Lnet/sf/saxon/expr/FilterExpression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result v1

    if-nez v1, :cond_17

    iget v1, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-ne v1, v11, :cond_17

    if-eqz v6, :cond_17

    instance-of v1, v5, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v1, :cond_17

    move-object v1, v4

    check-cast v1, Lnet/sf/saxon/expr/AxisExpression;

    move-object v2, v5

    check-cast v2, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v9, :cond_16

    invoke-virtual {v2}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v6

    if-ne v6, v7, :cond_16

    new-instance v0, Lnet/sf/saxon/expr/instruct/Block;

    new-array v1, v9, [Lnet/sf/saxon/expr/Expression;

    aput-object v4, v1, v13

    aput-object v5, v1, v11

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_16
    invoke-virtual {v2}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v2

    if-ne v2, v9, :cond_17

    invoke-virtual {v1}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v1

    if-ne v1, v7, :cond_17

    new-instance v0, Lnet/sf/saxon/expr/instruct/Block;

    new-array v1, v9, [Lnet/sf/saxon/expr/Expression;

    aput-object v5, v1, v13

    aput-object v4, v1, v11

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_17
    iget v1, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-ne v1, v10, :cond_18

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v1, Lnet/sf/saxon/expr/SingletonIntersectExpression;

    iget v0, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {v5, v13, v13}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-direct {v1, v4, v0, v2}, Lnet/sf/saxon/expr/SingletonIntersectExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object v1

    :cond_18
    iget v1, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-ne v1, v10, :cond_19

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v1

    if-nez v1, :cond_19

    new-instance v1, Lnet/sf/saxon/expr/SingletonIntersectExpression;

    iget v0, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {v4, v13, v13}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-direct {v1, v5, v0, v2}, Lnet/sf/saxon/expr/SingletonIntersectExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object v1

    :cond_19
    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/VennExpression;->n(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-ne v1, v10, :cond_1a

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_1a
    if-ne v1, v8, :cond_1c

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v0

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    return-object v4

    :cond_1b
    new-instance v0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-direct {v0, v4}, Lnet/sf/saxon/expr/sort/DocumentSorter;-><init>(Lnet/sf/saxon/expr/Expression;)V

    :cond_1c
    return-object v0
.end method

.method public final p(II)Z
    .locals 4

    iget p0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/high16 v0, 0x100000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_4

    const/16 v3, 0x17

    if-eq p0, v3, :cond_2

    const/16 p2, 0x18

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    and-int p0, p1, v0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    or-int p0, p1, p2

    and-int/2addr p0, v0

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    and-int p0, p1, p2

    and-int/2addr p0, v0

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/sort/DocumentSorter;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/sort/DocumentSorter;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public tag()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "union"

    return-object p0

    :cond_0
    sget-object v0, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/VennExpression;->m(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/VennExpression;->m(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lnet/sf/saxon/pattern/UnionPattern;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/pattern/UnionPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->getAxisNavigation(Lnet/sf/saxon/expr/Expression;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/VennExpression;->l(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/VennExpression;->l(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/sf/saxon/pattern/GeneralNodePattern;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VennExpression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/pattern/GeneralNodePattern;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    :cond_2
    :goto_0
    iget v0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_3

    new-instance v0, Lnet/sf/saxon/pattern/ExceptPattern;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/pattern/ExceptPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V

    return-object v0

    :cond_3
    new-instance v0, Lnet/sf/saxon/pattern/IntersectPattern;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/pattern/IntersectPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V

    return-object v0

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot use a predicate pattern as an operand of a union, intersect, or except operator"

    const-string v0, "XTSE0340"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/pattern/Pattern;

    const/4 v3, 0x1

    if-nez p2, :cond_0

    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    sget-object v4, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget v5, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    aget-object v4, v4, v5

    invoke-direct {p2, v3, v4, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->NODE_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2, v1, v4, p2, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/pattern/Pattern;

    if-nez p2, :cond_1

    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    sget-object v1, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget v4, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    aget-object v1, v1, v4

    invoke-direct {p2, v3, v1, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->NODE_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2, v1, v4, p2, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    iget p1, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-eq p1, v3, :cond_4

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne p1, p2, :cond_4

    iget p1, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/16 p2, 0x17

    if-ne p1, p2, :cond_2

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    const/high16 p2, 0x20000

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/sort/DocumentSorter;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_4
    return-object p0
.end method

.method public unordered(ZZ)Lnet/sf/saxon/expr/Expression;
    .locals 3

    iget p1, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/VennExpression;->n(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/instruct/Block;

    const/4 p2, 0x2

    new-array p2, p2, [Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-direct {p1, p2}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_0
    return-object p0
.end method
