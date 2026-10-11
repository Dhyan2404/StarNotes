.class public Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

.field public e:Lorg/apache/commons/math3/linear/RealVector;

.field public f:Lorg/apache/commons/math3/linear/RealVector;

.field public g:Lorg/apache/commons/math3/linear/RealMatrix;

.field public h:Z

.field public i:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->d:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->e:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->f:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->g:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v4, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->c:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    iget v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->a:I

    iget v6, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->b:I

    iget-boolean v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->h:Z

    iget-object v8, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->i:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;IIZLorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object p0

    return-object p0
.end method

.method public checker(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->c:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    return-object p0
.end method

.method public checkerPair(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->evaluationChecker(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->checker(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p0

    return-object p0
.end method

.method public lazyEvaluation(Z)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->h:Z

    return-object p0
.end method

.method public maxEvaluations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    iput p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->a:I

    return-object p0
.end method

.method public maxIterations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    iput p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->b:I

    return-object p0
.end method

.method public model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->model(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p0

    return-object p0
.end method

.method public model(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->d:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    return-object p0
.end method

.method public parameterValidator(Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->i:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

    return-object p0
.end method

.method public start(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->f:Lorg/apache/commons/math3/linear/RealVector;

    return-object p0
.end method

.method public start([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->start(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p0

    return-object p0
.end method

.method public target(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->e:Lorg/apache/commons/math3/linear/RealVector;

    return-object p0
.end method

.method public target([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->target(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p0

    return-object p0
.end method

.method public weight(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->g:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method
