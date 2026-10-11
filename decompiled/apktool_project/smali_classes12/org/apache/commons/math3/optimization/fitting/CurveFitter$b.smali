.class public Lorg/apache/commons/math3/optimization/fitting/CurveFitter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/fitting/CurveFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

.field public final synthetic b:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$b;->b:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$b;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$b;->b:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->a(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    .line 2
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$b;->b:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->a(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    add-int/lit8 v4, v2, 0x1

    .line 3
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$b;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-virtual {v3}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    invoke-interface {v5, v6, v7, p1}, Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;->value(D[D)D

    move-result-wide v5

    aput-wide v5, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 14

    .line 4
    array-length v0, p1

    new-array v0, v0, [D

    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 6
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$b;->b:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->a(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 8
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$b;->b:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->a(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    .line 9
    new-instance v6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v7, p1

    iget-object v8, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$b;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-virtual {v5}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v9

    invoke-interface {v8, v9, v10, v0}, Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;->value(D[D)D

    move-result-wide v8

    const/4 v5, 0x1

    invoke-direct {v6, v7, v5, v8, v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    move v5, v1

    .line 10
    :goto_2
    array-length v7, p1

    if-ge v5, v7, :cond_1

    .line 11
    new-instance v13, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v8, p1

    const/4 v9, 0x1

    const-wide/16 v11, 0x0

    move-object v7, v13

    move v10, v5

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    invoke-virtual {v6, v13}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v4, 0x1

    .line 12
    aput-object v6, v2, v4

    move v4, v5

    goto :goto_1

    :cond_2
    return-object v2
.end method
