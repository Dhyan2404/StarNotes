.class public abstract Lnet/sf/saxon/functions/Minimax;
.super Lnet/sf/saxon/functions/CollatingFunctionFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/Minimax$Max;,
        Lnet/sf/saxon/functions/Minimax$Min;
    }
.end annotation


# instance fields
.field public k:Lnet/sf/saxon/type/PlainType;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;-><init>()V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object v0, p0, Lnet/sf/saxon/functions/Minimax;->k:Lnet/sf/saxon/type/PlainType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/functions/Minimax;->l:Z

    return-void
.end method

.method public static minimax(Lnet/sf/saxon/om/SequenceIterator;ZLnet/sf/saxon/expr/sort/AtomicComparer;ZLnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p4

    invoke-interface/range {p4 .. p4}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v0

    invoke-interface/range {p4 .. p4}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/lib/ConversionRules;->getStringToDoubleConverter()Lnet/sf/saxon/type/StringToDouble;

    move-result-object v2

    if-eqz p1, :cond_0

    new-instance v3, Lnet/sf/saxon/expr/sort/DescendingComparer;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Lnet/sf/saxon/expr/sort/DescendingComparer;-><init>(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    move-object v3, v4

    :goto_0
    invoke-interface {v3, v1}, Lnet/sf/saxon/expr/sort/AtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_1
    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/value/AtomicValue;

    if-nez v8, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v8}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v9

    const-string v10, "FORG0001"

    const-string v11, " to a number"

    const-string v12, "Failure converting "

    if-eqz v9, :cond_2

    :try_start_0
    new-instance v5, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {v8}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v9

    invoke-virtual {v2, v9}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D

    move-result-wide v14

    invoke-direct {v5, v14, v15}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v5

    goto :goto_2

    :catch_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_2
    instance-of v9, v8, Lnet/sf/saxon/value/DoubleValue;

    if-eqz v9, :cond_3

    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    instance-of v9, v8, Lnet/sf/saxon/value/FloatValue;

    if-eqz v9, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    instance-of v9, v8, Lnet/sf/saxon/value/StringValue;

    if-eqz v9, :cond_5

    instance-of v9, v8, Lnet/sf/saxon/value/AnyURIValue;

    if-nez v9, :cond_5

    const/4 v7, 0x1

    :cond_5
    :goto_3
    invoke-virtual {v8}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v9

    const-string v14, "FORG0006"

    if-eqz v9, :cond_8

    if-eqz p3, :cond_6

    goto :goto_1

    :cond_6
    instance-of v4, v8, Lnet/sf/saxon/value/DoubleValue;

    if-eqz v4, :cond_7

    return-object v8

    :cond_7
    sget-object v8, Lnet/sf/saxon/value/FloatValue;->NaN:Lnet/sf/saxon/value/FloatValue;

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v8}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v9

    invoke-virtual {v9, v4}, Lnet/sf/saxon/type/BuiltInAtomicType;->isOrdered(Z)Z

    move-result v9

    if-eqz v9, :cond_19

    :goto_4
    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/value/AtomicValue;

    if-nez v9, :cond_d

    if-eqz v4, :cond_9

    sget-object v0, Lnet/sf/saxon/value/FloatValue;->NaN:Lnet/sf/saxon/value/FloatValue;

    return-object v0

    :cond_9
    if-eqz v5, :cond_a

    instance-of v1, v8, Lnet/sf/saxon/value/DoubleValue;

    if-nez v1, :cond_c

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v8, v1, v0}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v8

    goto :goto_5

    :cond_a
    if-eqz v6, :cond_b

    instance-of v1, v8, Lnet/sf/saxon/value/FloatValue;

    if-nez v1, :cond_c

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v8, v1, v0}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v8

    goto :goto_5

    :cond_b
    instance-of v1, v8, Lnet/sf/saxon/value/AnyURIValue;

    if-eqz v1, :cond_c

    if-eqz v7, :cond_c

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v8, v1, v0}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v8

    :cond_c
    :goto_5
    return-object v8

    :cond_d
    invoke-virtual {v9}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v15

    if-eqz v15, :cond_f

    :try_start_1
    new-instance v5, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {v9}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v15

    move-object/from16 p2, v14

    invoke-virtual {v2, v15}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D

    move-result-wide v13

    invoke-direct {v5, v13, v14}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    if-eqz v4, :cond_e

    sget-object v0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :cond_e
    move-object v9, v5

    goto :goto_6

    :catch_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_f
    move-object/from16 p2, v14

    instance-of v13, v9, Lnet/sf/saxon/value/DoubleValue;

    if-eqz v13, :cond_11

    if-eqz v4, :cond_10

    sget-object v0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    return-object v0

    :cond_10
    :goto_6
    const/4 v5, 0x1

    goto :goto_7

    :cond_11
    instance-of v13, v9, Lnet/sf/saxon/value/FloatValue;

    if-eqz v13, :cond_12

    const/4 v6, 0x1

    goto :goto_7

    :cond_12
    instance-of v13, v9, Lnet/sf/saxon/value/StringValue;

    if-eqz v13, :cond_13

    instance-of v13, v9, Lnet/sf/saxon/value/AnyURIValue;

    if-nez v13, :cond_13

    const/4 v7, 0x1

    :cond_13
    :goto_7
    invoke-virtual {v9}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v13

    if-eqz v13, :cond_16

    if-eqz p3, :cond_14

    goto :goto_8

    :cond_14
    if-eqz v5, :cond_15

    sget-object v0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    return-object v0

    :cond_15
    const/4 v4, 0x1

    goto :goto_8

    :cond_16
    :try_start_2
    invoke-interface {v3, v9, v8}, Lnet/sf/saxon/expr/sort/AtomicComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result v13
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    if-gez v13, :cond_17

    move-object v8, v9

    :cond_17
    :goto_8
    move-object/from16 v14, p2

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v8}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-virtual {v9}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v3

    if-ne v0, v3, :cond_18

    throw v2

    :cond_18
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot compare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_19
    move-object v2, v14

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not an ordered type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/Minimax;->isMaxFunction()Z

    move-result v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/Minimax;->getAtomicComparer(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v1

    iget-boolean p0, p0, Lnet/sf/saxon/functions/Minimax;->l:Z

    invoke-static {p2, v0, v1, p0, p1}, Lnet/sf/saxon/functions/Minimax;->minimax(Lnet/sf/saxon/om/SequenceIterator;ZLnet/sf/saxon/expr/sort/AtomicComparer;ZLnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->itemOrEmpty(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public exportAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->exportAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-boolean p0, p0, Lnet/sf/saxon/functions/Minimax;->l:Z

    if-eqz p0, :cond_0

    const-string p0, "flags"

    const-string v0, "i"

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getArgumentType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/Minimax;->k:Lnet/sf/saxon/type/PlainType;

    return-object p0
.end method

.method public getAtomicComparer(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->getPreAllocatedAtomicComparer()Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/functions/Minimax;->k:Lnet/sf/saxon/type/PlainType;

    invoke-interface {v0}, Lnet/sf/saxon/type/PlainType;->getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_1
    check-cast v0, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->getStringCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    invoke-static {v0, v0, p0, p1}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->makeAtomicComparer(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p0

    return-object p0
.end method

.method public getCardinality([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x4000

    return p0

    :cond_0
    const/16 p0, 0x6000

    return p0
.end method

.method public getComparer()Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->getPreAllocatedAtomicComparer()Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p0

    return-object p0
.end method

.method public getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1, v0, p0}, Lnet/sf/saxon/expr/Atomizer;->getAtomizedItemType(Lnet/sf/saxon/expr/Expression;ZLnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Minimax"

    return-object p0
.end method

.method public importAttributes(Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->importAttributes(Ljava/util/Properties;)V

    const-string v0, "flags"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/Minimax;->setIgnoreNaN(Z)V

    :cond_0
    return-void
.end method

.method public isIgnoreNaN()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/functions/Minimax;->l:Z

    return p0
.end method

.method public abstract isMaxFunction()Z
.end method

.method public varargs makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->isOrdered(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p0

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object v1, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq p0, v1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    aget-object p3, p3, v0

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {p0, p3, v0}, Lnet/sf/saxon/expr/UntypedSequenceConverter;->makeUntypedSequenceConverter(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)Lnet/sf/saxon/expr/UntypedSequenceConverter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/UntypedSequenceConverter;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    aget-object p0, p3, v0

    return-object p0

    :cond_1
    aget-object p1, p3, v0

    instance-of p1, p1, Lnet/sf/saxon/expr/RangeExpression;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/functions/Minimax;->isMaxFunction()Z

    move-result p0

    if-eqz p0, :cond_3

    aget-object p0, p3, v0

    check-cast p0, Lnet/sf/saxon/expr/RangeExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    aget-object p1, p3, v0

    check-cast p1, Lnet/sf/saxon/expr/RangeExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p0, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz p0, :cond_2

    instance-of p0, p1, Lnet/sf/saxon/expr/Literal;

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    new-instance p0, Lnet/sf/saxon/expr/LastItemExpression;

    aget-object p1, p3, v0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/LastItemExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_3
    aget-object p0, p3, v0

    invoke-static {p0}, Lnet/sf/saxon/expr/FirstItemExpression;->makeFirstItemExpression(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public setIgnoreNaN(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/functions/Minimax;->l:Z

    return-void
.end method

.method public supplyTypeInformation(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    const/4 p2, 0x0

    aget-object p2, p3, p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/functions/Minimax;->k:Lnet/sf/saxon/type/PlainType;

    instance-of p3, p2, Lnet/sf/saxon/type/AtomicType;

    if-eqz p3, :cond_1

    sget-object p3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p2, p3, :cond_0

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p2, p0, Lnet/sf/saxon/functions/Minimax;->k:Lnet/sf/saxon/type/PlainType;

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/functions/Minimax;->k:Lnet/sf/saxon/type/PlainType;

    move-object p3, p2

    check-cast p3, Lnet/sf/saxon/type/AtomicType;

    check-cast p2, Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->preAllocateComparer(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/expr/StaticContext;)V

    :cond_1
    return-void
.end method
