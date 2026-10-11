.class public Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;,
        Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5

    instance-of v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    new-instance v1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-interface {v1, v2, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public static countEvaluations(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/util/Incrementor;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$b;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$b;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/util/Incrementor;)V

    return-object v0
.end method

.method public static create(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;[D[DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;II)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;",
            "Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;",
            "[D[D",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;II)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 p0, 0x0

    invoke-direct {v1, p2, p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, p3, p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;II)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;II)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;II)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 4
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/ConvergenceChecker;II)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->weightMatrix(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;IIZLorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;IIZ",
            "Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;",
            ")",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation

    move-object v0, p3

    .line 1
    new-instance v10, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/ConvergenceChecker;IIZLorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;)V

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v10, p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->weightMatrix(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v10
.end method

.method public static create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/ConvergenceChecker;II)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;II)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 3
    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;IIZLorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object p0

    return-object p0
.end method

.method public static evaluationChecker(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$c;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$c;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-object v0
.end method

.method public static model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$e;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$e;-><init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)V

    return-object v0
.end method

.method public static weightDiagonal(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-static {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->weightMatrix(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object p0

    return-object p0
.end method

.method public static weightMatrix(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->a(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$a;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$a;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-object v0
.end method
