.class public Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;


# instance fields
.field public final a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object p0

    return-object p0
.end method

.method public getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {p0}, Lorg/apache/commons/math3/optim/OptimizationProblem;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object p0

    return-object p0
.end method

.method public getEvaluationCounter()Lorg/apache/commons/math3/util/Incrementor;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {p0}, Lorg/apache/commons/math3/optim/OptimizationProblem;->getEvaluationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object p0

    return-object p0
.end method

.method public getIterationCounter()Lorg/apache/commons/math3/util/Incrementor;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {p0}, Lorg/apache/commons/math3/optim/OptimizationProblem;->getIterationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object p0

    return-object p0
.end method

.method public getObservationSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getObservationSize()I

    move-result p0

    return p0
.end method

.method public getParameterSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getParameterSize()I

    move-result p0

    return p0
.end method

.method public getStart()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->a:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    invoke-interface {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getStart()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method
