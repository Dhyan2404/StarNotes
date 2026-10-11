.class public Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final k:[D

.field public static final l:[D

.field public static final m:[D

.field public static final n:[D

.field public static final o:[D

.field public static final p:[D

.field public static final q:[D

.field public static final r:[D


# instance fields
.field public final i:[D

.field public final j:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    const/4 v0, 0x2

    new-array v1, v0, [D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    div-double/2addr v6, v4

    const/4 v4, 0x0

    aput-wide v6, v1, v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v5, v2

    const/4 v2, 0x1

    aput-wide v5, v1, v2

    sput-object v1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->k:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->l:[D

    const/4 v1, 0x3

    new-array v3, v1, [D

    const-wide v5, 0x3fe3333333333333L    # 0.6

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    neg-double v7, v7

    aput-wide v7, v3, v4

    const-wide/16 v7, 0x0

    aput-wide v7, v3, v2

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v3, v0

    sput-object v3, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->m:[D

    new-array v3, v1, [D

    fill-array-data v3, :array_1

    sput-object v3, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->n:[D

    const/4 v3, 0x4

    new-array v5, v3, [D

    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v13

    const-wide/high16 v15, 0x402e000000000000L    # 15.0

    add-double/2addr v11, v15

    const-wide v17, 0x4041800000000000L    # 35.0

    div-double v11, v11, v17

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    neg-double v11, v11

    aput-wide v11, v5, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v11, v13

    sub-double v11, v15, v11

    div-double v11, v11, v17

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    neg-double v11, v11

    aput-wide v11, v5, v2

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v11, v13

    sub-double v11, v15, v11

    div-double v11, v11, v17

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    aput-wide v11, v5, v0

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v11, v13

    add-double/2addr v11, v15

    div-double v11, v11, v17

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    aput-wide v11, v5, v1

    sput-object v5, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->o:[D

    new-array v5, v3, [D

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    mul-double/2addr v11, v15

    const-wide v19, 0x4056800000000000L    # 90.0

    sub-double v11, v19, v11

    const-wide v21, 0x4066800000000000L    # 180.0

    div-double v11, v11, v21

    aput-wide v11, v5, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v11, v15

    add-double v11, v11, v19

    div-double v11, v11, v21

    aput-wide v11, v5, v2

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v11, v15

    add-double v11, v11, v19

    div-double v11, v11, v21

    aput-wide v11, v5, v0

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    mul-double/2addr v9, v15

    sub-double v19, v19, v9

    div-double v19, v19, v21

    aput-wide v19, v5, v1

    sput-object v5, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->p:[D

    const/4 v5, 0x5

    new-array v6, v5, [D

    const-wide v9, 0x4051800000000000L    # 70.0

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v11, v13

    add-double v11, v11, v17

    const-wide v15, 0x404f800000000000L    # 63.0

    div-double/2addr v11, v15

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    neg-double v11, v11

    aput-wide v11, v6, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v11, v13

    sub-double v11, v17, v11

    div-double/2addr v11, v15

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    neg-double v11, v11

    aput-wide v11, v6, v2

    aput-wide v7, v6, v0

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v7, v13

    sub-double v7, v17, v7

    div-double/2addr v7, v15

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    aput-wide v7, v6, v1

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v7, v13

    add-double v7, v7, v17

    div-double/2addr v7, v15

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    aput-wide v7, v6, v3

    sput-object v6, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->q:[D

    new-array v5, v5, [D

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v11, 0x402a000000000000L    # 13.0

    mul-double/2addr v6, v11

    const-wide v13, 0x4074200000000000L    # 322.0

    sub-double v6, v13, v6

    const-wide v15, 0x408c200000000000L    # 900.0

    div-double/2addr v6, v15

    aput-wide v6, v5, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v6, v11

    add-double/2addr v6, v13

    div-double/2addr v6, v15

    aput-wide v6, v5, v2

    const-wide v6, 0x3fe23456789abcdfL    # 0.5688888888888889

    aput-wide v6, v5, v0

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v6, v11

    add-double/2addr v6, v13

    div-double/2addr v6, v15

    aput-wide v6, v5, v1

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v11

    sub-double/2addr v13, v0

    div-double/2addr v13, v15

    aput-wide v13, v5, v3

    sput-object v5, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->r:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fe1c71c71c71c72L    # 0.5555555555555556
        0x3fec71c71c71c71cL    # 0.8888888888888888
        0x3fe1c71c71c71c72L    # 0.5555555555555556
    .end array-data
.end method

.method public constructor <init>(IDD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x3

    const v7, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 11
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;-><init>(IDDII)V

    return-void
.end method

.method public constructor <init>(IDDII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move v5, p6

    move v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-ne p1, p3, :cond_0

    .line 2
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->q:[D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->i:[D

    .line 3
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->r:[D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->j:[D

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->N_POINTS_GAUSS_LEGENDRE_INTEGRATOR_NOT_SUPPORTED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 5
    :cond_1
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->o:[D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->i:[D

    .line 6
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->p:[D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->j:[D

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->m:[D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->i:[D

    .line 8
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->n:[D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->j:[D

    goto :goto_0

    .line 9
    :cond_3
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->k:[D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->i:[D

    .line 10
    sget-object p1, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->l:[D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->j:[D

    :goto_0
    return-void
.end method

.method public constructor <init>(III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v4, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v0, p0

    move v1, p1

    move v6, p2

    move v7, p3

    .line 12
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;-><init>(IDDII)V

    return-void
.end method


# virtual methods
.method public final a(I)D
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMax()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMin()D

    move-result-wide v4

    sub-double/2addr v2, v4

    int-to-double v4, v1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMin()D

    move-result-wide v6

    add-double/2addr v6, v4

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v1, :cond_1

    const/4 v12, 0x0

    :goto_1
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->i:[D

    array-length v14, v13

    if-ge v12, v14, :cond_0

    iget-object v14, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->j:[D

    aget-wide v14, v14, v12

    aget-wide v16, v13, v12

    mul-double v16, v16, v4

    move/from16 v18, v11

    add-double v10, v6, v16

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->computeObjectiveValue(D)D

    move-result-wide v10

    mul-double/2addr v14, v10

    add-double/2addr v8, v14

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v18

    goto :goto_1

    :cond_0
    move/from16 v18, v11

    add-double/2addr v6, v2

    add-int/lit8 v11, v18, 0x1

    goto :goto_0

    :cond_1
    mul-double/2addr v4, v8

    return-wide v4
.end method

.method public doIntegrate()D
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->a(I)D

    move-result-wide v1

    const/4 v3, 0x2

    :goto_0
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->a(I)D

    move-result-wide v4

    sub-double v6, v4, v1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getRelativeAccuracy()D

    move-result-wide v10

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    add-double/2addr v1, v12

    mul-double/2addr v10, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v1

    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getIterations()I

    move-result v10

    add-int/2addr v10, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMinimalIterationCount()I

    move-result v11

    if-lt v10, v11, :cond_0

    cmpg-double v10, v6, v8

    if-gtz v10, :cond_0

    return-wide v4

    :cond_0
    div-double/2addr v6, v8

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->i:[D

    array-length v8, v8

    int-to-double v8, v8

    div-double/2addr v1, v8

    invoke-static {v6, v7, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    int-to-double v6, v3

    mul-double/2addr v1, v6

    double-to-int v1, v1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->incrementCount()V

    move-wide v1, v4

    goto :goto_0
.end method
