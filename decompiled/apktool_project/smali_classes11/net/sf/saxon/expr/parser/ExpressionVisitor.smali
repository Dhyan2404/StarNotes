.class public Lnet/sf/saxon/expr/parser/ExpressionVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:I = 0x1f4


# instance fields
.field public a:Lnet/sf/saxon/expr/StaticContext;

.field public b:Z

.field public c:Z

.field public final d:Lnet/sf/saxon/Configuration;

.field public e:Lnet/sf/saxon/expr/parser/Optimizer;

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->b:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->c:Z

    iput v0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->f:I

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->g:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->h:Z

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->d:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public static make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->setStaticContext(Lnet/sf/saxon/expr/StaticContext;)V

    return-object v0
.end method


# virtual methods
.method public decrementDepth()V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->f:I

    return-void
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->d:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getStaticContext()Lnet/sf/saxon/expr/StaticContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->a:Lnet/sf/saxon/expr/StaticContext;

    return-object p0
.end method

.method public getTargetEdition()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->a:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getTargetEdition()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public incrementAndTestDepth()Z
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->f:I

    const/16 p0, 0x1f4

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInliningFunctions()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->g:Z

    return p0
.end method

.method public isOptimizeForPatternMatching()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->c:Z

    return p0
.end method

.method public isOptimizeForStreaming()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->b:Z

    return p0
.end method

.method public isSuppressWarnings()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->h:Z

    return p0
.end method

.method public issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isSuppressWarnings()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->a:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_0
    return-void
.end method

.method public makeDynamicContext()Lnet/sf/saxon/expr/XPathContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->a:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p0

    return-object p0
.end method

.method public obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->e:Lnet/sf/saxon/expr/parser/Optimizer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->d:Lnet/sf/saxon/Configuration;

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->a:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->obtainOptimizer(Lnet/sf/saxon/expr/parser/OptimizerOptions;)Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->e:Lnet/sf/saxon/expr/parser/Optimizer;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->e:Lnet/sf/saxon/expr/parser/Optimizer;

    return-object p0
.end method

.method public setInliningFunctions(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->g:Z

    return-void
.end method

.method public setOptimizeForPatternMatching(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->c:Z

    return-void
.end method

.method public setOptimizeForStreaming(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->b:Z

    return-void
.end method

.method public setStaticContext(Lnet/sf/saxon/expr/StaticContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->a:Lnet/sf/saxon/expr/StaticContext;

    return-void
.end method

.method public setSuppressWarnings(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->h:Z

    return-void
.end method
