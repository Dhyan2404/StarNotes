.class public abstract Lnet/sf/saxon/expr/GeneralComparison;
.super Lnet/sf/saxon/expr/BinaryExpression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ComparisonExpression;
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;
    }
.end annotation


# instance fields
.field protected comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

.field protected comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

.field protected doneWarnings:Z

.field protected runtimeCheckNeeded:Z

.field protected singletonOperator:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/BinaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/expr/GeneralComparison;->runtimeCheckNeeded:Z

    sget-object p1, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;->MANY_TO_MANY:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    iput-object p1, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/GeneralComparison;->doneWarnings:Z

    invoke-static {p2}, Lnet/sf/saxon/expr/GeneralComparison;->getCorrespondingSingletonOperator(I)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    return-void
.end method

.method public static compare(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;ZLnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NamespaceResolver;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v0

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-interface {p5}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p4

    invoke-virtual {p4}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p4

    if-eqz v0, :cond_3

    instance-of p5, p2, Lnet/sf/saxon/value/NumericValue;

    if-eqz p5, :cond_0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-static {p0, p2, p1, p4}, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;->quickCompare(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/NumericValue;ILnet/sf/saxon/lib/ConversionRules;)Z

    move-result p0

    return p0

    :cond_0
    instance-of p5, p2, Lnet/sf/saxon/value/StringValue;

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p5

    invoke-interface {p5, p4}, Lnet/sf/saxon/type/AtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object p4

    instance-of p5, p2, Lnet/sf/saxon/value/QualifiedNameValue;

    if-eqz p5, :cond_2

    invoke-virtual {p4, p6}, Lnet/sf/saxon/type/Converter;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;

    move-result-object p4

    check-cast p4, Lnet/sf/saxon/type/StringConverter;

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p4, p0}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of p5, p0, Lnet/sf/saxon/value/NumericValue;

    if-eqz p5, :cond_4

    check-cast p2, Lnet/sf/saxon/value/StringValue;

    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/Token;->inverse(I)I

    move-result p1

    invoke-static {p2, p0, p1, p4}, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;->quickCompare(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/NumericValue;ILnet/sf/saxon/lib/ConversionRules;)Z

    move-result p0

    return p0

    :cond_4
    instance-of p5, p0, Lnet/sf/saxon/value/StringValue;

    if-eqz p5, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p5

    invoke-interface {p5, p4}, Lnet/sf/saxon/type/AtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object p4

    instance-of p5, p0, Lnet/sf/saxon/value/QualifiedNameValue;

    if-eqz p5, :cond_6

    invoke-virtual {p4, p6}, Lnet/sf/saxon/type/Converter;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;

    move-result-object p4

    check-cast p4, Lnet/sf/saxon/type/StringConverter;

    :cond_6
    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p4, p2}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p2

    :goto_0
    const/4 p4, 0x0

    :cond_7
    invoke-static {p0, p1, p2, p3, p4}, Lnet/sf/saxon/expr/ValueComparison;->compare(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;Z)Z

    move-result p0

    return p0
.end method

.method public static getCorrespondingSingletonOperator(I)I
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return p0

    :pswitch_0
    const/16 p0, 0x37

    return p0

    :pswitch_1
    const/16 p0, 0x36

    return p0

    :pswitch_2
    const/16 p0, 0x35

    return p0

    :pswitch_3
    const/16 p0, 0x34

    return p0

    :cond_0
    const/16 p0, 0x33

    return p0

    :cond_1
    const/16 p0, 0x32

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lnet/sf/saxon/functions/Minimax;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/Minimax;->setIgnoreNaN(Z)V

    new-array v0, v1, [Lnet/sf/saxon/expr/Expression;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    invoke-virtual {p3, p0, p1, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    if-nez p0, :cond_0

    new-array p0, v1, [Lnet/sf/saxon/expr/Expression;

    aput-object p2, p0, v2

    invoke-virtual {p3, p0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    return-object p2
.end method


# virtual methods
.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/GeneralComparison;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    sget-object v0, Lnet/sf/saxon/expr/GeneralComparison$a;->a:[I

    iget-object v1, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    aget-object v0, p2, v1

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    .line 4
    aget-object p2, p2, v2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    .line 5
    invoke-virtual {p0, v0, p2, p1}, Lnet/sf/saxon/expr/GeneralComparison;->evaluateManyToMany(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    aget-object v0, p2, v1

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    .line 7
    aget-object p2, p2, v2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    .line 8
    invoke-virtual {p0, v0, p2, p1}, Lnet/sf/saxon/expr/GeneralComparison;->i(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    aget-object v0, p2, v1

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    .line 10
    aget-object p2, p2, v2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    .line 11
    invoke-virtual {p0, v0, p2, p1}, Lnet/sf/saxon/expr/GeneralComparison;->j(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public computeCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public computeHashCode()I
    .locals 0

    invoke-super {p0}, Lnet/sf/saxon/expr/BinaryExpression;->computeHashCode()I

    move-result p0

    return p0
.end method

.method public convertsUntypedToOther()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/expr/GeneralComparison$a;->a:[I

    iget-object v1, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/expr/GeneralComparison;->evaluateManyToMany(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/expr/GeneralComparison;->i(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0

    :cond_2
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

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/expr/GeneralComparison;->j(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/GeneralComparison;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/BinaryExpression;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    check-cast p1, Lnet/sf/saxon/expr/GeneralComparison;

    iget-object p1, p1, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/GeneralComparison;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    sget-object v0, Lnet/sf/saxon/expr/GeneralComparison$a;->a:[I

    iget-object v1, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/expr/GeneralComparison;->evaluateManyToMany(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/expr/GeneralComparison;->i(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    .line 11
    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/expr/GeneralComparison;->j(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateManyToMany(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {v2, v9}, Lnet/sf/saxon/expr/sort/AtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v11

    const/4 v12, 0x0

    move v13, v12

    move v14, v13

    :goto_0
    const/4 v15, 0x1

    if-nez v13, :cond_4

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lnet/sf/saxon/value/AtomicValue;

    if-nez v8, :cond_1

    if-eqz v14, :cond_0

    return v12

    :cond_0
    move v13, v15

    goto :goto_2

    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lnet/sf/saxon/value/AtomicValue;

    iget v3, v1, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    iget-boolean v6, v1, Lnet/sf/saxon/expr/GeneralComparison;->runtimeCheckNeeded:Z

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v17

    move-object v2, v8

    move-object v5, v11

    move-object/from16 v7, p3

    move-object v12, v8

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lnet/sf/saxon/expr/GeneralComparison;->compare(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;ZLnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NamespaceResolver;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    invoke-interface/range {p2 .. p2}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return v15

    :cond_2
    move-object v8, v12

    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    move-object v12, v8

    if-nez v14, :cond_4

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    if-nez v14, :cond_a

    invoke-interface/range {p2 .. p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lnet/sf/saxon/value/AtomicValue;

    if-nez v12, :cond_6

    if-eqz v13, :cond_5

    const/16 v16, 0x0

    return v16

    :cond_5
    const/16 v16, 0x0

    move v14, v15

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    iget v3, v1, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    iget-boolean v6, v1, Lnet/sf/saxon/expr/GeneralComparison;->runtimeCheckNeeded:Z

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v8

    move-object v4, v12

    move-object v5, v11

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v8}, Lnet/sf/saxon/expr/GeneralComparison;->compare(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;ZLnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NamespaceResolver;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    invoke-interface/range {p2 .. p2}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return v15

    :cond_8
    if-nez v13, :cond_9

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_3
    move/from16 v12, v16

    goto/16 :goto_0

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, v9}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0
.end method

.method public explainExtraAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2

    sget-object v0, Lnet/sf/saxon/expr/GeneralComparison$a;->a:[I

    iget-object v1, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "M:N"

    goto :goto_0

    :cond_1
    const-string v0, "N:1"

    goto :goto_0

    :cond_2
    const-string v0, "1:1"

    :goto_0
    const-string v1, "card"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {p0}, Lnet/sf/saxon/expr/sort/AtomicComparer;->save()Ljava/lang/String;

    move-result-object p0

    const-string v0, "comp"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAtomicComparer()Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-object p0
.end method

.method public getComparisonCardinality()Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "GeneralComparison"

    return-object p0
.end method

.method public getIntrinsicDependencies()I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/saxon/expr/GeneralComparison;->o(Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/saxon/expr/GeneralComparison;->o(Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x800

    return p0
.end method

.method public getInverseComparison()Lnet/sf/saxon/expr/GeneralComparison;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/GeneralComparison20;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-static {v2}, Lnet/sf/saxon/expr/parser/Token;->inverse(I)I

    move-result v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/saxon/expr/GeneralComparison20;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object v0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    return-object p0
.end method

.method public getSingletonOperator()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    return p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->BOOLEAN:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "GeneralComparison"

    return-object p0
.end method

.method public final i(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    :try_start_0
    instance-of v1, p1, Lnet/sf/saxon/tree/iter/RangeIterator;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lnet/sf/saxon/type/StringConverter$StringToInteger;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToInteger;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {v1, p2}, Lnet/sf/saxon/type/StringConverter$StringToInteger;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p2

    :cond_1
    check-cast p1, Lnet/sf/saxon/tree/iter/RangeIterator;

    iget v1, p0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lnet/sf/saxon/tree/iter/RangeIterator;->getMin()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p1

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    if-gtz p0, :cond_2

    move v0, v2

    :cond_2
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lnet/sf/saxon/tree/iter/RangeIterator;->getMax()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p1

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    if-ltz p0, :cond_3

    move v0, v2

    :cond_3
    return v0

    :pswitch_2
    invoke-virtual {p1}, Lnet/sf/saxon/tree/iter/RangeIterator;->getMin()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p1

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    if-gez p0, :cond_4

    move v0, v2

    :cond_4
    return v0

    :pswitch_3
    invoke-virtual {p1}, Lnet/sf/saxon/tree/iter/RangeIterator;->getMax()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p1

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    if-lez p0, :cond_5

    move v0, v2

    :cond_5
    return v0

    :pswitch_4
    invoke-virtual {p1}, Lnet/sf/saxon/tree/iter/RangeIterator;->getFirst()Lnet/sf/saxon/value/IntegerValue;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/tree/iter/RangeIterator;->getLast()Lnet/sf/saxon/value/IntegerValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lnet/sf/saxon/tree/iter/RangeIterator;->getFirst()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p1

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v0, v2

    :cond_7
    return v0

    :pswitch_5
    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/tree/iter/RangeIterator;->containsEq(Lnet/sf/saxon/value/NumericValue;)Z

    move-result p0

    return p0

    :goto_0
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    iget-object v1, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {v1, p3}, Lnet/sf/saxon/expr/sort/AtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v1

    :cond_9
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v3, :cond_a

    iget v4, p0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    iget-boolean v7, p0, Lnet/sf/saxon/expr/GeneralComparison;->runtimeCheckNeeded:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v9

    move-object v5, p2

    move-object v6, v1

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lnet/sf/saxon/expr/GeneralComparison;->compare(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;ZLnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NamespaceResolver;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->close()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_a
    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p3}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget v1, p0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    iget-object v0, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {v0, p3}, Lnet/sf/saxon/expr/sort/AtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v3

    iget-boolean v4, p0, Lnet/sf/saxon/expr/GeneralComparison;->runtimeCheckNeeded:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v6

    move-object v0, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lnet/sf/saxon/expr/GeneralComparison;->compare(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;ZLnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NamespaceResolver;)Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p3}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;I)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/ValueComparison;

    invoke-direct {v0, p1, p3, p2}, Lnet/sf/saxon/expr/ValueComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    new-instance p1, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;

    invoke-direct {p1}, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;-><init>()V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/ValueComparison;->setAtomicComparer(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    const-string p1, "Replaced general comparison by untyped-numeric value comparison"

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public final m()Z
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/ContextSwitchingExpression;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/ContextSwitchingExpression;

    invoke-interface {v0}, Lnet/sf/saxon/expr/ContextSwitchingExpression;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-ne v0, p0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final n()Z
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of p0, v0, Lnet/sf/saxon/expr/RangeExpression;

    if-nez p0, :cond_1

    instance-of p0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz p0, :cond_2

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/value/IntegerRange;

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public needsRuntimeCheck()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/GeneralComparison;->runtimeCheckNeeded:Z

    return p0
.end method

.method public final o(Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/SimpleType;

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq p0, p2, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object p0

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq p0, p1, :cond_1

    invoke-virtual {p3}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    const/high16 p1, 0x4000000

    and-int/2addr p0, p1

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/GeneralComparison;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v5

    invoke-static {v4}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v4

    invoke-static {v5}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v5

    if-eqz v4, :cond_3

    if-eqz v5, :cond_2

    sget-object v4, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;->MANY_TO_MANY:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    iput-object v4, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    goto :goto_0

    :cond_2
    sget-object v4, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;->MANY_TO_ONE:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    iput-object v4, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/GeneralComparison;->getInverseComparison()Lnet/sf/saxon/expr/GeneralComparison;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;->MANY_TO_ONE:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    iput-object v1, v0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object v1, v0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    iget-boolean p0, p0, Lnet/sf/saxon/expr/GeneralComparison;->runtimeCheckNeeded:Z

    iput-boolean p0, v0, Lnet/sf/saxon/expr/GeneralComparison;->runtimeCheckNeeded:Z

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/GeneralComparison;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v4, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;->ONE_TO_ONE:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    iput-object v4, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    :goto_0
    iget v4, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    instance-of v4, v4, Lnet/sf/saxon/expr/RangeExpression;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/RangeExpression;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/RangeExpression;->isDefaultedStep()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/RangeExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/RangeExpression;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/expr/IntegerRangeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lnet/sf/saxon/expr/IntegerRangeTest;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    instance-of v4, v4, Lnet/sf/saxon/expr/RangeExpression;

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/RangeExpression;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/RangeExpression;->isDefaultedStep()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/RangeExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/RangeExpression;->getStartExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/RangeExpression;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/RangeExpression;->getEndExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/expr/IntegerRangeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lnet/sf/saxon/expr/IntegerRangeTest;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    instance-of v4, v4, Lnet/sf/saxon/expr/Literal;

    const-wide/16 v6, 0x1

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    instance-of v8, v4, Lnet/sf/saxon/value/IntegerRange;

    if-eqz v8, :cond_7

    check-cast v4, Lnet/sf/saxon/value/IntegerRange;

    invoke-virtual {v4}, Lnet/sf/saxon/value/IntegerRange;->getStep()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-nez v8, :cond_7

    invoke-virtual {v4}, Lnet/sf/saxon/value/IntegerRange;->getStart()J

    move-result-wide p1

    invoke-virtual {v4}, Lnet/sf/saxon/value/IntegerRange;->getEnd()J

    move-result-wide v0

    new-instance v2, Lnet/sf/saxon/expr/IntegerRangeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {p1, p2}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p2

    invoke-static {p2, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p2

    invoke-direct {v2, v3, p1, p2}, Lnet/sf/saxon/expr/IntegerRangeTest;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v2

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    instance-of v4, v4, Lnet/sf/saxon/expr/Literal;

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    instance-of v8, v4, Lnet/sf/saxon/value/IntegerRange;

    if-eqz v8, :cond_8

    check-cast v4, Lnet/sf/saxon/value/IntegerRange;

    invoke-virtual {v4}, Lnet/sf/saxon/value/IntegerRange;->getStep()J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-nez v6, :cond_8

    invoke-virtual {v4}, Lnet/sf/saxon/value/IntegerRange;->getStart()J

    move-result-wide p1

    invoke-virtual {v4}, Lnet/sf/saxon/value/IntegerRange;->getEnd()J

    move-result-wide v0

    new-instance v2, Lnet/sf/saxon/expr/IntegerRangeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {p1, p2}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p2

    invoke-static {p2, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p2

    invoke-direct {v2, v3, p1, p2}, Lnet/sf/saxon/expr/IntegerRangeTest;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v2

    :cond_8
    iget v4, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    if-eq v4, v5, :cond_b

    const/16 v5, 0x16

    if-eq v4, v5, :cond_b

    iget-object v4, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    sget-object v5, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;->MANY_TO_MANY:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    if-eq v4, v5, :cond_9

    sget-object v5, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;->MANY_TO_ONE:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    if-ne v4, v5, :cond_b

    invoke-virtual {p0}, Lnet/sf/saxon/expr/GeneralComparison;->m()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/GeneralComparison;->n()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_9
    invoke-static {v1}, Lnet/sf/saxon/type/NumericType;->isNumericType(Lnet/sf/saxon/type/ItemType;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v3}, Lnet/sf/saxon/type/NumericType;->isNumericType(Lnet/sf/saxon/type/ItemType;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    iget v0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const-string v1, "min"

    const-string v2, "max"

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown operator "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Lnet/sf/saxon/expr/ValueComparison;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {p1, p2, v3, v1}, Lnet/sf/saxon/expr/GeneralComparison;->l(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget v3, p0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-static {p1, p2, v4, v2}, Lnet/sf/saxon/expr/GeneralComparison;->l(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lnet/sf/saxon/expr/ValueComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    sget-object v1, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/ValueComparison;->setResultWhenEmpty(Lnet/sf/saxon/value/BooleanValue;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/ValueComparison;->setAtomicComparer(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lnet/sf/saxon/expr/ValueComparison;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {p1, p2, v3, v2}, Lnet/sf/saxon/expr/GeneralComparison;->l(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iget v3, p0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-static {p1, p2, v4, v1}, Lnet/sf/saxon/expr/GeneralComparison;->l(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/expr/ValueComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    sget-object v1, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/ValueComparison;->setResultWhenEmpty(Lnet/sf/saxon/value/BooleanValue;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/ValueComparison;->setAtomicComparer(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    :goto_1
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/ValueComparison;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz v1, :cond_c

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/GeneralComparison;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v0

    invoke-virtual {v0, p1, p0, v2, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->optimizeGeneralComparison(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/GeneralComparison;ZLnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_2
    sget-object p1, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAtomicComparer(Lnet/sf/saxon/expr/sort/AtomicComparer;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-void
.end method

.method public setComparisonCardinality(Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    return-void
.end method

.method public setNeedsRuntimeCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/GeneralComparison;->runtimeCheckNeeded:Z

    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 0

    const-string p0, "gc"

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v4}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v5

    new-instance v6, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    sget-object v7, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget v8, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    aget-object v8, v7, v8

    const/4 v9, 0x1

    invoke-direct {v6, v9, v8, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v5, v4, v3, v6, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    new-instance v4, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget v6, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    aget-object v6, v7, v6

    invoke-direct {v4, v9, v6, v9}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v4, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-eq v3, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    instance-of v3, v1, Lnet/sf/saxon/type/ErrorType;

    if-nez v3, :cond_16

    instance-of v3, v2, Lnet/sf/saxon/type/ErrorType;

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v3

    invoke-interface {v2}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/type/UType;->EXTENSION:Lnet/sf/saxon/type/UType;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v3

    const-string v4, "XPTY0004"

    if-nez v3, :cond_15

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v2}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v7

    const/16 v8, 0x2000

    if-eq v6, v8, :cond_14

    if-ne v7, v8, :cond_4

    goto/16 :goto_4

    :cond_4
    sget-object v8, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    sget-object v10, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto/16 :goto_2

    :cond_5
    iget v10, p0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    invoke-static {v10}, Lnet/sf/saxon/expr/parser/Token;->isOrderedOperator(I)Z

    move-result v10

    invoke-static {v3, v5, v10}, Lnet/sf/saxon/type/Type;->isPossiblyComparable(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Z)Z

    move-result v10

    if-nez v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "}: cannot compare "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {v7}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p1

    :cond_7
    :goto_0
    iget-boolean v4, p0, Lnet/sf/saxon/expr/GeneralComparison;->doneWarnings:Z

    if-nez v4, :cond_a

    iput-boolean v9, p0, Lnet/sf/saxon/expr/GeneralComparison;->doneWarnings:Z

    invoke-static {v6}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v7}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "the first"

    goto :goto_1

    :cond_8
    invoke-static {v7}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v6}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "the second"

    goto :goto_1

    :cond_9
    const-string v4, "one"

    :goto_1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". The comparison can succeed only if "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " operand is empty, and in that case will always be false"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v10

    invoke-interface {v11, v4, v10}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_a
    :goto_2
    iget v4, p0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    invoke-static {v4}, Lnet/sf/saxon/expr/parser/Token;->isOrderedOperator(I)Z

    move-result v4

    invoke-static {v3, v5, v4}, Lnet/sf/saxon/type/Type;->isGuaranteedGenerallyComparable(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Z)Z

    move-result v4

    xor-int/2addr v4, v9

    iput-boolean v4, p0, Lnet/sf/saxon/expr/GeneralComparison;->runtimeCheckNeeded:Z

    invoke-static {v6}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {v7}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    sget-object v9, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v4, Lnet/sf/saxon/expr/CastExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v6}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v3

    invoke-direct {v4, v1, v2, v3}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    new-instance v8, Lnet/sf/saxon/expr/CastExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v7}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v3

    invoke-direct {v8, v1, v2, v3}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    invoke-virtual {p0, v8}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_3

    :cond_b
    invoke-static {v2}, Lnet/sf/saxon/type/NumericType;->isNumericType(Lnet/sf/saxon/type/ItemType;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/saxon/expr/GeneralComparison;->k(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance v4, Lnet/sf/saxon/expr/CastExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v6}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v2

    invoke-direct {v4, v1, v5, v2}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v1}, Lnet/sf/saxon/type/NumericType;->isNumericType(Lnet/sf/saxon/type/ItemType;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    invoke-static {v2}, Lnet/sf/saxon/expr/parser/Token;->inverse(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/saxon/expr/GeneralComparison;->k(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance v8, Lnet/sf/saxon/expr/CastExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v7}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v2

    invoke-direct {v8, v1, v3, v2}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    invoke-virtual {p0, v8}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_f
    :goto_3
    new-instance v1, Lnet/sf/saxon/expr/ValueComparison;

    iget v2, p0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    invoke-direct {v1, v4, v2, v8}, Lnet/sf/saxon/expr/ValueComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/ValueComparison;->setAtomicComparer(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    sget-object v2, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/ValueComparison;->setResultWhenEmpty(Lnet/sf/saxon/value/BooleanValue;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    const-string p0, "Replaced general comparison by value comparison"

    invoke-static {v0, p0, v1}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/ValueComparison;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    if-nez p2, :cond_12

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p2

    if-nez p2, :cond_11

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object p2

    :cond_11
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getConversionContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v0

    invoke-static {v3, v5, p2, v0}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->makeAtomicComparer(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    :cond_12
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/Literal;

    if-eqz p2, :cond_13

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/Literal;

    if-eqz p2, :cond_13

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/GeneralComparison;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    :cond_13
    return-object p0

    :cond_14
    :goto_4
    sget-object p1, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_15
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Cannot perform comparisons involving external objects"

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p1

    :cond_16
    :goto_5
    sget-object p1, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_17
    :goto_6
    sget-object p1, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method
