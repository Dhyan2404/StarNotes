.class public final Lnet/sf/saxon/expr/TailCallLoop;
.super Lnet/sf/saxon/expr/UnaryExpression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/TailCallLoop$TailCallFunction;,
        Lnet/sf/saxon/expr/TailCallLoop$TailCallComponent;,
        Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;
    }
.end annotation


# instance fields
.field public o:Lnet/sf/saxon/expr/instruct/UserFunction;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/instruct/UserFunction;Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p2}, Lnet/sf/saxon/expr/UnaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/TailCallLoop;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-void
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "TailCallLoop.copy()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;Lnet/sf/saxon/expr/XPathContextMajor;)Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/expr/TailCallLoop$TailCallFunction;

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/TailCallLoop$TailCallFunction;

    iget-object p0, p1, Lnet/sf/saxon/expr/TailCallLoop$TailCallFunction;->function:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-object p0

    :cond_0
    instance-of p0, p1, Lnet/sf/saxon/expr/TailCallLoop$TailCallComponent;

    if-eqz p0, :cond_1

    check-cast p1, Lnet/sf/saxon/expr/TailCallLoop$TailCallComponent;

    iget-object p0, p1, Lnet/sf/saxon/expr/TailCallLoop$TailCallComponent;->component:Lnet/sf/saxon/expr/Component;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public final e(Lnet/sf/saxon/expr/instruct/UserFunction;Lnet/sf/saxon/expr/XPathContextMajor;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArity()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->resetStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;I)V

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getEvaluator()Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/expr/XPathContextMajor;

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/XPathContextMajor;->getTailCallInfo()Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/expr/TailCallLoop;->d(Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;Lnet/sf/saxon/expr/XPathContextMajor;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/TailCallLoop;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/expr/TailCallLoop;->e(Lnet/sf/saxon/expr/instruct/UserFunction;Lnet/sf/saxon/expr/XPathContextMajor;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public getContainingFunction()Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/TailCallLoop;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "tailCallLoop"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getImplementationMethod()I

    move-result p0

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/expr/XPathContextMajor;

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/XPathContextMajor;->getTailCallInfo()Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/TailCallLoop;->d(Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;Lnet/sf/saxon/expr/XPathContextMajor;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/TailCallLoop;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/TailCallLoop;->e(Lnet/sf/saxon/expr/instruct/UserFunction;Lnet/sf/saxon/expr/XPathContextMajor;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/XPathContextMajor;->getTailCallInfo()Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/expr/TailCallLoop;->d(Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;Lnet/sf/saxon/expr/XPathContextMajor;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/expr/TailCallLoop;->o:Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/expr/TailCallLoop;->e(Lnet/sf/saxon/expr/instruct/UserFunction;Lnet/sf/saxon/expr/XPathContextMajor;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/om/SequenceTool;->process(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-object p0
.end method
