.class public Lnet/sf/saxon/expr/instruct/ComponentTracer;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"


# static fields
.field public static final synthetic q:Z


# instance fields
.field public n:Lnet/sf/saxon/expr/Operand;

.field public o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lnet/sf/saxon/trace/TraceableComponent;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->o:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/trace/TraceableComponent;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->o:Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->p:Lnet/sf/saxon/trace/TraceableComponent;

    .line 4
    new-instance v0, Lnet/sf/saxon/expr/Operand;

    invoke-interface {p1}, Lnet/sf/saxon/trace/TraceableComponent;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, v1, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->n:Lnet/sf/saxon/expr/Operand;

    .line 5
    new-instance v0, Lcom/sunia/HTREnginev2/j7e;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/j7e;-><init>(Lnet/sf/saxon/expr/instruct/ComponentTracer;)V

    invoke-interface {p1, v0}, Lnet/sf/saxon/trace/Traceable;->gatherProperties(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/expr/instruct/ComponentTracer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->o:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkForUpdatingSubexpressions()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->checkForUpdatingSubexpressions()V

    return-void
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/instruct/ComponentTracer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->p:Lnet/sf/saxon/trace/TraceableComponent;

    iput-object v1, v0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->p:Lnet/sf/saxon/trace/TraceableComponent;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->o:Ljava/util/HashMap;

    iput-object v1, v0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->o:Ljava/util/HashMap;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/expr/Operand;

    sget-object v2, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v1, v0, p1, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v1, v0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    return-object v0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->p:Lnet/sf/saxon/trace/TraceableComponent;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, p1}, Lnet/sf/saxon/lib/TraceListener;->enter(Lnet/sf/saxon/trace/Traceable;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->p:Lnet/sf/saxon/trace/TraceableComponent;

    invoke-interface {v0, p0}, Lnet/sf/saxon/lib/TraceListener;->leave(Lnet/sf/saxon/trace/Traceable;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->p:Lnet/sf/saxon/trace/TraceableComponent;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, p1}, Lnet/sf/saxon/lib/TraceListener;->enter(Lnet/sf/saxon/trace/Traceable;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->p:Lnet/sf/saxon/trace/TraceableComponent;

    invoke-interface {v0, p0}, Lnet/sf/saxon/lib/TraceListener;->leave(Lnet/sf/saxon/trace/Traceable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V

    :goto_0
    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    return-void
.end method

.method public getBody()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getCardinality()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    return p0
.end method

.method public getChild()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getDependencies()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p0

    return p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "trace"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getImplementationMethod()I

    move-result p0

    return p0
.end method

.method public getInstructionNameCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/instruct/Instruction;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/Instruction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->getInstructionNameCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getNetCost()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "TraceExpr"

    return-object p0
.end method

.method public isUpdatingExpression()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result p0

    return p0
.end method

.method public isVacuousExpression()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->isVacuousExpression()Z

    move-result p0

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->p:Lnet/sf/saxon/trace/TraceableComponent;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, p1}, Lnet/sf/saxon/lib/TraceListener;->enter(Lnet/sf/saxon/trace/Traceable;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->p:Lnet/sf/saxon/trace/TraceableComponent;

    invoke-interface {v0, p0}, Lnet/sf/saxon/lib/TraceListener;->leave(Lnet/sf/saxon/trace/Traceable;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public final mayCreateNewNodes()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const/high16 v0, 0x800000

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
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

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->n:Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->p:Lnet/sf/saxon/trace/TraceableComponent;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->o:Ljava/util/HashMap;

    invoke-interface {v1, v0, v2, p2}, Lnet/sf/saxon/lib/TraceListener;->enter(Lnet/sf/saxon/trace/Traceable;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;->p:Lnet/sf/saxon/trace/TraceableComponent;

    invoke-interface {v1, p0}, Lnet/sf/saxon/lib/TraceListener;->leave(Lnet/sf/saxon/trace/Traceable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
