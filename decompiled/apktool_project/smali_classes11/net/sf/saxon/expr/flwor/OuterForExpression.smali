.class public Lnet/sf/saxon/expr/flwor/OuterForExpression;
.super Lnet/sf/saxon/expr/ForExpression;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/ForExpression;-><init>()V

    return-void
.end method

.method public static synthetic m(Lnet/sf/saxon/expr/flwor/OuterForExpression;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/OuterForExpression;->n(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic n(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/expr/Assignation;->slotNumber:I

    invoke-interface {p1, v0, p2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/flwor/OuterForExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/flwor/OuterForExpression;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/Assignation;->requiredType:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/Assignation;->variableName:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/expr/parser/RebindingMap;->put(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Binding;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->variableName:Lnet/sf/saxon/om/StructuredQName;

    iput-object p0, v0, Lnet/sf/saxon/expr/Assignation;->variableName:Lnet/sf/saxon/om/StructuredQName;

    return-object v0
.end method

.method public evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getLocalSlotNumber()I

    move-result v1

    invoke-static {v0}, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;->makeLookaheadIterator(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/tree/iter/LookaheadIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getLocalSlotNumber()I

    move-result v0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V

    :goto_1
    return-void
.end method

.method public explainSpecializedAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1

    const-string p0, "outer"

    const-string v0, "true"

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "outerFor"

    return-object p0
.end method

.method public getRangeVariableCardinality()I
    .locals 0

    const/16 p0, 0x6000

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;->makeLookaheadIterator(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/tree/iter/LookaheadIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/zik;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/zik;-><init>(Lnet/sf/saxon/expr/flwor/OuterForExpression;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/MappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getLocalSlotNumber()I

    move-result v0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequenceOp()Lnet/sf/saxon/expr/Operand;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getActionOp()Lnet/sf/saxon/expr/Operand;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/OuterForExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getLocalSlotNumber()I

    move-result v1

    invoke-static {v0}, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;->makeLookaheadIterator(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/tree/iter/LookaheadIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v1, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getLocalSlotNumber()I

    move-result v0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    :goto_1
    return-void
.end method
