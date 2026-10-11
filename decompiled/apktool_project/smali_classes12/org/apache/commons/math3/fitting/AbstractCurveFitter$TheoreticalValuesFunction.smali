.class public Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/AbstractCurveFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TheoreticalValuesFunction"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

.field public final b:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->b:[D

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->b:[D

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    aput-wide v3, v1, p2

    move p2, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->b:[D

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    return-object p0
.end method


# virtual methods
.method public getModelFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$a;-><init>(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)V

    return-object v0
.end method

.method public getModelFunctionJacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$b;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction$b;-><init>(Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;)V

    return-object v0
.end method
