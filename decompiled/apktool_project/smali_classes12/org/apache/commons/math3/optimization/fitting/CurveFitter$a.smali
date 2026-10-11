.class public Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/fitting/CurveFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

.field public final synthetic b:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a;->b:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a;)Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    return-object p0
.end method


# virtual methods
.method public jacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a$a;-><init>(Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a;)V

    return-object v0
.end method

.method public value([D)[D
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a;->b:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->a(Lorg/apache/commons/math3/optimization/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a;->b:Lorg/apache/commons/math3/optimization/fitting/CurveFitter;

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

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/fitting/CurveFitter$a;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

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
