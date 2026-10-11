.class public final Lnet/sf/saxon/expr/FilterExpression;
.super Lnet/sf/saxon/expr/BinaryExpression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ContextSwitchingExpression;


# static fields
.field public static final FILTERED:I = 0x2710

.field public static final FILTER_PREDICATE:Lnet/sf/saxon/expr/OperandRole;


# instance fields
.field public doneReorderingPredicates:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->INSPECTION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/FilterExpression;->FILTER_PREDICATE:Lnet/sf/saxon/expr/OperandRole;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lnet/sf/saxon/expr/BinaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lnet/sf/saxon/expr/FilterExpression;->doneReorderingPredicates:Z

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setFiltered(Z)V

    return-void
.end method

.method public static forceToBoolean(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v0

    const/16 v1, 0x202

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/sf/saxon/expr/Expression;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "boolean"

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p0

    and-int/lit8 p0, p0, 0xc

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPositionalFilter(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/expr/FilterExpression;->i(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lnet/sf/saxon/type/AnyItemType;

    if-nez v0, :cond_2

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lnet/sf/saxon/type/NumericType;->isNumericType(Lnet/sf/saxon/type/ItemType;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Lnet/sf/saxon/expr/FilterExpression;->i(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static m(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/expr/Expression;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    move-object/from16 v4, p3

    invoke-virtual {v4, v2, v3}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v2

    const-string v4, "operator"

    const/16 v5, 0x10

    const/16 v6, 0xf

    const-string v7, "remove"

    const/4 v8, 0x3

    const-string v9, "subsequence"

    const-wide/16 v10, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v2, :cond_4

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array v2, v8, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, v2, v13

    invoke-static {v10, v11}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v3

    invoke-static {v3, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v3

    aput-object v3, v2, v14

    aput-object v1, v2, v12

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-static {v9, v0, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    new-array v3, v12, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, v3, v13

    aput-object v1, v3, v14

    invoke-static {v9, v2, v3}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-array v2, v8, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, v2, v13

    invoke-static {v10, v11}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v3

    invoke-static {v3, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-static/range {p1 .. p1}, Lnet/sf/saxon/expr/Literal;->isAtomic(Lnet/sf/saxon/expr/Expression;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, v10

    invoke-static {v3, v4}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v1

    aput-object v1, v2, v12

    goto :goto_0

    :cond_0
    new-instance v3, Lnet/sf/saxon/expr/ArithmeticExpression;

    invoke-static {v10, v11}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v4

    invoke-static {v4, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v4

    invoke-direct {v3, v1, v5, v4}, Lnet/sf/saxon/expr/ArithmeticExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    const/16 v1, 0x215

    invoke-static {v1, v1, v14, v14}, Lnet/sf/saxon/expr/Calculator;->getCalculator(IIIZ)Lnet/sf/saxon/expr/Calculator;

    move-result-object v1

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/ArithmeticExpression;->setCalculator(Lnet/sf/saxon/expr/Calculator;)V

    aput-object v3, v2, v12

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-static {v9, v0, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_3
    new-array v2, v12, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, v2, v13

    invoke-static/range {p1 .. p1}, Lnet/sf/saxon/expr/Literal;->isAtomic(Lnet/sf/saxon/expr/Expression;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v10

    invoke-static {v3, v4}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v1

    aput-object v1, v2, v14

    goto :goto_1

    :cond_1
    new-instance v3, Lnet/sf/saxon/expr/ArithmeticExpression;

    invoke-static {v10, v11}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v4

    invoke-static {v4, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v4

    invoke-direct {v3, v1, v6, v4}, Lnet/sf/saxon/expr/ArithmeticExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    aput-object v3, v2, v14

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-static {v9, v0, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    new-array v3, v12, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, v3, v13

    aput-object v1, v3, v14

    invoke-static {v7, v2, v3}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static/range {p1 .. p1}, Lnet/sf/saxon/expr/Literal;->isConstantOne(Lnet/sf/saxon/expr/Expression;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static/range {p0 .. p0}, Lnet/sf/saxon/expr/FirstItemExpression;->makeFirstItemExpression(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_2
    instance-of v2, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/IntegerValue;->asBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_3

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v2, Lnet/sf/saxon/expr/SubscriptExpression;

    invoke-direct {v2, v0, v1}, Lnet/sf/saxon/expr/SubscriptExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v2

    :cond_4
    const-string v2, "floor"

    const-string v15, "ceiling"

    const-string v6, "is-whole-number"

    const-string v5, "http://saxon.sf.net/"

    const-string v12, "pp"

    packed-switch p2, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    new-array v4, v14, [Lnet/sf/saxon/expr/Expression;

    aput-object v1, v4, v13

    invoke-static {v2, v3, v4}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    new-array v3, v8, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, v3, v13

    invoke-static {v10, v11}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v4

    invoke-static {v4, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    aput-object v0, v3, v14

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v9, v2, v3}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_7
    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    new-array v3, v14, [Lnet/sf/saxon/expr/Expression;

    aput-object v1, v3, v13

    invoke-static {v15, v2, v3}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    new-array v3, v4, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, v3, v13

    aput-object v1, v3, v14

    invoke-static {v9, v2, v3}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_8
    new-instance v3, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v3}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    const/16 v7, 0x4000

    invoke-static {v4, v7}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    new-instance v4, Lnet/sf/saxon/om/StructuredQName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v12, v5, v7}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    new-instance v1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v1, v3}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    new-instance v4, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v4, v3}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    new-instance v5, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v5, v3}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-static {}, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->getInstance()Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;

    move-result-object v7

    invoke-virtual {v7, v6, v14}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v6

    new-array v7, v14, [Lnet/sf/saxon/expr/Expression;

    aput-object v1, v7, v13

    invoke-virtual {v6, v7}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    new-instance v6, Lnet/sf/saxon/expr/ArithmeticExpression;

    invoke-static {v10, v11}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v7

    invoke-static {v7, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v7

    const/16 v12, 0x10

    invoke-direct {v6, v4, v12, v7}, Lnet/sf/saxon/expr/ArithmeticExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    new-array v7, v14, [Lnet/sf/saxon/expr/Expression;

    aput-object v5, v7, v13

    invoke-static {v2, v4, v7}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lnet/sf/saxon/expr/instruct/Choose;->makeConditional(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    new-array v4, v8, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, v4, v13

    invoke-static {v10, v11}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v5

    invoke-static {v5, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    aput-object v0, v4, v14

    const/4 v0, 0x2

    aput-object v1, v4, v0

    invoke-static {v9, v2, v4}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object v3

    :pswitch_9
    new-instance v2, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v2}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-static {v3, v4}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    new-instance v3, Lnet/sf/saxon/om/StructuredQName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v12, v5, v4}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    new-instance v1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    new-instance v3, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v3, v2}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    new-instance v4, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v4, v2}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-static {}, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->getInstance()Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;

    move-result-object v5

    invoke-virtual {v5, v6, v14}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v5

    new-array v6, v14, [Lnet/sf/saxon/expr/Expression;

    aput-object v1, v6, v13

    invoke-virtual {v5, v6}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    new-instance v5, Lnet/sf/saxon/expr/ArithmeticExpression;

    invoke-static {v10, v11}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v6

    invoke-static {v6, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v6

    const/16 v7, 0xf

    invoke-direct {v5, v3, v7, v6}, Lnet/sf/saxon/expr/ArithmeticExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    new-array v6, v14, [Lnet/sf/saxon/expr/Expression;

    aput-object v4, v6, v13

    invoke-static {v15, v3, v6}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lnet/sf/saxon/expr/instruct/Choose;->makeConditional(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, v4, v13

    aput-object v1, v4, v14

    invoke-static {v9, v3, v4}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object v2

    :pswitch_a
    new-instance v2, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v2}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    invoke-static {v0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    const/16 v8, 0x4000

    invoke-static {v4, v8}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    new-instance v4, Lnet/sf/saxon/om/StructuredQName;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v12, v5, v8}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    new-instance v1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    new-instance v4, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v4, v2}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-static {}, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->getInstance()Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;

    move-result-object v5

    invoke-virtual {v5, v6, v14}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v5

    new-array v6, v14, [Lnet/sf/saxon/expr/Expression;

    aput-object v1, v6, v13

    invoke-virtual {v5, v6}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance v5, Lnet/sf/saxon/expr/CastExpression;

    invoke-direct {v5, v4, v3, v13}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    invoke-static {v0, v5}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v3

    invoke-static {v3, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lnet/sf/saxon/expr/instruct/Choose;->makeConditional(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, v4, v13

    aput-object v1, v4, v14

    invoke-static {v7, v3, v4}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object v2

    :pswitch_b
    new-instance v2, Lnet/sf/saxon/expr/SubscriptExpression;

    invoke-direct {v2, v0, v1}, Lnet/sf/saxon/expr/SubscriptExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    return-object p2
.end method

.method public computeCardinality()I
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    const/16 v1, 0x6000

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/NumericValue;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/value/NumericValue;->compareTo(J)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x4000

    return p0

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->r:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v0, v2, :cond_3

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v0, v2, :cond_3

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v0, v2, :cond_3

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/ArithmeticExpression;

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    return v1

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/IsLastExpression;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/IsLastExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/IsLastExpression;->getCondition()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    const p0, 0xe000

    return p0
.end method

.method public computeHashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v0

    const v1, 0x488c8850    # 287810.5f

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public computeSpecialProperties()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-boolean p1, p0, Lnet/sf/saxon/expr/FilterExpression;->r:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/FilterExpression;->r:Z

    iget-boolean p1, p0, Lnet/sf/saxon/expr/FilterExpression;->p:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/FilterExpression;->p:Z

    iget-boolean p1, p0, Lnet/sf/saxon/expr/FilterExpression;->q:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/FilterExpression;->q:Z

    iget-boolean p0, p0, Lnet/sf/saxon/expr/FilterExpression;->s:Z

    iput-boolean p0, v0, Lnet/sf/saxon/expr/FilterExpression;->s:Z

    return-object v0
.end method

.method public disableIndexing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->s:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/expr/FilterExpression;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "filter"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->r:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->p:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->q:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v0, "flags"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getActionExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getBase()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getCost()D
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "filter"

    return-object p0
.end method

.method public getFilter()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/InstanceOfExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/InstanceOfExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/InstanceOfExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/InstanceOfExpression;->getRequiredItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getOperandRole(I)Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/sf/saxon/expr/FilterExpression;->FILTER_PREDICATE:Lnet/sf/saxon/expr/OperandRole;

    :goto_0
    return-object p0
.end method

.method public getSelectExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "FilterExpression"

    return-object p0
.end method

.method public isFilterIsPositional()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/FilterExpression;->p:Z

    return p0
.end method

.method public isIndependentFilter()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/FilterExpression;->r:Z

    return p0
.end method

.method public isPositional(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/FilterExpression;->isPositionalFilter(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p0

    return p0
.end method

.method public isSimpleBooleanFilter()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/FilterExpression;->q:Z

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->r:Z

    if-eqz v0, :cond_d

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v2, v1, Lnet/sf/saxon/value/NumericValue;

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "sequence of two or more items starting with a numeric value"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    goto/16 :goto_2

    :cond_1
    check-cast v1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/NumericValue;->asSubscript()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/VariableReference;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    instance-of v1, p1, Lnet/sf/saxon/value/MemoClosure;

    if-eqz v1, :cond_2

    check-cast p1, Lnet/sf/saxon/value/MemoClosure;

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/MemoClosure;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-static {p1, v0, v0}, Lnet/sf/saxon/expr/SubsequenceIterator;->make(Lnet/sf/saxon/om/SequenceIterator;II)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v2, v1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    instance-of v2, v1, Lnet/sf/saxon/value/BooleanValue;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "sequence of two or more items starting with a boolean value"

    if-eqz v2, :cond_8

    :try_start_1
    check-cast v1, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result v3

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v4, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_8
    instance-of v2, v1, Lnet/sf/saxon/value/StringValue;

    const/4 v5, 0x0

    if-eqz v2, :cond_a

    check-cast v1, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/StringValue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    move v3, v5

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v4, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_a
    const-string v0, "sequence starting with an atomic value other than a boolean, number, or string"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    move v3, v5

    :cond_b
    :goto_1
    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_d
    :goto_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/tree/iter/EmptyIterator;

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    iget-boolean v1, p0, Lnet/sf/saxon/expr/FilterExpression;->p:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lnet/sf/saxon/expr/FilterExpression;->q:Z

    if-nez v1, :cond_f

    new-instance v1, Lnet/sf/saxon/expr/FilterIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {v1, v0, p0, p1}, Lnet/sf/saxon/expr/FilterIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v1

    :cond_f
    new-instance v1, Lnet/sf/saxon/expr/FilterIterator$NonNumeric;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {v1, v0, p0, p1}, Lnet/sf/saxon/expr/FilterIterator$NonNumeric;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v1
.end method

.method public final j([Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/parser/Optimizer;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/expr/FilterExpression;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p3}, Lnet/sf/saxon/expr/FilterExpression;->isPositional(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {v0, p3}, Lnet/sf/saxon/expr/FilterExpression;->isPositional(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lnet/sf/saxon/expr/FilterExpression;

    new-instance v2, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2, p1, p2, p3}, Lnet/sf/saxon/expr/FilterExpression;->j([Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/parser/Optimizer;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/expr/FilterExpression;

    move-result-object p0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    const-string p0, "Reordered filter predicates:"

    invoke-virtual {p2, p0, v1}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    return-object v1

    :cond_4
    return-object p0
.end method

.method public final k(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/om/Sequence;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->refersToVariableOrFunction(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v1

    and-int/lit8 v1, v1, -0x1f

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/FilterExpression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final l(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Z)Lnet/sf/saxon/expr/Expression;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/Literal;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/value/NumericValue;

    if-eqz v1, :cond_3

    check-cast v0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->asSubscript()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/FirstItemExpression;->makeFirstItemExpression(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/SubscriptExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/expr/SubscriptExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_2

    const-string p2, "Rewriting numeric filter expression with constant subscript"

    invoke-static {p1, p2, p0}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    return-object p0

    :cond_3
    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    :goto_1
    if-eqz p2, :cond_5

    const-string p2, "Rewriting boolean filter expression with constant subscript"

    invoke-static {p1, p2, p0}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_5
    return-object p0

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/type/NumericType;->isNumericType(Lnet/sf/saxon/type/ItemType;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v1

    and-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_8

    new-instance v0, Lnet/sf/saxon/expr/SubscriptExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/expr/SubscriptExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    if-eqz p2, :cond_7

    const-string p0, "Rewriting numeric filter expression with focus-independent subscript"

    invoke-static {p1, p0, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/ComparisonExpression;

    const-string v3, "http://saxon.sf.net/"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/ComparisonExpression;

    invoke-interface {p1}, Lnet/sf/saxon/expr/ComparisonExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/ComparisonExpression;

    invoke-interface {p2}, Lnet/sf/saxon/expr/ComparisonExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/ComparisonExpression;

    invoke-interface {v1}, Lnet/sf/saxon/expr/ComparisonExpression;->getSingletonOperator()I

    move-result v1

    const-class v6, Lnet/sf/saxon/functions/PositionAndLast$Position;

    invoke-virtual {p1, v6}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v7

    invoke-static {v7}, Lnet/sf/saxon/type/NumericType;->isNumericType(Lnet/sf/saxon/type/ItemType;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object p1, p2

    goto :goto_2

    :cond_9
    invoke-virtual {p2, v6}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/type/NumericType;->isNumericType(Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-static {v1}, Lnet/sf/saxon/expr/parser/Token;->inverse(I)I

    move-result v1

    :goto_2
    invoke-static {p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z

    move-result p2

    if-eqz p2, :cond_a

    return-object v5

    :cond_a
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p2

    invoke-static {p2}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v6

    if-eqz v6, :cond_b

    return-object v5

    :cond_b
    invoke-static {p2}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v5}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    invoke-static {v6, p2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    invoke-virtual {v5, p2}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    new-instance p2, Lnet/sf/saxon/om/StructuredQName;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p2, v7, v3, v6}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v5, p1}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    new-instance p1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {p1, v5}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    new-instance p2, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {p2, v5}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    new-array v2, v2, [Lnet/sf/saxon/expr/Expression;

    aput-object p2, v2, v4

    const-string p2, "exists"

    invoke-static {p2, v3, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2, p1, v1, v0}, Lnet/sf/saxon/expr/FilterExpression;->m(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-nez p1, :cond_c

    return-object p0

    :cond_c
    invoke-static {p2, p1}, Lnet/sf/saxon/expr/instruct/Choose;->makeConditional(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v5, p0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object v5

    :cond_d
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0, p1, v1, v0}, Lnet/sf/saxon/expr/FilterExpression;->m(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v5

    :cond_f
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/IntegerRangeTest;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/IntegerRangeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/IntegerRangeTest;->getValue()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-class v1, Lnet/sf/saxon/functions/PositionAndLast;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_10

    return-object v5

    :cond_10
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/IntegerRangeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/IntegerRangeTest;->getMin()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/IntegerRangeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/IntegerRangeTest;->getMax()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_11

    return-object v5

    :cond_11
    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    const-string v7, "Rewriting numeric range filter expression using subsequence()"

    const/4 v8, 0x2

    const-string v9, "subsequence"

    if-eqz v6, :cond_14

    const-class v3, Lnet/sf/saxon/functions/PositionAndLast$Last;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    new-array v3, v8, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    aput-object p0, v3, v4

    aput-object v0, v3, v2

    invoke-static {v9, v1, v3}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    if-eqz p2, :cond_12

    invoke-static {p1, v7, p0}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_12
    return-object p0

    :cond_13
    return-object v5

    :cond_14
    new-instance v5, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v5}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->SINGLE_INTEGER:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    new-instance v6, Lnet/sf/saxon/om/StructuredQName;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nn"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v11, v3, v10}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v5, v0}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    new-instance v0, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v0, v5}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    new-instance v3, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v3, v5}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    new-instance v6, Lnet/sf/saxon/expr/ArithmeticExpression;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v10

    invoke-static {v10, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v10

    const/16 v11, 0x10

    invoke-direct {v6, v3, v11, v10}, Lnet/sf/saxon/expr/ArithmeticExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    new-instance v3, Lnet/sf/saxon/expr/ArithmeticExpression;

    invoke-direct {v3, v1, v11, v6}, Lnet/sf/saxon/expr/ArithmeticExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    const/4 v6, 0x3

    new-array v6, v6, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    aput-object p0, v6, v4

    aput-object v0, v6, v2

    aput-object v3, v6, v8

    invoke-static {v9, v1, v6}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v5, p0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    if-eqz p2, :cond_15

    invoke-static {p1, v7, p0}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_15
    return-object v5
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/GlobalVariableReference;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->setOptimizeForStreaming(Z)V

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/FilterExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1, v2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->setOptimizeForStreaming(Z)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/lib/Feature;->TRACE_OPTIMIZER_DECISIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v4}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v4

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-static {v6}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v6, v2}, Lnet/sf/saxon/expr/Expression;->setFiltered(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->setContextSettingExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result v8

    invoke-static {v7, v8}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unsortedIfHomogeneous(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    if-eq v7, v8, :cond_2

    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/FilterExpression;->setFilter(Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    instance-of v7, v7, Lnet/sf/saxon/expr/IsLastExpression;

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/expr/IsLastExpression;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/IsLastExpression;->getCondition()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    instance-of v7, v7, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v7

    new-instance v8, Lnet/sf/saxon/expr/AxisExpression;

    const/4 v9, 0x7

    invoke-direct {v8, v9, v7}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v7

    new-array v9, v2, [Lnet/sf/saxon/expr/Expression;

    aput-object v8, v9, v1

    const-string v8, "empty"

    invoke-static {v8, v7, v9}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/FilterExpression;->setFilter(Lnet/sf/saxon/expr/Expression;)V

    if-eqz v4, :cond_3

    const-string v7, "Replaced [last()] predicate by test for following-sibling"

    invoke-static {v0, v7, p0}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    instance-of v7, v7, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v7

    sget-object v8, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    if-ne v7, v8, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    instance-of v7, v7, Lnet/sf/saxon/expr/CompareToStringConstant;

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/expr/CompareToStringConstant;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/CompareToConstant;->getSingletonOperator()I

    move-result v7

    const/16 v8, 0x32

    if-ne v7, v8, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/expr/CompareToStringConstant;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    const-class v8, Lnet/sf/saxon/functions/LocalName_1;

    invoke-virtual {v7, v8}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/expr/CompareToStringConstant;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {v7, v1}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    instance-of v7, v7, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz v7, :cond_4

    new-instance p1, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result p2

    new-instance v1, Lnet/sf/saxon/pattern/LocalNameTest;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/CompareToStringConstant;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/CompareToStringConstant;->getComparand()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lnet/sf/saxon/pattern/LocalNameTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    invoke-direct {p1, p2, v1}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v5, v0, v7}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v8, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v0, v8, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    new-array v8, v2, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v9

    aput-object v9, v8, v1

    const-string v9, "boolean"

    invoke-static {v9, v0, v8}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, v6}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FilterExpression;->setFilter(Lnet/sf/saxon/expr/Expression;)V

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v4, :cond_6

    const-string p1, "Redundant filter removed"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    if-eqz v4, :cond_8

    const-string p0, "Filter expression eliminated because predicate is always false"

    invoke-virtual {v3, p0, p1}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_8
    return-object p1

    :cond_9
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, v5}, Lnet/sf/saxon/expr/FilterExpression;->isPositionalFilter(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->p:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    const/16 v6, 0x4000

    if-ne v0, v6, :cond_a

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->q:Z

    iget-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->p:Z

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->s:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->isIndexableFilter(Lnet/sf/saxon/expr/Expression;)I

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v7

    if-eq v6, v7, :cond_b

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v5, v6, v7}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v2

    goto :goto_1

    :cond_b
    move v5, v1

    :goto_1
    if-lez v0, :cond_c

    move v1, v2

    :cond_c
    invoke-virtual {v3, p0, p1, v1, v5}, Lnet/sf/saxon/expr/parser/Optimizer;->tryIndexedFilter(Lnet/sf/saxon/expr/FilterExpression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eq v0, p0, :cond_d

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_d
    iget-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->p:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/BooleanExpression;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/BooleanExpression;

    iget v0, v0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/BooleanExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/FilterExpression;->i(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    const-string v5, "Composite filter replaced by nested filter expressions"

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/FilterExpression;->i(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/FilterExpression;->forceToBoolean(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/FilterExpression;->forceToBoolean(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v2, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-direct {v2, v6, v1}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance v1, Lnet/sf/saxon/expr/FilterExpression;

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    if-eqz v4, :cond_e

    invoke-virtual {v3, v5, v1}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_e
    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/FilterExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {v0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/FilterExpression;->i(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/FilterExpression;->i(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/FilterExpression;->forceToBoolean(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/FilterExpression;->forceToBoolean(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v2, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance v0, Lnet/sf/saxon/expr/FilterExpression;

    invoke-direct {v0, v2, v1}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    if-eqz v4, :cond_10

    invoke-virtual {v3, v5, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_10
    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/FilterExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/IsLastExpression;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/IsLastExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/IsLastExpression;->getCondition()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_12

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v1

    int-to-long v5, v1

    invoke-direct {v0, v5, v6}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-static {v0, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FilterExpression;->setFilter(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_2

    :cond_12
    new-instance p1, Lnet/sf/saxon/expr/LastItemExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/LastItemExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_13
    :goto_2
    invoke-virtual {p0, p1, v4}, Lnet/sf/saxon/expr/FilterExpression;->l(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_15

    if-eqz v4, :cond_14

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    const-string v1, "Rewrote Filter Expression as:"

    invoke-virtual {v3, v1, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_14
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_15
    iget-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->p:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->doneReorderingPredicates:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/FilterExpression;

    if-nez v0, :cond_16

    invoke-virtual {v3, p0, p1, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->reorderPredicates(Lnet/sf/saxon/expr/FilterExpression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/FilterExpression;

    move-result-object p2

    if-eq p2, p0, :cond_16

    iput-boolean v2, p2, Lnet/sf/saxon/expr/FilterExpression;->doneReorderingPredicates:Z

    return-object p2

    :cond_16
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/FilterExpression;->k(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    :cond_17
    return-object p0
.end method

.method public setBase(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setFilter(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setFlags(Ljava/lang/String;)V
    .locals 1

    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->r:Z

    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->p:Z

    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/expr/FilterExpression;->q:Z

    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FilterExpression;->setBase(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FilterExpression;->setFilter(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/value/NumericValue;

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/EarlyEvaluationContext;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/EarlyEvaluationContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-class v1, Lnet/sf/saxon/functions/PositionAndLast$Last;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lnet/sf/saxon/expr/IsLastExpression;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/IsLastExpression;-><init>(Z)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FilterExpression;->setFilter(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_3
    return-object p0
.end method

.method public toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v2

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/FilterExpression;->isPositional(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_0
    instance-of v2, p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lnet/sf/saxon/expr/FilterExpression;->p:Z

    if-eqz v2, :cond_2

    instance-of v2, v0, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_2

    instance-of p0, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz p0, :cond_1

    move-object p0, v1

    check-cast p0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/value/IntegerValue;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/pattern/SimplePositionalPattern;

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-direct {v0, p1, p0}, Lnet/sf/saxon/pattern/SimplePositionalPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;I)V

    return-object v0

    :cond_1
    new-instance p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p1, :cond_3

    new-instance p1, Lnet/sf/saxon/pattern/GeneralNodePattern;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/pattern/GeneralNodePattern;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The filtered expression in an XSLT 2.0 pattern must be a simple step"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->parenthesize(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lnet/sf/saxon/expr/Expression;->setFiltered(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->setContextSettingExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result p1

    invoke-static {p2, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unsortedIfHomogeneous(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/FilterExpression;->setFilter(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isConstantOne(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/FirstItemExpression;->makeFirstItemExpression(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1, v1}, Lnet/sf/saxon/expr/FilterExpression;->isPositionalFilter(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/expr/FilterExpression;->p:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p1

    const/16 p2, 0x4000

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    move p1, v3

    :goto_0
    iput-boolean p1, p0, Lnet/sf/saxon/expr/FilterExpression;->q:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p1

    and-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lnet/sf/saxon/expr/FilterExpression;->r:Z

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetStaticProperties(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public unordered(ZZ)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/FilterExpression;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/FilterExpression;->setBase(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-object p0
.end method
