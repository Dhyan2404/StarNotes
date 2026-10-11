.class public Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;
.super Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final f:D = 2.0

.field public static final g:D = 0.5


# instance fields
.field public final d:D

.field public final e:D


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 8

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 2
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;-><init>(IDDD)V

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 3
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;-><init>(IDDD)V

    return-void
.end method

.method public constructor <init>(IDDD)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;-><init>(ID)V

    .line 5
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;->d:D

    .line 6
    iput-wide p6, p0, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;->e:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 6

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    move-object v0, p0

    move-object v1, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;-><init>([DDD)V

    return-void
.end method

.method public constructor <init>([DDD)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;-><init>([D)V

    .line 9
    iput-wide p2, p0, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;->d:D

    .line 10
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;->e:D

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 6

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    move-object v0, p0

    move-object v1, p1

    .line 11
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;-><init>([[DDD)V

    return-void
.end method

.method public constructor <init>([[DDD)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;-><init>([[D)V

    .line 13
    iput-wide p2, p0, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;->d:D

    .line 14
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;->e:D

    return-void
.end method


# virtual methods
.method public final b(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optimization/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "[",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            "D",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/PointValuePair;->getPointRef()[D

    move-result-object v2

    aget-object v3, p2, v1

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->setPoint(ILorg/apache/commons/math3/optimization/PointValuePair;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getDimension()I

    move-result v3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_1

    aget-object v5, p2, v4

    invoke-virtual {v5}, Lorg/apache/commons/math3/optimization/PointValuePair;->getPointRef()[D

    move-result-object v5

    new-array v6, v3, [D

    move v7, v1

    :goto_1
    if-ge v7, v3, :cond_0

    aget-wide v8, v2, v7

    aget-wide v10, v5, v7

    sub-double v10, v8, v10

    mul-double/2addr v10, p3

    add-double/2addr v8, v10

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    new-instance v5, Lorg/apache/commons/math3/optimization/PointValuePair;

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v5, v6, v7, v8, v1}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DDZ)V

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->setPoint(ILorg/apache/commons/math3/optimization/PointValuePair;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v4, p1

    move-object/from16 v5, p5

    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getPoints()[Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v6

    const/4 v0, 0x0

    aget-object v7, v6, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;->b(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optimization/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v8

    invoke-interface {p2, v8, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getPoints()[Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v7

    iget-wide v3, p0, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;->d:D

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;->b(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optimization/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p1

    invoke-interface {p2, v8, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->setPoints([Lorg/apache/commons/math3/optimization/PointValuePair;)V

    :cond_0
    return-void

    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;->e:D

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/MultiDirectionalSimplex;->b(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optimization/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optimization/PointValuePair;

    return-void
.end method
