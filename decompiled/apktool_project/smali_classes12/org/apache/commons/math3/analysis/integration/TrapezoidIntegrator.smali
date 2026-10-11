.class public Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "SourceFile"


# static fields
.field public static final TRAPEZOID_MAX_ITERATIONS_COUNT:I = 0x40


# instance fields
.field public i:D


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
.method public a(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-nez p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMax()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMin()D

    move-result-wide v6

    sub-double v8, v4, v6

    mul-double/2addr v8, v2

    invoke-virtual {v1, v6, v7}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->computeObjectiveValue(D)D

    move-result-wide v2

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->computeObjectiveValue(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    mul-double/2addr v8, v2

    iput-wide v8, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->i:D

    return-wide v8

    :cond_0
    add-int/lit8 v4, p2, -0x1

    const-wide/16 v5, 0x1

    shl-long v7, v5, v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMax()D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMin()D

    move-result-wide v11

    sub-double/2addr v9, v11

    long-to-double v13, v7

    div-double/2addr v9, v13

    mul-double v13, v9, v2

    add-double/2addr v11, v13

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    :goto_0
    cmp-long v4, v15, v7

    if-gez v4, :cond_1

    invoke-virtual {v1, v11, v12}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->computeObjectiveValue(D)D

    move-result-wide v17

    add-double v13, v13, v17

    add-double/2addr v11, v9

    add-long/2addr v15, v5

    goto :goto_0

    :cond_1
    iget-wide v4, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->i:D

    mul-double/2addr v13, v9

    add-double/2addr v4, v13

    mul-double/2addr v4, v2

    iput-wide v4, v0, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->i:D

    return-wide v4
.end method

.method public doIntegrate()D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->a(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->incrementCount()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getIterations()I

    move-result v2

    invoke-virtual {p0, p0, v2}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->a(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMinimalIterationCount()I

    move-result v5

    if-lt v2, v5, :cond_1

    sub-double v5, v3, v0

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getRelativeAccuracy()D

    move-result-wide v7

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    add-double/2addr v0, v9

    mul-double/2addr v7, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v0

    cmpg-double v0, v5, v7

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v0

    cmpg-double v0, v5, v0

    if-gtz v0, :cond_1

    :cond_0
    return-wide v3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->incrementCount()V

    move-wide v0, v3

    goto :goto_0
.end method
