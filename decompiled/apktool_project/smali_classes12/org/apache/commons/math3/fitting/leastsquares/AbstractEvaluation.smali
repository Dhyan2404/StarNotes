.class public abstract Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->a:I

    return-void
.end method


# virtual methods
.method public getCost()D
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCovariances(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public getRMS()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->getCost()D

    move-result-wide v0

    mul-double/2addr v0, v0

    iget p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->a:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSigma(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->getCovariances(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p1

    new-instance p2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-interface {p0, v0, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method
