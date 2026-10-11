.class public Lnet/sf/saxon/expr/compat/GeneralComparison10;
.super Lnet/sf/saxon/expr/BinaryExpression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# instance fields
.field protected comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field protected singletonOperator:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/BinaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->p:Z

    iput-boolean p1, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->q:Z

    iput-boolean p1, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->r:Z

    iput-boolean p1, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->s:Z

    invoke-static {p2}, Lnet/sf/saxon/expr/GeneralComparison;->getCorrespondingSingletonOperator(I)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->singletonOperator:I

    return-void
.end method

.method public static synthetic i(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/compat/GeneralComparison10;->l(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p3, p4}, Lnet/sf/saxon/expr/sort/AtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p3

    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v1

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->isPrimitiveNumeric()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lnet/sf/saxon/type/BuiltInAtomicType;->isPrimitiveNumeric()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object p4, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1, p4}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, p4}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    sget-object p4, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1, p4}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p4}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p4}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lnet/sf/saxon/type/StringConverter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    :cond_2
    invoke-virtual {v2, p4}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {v1, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object p4

    invoke-virtual {p4, p2}, Lnet/sf/saxon/type/StringConverter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p2

    :cond_3
    invoke-static {p0, p1, p2, p3, v4}, Lnet/sf/saxon/expr/ValueComparison;->compare(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;Z)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    new-instance p4, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {p4, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-static {p4, p1, p0, p3, v4}, Lnet/sf/saxon/expr/ValueComparison;->compare(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;Z)Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sf/saxon/functions/Number_1;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object p0

    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p4

    invoke-static {p2, p4}, Lnet/sf/saxon/functions/Number_1;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, v4}, Lnet/sf/saxon/expr/ValueComparison;->compare(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-static {p1, p0}, Lnet/sf/saxon/functions/Number_1;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object p0

    return-object p0
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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/compat/GeneralComparison10;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lnet/sf/saxon/expr/compat/GeneralComparison10;->k(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Z

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

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/compat/GeneralComparison10;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/expr/compat/GeneralComparison10;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object p1, v0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    iget-boolean p1, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->p:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->p:Z

    iget-boolean p1, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->q:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->q:Z

    iget-boolean p1, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->r:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->r:Z

    iget-boolean p0, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->s:Z

    iput-boolean p0, v0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->s:Z

    return-object v0
.end method

.method public effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/expr/compat/GeneralComparison10;->k(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/compat/GeneralComparison10;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/compat/GeneralComparison10;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public explainExtraAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2

    const-string v0, "cardinality"

    const-string v1, "many-to-many (1.0)"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {p0}, Lnet/sf/saxon/expr/sort/AtomicComparer;->save()Ljava/lang/String;

    move-result-object p0

    const-string v0, "comp"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public final k(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->r:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v3

    :goto_0
    instance-of v4, v0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    invoke-static {p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p1

    check-cast v0, Lnet/sf/saxon/value/BooleanValue;

    iget p2, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->singletonOperator:I

    invoke-static {p1}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-static {v0, p2, p1, p0, p3}, Lnet/sf/saxon/expr/compat/GeneralComparison10;->j(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0

    :cond_1
    if-nez v0, :cond_2

    iget-boolean v4, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->s:Z

    if-nez v4, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return v2

    :cond_2
    if-eqz v3, :cond_3

    new-instance v4, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;

    invoke-direct {v4, v3, p1}, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/SequenceIterator;)V

    move-object p1, v4

    :cond_3
    if-eqz v0, :cond_4

    new-instance v3, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;

    invoke-direct {v3, v0, p1}, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/SequenceIterator;)V

    move-object p1, v3

    :cond_4
    iget-boolean v0, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->s:Z

    if-eqz v0, :cond_9

    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v3, v1

    goto :goto_1

    :cond_5
    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v3

    :goto_1
    instance-of v4, v0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p1

    iget p2, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->singletonOperator:I

    check-cast v0, Lnet/sf/saxon/value/BooleanValue;

    iget-object p0, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-static {p1, p2, v0, p0, p3}, Lnet/sf/saxon/expr/compat/GeneralComparison10;->j(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0

    :cond_6
    if-nez v0, :cond_7

    iget-boolean v4, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->r:Z

    if-nez v4, :cond_7

    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return v2

    :cond_7
    if-eqz v3, :cond_8

    new-instance v4, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;

    invoke-direct {v4, v3, p2}, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/SequenceIterator;)V

    move-object p2, v4

    :cond_8
    if-eqz v0, :cond_9

    new-instance v3, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;

    invoke-direct {v3, v0, p2}, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/SequenceIterator;)V

    move-object p2, v3

    :cond_9
    iget-boolean v0, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->p:Z

    if-eqz v0, :cond_a

    invoke-static {p1, v2}, Lnet/sf/saxon/expr/Atomizer;->getAtomizingIterator(Lnet/sf/saxon/om/SequenceIterator;Z)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    :cond_a
    iget-boolean v0, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->q:Z

    if-eqz v0, :cond_b

    invoke-static {p2, v2}, Lnet/sf/saxon/expr/Atomizer;->getAtomizingIterator(Lnet/sf/saxon/om/SequenceIterator;Z)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    :cond_b
    instance-of v0, p1, Lnet/sf/saxon/tree/iter/EmptyIterator;

    if-nez v0, :cond_16

    instance-of v0, p2, Lnet/sf/saxon/tree/iter/EmptyIterator;

    if-eqz v0, :cond_c

    goto/16 :goto_4

    :cond_c
    iget v0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/16 v3, 0xc

    const/4 v4, 0x1

    if-eq v0, v3, :cond_d

    const/16 v3, 0xe

    if-eq v0, v3, :cond_d

    const/16 v3, 0xb

    if-eq v0, v3, :cond_d

    const/16 v3, 0xd

    if-ne v0, v3, :cond_e

    :cond_d
    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    new-instance v3, Lcom/sunia/HTREnginev2/vyg;

    invoke-direct {v3, v0}, Lcom/sunia/HTREnginev2/vyg;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-static {v3}, Lnet/sf/saxon/expr/ItemMapper;->of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;

    move-result-object v0

    new-instance v3, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-direct {v3, p1, v0, v4}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    new-instance p1, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-direct {p1, p2, v0, v4}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    move-object p2, p1

    move-object p1, v3

    :cond_e
    move-object v0, v1

    :cond_f
    :goto_2
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v3, :cond_16

    if-eqz p2, :cond_14

    :goto_3
    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/value/AtomicValue;

    if-nez v5, :cond_11

    if-nez v0, :cond_10

    return v2

    :cond_10
    move-object p2, v1

    goto :goto_2

    :cond_11
    :try_start_0
    iget v6, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->singletonOperator:I

    iget-object v7, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-static {v3, v6, v5, v7, p3}, Lnet/sf/saxon/expr/compat/GeneralComparison10;->j(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v6

    if-eqz v6, :cond_12

    return v4

    :cond_12
    if-nez v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    const/16 v6, 0x28

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    :cond_13
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p3}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1

    :cond_14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/value/AtomicValue;

    iget v7, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->singletonOperator:I

    iget-object v8, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-static {v3, v7, v6, v8, p3}, Lnet/sf/saxon/expr/compat/GeneralComparison10;->j(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v6

    if-eqz v6, :cond_15

    return v4

    :cond_16
    :goto_4
    return v2
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/Literal;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/Literal;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/compat/GeneralComparison10;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v3, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->p:Z

    :cond_1
    invoke-interface {v2}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v3, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->q:Z

    :cond_2
    sget-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v1, v4}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v5, v6, :cond_3

    iput-boolean v3, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->r:Z

    :cond_3
    invoke-virtual {v0, v2, v4}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v4

    if-ne v4, v6, :cond_4

    iput-boolean v3, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->s:Z

    :cond_4
    iget-boolean v4, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->r:Z

    if-nez v4, :cond_11

    iget-boolean v4, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->s:Z

    if-nez v4, :cond_11

    instance-of v4, v1, Lnet/sf/saxon/type/AtomicType;

    const/4 v5, 0x0

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, v5}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    :cond_5
    instance-of v4, v2, Lnet/sf/saxon/type/AtomicType;

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2, v5}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    :cond_6
    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    const/4 v2, 0x1

    if-eq v1, v6, :cond_7

    move v4, v2

    goto :goto_0

    :cond_7
    move v4, v3

    :goto_0
    if-eq v0, v6, :cond_8

    move v5, v2

    goto :goto_1

    :cond_8
    move v5, v3

    :goto_1
    sget-object v6, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-eq v1, v6, :cond_a

    sget-object v7, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-ne v1, v7, :cond_9

    goto :goto_2

    :cond_9
    move v1, v3

    goto :goto_3

    :cond_a
    :goto_2
    move v1, v2

    :goto_3
    if-eq v0, v6, :cond_c

    sget-object v6, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-ne v0, v6, :cond_b

    goto :goto_4

    :cond_b
    move v2, v3

    :cond_c
    :goto_4
    iget v0, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/4 v6, 0x6

    if-eq v0, v6, :cond_e

    const/16 v6, 0x16

    if-ne v0, v6, :cond_d

    goto :goto_5

    :cond_d
    if-eqz v1, :cond_11

    if-eqz v2, :cond_11

    new-instance v0, Lnet/sf/saxon/expr/GeneralComparison20;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lnet/sf/saxon/expr/GeneralComparison20;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->optimizeGeneralComparison(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/GeneralComparison;ZLnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_5
    if-nez v4, :cond_f

    if-eqz v5, :cond_10

    :cond_f
    if-eqz v1, :cond_11

    if-eqz v2, :cond_11

    :cond_10
    new-instance v0, Lnet/sf/saxon/expr/GeneralComparison20;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lnet/sf/saxon/expr/GeneralComparison20;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/GeneralComparison;->setAtomicComparer(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->optimizeGeneralComparison(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/GeneralComparison;ZLnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_11
    return-object p0
.end method

.method public setAtomicComparer(Lnet/sf/saxon/expr/sort/AtomicComparer;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 0

    const-string p0, "gc10"

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object p1

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/Literal;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/Literal;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/compat/GeneralComparison10;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    :cond_1
    return-object p0
.end method
