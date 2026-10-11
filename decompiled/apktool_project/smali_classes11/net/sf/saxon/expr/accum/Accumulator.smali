.class public Lnet/sf/saxon/expr/accum/Accumulator;
.super Lnet/sf/saxon/expr/instruct/Actor;
.source "SourceFile"


# instance fields
.field public m:Lnet/sf/saxon/om/StructuredQName;

.field public n:Lnet/sf/saxon/trans/SimpleMode;

.field public o:Lnet/sf/saxon/trans/SimpleMode;

.field public p:Lnet/sf/saxon/expr/Expression;

.field public q:Lnet/sf/saxon/value/SequenceType;

.field public r:Z

.field public s:Z

.field public t:I

.field public u:Z

.field public v:Lnet/sf/saxon/expr/instruct/SlotManager;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Actor;-><init>()V

    new-instance v0, Lnet/sf/saxon/trans/SimpleMode;

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    const-string v2, "preDescent"

    const-string v3, "saxon"

    const-string v4, "http://saxon.sf.net/"

    invoke-direct {v1, v3, v4, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/SimpleMode;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->n:Lnet/sf/saxon/trans/SimpleMode;

    new-instance v0, Lnet/sf/saxon/trans/SimpleMode;

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    const-string v2, "postDescent"

    invoke-direct {v1, v3, v4, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/SimpleMode;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->o:Lnet/sf/saxon/trans/SimpleMode;

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Actor;->body:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/trace/ExpressionPresenter;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/accum/Accumulator;->c(Lnet/sf/saxon/trace/ExpressionPresenter;Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/trace/ExpressionPresenter;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "accRule"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/accum/AccumulatorRule;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/accum/AccumulatorRule;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "slots"

    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getRank()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rank"

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/accum/AccumulatorRule;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/accum/AccumulatorRule;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "flags"

    const-string v1, "c"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/pattern/Pattern;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object p1

    invoke-interface {p1, p0}, Lnet/sf/saxon/trans/rules/RuleTarget;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method


# virtual methods
.method public addChildExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/accum/Accumulator;->export(Lnet/sf/saxon/trace/ExpressionPresenter;Ljava/util/Map;)V

    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trace/ExpressionPresenter;",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/Component;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "accumulator"

    .line 2
    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    const-string v0, "name"

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/accum/Accumulator;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "line"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "module"

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->q:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "as"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-boolean v0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v2, "streamable"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/accum/Accumulator;->getSlotManagerForInitialValueExpression()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "slots"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v3

    invoke-virtual {v3, p2}, Lnet/sf/saxon/expr/Component;->listComponentReferences(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "binds"

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/accum/Accumulator;->isUniversallyApplicable()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "flags"

    const-string v0, "u"

    .line 11
    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p2, "init"

    .line 12
    invoke-virtual {p1, p2}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lnet/sf/saxon/expr/accum/Accumulator;->p:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    .line 14
    new-instance p2, Lcom/sunia/HTREnginev2/c6;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/c6;-><init>(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :try_start_0
    const-string v0, "pre"

    .line 15
    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/sf/saxon/expr/accum/Accumulator;->n:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/SimpleMode;->getStackFrameSlotsNeeded()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->n:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0, p2}, Lnet/sf/saxon/trans/SimpleMode;->processRules(Lnet/sf/saxon/trans/Mode$RuleAction;)V

    .line 18
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    const-string v0, "post"

    .line 19
    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/sf/saxon/expr/accum/Accumulator;->o:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/SimpleMode;->getStackFrameSlotsNeeded()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->o:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/SimpleMode;->processRules(Lnet/sf/saxon/trans/Mode$RuleAction;)V

    .line 22
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void

    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->m:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getImportPrecedence()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->t:I

    return p0
.end method

.method public getInitialValueExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->p:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->m:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getPostDescentRules()Lnet/sf/saxon/trans/SimpleMode;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->o:Lnet/sf/saxon/trans/SimpleMode;

    return-object p0
.end method

.method public getPreDescentRules()Lnet/sf/saxon/trans/SimpleMode;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->n:Lnet/sf/saxon/trans/SimpleMode;

    return-object p0
.end method

.method public getSlotManagerForInitialValueExpression()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->v:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    new-instance v0, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0x81

    invoke-virtual {p0}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public getType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->q:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public isCompatible(Lnet/sf/saxon/expr/accum/Accumulator;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDeclaredStreamable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->r:Z

    return p0
.end method

.method public isTracing()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->u:Z

    return p0
.end method

.method public isUniversallyApplicable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/accum/Accumulator;->s:Z

    return p0
.end method

.method public setAccumulatorName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/accum/Accumulator;->m:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public setDeclaredStreamable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/accum/Accumulator;->r:Z

    return-void
.end method

.method public setImportPrecedence(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/accum/Accumulator;->t:I

    return-void
.end method

.method public setInitialValueExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/accum/Accumulator;->p:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public setPostDescentRules(Lnet/sf/saxon/trans/SimpleMode;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/accum/Accumulator;->o:Lnet/sf/saxon/trans/SimpleMode;

    return-void
.end method

.method public setPreDescentRules(Lnet/sf/saxon/trans/SimpleMode;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/accum/Accumulator;->n:Lnet/sf/saxon/trans/SimpleMode;

    return-void
.end method

.method public setSlotManagerForInitialValueExpression(Lnet/sf/saxon/expr/instruct/SlotManager;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/accum/Accumulator;->v:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-void
.end method

.method public setTracing(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/accum/Accumulator;->u:Z

    return-void
.end method

.method public setType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/accum/Accumulator;->q:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setUniversallyApplicable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/accum/Accumulator;->s:Z

    return-void
.end method
