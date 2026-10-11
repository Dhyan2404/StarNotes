.class public abstract Lnet/sf/saxon/expr/SimpleExpression;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# instance fields
.field public n:Lnet/sf/saxon/expr/oper/OperandArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    return-void
.end method

.method private synthetic c(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const/high16 v0, 0x80000

    invoke-virtual {p1, p2, p0, v0}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/expr/SimpleExpression;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/SimpleExpression;->c(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V

    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getImplementationMethod()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    const p0, 0xc000

    return p0

    :cond_0
    const/16 p0, 0x6000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SimpleExpression;->simpleCopy()Lnet/sf/saxon/expr/SimpleExpression;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/SimpleExpression;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v1

    new-array v1, v1, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SimpleExpression;->operands()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/Operand;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    aput-object v4, v1, v3

    move v3, v5

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/expr/oper/OperandArray;

    iget-object p0, p0, Lnet/sf/saxon/expr/SimpleExpression;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/oper/OperandArray;->getRoles()[Lnet/sf/saxon/expr/OperandRole;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/expr/oper/OperandArray;-><init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/OperandRole;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/SimpleExpression;->setOperanda(Lnet/sf/saxon/expr/oper/OperandArray;)V

    return-object v0
.end method

.method public copyOperandsFrom(Lnet/sf/saxon/expr/SimpleExpression;)Lnet/sf/saxon/expr/SimpleExpression;
    .locals 6

    iget-object v0, p1, Lnet/sf/saxon/expr/SimpleExpression;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/SimpleExpression;->operands()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Operand;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    new-instance v5, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v5}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v3, v5}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/expr/oper/OperandArray;

    iget-object p1, p1, Lnet/sf/saxon/expr/SimpleExpression;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/oper/OperandArray;->getRoles()[Lnet/sf/saxon/expr/OperandRole;

    move-result-object p1

    invoke-direct {v1, p0, v0, p1}, Lnet/sf/saxon/expr/oper/OperandArray;-><init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/OperandRole;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/SimpleExpression;->setOperanda(Lnet/sf/saxon/expr/oper/OperandArray;)V

    return-object p0
.end method

.method public final evaluateArguments(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/om/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SimpleExpression;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->makeSequenceArray(I)[Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SimpleExpression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SimpleExpression;->evaluateArguments(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "In general, stylesheets using extension instructions cannot be exported"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getExpressionType()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/Type;->ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/SimpleExpression;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    return-object p0
.end method

.method public final iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SimpleExpression;->evaluateArguments(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/SimpleExpression;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/oper/OperandArray;->operands()Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public final process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/SimpleExpression;->evaluateArguments(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/fsm;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/fsm;-><init>(Lnet/sf/saxon/expr/SimpleExpression;Lnet/sf/saxon/event/Outputter;)V

    invoke-static {p2, v0}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    return-void
.end method

.method public setArguments([Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SimpleExpression;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SimpleExpression;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot replace existing argument array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/expr/Expression;

    array-length p1, p1

    new-array p1, p1, [Lnet/sf/saxon/expr/OperandRole;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lnet/sf/saxon/expr/oper/OperandArray;

    invoke-direct {v1, p0, v0, p1}, Lnet/sf/saxon/expr/oper/OperandArray;-><init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/OperandRole;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/SimpleExpression;->setOperanda(Lnet/sf/saxon/expr/oper/OperandArray;)V

    return-void
.end method

.method public setOperanda(Lnet/sf/saxon/expr/oper/OperandArray;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/SimpleExpression;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    return-void
.end method

.method public simpleCopy()Lnet/sf/saxon/expr/SimpleExpression;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/SimpleExpression;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".copy()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
