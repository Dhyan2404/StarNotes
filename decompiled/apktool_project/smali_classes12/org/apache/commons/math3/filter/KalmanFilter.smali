.class public Lorg/apache/commons/math3/filter/KalmanFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/apache/commons/math3/filter/ProcessModel;

.field public final b:Lorg/apache/commons/math3/filter/MeasurementModel;

.field public c:Lorg/apache/commons/math3/linear/RealMatrix;

.field public d:Lorg/apache/commons/math3/linear/RealMatrix;

.field public e:Lorg/apache/commons/math3/linear/RealMatrix;

.field public f:Lorg/apache/commons/math3/linear/RealMatrix;

.field public g:Lorg/apache/commons/math3/linear/RealMatrix;

.field public h:Lorg/apache/commons/math3/linear/RealVector;

.field public i:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/filter/ProcessModel;Lorg/apache/commons/math3/filter/MeasurementModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->a:Lorg/apache/commons/math3/filter/ProcessModel;

    iput-object p2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->b:Lorg/apache/commons/math3/filter/MeasurementModel;

    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getStateTransitionMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getControlMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getControlMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    :goto_0
    invoke-interface {p2}, Lorg/apache/commons/math3/filter/MeasurementModel;->getMeasurementMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->g:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getProcessNoise()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/apache/commons/math3/filter/MeasurementModel;->getMeasurementNoise()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getInitialStateEstimate()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->h:Lorg/apache/commons/math3/linear/RealVector;

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getInitialStateEstimate()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->h:Lorg/apache/commons/math3/linear/RealVector;

    :goto_1
    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->h:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    if-ne v1, v2, :cond_8

    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getInitialErrorCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getInitialErrorCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    :goto_2
    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->isSquare()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p1

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    if-ne p1, v1, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    iget-object p2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p2

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    iget-object p0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-direct {p1, p2, v0, v1, p0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1

    :cond_4
    :goto_3
    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p1

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    if-ne p1, v0, :cond_6

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p1

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    iget-object p0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p0

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p2

    invoke-direct {p1, v0, v1, p0, p2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1

    :cond_6
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    iget-object p2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p2

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    iget-object p0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p0

    invoke-direct {p1, p2, v0, v1, p0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1

    :cond_7
    new-instance p1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    iget-object p2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p2

    iget-object p0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw p1

    :cond_8
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object p2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p2

    iget-object p0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->h:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method


# virtual methods
.method public correct(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->g:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->b:Lorg/apache/commons/math3/filter/MeasurementModel;

    invoke-interface {v1}, Lorg/apache/commons/math3/filter/MeasurementModel;->getMeasurementNoise()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->h:Lorg/apache/commons/math3/linear/RealVector;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    .line 6
    new-instance v1, Lorg/apache/commons/math3/linear/CholeskyDecomposition;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->h:Lorg/apache/commons/math3/linear/RealVector;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->h:Lorg/apache/commons/math3/linear/RealVector;

    .line 8
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    .line 9
    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void

    .line 10
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    iget-object p0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p0

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public correct([D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/filter/KalmanFilter;->correct(Lorg/apache/commons/math3/linear/RealVector;)V

    return-void
.end method

.method public getErrorCovariance()[[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p0

    return-object p0
.end method

.method public getErrorCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public getMeasurementDimension()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p0

    return p0
.end method

.method public getStateDimension()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->h:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p0

    return p0
.end method

.method public getStateEstimation()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->h:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p0

    return-object p0
.end method

.method public getStateEstimationVector()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->h:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public predict()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/filter/KalmanFilter;->predict(Lorg/apache/commons/math3/linear/RealVector;)V

    return-void
.end method

.method public predict(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    iget-object p0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->h:Lorg/apache/commons/math3/linear/RealVector;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->h:Lorg/apache/commons/math3/linear/RealVector;

    if-eqz p1, :cond_2

    .line 6
    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->h:Lorg/apache/commons/math3/linear/RealVector;

    .line 7
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->a:Lorg/apache/commons/math3/filter/ProcessModel;

    invoke-interface {v0}, Lorg/apache/commons/math3/filter/ProcessModel;->getProcessNoise()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public predict([D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/filter/KalmanFilter;->predict(Lorg/apache/commons/math3/linear/RealVector;)V

    return-void
.end method
