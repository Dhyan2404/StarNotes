.class public Lnet/sf/saxon/expr/instruct/UserFunction;
.super Lnet/sf/saxon/expr/instruct/Actor;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Function;
.implements Lnet/sf/saxon/expr/ContextOriginator;
.implements Lnet/sf/saxon/trace/TraceableComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;
    }
.end annotation


# static fields
.field public static final J:I = 0x64


# instance fields
.field protected evaluator:Lnet/sf/saxon/expr/parser/Evaluator;

.field public m:Lnet/sf/saxon/om/StructuredQName;

.field public n:Z

.field public o:Z

.field public p:[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

.field public q:Lnet/sf/saxon/value/SequenceType;

.field public r:Lnet/sf/saxon/value/SequenceType;

.field public s:Z

.field public t:I

.field public u:I

.field public v:Z

.field public w:Lnet/sf/saxon/query/AnnotationList;

.field public x:Lnet/sf/saxon/trans/FunctionStreamability;

.field public y:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Actor;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->n:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->o:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->evaluator:Lnet/sf/saxon/expr/parser/Evaluator;

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->s:Z

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->t:I

    iput v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->u:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->v:Z

    sget-object v1, Lnet/sf/saxon/query/AnnotationList;->EMPTY:Lnet/sf/saxon/query/AnnotationList;

    iput-object v1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->w:Lnet/sf/saxon/query/AnnotationList;

    sget-object v1, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    iput-object v1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->x:Lnet/sf/saxon/trans/FunctionStreamability;

    sget-object v1, Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;->PROACTIVE:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    iput-object v1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->y:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    iput v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->z:I

    return-void
.end method

.method public static b(Lnet/sf/saxon/expr/Expression;)Z
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->b(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public acceptsNodesWithoutAtomization()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArity()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArgumentType(I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/pattern/NodeTest;

    if-nez v3, :cond_1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Functions cannot be atomized"

    const-string v1, "FOTY0013"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->evaluator:Lnet/sf/saxon/expr/parser/Evaluator;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->computeEvaluationMode()V

    .line 3
    :cond_0
    check-cast p1, Lnet/sf/saxon/expr/XPathContextMajor;

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/expr/XPathContextMajor;->setStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;[Lnet/sf/saxon/om/Sequence;)V

    .line 5
    :try_start_0
    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->evaluator:Lnet/sf/saxon/expr/parser/Evaluator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Internal error evaluating function "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->m:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_1

    const-string v0, "(unnamed)"

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLineNumber()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " at line "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " in module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p2

    .line 11
    invoke-virtual {p2}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p2

    .line 12
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 13
    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 14
    throw p2

    :catch_2
    move-exception p2

    .line 15
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 16
    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 17
    throw p2
.end method

.method public call([Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/Controller;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 18
    invoke-virtual {p2}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public callUpdating([Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/PendingUpdateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->setStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;[Lnet/sf/saxon/om/Sequence;)V

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/expr/Expression;->evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public computeEvaluationMode()V
    .locals 2

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluator(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->evaluator:Lnet/sf/saxon/expr/parser/Evaluator;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->lazyEvaluator(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->evaluator:Lnet/sf/saxon/expr/parser/Evaluator;

    :goto_0
    return-void
.end method

.method public containsTailCalls()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->n:Z

    return p0
.end method

.method public deepEquals(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/sort/AtomicComparer;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot compare functions using deep-equal"

    const-string p3, "FOTY0015"

    invoke-direct {p0, p1, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public effectiveBooleanValue()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/Item;)Z

    move-result p0

    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "function"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, "name"

    const-string v2, ""

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "line"

    invoke-virtual {p1, v3, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getEvaluator()Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/Evaluator;->getCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "eval"

    invoke-virtual {p1, v3, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->y:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    sget-object v3, Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;->PROACTIVE:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "p"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v3, Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;->ELIDABLE:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    if-ne v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "e"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "d"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->isMemoFunction()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    sget-object v3, Lnet/sf/saxon/expr/instruct/UserFunction$a;->a:[I

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->x:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "C"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "D"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "S"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "F"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "I"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "A"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "U"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v3, "flags"

    invoke-virtual {p1, v3, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getDeclaredResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "as"

    invoke-virtual {p1, v3, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "slots"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->p:[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    array-length v2, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    const-string v6, "arg"

    invoke-virtual {p1, v6}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const-string v0, "body"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public gatherProperties(Ljava/util/function/BiConsumer;)V
    .locals 2
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

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArity()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "arity"

    invoke-interface {p1, v0, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getAnnotations()Lnet/sf/saxon/query/AnnotationList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->w:Lnet/sf/saxon/query/AnnotationList;

    return-object p0
.end method

.method public getArgumentType(I)Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->p:[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public getArity()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->p:[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    array-length p0, p0

    return p0
.end method

.method public getDeclaredResultType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->r:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getDeclaredStreamability()Lnet/sf/saxon/trans/FunctionStreamability;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->x:Lnet/sf/saxon/trans/FunctionStreamability;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, "http://ns.saxonica.com/anonymous-type"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "function("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getParameterDefinitions()[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v7, "$"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeterminism()Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->y:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    return-object p0
.end method

.method public getEvaluator()Lnet/sf/saxon/expr/parser/Evaluator;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->evaluator:Lnet/sf/saxon/expr/parser/Evaluator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->computeEvaluationMode()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->evaluator:Lnet/sf/saxon/expr/parser/Evaluator;

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->p:[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    array-length v0, v0

    new-array v0, v0, [Lnet/sf/saxon/value/SequenceType;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->p:[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/type/SpecificFunctionType;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->q:Lnet/sf/saxon/value/SequenceType;

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->w:Lnet/sf/saxon/query/AnnotationList;

    invoke-direct {v1, v0, v2, p0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/query/AnnotationList;)V

    return-object v1
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->m:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getLength()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->m:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getOperandRoles()[Lnet/sf/saxon/expr/OperandRole;
    .locals 7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArity()I

    move-result v0

    new-array v1, v0, [Lnet/sf/saxon/expr/OperandRole;

    sget-object v2, Lnet/sf/saxon/expr/OperandUsage;->TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v3, Lnet/sf/saxon/expr/instruct/UserFunction$a;->a:[I

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->x:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v2, Lnet/sf/saxon/expr/OperandUsage;->INSPECTION:Lnet/sf/saxon/expr/OperandUsage;

    goto :goto_0

    :pswitch_1
    sget-object v2, Lnet/sf/saxon/expr/OperandUsage;->ABSORPTION:Lnet/sf/saxon/expr/OperandUsage;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArgumentType(I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/OperandRole;->getTypeDeterminedUsage(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/expr/OperandUsage;

    move-result-object v2

    :goto_0
    :pswitch_3
    new-instance v3, Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArgumentType(I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    aput-object v3, v1, v4

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArgumentType(I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    new-instance v5, Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {v3}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    invoke-static {v6}, Lnet/sf/saxon/expr/OperandRole;->getTypeDeterminedUsage(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/expr/OperandUsage;

    move-result-object v6

    invoke-direct {v5, v4, v6, v3}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getParameterDefinitions()[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->p:[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    return-object p0
.end method

.method public getReferenceCount()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->z:I

    return p0
.end method

.method public getResultType()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->q:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->b(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->q:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->q:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;
    .locals 2

    .line 2
    new-instance v0, Lnet/sf/saxon/trans/SymbolicName$F;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->m:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArity()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    return-object v0
.end method

.method public bridge synthetic getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;

    move-result-object p0

    return-object p0
.end method

.method public getTracingTag()Ljava/lang/String;
    .locals 0

    const-string p0, "xsl:function"

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "A function has no string value"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public head()Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic head()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->head()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p0

    return-object p0
.end method

.method public incrementReferenceCount()V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->z:I

    return-void
.end method

.method public isArray()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExportable()Z
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->z:I

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->isRetainUnusedFunctions()Z

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

.method public isInlineable()Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->t:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    if-lez v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->u:I

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Actor;->body:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->n:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_5

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    iget p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->t:I

    if-gez p0, :cond_6

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_6
    if-lez p0, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public isMap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMemoFunction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOverrideExtensionFunction()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->v:Z

    return p0
.end method

.method public isTailRecursive()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->o:Z

    return p0
.end method

.method public isTrustedResultType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUpdating()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->s:Z

    return p0
.end method

.method public itemAt(I)Lnet/sf/saxon/om/Function;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->itemAt(I)Lnet/sf/saxon/om/Function;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContext;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/UserFunction;->makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p0

    return-object p0
.end method

.method public makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContextMajor;
    .locals 1

    .line 2
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newCleanContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    const/16 v0, 0xa0

    .line 3
    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/XPathContextMinor;->setTemporaryOutputState(I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentOutputUri(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    .line 6
    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    return-object p1
.end method

.method public markAsInlined()V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->u:I

    return-void
.end method

.method public prepareForStreaming()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public process(Lnet/sf/saxon/expr/XPathContextMajor;[Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/event/Outputter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/expr/XPathContextMajor;->setStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;[Lnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method

.method public reduce()Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic reduce()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->reduce()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p0

    return-object p0
.end method

.method public setAnnotations(Lnet/sf/saxon/query/AnnotationList;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->w:Lnet/sf/saxon/query/AnnotationList;

    return-void
.end method

.method public setDeclaredStreamability(Lnet/sf/saxon/trans/FunctionStreamability;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    :cond_0
    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->x:Lnet/sf/saxon/trans/FunctionStreamability;

    return-void
.end method

.method public setDeterminism(Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->y:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    return-void
.end method

.method public setEvaluator(Lnet/sf/saxon/expr/parser/Evaluator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->evaluator:Lnet/sf/saxon/expr/parser/Evaluator;

    return-void
.end method

.method public setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->m:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public setInlineable(Z)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->t:I

    return-void
.end method

.method public setOverrideExtensionFunction(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->v:Z

    return-void
.end method

.method public setParameterDefinitions([Lnet/sf/saxon/expr/instruct/UserFunctionParameter;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->p:[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    return-void
.end method

.method public setResultType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->r:Lnet/sf/saxon/value/SequenceType;

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->q:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setTailRecursive(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->n:Z

    iput-boolean p2, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->o:Z

    return-void
.end method

.method public setUpdating(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->s:Z

    return-void
.end method

.method public subsequence(II)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    if-gtz p1, :cond_0

    add-int/2addr p1, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/expr/instruct/ValueOf;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->isAtomicType()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->r:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->isAtomicType()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->r:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v1

    const-string v2, "A function that computes atomic values should use xsl:sequence rather than xsl:value-of"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_0
    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetPropertiesWithinSubtree(Lnet/sf/saxon/expr/Expression;)V

    :try_start_0
    sget-object v1, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->ABSENT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->q:Lnet/sf/saxon/value/SequenceType;

    if-eqz v2, :cond_3

    new-instance v2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->m:Lnet/sf/saxon/om/StructuredQName;

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->m:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v4}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-direct {v2, v5, v3, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/PackageData;->isXSLT()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "XTTE0780"

    goto :goto_1

    :cond_2
    const-string v3, "XPTY0004"

    :goto_1
    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3, v4}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->q:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v3, v1, v4, v2, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    if-eq v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    :cond_4
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method
