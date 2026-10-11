.class public Lnet/sf/saxon/expr/EquivalenceComparison;
.super Lnet/sf/saxon/expr/BinaryExpression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ComparisonExpression;


# instance fields
.field public p:Lnet/sf/saxon/expr/sort/AtomicComparer;

.field public q:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/BinaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/EquivalenceComparison;->q:Z

    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public convertsUntypedToOther()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/EquivalenceComparison;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/expr/EquivalenceComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/EquivalenceComparison;->p:Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object p1, v0, Lnet/sf/saxon/expr/EquivalenceComparison;->p:Lnet/sf/saxon/expr/sort/AtomicComparer;

    iget-boolean p0, p0, Lnet/sf/saxon/expr/EquivalenceComparison;->q:Z

    iput-boolean p0, v0, Lnet/sf/saxon/expr/EquivalenceComparison;->q:Z

    return-object v0
.end method

.method public effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lnet/sf/saxon/expr/EquivalenceComparison;->p:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {v4, p1}, Lnet/sf/saxon/expr/sort/AtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p1

    iget-boolean p0, p0, Lnet/sf/saxon/expr/EquivalenceComparison;->q:Z

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p0

    invoke-virtual {v1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lnet/sf/saxon/type/Type;->isGuaranteedComparable(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/expr/sort/AtomicComparer;->comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    :cond_3
    :goto_1
    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/EquivalenceComparison;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/EquivalenceComparison;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public explainExtraAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1

    const-string p0, "cardinality"

    const-string v0, "singleton"

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAtomicComparer()Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/EquivalenceComparison;->p:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-object p0
.end method

.method public getComparer()Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/EquivalenceComparison;->p:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "equivalent"

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getSingletonOperator()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    return p0
.end method

.method public isKnownToBeComparable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/EquivalenceComparison;->q:Z

    return p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object v1

    :cond_0
    new-instance v3, Lnet/sf/saxon/expr/EquivalenceComparer;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getConversionContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lnet/sf/saxon/expr/EquivalenceComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V

    iput-object v3, p0, Lnet/sf/saxon/expr/EquivalenceComparison;->p:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v4}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2, v4, v4}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    sget-object p2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2, v4}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v2

    new-instance v5, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/4 v6, 0x1

    const-string v7, "eq"

    invoke-direct {v5, v6, v7, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-virtual {v2, v8, p2, v5, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    new-instance v5, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v5, v6, v7, v6}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {v2, v7, p2, v5, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-eq p2, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-eq p2, v3, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    instance-of v2, p2, Lnet/sf/saxon/type/ErrorType;

    if-eqz v2, :cond_3

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_3
    instance-of v2, v1, Lnet/sf/saxon/type/ErrorType;

    if-eqz v2, :cond_4

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_4
    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v2

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/type/UType;->EXTENSION:Lnet/sf/saxon/type/UType;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v2, v3, v4}, Lnet/sf/saxon/type/Type;->isGuaranteedComparable(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    iput-boolean v6, p0, Lnet/sf/saxon/expr/EquivalenceComparison;->q:Z

    goto :goto_0

    :cond_6
    invoke-static {v2, v3, v4}, Lnet/sf/saxon/type/Type;->isPossiblyComparable(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Z)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot compare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_7
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/Literal;

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/Literal;

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/EquivalenceComparison;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    return-object p0

    :cond_9
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Cannot perform comparisons involving external objects"

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    const-string p2, "XPTY0004"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method
