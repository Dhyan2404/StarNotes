.class public Lnet/sf/saxon/expr/RangeExpression;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# instance fields
.field public n:Lnet/sf/saxon/expr/Operand;

.field public o:Lnet/sf/saxon/expr/Operand;

.field public p:Lnet/sf/saxon/expr/Operand;

.field public q:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    .line 1
    new-instance v0, Lnet/sf/saxon/expr/Literal;

    sget-object v1, Lnet/sf/saxon/value/Int64Value;->PLUS_ONE:Lnet/sf/saxon/value/Int64Value;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/Literal;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    invoke-direct {p0, p1, v0, p2}, Lnet/sf/saxon/expr/RangeExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lnet/sf/saxon/expr/RangeExpression;->q:Z

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    .line 4
    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/RangeExpression;->n:Lnet/sf/saxon/expr/Operand;

    .line 5
    new-instance v0, Lnet/sf/saxon/expr/Operand;

    invoke-direct {v0, p0, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/RangeExpression;->o:Lnet/sf/saxon/expr/Operand;

    .line 6
    new-instance v0, Lnet/sf/saxon/expr/Operand;

    invoke-direct {v0, p0, p3, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/RangeExpression;->p:Lnet/sf/saxon/expr/Operand;

    .line 7
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    .line 8
    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    .line 9
    invoke-virtual {p0, p3}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public static makeSteppingExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/RangeExpression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/expr/RangeExpression;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/RangeExpression;

    iget-boolean v0, p0, Lnet/sf/saxon/expr/RangeExpression;->q:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/RangeExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lnet/sf/saxon/expr/RangeExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Temporary restriction: \'by\' operator must be preceded by \'x to y\'"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public computeHashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStepExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result p0

    shl-int/lit8 p0, p0, 0x7

    xor-int/2addr p0, v0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->computeSpecialProperties()I

    move-result p0

    const/high16 v0, 0x800000

    or-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/RangeExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStepExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/expr/RangeExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public final d()Lnet/sf/saxon/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStepExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStepExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v3, v0, Lnet/sf/saxon/value/Int64Value;

    if-eqz v3, :cond_5

    instance-of v3, v1, Lnet/sf/saxon/value/Int64Value;

    if-eqz v3, :cond_5

    instance-of v3, v2, Lnet/sf/saxon/value/Int64Value;

    if-eqz v3, :cond_5

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v8

    check-cast v1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v6

    check-cast v2, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v2}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_4

    cmp-long v3, v8, v0

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    sub-long v3, v0, v8

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v10, 0x7fffffff

    cmp-long v3, v3, v10

    if-gtz v3, :cond_3

    if-gez v2, :cond_2

    new-instance v2, Lnet/sf/saxon/value/IntegerRange;

    move-object v3, v2

    move-wide v4, v0

    invoke-direct/range {v3 .. v9}, Lnet/sf/saxon/value/IntegerRange;-><init>(JJJ)V

    goto :goto_0

    :cond_2
    new-instance v2, Lnet/sf/saxon/value/IntegerRange;

    move-object v3, v2

    move-wide v4, v8

    move-wide v8, v0

    invoke-direct/range {v3 .. v9}, Lnet/sf/saxon/value/IntegerRange;-><init>(JJJ)V

    :goto_0
    invoke-static {v2, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    goto :goto_4

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Maximum length of sequence in Saxon is 2147483647"

    const-string v1, "XPDY0130"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    goto :goto_4

    :cond_5
    check-cast v0, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/IntegerValue;->asBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    check-cast v1, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/IntegerValue;->asBigInteger()Ljava/math/BigInteger;

    check-cast v2, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/IntegerValue;->asBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    goto :goto_4

    :cond_7
    return-object p0

    :cond_8
    :goto_2
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    goto :goto_4

    :cond_9
    :goto_3
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    :goto_4
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_a
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lnet/sf/saxon/expr/RangeExpression;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->hasCompatibleStaticContext(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/RangeExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStepExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/RangeExpression;->getStepExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {p1}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/Expression;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/Expression;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "to"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getEndExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/RangeExpression;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "range"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lnet/sf/saxon/value/IntegerValue;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aget-object p0, p0, v0

    aput-object p0, v1, v0

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getStartExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/RangeExpression;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->DECIMAL:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public getStepExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/RangeExpression;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public isDefaultedStep()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/RangeExpression;->q:Z

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStepExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/IntegerValue;

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/expr/AscendingRangeIterator;->makeRangeIterator(Lnet/sf/saxon/value/IntegerValue;Lnet/sf/saxon/value/IntegerValue;Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/RangeExpression;->n:Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/expr/RangeExpression;->o:Lnet/sf/saxon/expr/Operand;

    iget-object v2, p0, Lnet/sf/saxon/expr/RangeExpression;->p:Lnet/sf/saxon/expr/Operand;

    filled-new-array {v0, v1, v2}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/RangeExpression;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/RangeExpression;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/RangeExpression;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->d()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStepExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " by "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStepExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " by "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/RangeExpression;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/RangeExpression;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/RangeExpression;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->isInBackwardsCompatibleMode()Z

    move-result p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "to"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/RangeExpression;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_INTEGER:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p2, v4, v5, v0, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v1, "by"

    invoke-direct {v0, v2, v1, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/RangeExpression;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStepExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {p2, v4, v5, v0, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v0, v2, v3, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/RangeExpression;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p2, v2, v5, v0, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->d()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
