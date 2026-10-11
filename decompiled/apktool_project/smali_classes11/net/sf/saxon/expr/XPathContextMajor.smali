.class public Lnet/sf/saxon/expr/XPathContextMajor;
.super Lnet/sf/saxon/expr/XPathContextMinor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;
    }
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/expr/instruct/ParameterSet;

.field public f:Lnet/sf/saxon/expr/instruct/ParameterSet;

.field public g:Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

.field public h:Lnet/sf/saxon/expr/Component$M;

.field public i:Lnet/sf/saxon/trans/rules/Rule;

.field public j:Lnet/sf/saxon/expr/sort/GroupIterator;

.field public k:Lnet/sf/saxon/expr/sort/GroupIterator;

.field public l:Lnet/sf/saxon/regex/RegexIterator;

.field public m:Lnet/sf/saxon/expr/ContextOriginator;

.field public n:Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;

.field public o:Lnet/sf/saxon/lib/ResourceResolver;

.field public p:Lnet/sf/saxon/lib/ErrorReporter;

.field public q:Lnet/sf/saxon/expr/Component;

.field public r:Lnet/sf/saxon/trans/XPathException;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lnet/sf/saxon/expr/XPathContextMinor;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->n:Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Controller;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/expr/XPathContextMinor;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->n:Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    .line 4
    sget-object v0, Lnet/sf/saxon/expr/StackFrame;->EMPTY:Lnet/sf/saxon/expr/StackFrame;

    iput-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->m:Lnet/sf/saxon/expr/ContextOriginator;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/Executable;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lnet/sf/saxon/expr/XPathContextMinor;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->n:Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;

    .line 10
    instance-of v0, p2, Lnet/sf/saxon/PreparedStylesheet;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/trans/XsltController;

    .line 11
    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Executable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    check-cast p2, Lnet/sf/saxon/PreparedStylesheet;

    invoke-direct {v0, v1, p2}, Lnet/sf/saxon/trans/XsltController;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/PreparedStylesheet;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/Controller;

    .line 12
    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Executable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lnet/sf/saxon/Controller;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/instruct/Executable;)V

    :goto_0
    iput-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    if-eqz p1, :cond_1

    .line 13
    invoke-static {p1}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    .line 14
    new-instance p2, Lnet/sf/saxon/om/FocusTrackingIterator;

    invoke-direct {p2, p1}, Lnet/sf/saxon/om/FocusTrackingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    iput-object p2, p0, Lnet/sf/saxon/expr/XPathContextMinor;->b:Lnet/sf/saxon/om/FocusIterator;

    .line 15
    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    .line 16
    new-instance p1, Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lnet/sf/saxon/expr/XPathContextMinor$LastValue;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->c:Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

    .line 17
    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->m:Lnet/sf/saxon/expr/ContextOriginator;

    return-void
.end method

.method public static newContext(Lnet/sf/saxon/expr/XPathContextMinor;)Lnet/sf/saxon/expr/XPathContextMajor;
    .locals 3

    .line 22
    new-instance v0, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-direct {v0}, Lnet/sf/saxon/expr/XPathContextMajor;-><init>()V

    move-object v1, p0

    .line 23
    :goto_0
    instance-of v2, v1, Lnet/sf/saxon/expr/XPathContextMajor;

    if-nez v2, :cond_0

    .line 24
    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v1

    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    .line 26
    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMinor;->b:Lnet/sf/saxon/om/FocusIterator;

    .line 27
    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getStackFrame()Lnet/sf/saxon/expr/StackFrame;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    .line 28
    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getLocalParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMajor;->e:Lnet/sf/saxon/expr/instruct/ParameterSet;

    .line 29
    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getTunnelParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMajor;->f:Lnet/sf/saxon/expr/instruct/ParameterSet;

    .line 30
    iget-object v2, p0, Lnet/sf/saxon/expr/XPathContextMinor;->c:Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMinor;->c:Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

    .line 31
    iget-object v2, p0, Lnet/sf/saxon/expr/XPathContextMinor;->currentDestination:Ljava/lang/String;

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMinor;->currentDestination:Ljava/lang/String;

    .line 32
    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMajor;->h:Lnet/sf/saxon/expr/Component$M;

    .line 33
    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentTemplateRule()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMajor;->i:Lnet/sf/saxon/trans/rules/Rule;

    .line 34
    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentRegexIterator()Lnet/sf/saxon/regex/RegexIterator;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMajor;->l:Lnet/sf/saxon/regex/RegexIterator;

    .line 35
    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMajor;->j:Lnet/sf/saxon/expr/sort/GroupIterator;

    .line 36
    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMergeGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMajor;->k:Lnet/sf/saxon/expr/sort/GroupIterator;

    .line 37
    iput-object p0, v0, Lnet/sf/saxon/expr/XPathContextMinor;->d:Lnet/sf/saxon/expr/XPathContext;

    const/4 v2, 0x0

    .line 38
    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMajor;->g:Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

    .line 39
    check-cast v1, Lnet/sf/saxon/expr/XPathContextMajor;

    iget-object v2, v1, Lnet/sf/saxon/expr/XPathContextMajor;->n:Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMajor;->n:Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;

    .line 40
    iget-object v2, v1, Lnet/sf/saxon/expr/XPathContextMajor;->q:Lnet/sf/saxon/expr/Component;

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMajor;->q:Lnet/sf/saxon/expr/Component;

    .line 41
    iget-object v2, v1, Lnet/sf/saxon/expr/XPathContextMajor;->p:Lnet/sf/saxon/lib/ErrorReporter;

    iput-object v2, v0, Lnet/sf/saxon/expr/XPathContextMajor;->p:Lnet/sf/saxon/lib/ErrorReporter;

    .line 42
    iget-object v1, v1, Lnet/sf/saxon/expr/XPathContextMajor;->o:Lnet/sf/saxon/lib/ResourceResolver;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMajor;->o:Lnet/sf/saxon/lib/ResourceResolver;

    .line 43
    iget p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->temporaryOutputState:I

    iput p0, v0, Lnet/sf/saxon/expr/XPathContextMinor;->temporaryOutputState:I

    return-object v0
.end method

.method public static newThreadContext(Lnet/sf/saxon/expr/XPathContextMinor;)Lnet/sf/saxon/expr/XPathContextMajor;
    .locals 1

    invoke-static {p0}, Lnet/sf/saxon/expr/XPathContextMajor;->newContext(Lnet/sf/saxon/expr/XPathContextMinor;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StackFrame;->copy()Lnet/sf/saxon/expr/StackFrame;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    return-object v0
.end method


# virtual methods
.method public createThreadManager()V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makeThreadManager()Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->n:Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;

    return-void
.end method

.method public getAllVariableValues()[Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StackFrame;->getStackFrameValues()[Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentComponent()Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->q:Lnet/sf/saxon/expr/Component;

    return-object p0
.end method

.method public getCurrentException()Lnet/sf/saxon/trans/XPathException;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->r:Lnet/sf/saxon/trans/XPathException;

    return-object p0
.end method

.method public getCurrentGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->j:Lnet/sf/saxon/expr/sort/GroupIterator;

    return-object p0
.end method

.method public getCurrentMergeGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->k:Lnet/sf/saxon/expr/sort/GroupIterator;

    return-object p0
.end method

.method public getCurrentMode()Lnet/sf/saxon/expr/Component$M;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->h:Lnet/sf/saxon/expr/Component$M;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/RuleManager;->getUnnamedMode()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getCurrentRegexIterator()Lnet/sf/saxon/regex/RegexIterator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->l:Lnet/sf/saxon/regex/RegexIterator;

    return-object p0
.end method

.method public getCurrentTemplateRule()Lnet/sf/saxon/trans/rules/Rule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->i:Lnet/sf/saxon/trans/rules/Rule;

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->p:Lnet/sf/saxon/lib/ErrorReporter;

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLocalParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->e:Lnet/sf/saxon/expr/instruct/ParameterSet;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/instruct/ParameterSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/ParameterSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->e:Lnet/sf/saxon/expr/instruct/ParameterSet;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->e:Lnet/sf/saxon/expr/instruct/ParameterSet;

    return-object p0
.end method

.method public getOrigin()Lnet/sf/saxon/expr/ContextOriginator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->m:Lnet/sf/saxon/expr/ContextOriginator;

    return-object p0
.end method

.method public getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->o:Lnet/sf/saxon/lib/ResourceResolver;

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTailCallInfo()Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->g:Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->g:Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

    return-object v0
.end method

.method public getTargetComponent(I)Lnet/sf/saxon/expr/Component;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->q:Lnet/sf/saxon/expr/Component;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getComponentBindings()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/ComponentBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/ComponentBinding;->getTarget()Lnet/sf/saxon/expr/Component;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    throw p0
.end method

.method public getThreadManager()Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->n:Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;

    return-object p0
.end method

.method public getTunnelParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->f:Lnet/sf/saxon/expr/instruct/ParameterSet;

    return-object p0
.end method

.method public newContext()Lnet/sf/saxon/expr/XPathContextMajor;
    .locals 2

    .line 1
    new-instance v0, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-direct {v0}, Lnet/sf/saxon/expr/XPathContextMajor;-><init>()V

    .line 2
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMinor;->a:Lnet/sf/saxon/Controller;

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->b:Lnet/sf/saxon/om/FocusIterator;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMinor;->b:Lnet/sf/saxon/om/FocusIterator;

    .line 4
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    .line 5
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->e:Lnet/sf/saxon/expr/instruct/ParameterSet;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMajor;->e:Lnet/sf/saxon/expr/instruct/ParameterSet;

    .line 6
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->f:Lnet/sf/saxon/expr/instruct/ParameterSet;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMajor;->f:Lnet/sf/saxon/expr/instruct/ParameterSet;

    .line 7
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->c:Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMinor;->c:Lnet/sf/saxon/expr/XPathContextMinor$LastValue;

    .line 8
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->currentDestination:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMinor;->currentDestination:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->h:Lnet/sf/saxon/expr/Component$M;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMajor;->h:Lnet/sf/saxon/expr/Component$M;

    .line 10
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->i:Lnet/sf/saxon/trans/rules/Rule;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMajor;->i:Lnet/sf/saxon/trans/rules/Rule;

    .line 11
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->l:Lnet/sf/saxon/regex/RegexIterator;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMajor;->l:Lnet/sf/saxon/regex/RegexIterator;

    .line 12
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->j:Lnet/sf/saxon/expr/sort/GroupIterator;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMajor;->j:Lnet/sf/saxon/expr/sort/GroupIterator;

    .line 13
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->k:Lnet/sf/saxon/expr/sort/GroupIterator;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMajor;->k:Lnet/sf/saxon/expr/sort/GroupIterator;

    .line 14
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->r:Lnet/sf/saxon/trans/XPathException;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMajor;->r:Lnet/sf/saxon/trans/XPathException;

    .line 15
    iput-object p0, v0, Lnet/sf/saxon/expr/XPathContextMinor;->d:Lnet/sf/saxon/expr/XPathContext;

    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMajor;->g:Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

    .line 17
    iget v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->temporaryOutputState:I

    iput v1, v0, Lnet/sf/saxon/expr/XPathContextMinor;->temporaryOutputState:I

    .line 18
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->n:Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMajor;->n:Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;

    .line 19
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->q:Lnet/sf/saxon/expr/Component;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMajor;->q:Lnet/sf/saxon/expr/Component;

    .line 20
    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->p:Lnet/sf/saxon/lib/ErrorReporter;

    iput-object v1, v0, Lnet/sf/saxon/expr/XPathContextMajor;->p:Lnet/sf/saxon/lib/ErrorReporter;

    .line 21
    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->o:Lnet/sf/saxon/lib/ResourceResolver;

    iput-object p0, v0, Lnet/sf/saxon/expr/XPathContextMajor;->o:Lnet/sf/saxon/lib/ResourceResolver;

    return-object v0
.end method

.method public openStackFrame(I)V
    .locals 2

    .line 4
    new-instance v0, Lnet/sf/saxon/expr/StackFrame;

    new-instance v1, Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v1, p1}, Lnet/sf/saxon/expr/instruct/SlotManager;-><init>(I)V

    .line 5
    invoke-static {p1}, Lnet/sf/saxon/om/SequenceTool;->makeSequenceArray(I)[Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/sf/saxon/expr/StackFrame;-><init>(Lnet/sf/saxon/expr/instruct/SlotManager;[Lnet/sf/saxon/om/Sequence;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    return-void
.end method

.method public openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lnet/sf/saxon/expr/StackFrame;->EMPTY:Lnet/sf/saxon/expr/StackFrame;

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lnet/sf/saxon/expr/StackFrame;

    new-array v0, v0, [Lnet/sf/saxon/om/Sequence;

    invoke-direct {v1, p1, v0}, Lnet/sf/saxon/expr/StackFrame;-><init>(Lnet/sf/saxon/expr/instruct/SlotManager;[Lnet/sf/saxon/om/Sequence;)V

    iput-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    :goto_0
    return-void
.end method

.method public requestTailCall(Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;[Lnet/sf/saxon/om/Sequence;)V
    .locals 4

    if-eqz p2, :cond_1

    array-length v0, p2

    iget-object v1, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    iget-object v2, v1, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    array-length v3, v2

    if-le v0, v3, :cond_0

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lnet/sf/saxon/om/Sequence;

    iput-object p2, v1, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    goto :goto_0

    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->g:Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

    return-void
.end method

.method public resetAllVariableValues([Lnet/sf/saxon/om/Sequence;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/StackFrame;->setStackFrameValues([Lnet/sf/saxon/om/Sequence;)V

    return-void
.end method

.method public resetParameterValues([Lnet/sf/saxon/om/Sequence;)V
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    iget-object p0, p0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public resetStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;I)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    iput-object p1, v0, Lnet/sf/saxon/expr/StackFrame;->map:Lnet/sf/saxon/expr/instruct/SlotManager;

    iget-object v0, v0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    array-length v0, v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result p1

    new-array p1, p1, [Lnet/sf/saxon/om/Sequence;

    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    iget-object v0, v0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    iput-object p1, p0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    iget-object p0, p0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    array-length p1, p0

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setCurrentComponent(Lnet/sf/saxon/expr/Component;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->q:Lnet/sf/saxon/expr/Component;

    return-void
.end method

.method public setCurrentException(Lnet/sf/saxon/trans/XPathException;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->r:Lnet/sf/saxon/trans/XPathException;

    return-void
.end method

.method public setCurrentGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->j:Lnet/sf/saxon/expr/sort/GroupIterator;

    return-void
.end method

.method public setCurrentMergeGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->k:Lnet/sf/saxon/expr/sort/GroupIterator;

    return-void
.end method

.method public setCurrentMode(Lnet/sf/saxon/expr/Component$M;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->h:Lnet/sf/saxon/expr/Component$M;

    return-void
.end method

.method public setCurrentRegexIterator(Lnet/sf/saxon/regex/RegexIterator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->l:Lnet/sf/saxon/regex/RegexIterator;

    return-void
.end method

.method public setCurrentTemplateRule(Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->i:Lnet/sf/saxon/trans/rules/Rule;

    return-void
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->p:Lnet/sf/saxon/lib/ErrorReporter;

    return-void
.end method

.method public setLocalParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->e:Lnet/sf/saxon/expr/instruct/ParameterSet;

    return-void
.end method

.method public setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->m:Lnet/sf/saxon/expr/ContextOriginator;

    return-void
.end method

.method public setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->o:Lnet/sf/saxon/lib/ResourceResolver;

    return-void
.end method

.method public setStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;[Lnet/sf/saxon/om/Sequence;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/StackFrame;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/expr/StackFrame;-><init>(Lnet/sf/saxon/expr/instruct/SlotManager;[Lnet/sf/saxon/om/Sequence;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    if-eqz p1, :cond_1

    array-length v0, p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v1

    if-eq v0, v1, :cond_1

    array-length v0, p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result p1

    new-array p1, p1, [Lnet/sf/saxon/om/Sequence;

    iput-object p1, v0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    iget-object p0, p0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    array-length p1, p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to set more local variables ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") than the stackframe can accommodate ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public setTunnelParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/XPathContextMajor;->f:Lnet/sf/saxon/expr/instruct/ParameterSet;

    return-void
.end method

.method public useLocalParameter(Lnet/sf/saxon/om/StructuredQName;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMajor;->getTunnelParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lnet/sf/saxon/expr/XPathContextMajor;->e:Lnet/sf/saxon/expr/instruct/ParameterSet;

    :goto_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    return v0

    :cond_1
    invoke-virtual {p3, p1}, Lnet/sf/saxon/expr/instruct/ParameterSet;->getIndex(Lnet/sf/saxon/om/StructuredQName;)I

    move-result p1

    if-gez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p3, p1}, Lnet/sf/saxon/expr/instruct/ParameterSet;->getValue(I)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMinor;->stackFrame:Lnet/sf/saxon/expr/StackFrame;

    iget-object p0, p0, Lnet/sf/saxon/expr/StackFrame;->slots:[Lnet/sf/saxon/om/Sequence;

    aput-object v0, p0, p2

    invoke-virtual {p3, p1}, Lnet/sf/saxon/expr/instruct/ParameterSet;->isTypeChecked(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public waitForChildThreads()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/XPathContextMajor;->n:Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;->waitForChildThreads()V

    :cond_0
    return-void
.end method
