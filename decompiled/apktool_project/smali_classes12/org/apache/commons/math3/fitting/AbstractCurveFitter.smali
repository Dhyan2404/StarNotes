.class public abstract Lorg/apache/commons/math3/fitting/AbstractCurveFitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fit(Ljava/util/Collection;)[D
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)[D"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;->getOptimizer()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;->getProblem(Ljava/util/Collection;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;->optimize(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p0

    return-object p0
.end method

.method public getOptimizer()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;
    .locals 0

    new-instance p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    invoke-direct {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>()V

    return-object p0
.end method

.method public abstract getProblem(Ljava/util/Collection;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation
.end method
