.class public Lnet/sf/saxon/expr/NumberSequenceFormatter;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# instance fields
.field public n:Lnet/sf/saxon/expr/Operand;

.field public o:Lnet/sf/saxon/expr/Operand;

.field public p:Lnet/sf/saxon/expr/Operand;

.field public q:Lnet/sf/saxon/expr/Operand;

.field public r:Lnet/sf/saxon/expr/Operand;

.field public s:Lnet/sf/saxon/expr/Operand;

.field public final t:Lnet/sf/saxon/expr/Operand;

.field public u:Lnet/sf/saxon/expr/Operand;

.field public v:Lnet/sf/saxon/expr/number/NumberFormatter;

.field public w:Lnet/sf/saxon/lib/Numberer;

.field public final x:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/number/NumberFormatter;Z)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->v:Lnet/sf/saxon/expr/number/NumberFormatter;

    iput-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->w:Lnet/sf/saxon/lib/Numberer;

    if-eqz p1, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->n:Lnet/sf/saxon/expr/Operand;

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object v0, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p2, v0}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->o:Lnet/sf/saxon/expr/Operand;

    :cond_1
    if-eqz p3, :cond_2

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object v0, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p3, v0}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->p:Lnet/sf/saxon/expr/Operand;

    :cond_2
    if-eqz p4, :cond_3

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p3, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p4, p3}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->q:Lnet/sf/saxon/expr/Operand;

    :cond_3
    if-eqz p5, :cond_4

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p3, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p5, p3}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->r:Lnet/sf/saxon/expr/Operand;

    :cond_4
    if-eqz p6, :cond_5

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p3, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p6, p3}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->s:Lnet/sf/saxon/expr/Operand;

    :cond_5
    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p3, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p7, p3}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->t:Lnet/sf/saxon/expr/Operand;

    if-eqz p8, :cond_6

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    invoke-direct {p1, p0, p8, p3}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->u:Lnet/sf/saxon/expr/Operand;

    :cond_6
    iput-object p9, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->v:Lnet/sf/saxon/expr/number/NumberFormatter;

    iput-boolean p10, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->x:Z

    if-nez p9, :cond_7

    instance-of p1, p2, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p1, :cond_7

    new-instance p1, Lnet/sf/saxon/expr/number/NumberFormatter;

    invoke-direct {p1}, Lnet/sf/saxon/expr/number/NumberFormatter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->v:Lnet/sf/saxon/expr/number/NumberFormatter;

    check-cast p2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/number/NumberFormatter;->prepare(Ljava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 12

    new-instance v11, Lnet/sf/saxon/expr/NumberSequenceFormatter;

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->d(Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->d(Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->d(Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->q:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->d(Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->r:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->d(Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->s:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->d(Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->t:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->d(Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->u:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->d(Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    iget-object v9, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->v:Lnet/sf/saxon/expr/number/NumberFormatter;

    iget-boolean v10, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->x:Z

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lnet/sf/saxon/expr/NumberSequenceFormatter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/number/NumberFormatter;Z)V

    invoke-static {p0, v11}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v11
.end method

.method public final d(Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final e()Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->g(Lnet/sf/saxon/expr/Operand;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/StringValue;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->t:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->parseStartAtValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 7
    :goto_0
    invoke-interface {v3}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/value/AtomicValue;

    const-string v7, "NaN"

    if-eqz v6, :cond_8

    .line 8
    iget-boolean v8, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->x:Z

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_3

    .line 9
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v5, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    :goto_1
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v5, v5, 0x1

    .line 10
    :try_start_0
    instance-of v10, v6, Lnet/sf/saxon/value/NumericValue;

    if-eqz v10, :cond_2

    .line 11
    move-object v10, v6

    check-cast v10, Lnet/sf/saxon/value/NumericValue;

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v10

    invoke-static {v6, v10}, Lnet/sf/saxon/functions/Number_1;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object v10

    .line 13
    :goto_2
    invoke-virtual {v10}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v11

    if-nez v11, :cond_6

    .line 14
    invoke-virtual {v10, v4}, Lnet/sf/saxon/value/NumericValue;->round(I)Lnet/sf/saxon/value/NumericValue;

    move-result-object v10

    .line 15
    sget-object v11, Lnet/sf/saxon/value/Int64Value;->MAX_LONG:Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v10, v11}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result v11

    if-lez v11, :cond_4

    .line 16
    sget-object v11, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v10, v11, v0}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sf/saxon/value/AtomicValue;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v10

    check-cast v10, Lnet/sf/saxon/value/BigIntegerValue;

    invoke-virtual {v10}, Lnet/sf/saxon/value/BigIntegerValue;->asBigInteger()Ljava/math/BigInteger;

    move-result-object v10

    if-eq v8, v9, :cond_3

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    .line 17
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 18
    :cond_3
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_4
    sget-object v9, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v10, v9}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result v9

    if-ltz v9, :cond_5

    .line 20
    sget-object v9, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v10, v9, v0}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sf/saxon/value/AtomicValue;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v9}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v9

    add-int/lit8 v8, v8, -0x1

    int-to-long v11, v8

    add-long/2addr v9, v11

    .line 21
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 22
    :cond_5
    new-instance v8, Lnet/sf/saxon/trans/XPathException;

    const-string v9, "The numbers to be formatted must not be negative"

    invoke-direct {v8, v9}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 23
    :cond_6
    new-instance v8, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v8, v7}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v8

    .line 24
    iget-boolean v9, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->x:Z

    if-eqz v9, :cond_7

    .line 25
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 26
    :cond_7
    invoke-virtual {v6}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert supplied value to an integer. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v1, "XTDE0980"

    .line 28
    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 30
    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 31
    throw v0

    .line 32
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->x:Z

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_9
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->p:Lnet/sf/saxon/expr/Operand;

    const-string v2, "XTDE0030"

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v0

    goto :goto_4

    .line 37
    :catch_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "grouping-size must be numeric"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 39
    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 41
    throw v0

    .line 42
    :cond_a
    :goto_4
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->q:Lnet/sf/saxon/expr/Operand;

    const-string v3, ""

    if-eqz v0, :cond_b

    .line 43
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_5

    :cond_b
    move-object v5, v3

    .line 44
    :goto_5
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->s:Lnet/sf/saxon/expr/Operand;

    const/4 v6, 0x0

    if-eqz v0, :cond_c

    .line 45
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_6

    :cond_c
    move-object v7, v6

    .line 46
    :goto_6
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->w:Lnet/sf/saxon/lib/Numberer;

    if-nez v0, :cond_f

    .line 47
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->u:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_d

    .line 48
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Lnet/sf/saxon/Configuration;->makeNumberer(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/Numberer;

    move-result-object v0

    goto :goto_7

    .line 49
    :cond_d
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v8, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToLanguage;

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v8

    if-nez v8, :cond_e

    .line 51
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v8

    invoke-virtual {v8, v0, v6}, Lnet/sf/saxon/Configuration;->makeNumberer(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/Numberer;

    move-result-object v0

    goto :goto_7

    .line 52
    :cond_e
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The lang attribute of xsl:number must be a valid language code"

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_7
    move-object v6, v0

    .line 53
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->r:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_10

    move-object v8, v3

    goto :goto_9

    .line 54
    :cond_10
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "alphabetic"

    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "traditional"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_8

    .line 56
    :cond_11
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "letter-value must be \"traditional\" or \"alphabetic\""

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 58
    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 60
    throw v0

    :cond_12
    :goto_8
    move-object v8, v0

    .line 61
    :goto_9
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->v:Lnet/sf/saxon/expr/number/NumberFormatter;

    if-nez v0, :cond_13

    .line 62
    new-instance v0, Lnet/sf/saxon/expr/number/NumberFormatter;

    invoke-direct {v0}, Lnet/sf/saxon/expr/number/NumberFormatter;-><init>()V

    .line 63
    iget-object p0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/number/NumberFormatter;->prepare(Ljava/lang/String;)V

    :cond_13
    move v2, v4

    move-object v3, v5

    move-object v4, v8

    move-object v5, v7

    .line 64
    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/expr/number/NumberFormatter;->format(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/lib/Numberer;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    .line 65
    new-instance p1, Lnet/sf/saxon/value/StringValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "numSeqFmt"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-boolean v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->x:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "flags"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->n:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_2

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->o:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_3

    const-string v0, "format"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->t:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_4

    const-string v0, "startAt"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->t:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->u:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_5

    const-string v0, "lang"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->u:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->s:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_6

    const-string v0, "ordinal"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->s:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_6
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->q:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_7

    const-string v0, "gpSep"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->q:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->p:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_8

    const-string v0, "gpSize"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_8
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public final g(Lnet/sf/saxon/expr/Operand;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/expr/Literal;

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

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->n:Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->o:Lnet/sf/saxon/expr/Operand;

    iget-object v2, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->p:Lnet/sf/saxon/expr/Operand;

    iget-object v3, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->q:Lnet/sf/saxon/expr/Operand;

    iget-object v4, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->r:Lnet/sf/saxon/expr/Operand;

    iget-object v5, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->s:Lnet/sf/saxon/expr/Operand;

    iget-object v6, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->t:Lnet/sf/saxon/expr/Operand;

    iget-object v7, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->u:Lnet/sf/saxon/expr/Operand;

    filled-new-array/range {v0 .. v7}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandSparseList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimizeChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->makeDynamicContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/StringValue;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {p2, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    invoke-static {p0, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p2

    :cond_0
    return-object p0
.end method

.method public parseStartAtValue(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "XTDE0030"

    if-ge v2, v1, :cond_0

    aget-object v4, p1, v2

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid start-at value: non-integer component {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Invalid start-at value: no numeric components found"

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public preallocateNumberer(Lnet/sf/saxon/Configuration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->u:Lnet/sf/saxon/expr/Operand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v1}, Lnet/sf/saxon/Configuration;->makeNumberer(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/Numberer;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->w:Lnet/sf/saxon/lib/Numberer;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->u:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToLanguage;

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->u:Lnet/sf/saxon/expr/Operand;

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The lang attribute must be a valid language code"

    const-string v0, "XTDE0030"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/Configuration;->makeNumberer(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/Numberer;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->w:Lnet/sf/saxon/lib/Numberer;

    :cond_3
    :goto_1
    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->n:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/NumberSequenceFormatter;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->preallocateNumberer(Lnet/sf/saxon/Configuration;)V

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
