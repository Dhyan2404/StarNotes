.class public Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[D

.field public final b:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair<",
            "[D[D>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>([D[D)V

    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    .line 4
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->a:[D

    .line 5
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->b:[D

    return-void

    .line 6
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method


# virtual methods
.method public getNumberOfPoints()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->a:[D

    array-length p0, p0

    return p0
.end method

.method public getPoint(I)D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->a:[D

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getWeight(I)D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->b:[D

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public integrate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)D
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v4, v2

    move-wide v2, v0

    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->a:[D

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget-wide v5, v5, v4

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->b:[D

    aget-wide v7, v7, v4

    invoke-interface {p1, v5, v6}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v5

    mul-double/2addr v7, v5

    sub-double/2addr v7, v2

    add-double v2, v0, v7

    sub-double v0, v2, v0

    sub-double/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    move-wide v9, v0

    move-wide v0, v2

    move-wide v2, v9

    goto :goto_0

    :cond_0
    return-wide v0
.end method
