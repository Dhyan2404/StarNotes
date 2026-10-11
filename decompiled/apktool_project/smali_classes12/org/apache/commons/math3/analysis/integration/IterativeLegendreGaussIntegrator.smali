.class public Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "SourceFile"


# static fields
.field public static final j:Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;


# instance fields
.field public final i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->j:Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const/4 v6, 0x3

    const v7, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 4
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;-><init>(IDDII)V

    return-void
.end method

.method public constructor <init>(IDDII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
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

    if-lez p1, :cond_0

    .line 2
    iput p1, p0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->i:I

    return-void

    .line 3
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public constructor <init>(III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v4, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v0, p0

    move v1, p1

    move v6, p2

    move v7, p3

    .line 5
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;-><init>(IDDII)V

    return-void
.end method


# virtual methods
.method public final a(I)D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator$a;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator$a;-><init>(Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMin()D

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMax()D

    move-result-wide v5

    sub-double/2addr v5, v3

    int-to-double v7, v1

    div-double/2addr v5, v7

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v1, :cond_0

    int-to-double v10, v9

    mul-double/2addr v10, v5

    add-double v14, v3, v10

    add-double v16, v14, v5

    sget-object v12, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->j:Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;

    iget v13, v0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->i:I

    invoke-virtual/range {v12 .. v17}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->legendreHighPrecision(IDD)Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;

    move-result-object v10

    invoke-virtual {v10, v2}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->integrate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)D

    move-result-wide v10

    add-double/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-wide v7
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

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->a(I)D

    move-result-wide v1

    const/4 v3, 0x2

    :goto_0
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->a(I)D

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

    iget v8, p0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->i:I

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
