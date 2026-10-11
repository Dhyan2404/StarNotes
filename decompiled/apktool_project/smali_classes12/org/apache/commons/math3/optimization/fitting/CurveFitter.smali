.class public Lorg/apache/commons/math3/optimization/fitting/CurveFitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/fitting/CurveFitter$b;,
        Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a;
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
.field public final a:Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final b:Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->a:Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->b:Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->a:Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;

    .line 7
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->b:Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->c:Ljava/util/List;

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
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->addObservedPoint(DDD)V

    return-void
.end method

.method public addObservedPoint(DDD)V
    .locals 8

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->c:Ljava/util/List;

    new-instance v7, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;-><init>(DDD)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObservedPoint(Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearObservations()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;[D)[D"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [D

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [D

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 5
    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 6
    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v2

    aput-wide v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->b:Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->a:Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;

    new-instance v3, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a;

    invoke-direct {v3, p0, p2}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a;-><init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V

    move v2, p1

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;->optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p0

    goto :goto_1

    .line 9
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$b;

    invoke-direct {v3, p0, p2}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$b;-><init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V

    move v2, p1

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;->optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p0

    .line 10
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPointRef()[D

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
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object p0

    return-object p0
.end method

.method public getObservations()[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    return-object p0
.end method
