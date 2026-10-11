.class public Lnet/sf/saxon/expr/ArithmeticExpression;
.super Lnet/sf/saxon/expr/BinaryExpression;
.source "SourceFile"


# instance fields
.field protected calculator:Lnet/sf/saxon/expr/Calculator;

.field public p:Lnet/sf/saxon/type/PlainType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/BinaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public static compute(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result v0

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lnet/sf/saxon/expr/Calculator;->getCalculator(IIIZ)Lnet/sf/saxon/expr/Calculator;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Lnet/sf/saxon/expr/Calculator;->compute(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public static mapOpCode(I)I
    .locals 1

    const/16 v0, 0x38

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12b

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_4
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public computeSpecialProperties()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/BinaryExpression;->computeSpecialProperties()I

    move-result p0

    const/high16 v0, 0x4000000

    or-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/ArithmeticExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/expr/ArithmeticExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/ArithmeticExpression;->calculator:Lnet/sf/saxon/expr/Calculator;

    iput-object p0, v0, Lnet/sf/saxon/expr/ArithmeticExpression;->calculator:Lnet/sf/saxon/expr/Calculator;

    return-object v0
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/ArithmeticExpression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    if-nez v2, :cond_1

    return-object v1

    .line 4
    :cond_1
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/expr/ArithmeticExpression;->calculator:Lnet/sf/saxon/expr/Calculator;

    invoke-virtual {v1, v0, v2, p1}, Lnet/sf/saxon/expr/Calculator;->compute(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 6
    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    .line 7
    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 8
    throw v0
.end method

.method public explainExtraAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/ArithmeticExpression;->calculator:Lnet/sf/saxon/expr/Calculator;

    if-eqz p0, :cond_0

    const-string v0, "calc"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Calculator;->code()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCalculator()Lnet/sf/saxon/expr/Calculator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ArithmeticExpression;->calculator:Lnet/sf/saxon/expr/Calculator;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "arithmetic"

    return-object p0
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v3, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/16 v4, 0x38

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v4, :cond_4

    packed-switch v3, :pswitch_data_0

    return-object v2

    :pswitch_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/expr/Literal;

    if-eqz v3, :cond_2

    aget-object p0, v1, v7

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result v1

    if-lez v1, :cond_1

    new-array v1, v5, [Lnet/sf/saxon/value/IntegerValue;

    aget-object v2, v0, v7

    invoke-virtual {v2, p0}, Lnet/sf/saxon/value/IntegerValue;->times(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object v2

    aput-object v2, v1, v7

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/IntegerValue;->times(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    aput-object p0, v1, v6

    return-object v1

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz p0, :cond_3

    aget-object p0, v1, v7

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result v0

    if-lez v0, :cond_3

    new-array v0, v5, [Lnet/sf/saxon/value/IntegerValue;

    aget-object v2, v1, v7

    invoke-virtual {v2, p0}, Lnet/sf/saxon/value/IntegerValue;->times(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object v2

    aput-object v2, v0, v7

    aget-object v1, v1, v6

    invoke-virtual {v1, p0}, Lnet/sf/saxon/value/IntegerValue;->times(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    aput-object p0, v0, v6

    return-object v0

    :cond_3
    return-object v2

    :pswitch_1
    new-array p0, v5, [Lnet/sf/saxon/value/IntegerValue;

    aget-object v2, v0, v7

    aget-object v3, v1, v6

    invoke-virtual {v2, v3}, Lnet/sf/saxon/value/IntegerValue;->minus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object v2

    aput-object v2, p0, v7

    aget-object v0, v0, v6

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/IntegerValue;->minus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object v0

    aput-object v0, p0, v6

    return-object p0

    :pswitch_2
    new-array p0, v5, [Lnet/sf/saxon/value/IntegerValue;

    aget-object v2, v0, v7

    aget-object v3, v1, v7

    invoke-virtual {v2, v3}, Lnet/sf/saxon/value/IntegerValue;->plus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object v2

    aput-object v2, p0, v7

    aget-object v0, v0, v6

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/IntegerValue;->plus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object v0

    aput-object v0, p0, v6

    return-object p0

    :cond_4
    :pswitch_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz p0, :cond_5

    aget-object p0, v1, v7

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result v1

    if-lez v1, :cond_5

    :try_start_0
    new-array v1, v5, [Lnet/sf/saxon/value/IntegerValue;

    aget-object v3, v0, v7

    invoke-virtual {v3, p0}, Lnet/sf/saxon/value/IntegerValue;->idiv(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object v3

    aput-object v3, v1, v7

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/IntegerValue;->idiv(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    aput-object p0, v1, v6
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_5
    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/ArithmeticExpression;->getItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/PlainType;
    .locals 5

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/expr/ArithmeticExpression;->p:Lnet/sf/saxon/type/PlainType;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/ArithmeticExpression;->calculator:Lnet/sf/saxon/expr/Calculator;

    if-nez v0, :cond_1

    .line 4
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lnet/sf/saxon/type/AtomicType;

    if-nez v1, :cond_2

    .line 7
    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object v0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    .line 9
    instance-of v2, v1, Lnet/sf/saxon/type/AtomicType;

    if-nez v2, :cond_3

    .line 10
    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object v1

    .line 11
    :cond_3
    iget-object v2, p0, Lnet/sf/saxon/expr/ArithmeticExpression;->calculator:Lnet/sf/saxon/expr/Calculator;

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/type/AtomicType;

    .line 12
    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/type/AtomicType;

    .line 13
    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/expr/Calculator;->getResultType(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/AtomicType;

    move-result-object v2

    .line 14
    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    .line 16
    iget v3, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/16 v4, 0xf

    if-eq v3, v4, :cond_4

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    .line 17
    :cond_4
    invoke-static {v1}, Lnet/sf/saxon/type/NumericType;->isNumericType(Lnet/sf/saxon/type/ItemType;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lnet/sf/saxon/type/NumericType;->isNumericType(Lnet/sf/saxon/type/ItemType;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    :cond_5
    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v2

    .line 19
    :cond_6
    iput-object v2, p0, Lnet/sf/saxon/expr/ArithmeticExpression;->p:Lnet/sf/saxon/type/PlainType;

    return-object v2
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-ne p1, p0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/UType;->NUMERIC:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_0
    iget p0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/16 p1, 0x12b

    if-ne p0, p1, :cond_1

    sget-object p0, Lnet/sf/saxon/type/UType;->NUMERIC:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_1
    sget-object p0, Lnet/sf/saxon/type/UType;->ANY_ATOMIC:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public resetLocalStaticProperties()V
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/ArithmeticExpression;->p:Lnet/sf/saxon/type/PlainType;

    return-void
.end method

.method public setCalculator(Lnet/sf/saxon/expr/Calculator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/ArithmeticExpression;->calculator:Lnet/sf/saxon/expr/Calculator;

    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 0

    const-string p0, "arith"

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/ArithmeticExpression;->resetLocalStaticProperties()V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    sget-object v9, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    new-instance v10, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    sget-object v11, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget v12, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    aget-object v12, v11, v12

    const/4 v13, 0x1

    invoke-direct {v10, v13, v12, v5}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v12

    invoke-virtual {v6, v12, v9, v10, v1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v10

    invoke-virtual {v0, v10}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v10

    instance-of v12, v10, Lnet/sf/saxon/type/ErrorType;

    if-eqz v12, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v10}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v12

    check-cast v12, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v12}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v14

    const/high16 v15, 0x4000000

    const/16 v5, 0x277

    if-ne v14, v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v12

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v3, v12, v14}, Lnet/sf/saxon/expr/UntypedSequenceConverter;->makeUntypedSequenceConverter(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)Lnet/sf/saxon/expr/UntypedSequenceConverter;

    move-result-object v12

    invoke-virtual {v0, v12}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    move-object v12, v14

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v14

    invoke-virtual {v14}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v14

    and-int/2addr v14, v15

    if-nez v14, :cond_2

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v4, v12, v14}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v14

    sget-object v15, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq v14, v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v12

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v3, v12, v14}, Lnet/sf/saxon/expr/UntypedSequenceConverter;->makeUntypedSequenceConverter(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)Lnet/sf/saxon/expr/UntypedSequenceConverter;

    move-result-object v12

    invoke-virtual {v0, v12}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v12

    invoke-virtual {v12}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v12

    invoke-interface {v12}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v12

    check-cast v12, Lnet/sf/saxon/type/AtomicType;

    :cond_2
    :goto_0
    new-instance v14, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget v15, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    aget-object v11, v11, v15

    invoke-direct {v14, v13, v11, v13}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v11

    invoke-virtual {v6, v11, v9, v14, v1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    instance-of v9, v6, Lnet/sf/saxon/type/ErrorType;

    if-eqz v9, :cond_3

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-interface {v6}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v9}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v11

    if-ne v11, v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    sget-object v9, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v3, v4, v9}, Lnet/sf/saxon/expr/UntypedSequenceConverter;->makeUntypedSequenceConverter(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)Lnet/sf/saxon/expr/UntypedSequenceConverter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v5

    const/high16 v11, 0x4000000

    and-int/2addr v5, v11

    if-nez v5, :cond_5

    sget-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v4, v9, v5}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq v4, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v3, v4, v5}, Lnet/sf/saxon/expr/UntypedSequenceConverter;->makeUntypedSequenceConverter(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)Lnet/sf/saxon/expr/UntypedSequenceConverter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lnet/sf/saxon/type/AtomicType;

    :cond_5
    :goto_1
    invoke-interface {v10}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v3

    invoke-interface {v6}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/type/UType;->EXTENSION:Lnet/sf/saxon/type/UType;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v3

    const-string v4, "XPTY0004"

    if-nez v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-eq v3, v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-eq v3, v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_2

    :cond_8
    iget v3, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/16 v5, 0x12b

    if-ne v3, v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/expr/Literal;

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/value/NumericValue;

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/NumericValue;->negate()Lnet/sf/saxon/value/NumericValue;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v3, Lnet/sf/saxon/expr/NegateExpression;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-direct {v3, v0}, Lnet/sf/saxon/expr/NegateExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lnet/sf/saxon/expr/NegateExpression;->setBackwardsCompatible(Z)V

    invoke-virtual {v3, v1, v2}, Lnet/sf/saxon/expr/NegateExpression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v5, 0x0

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v5, v13

    :cond_b
    invoke-interface {v12}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v2

    invoke-interface {v9}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v3

    iget v6, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-static {v6}, Lnet/sf/saxon/expr/ArithmeticExpression;->mapOpCode(I)I

    move-result v6

    invoke-static {v2, v3, v6, v5}, Lnet/sf/saxon/expr/Calculator;->getCalculator(IIIZ)Lnet/sf/saxon/expr/Calculator;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/ArithmeticExpression;->calculator:Lnet/sf/saxon/expr/Calculator;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Calculator;->code()Ljava/lang/String;

    move-result-object v2

    const-string v3, "d.d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/Literal;

    if-eqz v2, :cond_c

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/value/NumericValue;

    if-eqz v3, :cond_c

    new-instance v3, Lnet/sf/saxon/value/DoubleValue;

    check-cast v2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    invoke-static {v3, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/Literal;

    if-eqz v2, :cond_d

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/value/NumericValue;

    if-eqz v3, :cond_d

    new-instance v3, Lnet/sf/saxon/value/DoubleValue;

    check-cast v2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    invoke-static {v3, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_d
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/Literal;

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/Literal;

    if-eqz v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/ArithmeticExpression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_e
    return-object v0

    :cond_f
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Arithmetic operator is not defined for arguments of types ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v1, v13}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {v1, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_2
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    const-string v2, "Arithmetic operators are not defined for external objects"

    invoke-direct {v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v1, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v1
.end method
