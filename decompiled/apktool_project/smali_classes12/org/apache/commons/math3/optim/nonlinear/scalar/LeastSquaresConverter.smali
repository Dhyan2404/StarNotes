.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# instance fields
.field public final e:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

.field public final f:[D

.field public final g:[D

.field public final h:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->e:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 3
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->f:[D

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->g:[D

    .line 5
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->h:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;[DLorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    array-length v0, p2

    invoke-interface {p3}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 15
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->e:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 16
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->f:[D

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->g:[D

    .line 18
    invoke-interface {p3}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->h:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void

    .line 19
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p2

    invoke-interface {p3}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    .line 8
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->e:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 9
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->f:[D

    .line 10
    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->g:[D

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->h:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void

    .line 12
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p2

    array-length p2, p3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method


# virtual methods
.method public value([D)D
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->e:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object p1

    array-length v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->f:[D

    array-length v1, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-wide v2, p1, v1

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->f:[D

    aget-wide v4, v4, v1

    sub-double/2addr v2, v4

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->g:[D

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-wide v4, p1, v0

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->g:[D

    aget-wide v6, v1, v0

    mul-double/2addr v6, v4

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->h:Lorg/apache/commons/math3/linear/RealMatrix;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object p0

    array-length p1, p0

    :goto_2
    if-ge v0, p1, :cond_3

    aget-wide v4, p0, v0

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    array-length p0, p1

    :goto_3
    if-ge v0, p0, :cond_3

    aget-wide v4, p1, v0

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-wide v2

    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->f:[D

    array-length p0, p0

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method
