.class public Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
.source "SourceFile"


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

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;-><init>([D[D)V

    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>([D[D)V

    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)D
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->getNumberOfPoints()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->getWeight(I)D

    move-result-wide v2

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    return-wide v2

    :cond_0
    div-int/lit8 v3, v2, 0x2

    move-wide v7, v5

    move-wide v9, v7

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->getPoint(I)D

    move-result-wide v11

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->getWeight(I)D

    move-result-wide v13

    invoke-interface {v1, v11, v12}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v15

    neg-double v11, v11

    invoke-interface {v1, v11, v12}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v11

    add-double/2addr v15, v11

    mul-double/2addr v13, v15

    sub-double/2addr v13, v7

    add-double v7, v9, v13

    sub-double v9, v7, v9

    sub-double/2addr v9, v13

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v17, v7

    move-wide v7, v9

    move-wide/from16 v9, v17

    goto :goto_0

    :cond_1
    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->getWeight(I)D

    move-result-wide v2

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    sub-double/2addr v2, v7

    add-double/2addr v9, v2

    :cond_2
    return-wide v9
.end method
