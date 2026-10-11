.class public Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "SourceFile"


# static fields
.field public static final MIDPOINT_MAX_ITERATIONS_COUNT:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x40

    .line 5
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(DDII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    const/16 p0, 0x40

    if-gt p6, p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p3, 0x0

    invoke-direct {p1, p2, p0, p3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    const/16 p0, 0x40

    if-gt p2, p0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method


# virtual methods
.method public final a(IDDD)D
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    long-to-double v5, v3

    div-double v5, p6, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v9, v5, v7

    add-double v9, p4, v9

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    cmp-long v0, v13, v3

    if-gez v0, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->computeObjectiveValue(D)D

    move-result-wide v15

    add-double/2addr v11, v15

    add-double/2addr v9, v5

    add-long/2addr v13, v1

    goto :goto_0

    :cond_0
    mul-double/2addr v11, v5

    add-double v0, p2, v11

    mul-double/2addr v0, v7

    return-wide v0
.end method

.method public doIntegrate()D
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMin()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMax()D

    move-result-wide v0

    sub-double v10, v0, v8

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v0, v10, v12

    add-double/2addr v0, v8

    move-object/from16 v14, p0

    invoke-virtual {v14, v0, v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->computeObjectiveValue(D)D

    move-result-wide v0

    mul-double/2addr v0, v10

    move-wide v15, v0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->incrementCount()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getIterations()I

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v15

    move-wide v4, v8

    move v12, v6

    move-wide v6, v10

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->a(IDDD)D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMinimalIterationCount()I

    move-result v2

    if-lt v12, v2, :cond_1

    sub-double v2, v0, v15

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getRelativeAccuracy()D

    move-result-wide v4

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    add-double/2addr v6, v12

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    cmpg-double v4, v2, v4

    if-lez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    :cond_0
    return-wide v0

    :cond_1
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    :cond_2
    move-wide v15, v0

    move-wide v12, v6

    goto :goto_0
.end method
