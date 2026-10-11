.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:D = 1.0E-15

.field public static final f:D = 4.9E-324


# instance fields
.field public final a:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

.field public final b:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

.field public final c:D

.field public final d:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;DDD)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-direct {v0}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->b:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->d:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    new-instance p1, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;

    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    const-wide/16 v4, 0x1

    new-instance v6, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;

    invoke-direct {v6, p2, p3, p4, p5}, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;-><init>(DD)V

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->a:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->c:D

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;)Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->d:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    return-object p0
.end method


# virtual methods
.method public search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 9

    array-length v0, p1

    new-instance v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$a;

    invoke-direct {v8, p0, v0, p1, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$a;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;I[D[D)V

    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->d:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->b:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->c:D

    move-object v2, v8

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->search(Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;DD)V

    iget-object p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->a:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/commons/math3/optim/OptimizationData;

    new-instance v1, Lorg/apache/commons/math3/optim/MaxEval;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;

    invoke-direct {v1, v8}, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;-><init>(Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    new-instance p1, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->b:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->getLo()D

    move-result-wide v3

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->b:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->getHi()D

    move-result-wide v5

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->b:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->getMid()D

    move-result-wide v7

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;-><init>(DDD)V

    const/4 p0, 0x3

    aput-object p1, v0, p0

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object p0

    return-object p0
.end method
