.class public Lnet/sf/saxon/expr/XPathContextMinor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/XPathContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/XPathContextMinor$LastValue;
    }
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/Controller;

.field public b:Lnet/sf/saxon/om/FocusIterator;

.field public c:Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

.field protected currentDestination:Ljava/lang/String;

.field public d:Lnet/sf/saxon/expr/XPathContext;

.field protected stackFrame:Lnet/sf/saxon/expr/StackFrame;

.field protected temporaryOutputState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->c:Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

    iput-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->d:Lnet/sf/saxon/expr/XPathContext;

    const-string v0, ""

    iput-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->currentDestination:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->temporaryOutputState:I

    return-void
.end method


# virtual methods
.method public final evaluateLocalVariable(I)Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    iget-object p0, p0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getCaller()Lnet/sf/saxon/expr/XPathContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->d:Lnet/sf/saxon/expr/XPathContext;

    return-object p0
.end method

.method public final getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public final getContextItem()Lnet/sf/saxon/om/Item;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->b:Lnet/sf/saxon/om/FocusIterator;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/FocusIterator;->current()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public final getController()Lnet/sf/saxon/Controller;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    return-object p0
.end method

.method public getCurrentComponent()Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->d:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getCurrentComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDateTime()Lnet/sf/saxon/value/DateTimeValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getCurrentDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentException()Lnet/sf/saxon/trans/XPathException;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->d:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getCurrentException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getCurrentGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->b:Lnet/sf/saxon/om/FocusIterator;

    return-object p0
.end method

.method public getCurrentMergeGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMergeGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMode()Lnet/sf/saxon/expr/Component$M;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentOutputUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->currentDestination:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentRegexIterator()Lnet/sf/saxon/regex/RegexIterator;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getCurrentRegexIterator()Lnet/sf/saxon/regex/RegexIterator;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTemplateRule()Lnet/sf/saxon/trans/rules/Rule;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->d:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    return-object p0
.end method

.method public final getImplicitTimezone()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getImplicitTimezone()I

    move-result p0

    return p0
.end method

.method public final getLast()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/UncheckedXPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->b:Lnet/sf/saxon/om/FocusIterator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->c:Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

    iget v1, v1, Lnet/sf/saxon/expr/XPathContextMinor$LastValue;->value:I

    if-ltz v1, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lnet/sf/saxon/om/FocusIterator;->getLength()I

    move-result v0

    new-instance v1, Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

    invoke-direct {v1, v0}, Lnet/sf/saxon/expr/XPathContextMinor$LastValue;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->c:Lnet/sf/saxon/expr/XPathContextMinor$LastValue;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0

    :cond_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "The context item is absent, so last() is undefined"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string p0, "XPDY0002"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p0
.end method

.method public getLocalParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getLocalParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object p0

    return-object p0
.end method

.method public final getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    return-object p0
.end method

.method public getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->d:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    return-object p0
.end method

.method public getStackFrame()Lnet/sf/saxon/expr/StackFrame;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    return-object p0
.end method

.method public getTargetComponent(I)Lnet/sf/saxon/expr/Component;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    invoke-interface {p0, p1}, Lnet/sf/saxon/expr/XPathContext;->getTargetComponent(I)Lnet/sf/saxon/expr/Component;

    move-result-object p0

    return-object p0
.end method

.method public getTemporaryOutputState()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->temporaryOutputState:I

    return p0
.end method

.method public getThreadManager()Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->d:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getThreadManager()Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;

    move-result-object p0

    return-object p0
.end method

.method public getTunnelParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getTunnelParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object p0

    return-object p0
.end method

.method public final isAtLast()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->b:Lnet/sf/saxon/om/FocusIterator;

    instance-of v1, v0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->supportsHasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->b:Lnet/sf/saxon/om/FocusIterator;

    check-cast p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->b:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/FocusIterator;->position()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getLast()I

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public iterateStackFrames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/trace/ContextStackFrame;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trace/ContextStackIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trace/ContextStackIterator;-><init>(Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public makeStackFrameMutable()V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    sget-object v1, Lnet/sf/saxon/expr/StackFrame;->EMPTY:Lnet/sf/saxon/expr/StackFrame;

    if-ne v0, v1, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/StackFrame;

    const/4 v1, 0x0

    invoke-static {v1}, Lnet/sf/saxon/om/SequenceTool;->makeSequenceArray(I)[Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lnet/sf/saxon/expr/StackFrame;-><init>(Lnet/sf/saxon/expr/instruct/SlotManager;[Lnet/sf/saxon/om/Sequence;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    :cond_0
    return-void
.end method

.method public newCleanContext()Lnet/sf/saxon/expr/XPathContextMajor;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/XPathContextMajor;-><init>(Lnet/sf/saxon/Controller;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/XPathContextMinor;->setCaller(Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public newContext()Lnet/sf/saxon/expr/XPathContextMajor;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/expr/XPathContextMajor;->newContext(Lnet/sf/saxon/expr/XPathContextMinor;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p0

    return-object p0
.end method

.method public newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/XPathContextMinor;

    invoke-direct {v0}, Lnet/sf/saxon/expr/XPathContextMinor;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    iput-object p0, v0, Lnet/sf/saxon/expr/XPathContextMinor;->d:Lnet/sf/saxon/expr/XPathContext;

    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->b:Lnet/sf/saxon/om/FocusIterator;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMinor;->b:Lnet/sf/saxon/om/FocusIterator;

    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->c:Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMinor;->c:Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->currentDestination:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMinor;->currentDestination:Ljava/lang/String;

    iget p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->temporaryOutputState:I

    iput p0, v0, Lnet/sf/saxon/expr/XPathContextMinor;->temporaryOutputState:I

    return-object v0
.end method

.method public setCaller(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->d:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method

.method public setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->b:Lnet/sf/saxon/om/FocusIterator;

    new-instance p1, Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/XPathContextMinor$LastValue;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->c:Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

    return-void
.end method

.method public setCurrentOutputUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->currentDestination:Ljava/lang/String;

    return-void
.end method

.method public final setLocalVariable(ILnet/sf/saxon/om/Sequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->makeRepeatable()Lnet/sf/saxon/om/Sequence;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    iget-object v0, v0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p2, -0x3e7

    if-ne p1, p2, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Internal error: Cannot set local variable: no slot allocated"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal error: Cannot set local variable (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getStackFrame()Lnet/sf/saxon/expr/StackFrame;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StackFrame;->getStackFrameValues()[Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public setTemporaryOutputState(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->temporaryOutputState:I

    return-void
.end method

.method public trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Controller;->getFocusTrackerFactory(Z)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/FocusIterator;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    return-object p1
.end method

.method public trackFocusMultithreaded(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Controller;->getFocusTrackerFactory(Z)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/FocusIterator;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    return-object p1
.end method

.method public useLocalParameter(Lnet/sf/saxon/om/StructuredQName;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/expr/XPathContext;->useLocalParameter(Lnet/sf/saxon/om/StructuredQName;IZ)I

    move-result p0

    return p0
.end method

.method public declared-synchronized waitForChildThreads()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/expr/XPathContext;->waitForChildThreads()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
