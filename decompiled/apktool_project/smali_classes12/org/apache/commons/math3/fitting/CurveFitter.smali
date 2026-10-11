.class public Lorg/apache/commons/math3/fitting/CurveFitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/CurveFitter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->a:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/fitting/CurveFitter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addObservedPoint(DD)V
    .locals 7

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/fitting/CurveFitter;->addObservedPoint(DDD)V

    return-void
.end method

.method public addObservedPoint(DDD)V
    .locals 8

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->b:Ljava/util/List;

    new-instance v7, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;-><init>(DDD)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObservedPoint(Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearObservations()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;[D)[D"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    .line 4
    iget-object v2, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 5
    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v7

    aput-wide v7, v0, v4

    .line 6
    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v7

    aput-wide v7, v1, v4

    add-int/2addr v4, v6

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/fitting/CurveFitter$a;

    invoke-direct {v2, p0, p2}, Lorg/apache/commons/math3/fitting/CurveFitter$a;-><init>(Lorg/apache/commons/math3/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V

    .line 8
    iget-object p0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->a:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    const/4 p2, 0x6

    new-array p2, p2, [Lorg/apache/commons/math3/optim/OptimizationData;

    new-instance v4, Lorg/apache/commons/math3/optim/MaxEval;

    invoke-direct {v4, p1}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    aput-object v4, p2, v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/CurveFitter$a;->b()Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;

    move-result-object p1

    aput-object p1, p2, v6

    const/4 p1, 0x2

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/CurveFitter$a;->c()Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;

    move-result-object v2

    aput-object v2, p2, p1

    new-instance p1, Lorg/apache/commons/math3/optim/nonlinear/vector/Target;

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/Target;-><init>([D)V

    const/4 v0, 0x3

    aput-object p1, p2, v0

    new-instance p1, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;

    invoke-direct {p1, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;-><init>([D)V

    const/4 v0, 0x4

    aput-object p1, p2, v0

    new-instance p1, Lorg/apache/commons/math3/optim/InitialGuess;

    invoke-direct {p1, p3}, Lorg/apache/commons/math3/optim/InitialGuess;-><init>([D)V

    const/4 p3, 0x5

    aput-object p1, p2, p3

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getPointRef()[D

    move-result-object p0

    return-object p0
.end method

.method public fit(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[D)[D"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/fitting/CurveFitter;->fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object p0

    return-object p0
.end method

.method public getObservations()[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/CurveFitter;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    return-object p0
.end method
