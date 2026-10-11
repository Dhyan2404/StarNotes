.class public Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

.field public final b:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$e;->a:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$e;->b:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    return-void
.end method


# virtual methods
.method public computeJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$e;->b:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;->value([D)[[D

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v0
.end method

.method public computeValue([D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$e;->a:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0
.end method

.method public value(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/RealVector;",
            ")",
            "Lorg/apache/commons/math3/util/Pair<",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    new-instance v0, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$e;->computeValue([D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$e;->computeJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
