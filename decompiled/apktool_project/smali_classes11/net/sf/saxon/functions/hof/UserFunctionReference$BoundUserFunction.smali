.class public Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;
.super Lnet/sf/saxon/functions/AbstractFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ContextOriginator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/hof/UserFunctionReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundUserFunction"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/expr/ExportAgent;

.field public final f:Lnet/sf/saxon/om/Function;

.field public final g:Lnet/sf/saxon/expr/Component;

.field public final h:Lnet/sf/saxon/Controller;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/ExportAgent;Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/Component;Lnet/sf/saxon/Controller;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->e:Lnet/sf/saxon/expr/ExportAgent;

    iput-object p2, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->f:Lnet/sf/saxon/om/Function;

    iput-object p3, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->g:Lnet/sf/saxon/expr/Component;

    iput-object p4, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->h:Lnet/sf/saxon/Controller;

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->f:Lnet/sf/saxon/om/Function;

    invoke-interface {v0, p1, p0}, Lnet/sf/saxon/om/Function;->makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/expr/XPathContextMajor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->g:Lnet/sf/saxon/expr/Component;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->f:Lnet/sf/saxon/om/Function;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->e:Lnet/sf/saxon/expr/ExportAgent;

    invoke-interface {p0, p1}, Lnet/sf/saxon/expr/ExportAgent;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    return-void
.end method

.method public getAnnotations()Lnet/sf/saxon/query/AnnotationList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->f:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getAnnotations()Lnet/sf/saxon/query/AnnotationList;

    move-result-object p0

    return-object p0
.end method

.method public getArity()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->f:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result p0

    return p0
.end method

.method public getController()Lnet/sf/saxon/Controller;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->h:Lnet/sf/saxon/Controller;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->f:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->f:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->f:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getTargetFunction()Lnet/sf/saxon/om/Function;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->f:Lnet/sf/saxon/om/Function;

    return-object p0
.end method

.method public makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContext;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->h:Lnet/sf/saxon/Controller;

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->h:Lnet/sf/saxon/Controller;

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/XPathContextMinor;->setTemporaryOutputState(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentOutputUri(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->g:Lnet/sf/saxon/expr/Component;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;->f:Lnet/sf/saxon/om/Function;

    invoke-interface {p0, v0, p2}, Lnet/sf/saxon/om/Function;->makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A function created under one Configuration cannot be called under a different Configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
