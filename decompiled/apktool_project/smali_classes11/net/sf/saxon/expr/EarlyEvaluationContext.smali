.class public Lnet/sf/saxon/expr/EarlyEvaluationContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/XPathContext;


# instance fields
.field public final a:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Lnet/sf/saxon/trans/NoDynamicContextException;

    const-string v1, "Internal error: early evaluation of subexpression with no context"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/NoDynamicContextException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public evaluateLocalVariable(I)Lnet/sf/saxon/om/Sequence;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCaller()Lnet/sf/saxon/expr/XPathContext;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getContextItem()Lnet/sf/saxon/om/Item;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getController()Lnet/sf/saxon/Controller;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentComponent()Lnet/sf/saxon/expr/Component;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentDateTime()Lnet/sf/saxon/value/DateTimeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/NoDynamicContextException;

    const-string v0, "current-dateTime"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/NoDynamicContextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentException()Lnet/sf/saxon/trans/XPathException;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->getCurrentIterator()Lnet/sf/saxon/om/FocusTrackingIterator;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIterator()Lnet/sf/saxon/om/FocusTrackingIterator;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentMergeGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentMode()Lnet/sf/saxon/expr/Component$M;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentOutputUri()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentRegexIterator()Lnet/sf/saxon/regex/RegexIterator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentTemplateRule()Lnet/sf/saxon/trans/rules/Rule;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    return-object p0
.end method

.method public getImplicitTimezone()I
    .locals 0

    const p0, 0x7fffffff

    return p0
.end method

.method public getLast()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/UncheckedXPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "The context item is absent"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v0, "XPDY0002"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public getLocalParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    return-object p0
.end method

.method public getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    return-object p0
.end method

.method public getStackFrame()Lnet/sf/saxon/expr/StackFrame;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTargetComponent(I)Lnet/sf/saxon/expr/Component;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTemporaryOutputState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getThreadManager()Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTunnelParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAtLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "The context item is absent"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v0, "XPDY0002"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public iterateStackFrames()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/trace/ContextStackFrame;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public newCleanContext()Lnet/sf/saxon/expr/XPathContextMajor;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public newContext()Lnet/sf/saxon/expr/XPathContextMajor;
    .locals 1

    new-instance v0, Lnet/sf/saxon/Controller;

    iget-object p0, p0, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, p0}, Lnet/sf/saxon/Controller;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p0

    return-object p0
.end method

.method public newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p0

    return-object p0
.end method

.method public setCaller(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    return-void
.end method

.method public setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a()V

    return-void
.end method

.method public setCurrentOutputUri(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLocalVariable(ILnet/sf/saxon/om/Sequence;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a()V

    return-void
.end method

.method public setTemporaryOutputState(I)V
    .locals 0

    return-void
.end method

.method public trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->a()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public useLocalParameter(Lnet/sf/saxon/om/StructuredQName;IZ)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public waitForChildThreads()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->waitForChildThreads()V

    return-void
.end method
