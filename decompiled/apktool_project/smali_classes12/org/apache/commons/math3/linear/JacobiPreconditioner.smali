.class public Lorg/apache/commons/math3/linear/JacobiPreconditioner;
.super Lorg/apache/commons/math3/linear/RealLinearOperator;
.source "SourceFile"


# instance fields
.field public final e:Lorg/apache/commons/math3/linear/ArrayRealVector;


# direct methods
.method public constructor <init>([DZ)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;-><init>()V

    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->e:Lorg/apache/commons/math3/linear/ArrayRealVector;

    return-void
.end method

.method public static create(Lorg/apache/commons/math3/linear/RealLinearOperator;)Lorg/apache/commons/math3/linear/JacobiPreconditioner;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v1

    if-ne v1, v0, :cond_2

    new-array v1, v0, [D

    instance-of v2, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_1

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->set(D)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v4, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;

    invoke-direct {p0, v1, v3}, Lorg/apache/commons/math3/linear/JacobiPreconditioner;-><init>([DZ)V

    return-object p0

    :cond_2
    new-instance v1, Lorg/apache/commons/math3/linear/NonSquareOperatorException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result p0

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/linear/NonSquareOperatorException;-><init>(II)V

    throw v1
.end method


# virtual methods
.method public getColumnDimension()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->e:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result p0

    return p0
.end method

.method public getRowDimension()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->e:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result p0

    return p0
.end method

.method public operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->e:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/commons/math3/util/MathArrays;->ebeDivide([D[D)[D

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/linear/RealLinearOperator;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->e:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v1, Lorg/apache/commons/math3/analysis/function/Sqrt;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/function/Sqrt;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/linear/JacobiPreconditioner$a;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/linear/JacobiPreconditioner$a;-><init>(Lorg/apache/commons/math3/linear/JacobiPreconditioner;Lorg/apache/commons/math3/linear/RealVector;)V

    return-object v1
.end method
