.class public Lnet/sf/saxon/expr/accum/AccumulatorData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/accum/IAccumulatorData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/accum/AccumulatorData$a;,
        Lnet/sf/saxon/expr/accum/AccumulatorData$b;
    }
.end annotation


# static fields
.field public static final synthetic d:Z


# instance fields
.field public final a:Lnet/sf/saxon/expr/accum/Accumulator;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/accum/AccumulatorData$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/accum/Accumulator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->c:Z

    iput-object p1, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->a:Lnet/sf/saxon/expr/accum/Accumulator;

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->a:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/accum/Accumulator;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->a:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lnet/sf/saxon/trans/Err;->depictSequence(Lnet/sf/saxon/om/Sequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/om/NodeInfo;ZLnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/accum/AccumulatorRule;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/accum/AccumulatorRule;->getNewValueExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-interface {p5}, Lnet/sf/saxon/expr/XPathContext;->newCleanContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p5

    invoke-virtual {p5}, Lnet/sf/saxon/expr/XPathContextMinor;->getController()Lnet/sf/saxon/Controller;

    new-instance v1, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-direct {v1, p2}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-virtual {p5, v1}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/accum/AccumulatorRule;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p1

    invoke-virtual {p5, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    const/4 p1, 0x0

    invoke-virtual {p5, p1, p4}, Lnet/sf/saxon/expr/XPathContextMinor;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->a:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p1

    invoke-virtual {p5, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    const/16 p1, 0x82

    invoke-virtual {p5, p1}, Lnet/sf/saxon/expr/XPathContextMinor;->setTemporaryOutputState(I)V

    sget-object p1, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;

    invoke-virtual {p1, v0, p5}, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p4

    if-nez p4, :cond_0

    if-nez p3, :cond_0

    iget-object p4, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->b:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x1

    if-ne p4, p5, :cond_0

    iget-object p4, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->b:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->b:Ljava/util/List;

    new-instance p4, Lnet/sf/saxon/expr/accum/AccumulatorData$a;

    new-instance p5, Lnet/sf/saxon/expr/accum/AccumulatorData$b;

    invoke-direct {p5, p2, p3}, Lnet/sf/saxon/expr/accum/AccumulatorData$b;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {p4, p5, p1}, Lnet/sf/saxon/expr/accum/AccumulatorData$a;-><init>(Lnet/sf/saxon/expr/accum/AccumulatorData$b;Lnet/sf/saxon/om/Sequence;)V

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public buildIndex(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->c:Z

    iget-object v1, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->a:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/accum/Accumulator;->getInitialValueExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p2

    iget-object v2, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->a:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/accum/Accumulator;->getSlotManagerForInitialValueExpression()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v3

    new-array v3, v3, [Lnet/sf/saxon/om/Sequence;

    invoke-virtual {p2, v2, v3}, Lnet/sf/saxon/expr/XPathContextMajor;->setStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;[Lnet/sf/saxon/om/Sequence;)V

    new-instance v2, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-direct {v2, p1}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-virtual {p2, v2}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->b:Ljava/util/List;

    new-instance v3, Lnet/sf/saxon/expr/accum/AccumulatorData$a;

    new-instance v4, Lnet/sf/saxon/expr/accum/AccumulatorData$b;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lnet/sf/saxon/expr/accum/AccumulatorData$b;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {v3, v4, v1}, Lnet/sf/saxon/expr/accum/AccumulatorData$a;-><init>(Lnet/sf/saxon/expr/accum/AccumulatorData$b;Lnet/sf/saxon/om/Sequence;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v1, p2}, Lnet/sf/saxon/expr/accum/AccumulatorData;->d(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p2

    iget-object v1, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->b:Ljava/util/List;

    new-instance v2, Lnet/sf/saxon/expr/accum/AccumulatorData$a;

    new-instance v3, Lnet/sf/saxon/expr/accum/AccumulatorData$b;

    invoke-direct {v3, p1, v0}, Lnet/sf/saxon/expr/accum/AccumulatorData$b;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {v2, v3, p2}, Lnet/sf/saxon/expr/accum/AccumulatorData$a;-><init>(Lnet/sf/saxon/expr/accum/AccumulatorData$b;Lnet/sf/saxon/om/Sequence;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->b:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    iput-boolean v5, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->c:Z

    return-void

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Accumulator "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->a:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " requires access to its own value"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "XTDE3400"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public final c(IILnet/sf/saxon/expr/accum/AccumulatorData$b;)Lnet/sf/saxon/om/Sequence;
    .locals 2

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/accum/AccumulatorData$a;

    iget-object p2, p2, Lnet/sf/saxon/expr/accum/AccumulatorData$a;->a:Lnet/sf/saxon/expr/accum/AccumulatorData$b;

    invoke-virtual {p3, p2}, Lnet/sf/saxon/expr/accum/AccumulatorData$b;->a(Lnet/sf/saxon/expr/accum/AccumulatorData$b;)I

    move-result p2

    if-gez p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->b:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/accum/AccumulatorData$a;

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData$a;->b:Lnet/sf/saxon/om/Sequence;

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/accum/AccumulatorData$a;

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData$a;->b:Lnet/sf/saxon/om/Sequence;

    return-object p0

    :cond_1
    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/accum/AccumulatorData$a;

    iget-object v1, v1, Lnet/sf/saxon/expr/accum/AccumulatorData$a;->a:Lnet/sf/saxon/expr/accum/AccumulatorData$b;

    invoke-virtual {p3, v1}, Lnet/sf/saxon/expr/accum/AccumulatorData$b;->a(Lnet/sf/saxon/expr/accum/AccumulatorData$b;)I

    move-result v1

    if-gtz v1, :cond_2

    invoke-virtual {p0, p1, v0, p3}, Lnet/sf/saxon/expr/accum/AccumulatorData;->c(IILnet/sf/saxon/expr/accum/AccumulatorData$b;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p2, p3}, Lnet/sf/saxon/expr/accum/AccumulatorData;->c(IILnet/sf/saxon/expr/accum/AccumulatorData$b;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/iter/ManualIterator;->setContextItem(Lnet/sf/saxon/om/Item;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->a:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/accum/Accumulator;->getPreDescentRules()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lnet/sf/saxon/trans/SimpleMode;->getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lnet/sf/saxon/expr/accum/AccumulatorData;->b(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/om/NodeInfo;ZLnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p2

    const-string v0, " BEFORE "

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/sf/saxon/expr/accum/AccumulatorData;->a(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, p2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p2, v5, p3}, Lnet/sf/saxon/expr/accum/AccumulatorData;->d(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/tree/iter/ManualIterator;->setContextItem(Lnet/sf/saxon/om/Item;)V

    iget-object p2, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->a:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/accum/Accumulator;->getPostDescentRules()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lnet/sf/saxon/trans/SimpleMode;->getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lnet/sf/saxon/expr/accum/AccumulatorData;->b(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/om/NodeInfo;ZLnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v5

    const-string p2, " AFTER "

    invoke-virtual {p0, p1, v5, p3, p2}, Lnet/sf/saxon/expr/accum/AccumulatorData;->a(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v5

    :catch_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException$StackOverflow;

    const-string p2, "XTDE3400"

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->a:Lnet/sf/saxon/expr/accum/Accumulator;

    const-string v0, "Too many nested accumulator evaluations. The accumulator definition may have cyclic dependencies"

    invoke-direct {p1, v0, p2, p0}, Lnet/sf/saxon/trans/XPathException$StackOverflow;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p3}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1
.end method

.method public getAccumulator()Lnet/sf/saxon/expr/accum/Accumulator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->a:Lnet/sf/saxon/expr/accum/Accumulator;

    return-object p0
.end method

.method public getValue(Lnet/sf/saxon/om/NodeInfo;Z)Lnet/sf/saxon/om/Sequence;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/accum/AccumulatorData$b;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/expr/accum/AccumulatorData$b;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    iget-object p1, p0, Lnet/sf/saxon/expr/accum/AccumulatorData;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lnet/sf/saxon/expr/accum/AccumulatorData;->c(IILnet/sf/saxon/expr/accum/AccumulatorData$b;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method
