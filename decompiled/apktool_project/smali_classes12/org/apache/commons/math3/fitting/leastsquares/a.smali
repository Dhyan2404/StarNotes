.class public Lorg/apache/commons/math3/fitting/leastsquares/a;
.super Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;
.source "SourceFile"


# instance fields
.field public final b:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

.field public final c:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/a;->b:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/a;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method


# virtual methods
.method public getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/a;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/a;->b:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public getPoint()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/a;->b:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public getResiduals()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/a;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/a;->b:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method
