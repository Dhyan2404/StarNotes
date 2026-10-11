.class public Lnet/sf/saxon/expr/LetExpression;
.super Lnet/sf/saxon/expr/Assignation;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/TailCallReturner;


# static fields
.field public static final synthetic u:Z


# instance fields
.field public q:Lnet/sf/saxon/expr/parser/Evaluator;

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/Assignation;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/LetExpression;->q:Lnet/sf/saxon/expr/parser/Evaluator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/LetExpression;->r:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/LetExpression;->s:Z

    return-void
.end method


# virtual methods
.method public checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V

    return-void
.end method

.method public computeCardinality()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    const/high16 v1, 0x800000

    and-int/2addr p0, v1

    if-nez p0, :cond_0

    const p0, -0x800001

    and-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/expr/parser/RebindingMap;->put(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Binding;)V

    iget-boolean v1, p0, Lnet/sf/saxon/expr/Assignation;->indexedVariable:Z

    iput-boolean v1, v0, Lnet/sf/saxon/expr/Assignation;->indexedVariable:Z

    iget-boolean v1, p0, Lnet/sf/saxon/expr/Assignation;->hasLoopingReference:Z

    iput-boolean v1, v0, Lnet/sf/saxon/expr/Assignation;->hasLoopingReference:Z

    iget-boolean v1, p0, Lnet/sf/saxon/expr/LetExpression;->r:Z

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/LetExpression;->setNeedsEagerEvaluation(Z)V

    iget-boolean v1, p0, Lnet/sf/saxon/expr/LetExpression;->s:Z

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/LetExpression;->setNeedsLazyEvaluation(Z)V

    iget-object v1, p0, Lnet/sf/saxon/expr/Assignation;->variableName:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/Assignation;->requiredType:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/LetExpression;->isInstruction()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/LetExpression;->setInstruction(Z)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/LetExpression;->eval(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getLocalSlotNumber()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/LetExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/LetExpression;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public eval(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/LetExpression;->q:Lnet/sf/saxon/expr/parser/Evaluator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getNominalReferenceCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->lazyEvaluator(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/LetExpression;->setEvaluator(Lnet/sf/saxon/expr/parser/Evaluator;)V

    :cond_1
    const/16 v0, 0xda

    :try_start_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getTemporaryOutputState()I

    move-result v1

    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/XPathContext;->setTemporaryOutputState(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/LetExpression;->q:Lnet/sf/saxon/expr/parser/Evaluator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    invoke-interface {p1, v1}, Lnet/sf/saxon/expr/XPathContext;->setTemporaryOutputState(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getTemporaryOutputState()I

    move-result v1

    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/XPathContext;->setTemporaryOutputState(I)V

    sget-object v0, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p1, v1}, Lnet/sf/saxon/expr/XPathContext;->setTemporaryOutputState(I)V

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/LetExpression;->eval(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getLocalSlotNumber()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/LetExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/LetExpression;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/LetExpression;->eval(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getLocalSlotNumber()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/LetExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/LetExpression;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V

    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "let"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    const-string v0, "var"

    iget-object v1, p0, Lnet/sf/saxon/expr/Assignation;->variableName:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "as"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->isIndexedVariable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "indexable"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getLocalSlotNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "slot"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/LetExpression;->q:Lnet/sf/saxon/expr/parser/Evaluator;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getNominalReferenceCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->lazyEvaluator(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/LetExpression;->setEvaluator(Lnet/sf/saxon/expr/parser/Evaluator;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/LetExpression;->getEvaluator()Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/Evaluator;->getCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eval"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public gatherProperties(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getCost()D
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getEvaluator()Lnet/sf/saxon/expr/parser/Evaluator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/LetExpression;->q:Lnet/sf/saxon/expr/parser/Evaluator;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "let"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getImplementationMethod()I

    move-result p0

    return p0
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/LetExpression;->isInstruction()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/UType;->ANY:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/VariableReference;->isFlattened()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->findOperand(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Operand;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    new-instance v4, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v4}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    invoke-static {v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetStaticProperties(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public implementsStaticTypeCheck()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isInstruction()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/LetExpression;->t:Z

    return p0
.end method

.method public isLiftable(Z)Z
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/Expression;->isLiftable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/LetExpression;->r:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedsLazyEvaluation()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/LetExpression;->s:Z

    return p0
.end method

.method public isVacuousExpression()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->isVacuousExpression()Z

    move-result p0

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/LetExpression;->eval(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getLocalSlotNumber()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/LetExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/LetExpression;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public markTailFunctionCalls(Lnet/sf/saxon/om/StructuredQName;I)I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->markTailFunctionCalls(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;I)I

    move-result p0

    return p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->changesXsltContext(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequenceOp()Lnet/sf/saxon/expr/Operand;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Eliminated trivial variable "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getVariableName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/Literal;

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inlined constant variable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getVariableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Assignation;->replaceVariable(Lnet/sf/saxon/expr/Expression;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/instruct/DocumentInstr;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/DocumentInstr;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/DocumentInstr;->isTextOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->verifyReferences()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/LetExpression;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/DocumentInstr;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/DocumentInstr;->getStringValueExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_UNTYPED_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    iput-object v1, p0, Lnet/sf/saxon/expr/Assignation;->requiredType:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/Assignation;->requiredType:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    iget-object v1, p0, Lnet/sf/saxon/expr/Assignation;->requiredType:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lnet/sf/saxon/expr/Assignation;->refineTypeInformation(Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;ILnet/sf/saxon/expr/Assignation;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const/high16 v3, 0x2000000

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lnet/sf/saxon/expr/LetExpression;->r:Z

    :cond_3
    iget-boolean v1, p0, Lnet/sf/saxon/expr/Assignation;->hasLoopingReference:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->removeDeadReferences()Z

    move-result v4

    or-int/2addr v1, v4

    iput-boolean v1, p0, Lnet/sf/saxon/expr/Assignation;->hasLoopingReference:Z

    iget-boolean v1, p0, Lnet/sf/saxon/expr/LetExpression;->r:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v1, :cond_11

    iget-object v1, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_5

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v1, :cond_6

    :cond_5
    iget-boolean v1, p0, Lnet/sf/saxon/expr/Assignation;->indexedVariable:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lnet/sf/saxon/expr/Assignation;->hasLoopingReference:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lnet/sf/saxon/expr/LetExpression;->r:Z

    if-nez v1, :cond_6

    move v1, v3

    goto :goto_0

    :cond_6
    move v1, v5

    :goto_0
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->verifyReferences()V

    iget-object v1, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_1

    :cond_7
    move v1, v5

    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    iget-object v6, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getActionOp()Lnet/sf/saxon/expr/Operand;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Eliminated unused variable "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getVariableName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_9
    if-eqz v1, :cond_c

    iget-object v6, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v3, :cond_c

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-static {v6}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result v6

    if-eqz v6, :cond_a

    move v1, v5

    :cond_a
    iget-object v6, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    :goto_2
    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    if-eqz v6, :cond_c

    if-eq v6, p0, :cond_c

    invoke-static {v6, v7}, Lnet/sf/saxon/expr/parser/ExpressionTool;->findOperand(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Operand;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/expr/Operand;->hasSameFocus()Z

    move-result v7

    if-nez v7, :cond_b

    move v1, v5

    goto :goto_3

    :cond_b
    invoke-virtual {v6}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    goto :goto_2

    :cond_c
    :goto_3
    if-eqz v1, :cond_f

    iget-object v6, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v3, :cond_f

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-static {v6}, Lnet/sf/saxon/expr/parser/ExpressionTool;->changesXsltContext(Lnet/sf/saxon/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_d

    :goto_4
    move v1, v5

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_e

    goto :goto_4

    :cond_e
    iget-object v6, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/VariableReference;->isInLoop()Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_4

    :cond_f
    :goto_5
    if-eqz v1, :cond_11

    iget-object v1, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_10

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/Literal;

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v1, :cond_11

    :cond_10
    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lnet/sf/saxon/expr/LetExpression;->i()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inlined references to $"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getVariableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_11
    move v1, v5

    :goto_6
    add-int/lit8 v3, v1, 0x1

    const/4 v6, 0x5

    if-ge v1, v6, :cond_14

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequenceOp()Lnet/sf/saxon/expr/Operand;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    instance-of v7, v7, Lnet/sf/saxon/expr/Literal;

    if-eqz v7, :cond_12

    iget-boolean v7, p0, Lnet/sf/saxon/expr/Assignation;->indexedVariable:Z

    if-nez v7, :cond_12

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/LetExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    if-ne v1, v7, :cond_13

    goto :goto_7

    :cond_13
    move v1, v3

    goto :goto_6

    :cond_14
    :goto_7
    move v0, v5

    :goto_8
    add-int/lit8 v1, v0, 0x1

    if-ge v0, v6, :cond_18

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getActionOp()Lnet/sf/saxon/expr/Operand;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-ne v0, v2, :cond_15

    goto :goto_9

    :cond_15
    iget-boolean v0, p0, Lnet/sf/saxon/expr/Assignation;->indexedVariable:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lnet/sf/saxon/expr/LetExpression;->r:Z

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->verifyReferences()V

    iget-object v0, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_17

    iget-object v0, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iput-boolean v5, p0, Lnet/sf/saxon/expr/Assignation;->hasLoopingReference:Z

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/LetExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_16
    iget-object v0, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/VariableReference;->isInLoop()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/LetExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_17
    move v0, v1

    goto :goto_8

    :cond_18
    :goto_9
    invoke-virtual {p0}, Lnet/sf/saxon/expr/LetExpression;->setEvaluator()V

    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/LetExpression;->eval(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getLocalSlotNumber()I

    move-result v1

    invoke-interface {p2, v1, v0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/LetExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/LetExpression;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/LetExpression;->eval(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getLocalSlotNumber()I

    move-result v1

    invoke-interface {p2, v1, v0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/LetExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/LetExpression;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/instruct/TailCallReturner;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/TailCallReturner;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/TailCallReturner;->processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public resetLocalStaticProperties()V
    .locals 2

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    iget-object v0, p0, Lnet/sf/saxon/expr/LetExpression;->q:Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v1, Lnet/sf/saxon/expr/parser/Evaluator$Variable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Variable;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/VariableReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/LetExpression;->q:Lnet/sf/saxon/expr/parser/Evaluator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/LetExpression;->setEvaluator()V

    :cond_0
    return-void
.end method

.method public setEvaluator()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnet/sf/saxon/expr/LetExpression;->r:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluator(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/LetExpression;->setEvaluator(Lnet/sf/saxon/expr/parser/Evaluator;)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->isIndexedVariable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/LetExpression;->setEvaluator(Lnet/sf/saxon/expr/parser/Evaluator;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/LetExpression;->q:Lnet/sf/saxon/expr/parser/Evaluator;

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getNominalReferenceCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->lazyEvaluator(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/LetExpression;->setEvaluator(Lnet/sf/saxon/expr/parser/Evaluator;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setEvaluator(Lnet/sf/saxon/expr/parser/Evaluator;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lnet/sf/saxon/expr/LetExpression;->q:Lnet/sf/saxon/expr/parser/Evaluator;

    return-void
.end method

.method public setInstruction(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/LetExpression;->t:Z

    return-void
.end method

.method public setNeedsEagerEvaluation(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/LetExpression;->r:Z

    return-void
.end method

.method public setNeedsLazyEvaluation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/expr/LetExpression;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/LetExpression;->r:Z

    :cond_0
    iput-boolean p1, p0, Lnet/sf/saxon/expr/LetExpression;->s:Z

    return-void
.end method

.method public staticTypeCheck(Lnet/sf/saxon/value/SequenceType;ZLnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p4}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p2, v0, p1, p3, p4}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "let $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getVariableName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " := ..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "let $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getVariableEQName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " := "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->parenthesize(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequenceOp()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/Assignation;->requiredType:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lnet/sf/saxon/expr/parser/TypeChecker;->strictTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v5

    move-object v1, p0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lnet/sf/saxon/expr/Assignation;->refineTypeInformation(Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;ILnet/sf/saxon/expr/Assignation;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getActionOp()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-object p0
.end method
