.class public Lorg/apache/commons/math3/fitting/leastsquares/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;


# instance fields
.field public final a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/b;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    iput p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/b;->b:I

    iput p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/b;->c:I

    return-void
.end method


# virtual methods
.method public getCost()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/b;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCost()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCovariances(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/b;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCovariances(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public getEvaluations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/b;->b:I

    return p0
.end method

.method public getIterations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/b;->c:I

    return p0
.end method

.method public getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/b;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public getPoint()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/b;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public getRMS()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/b;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getRMS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getResiduals()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/b;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public getSigma(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/b;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getSigma(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method
