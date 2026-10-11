.class public Lorg/apache/commons/math3/analysis/integration/RombergIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "SourceFile"


# static fields
.field public static final ROMBERG_MAX_ITERATIONS_COUNT:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x20

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

    const/16 p0, 0x20

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

    const/16 p0, 0x20

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
.method public doIntegrate()D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMaximalIterationCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    new-array v1, v1, [D

    new-instance v4, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;

    invoke-direct {v4}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->a(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v6

    aput-wide v6, v1, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->incrementCount()V

    aget-wide v6, v1, v5

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getIterations()I

    move-result v8

    invoke-virtual {v4, v0, v8}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->a(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v9

    aput-wide v9, v3, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->incrementCount()V

    move v9, v2

    :goto_1
    if-gt v9, v8, :cond_0

    mul-int/lit8 v10, v9, 0x2

    const-wide/16 v11, 0x1

    shl-long v13, v11, v10

    sub-long/2addr v13, v11

    long-to-double v10, v13

    add-int/lit8 v12, v9, -0x1

    aget-wide v13, v3, v12

    aget-wide v15, v1, v12

    sub-double v15, v13, v15

    div-double/2addr v15, v10

    add-double/2addr v13, v15

    aput-wide v13, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    aget-wide v9, v3, v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMinimalIterationCount()I

    move-result v11

    if-lt v8, v11, :cond_2

    sub-double v11, v9, v6

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getRelativeAccuracy()D

    move-result-wide v13

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    add-double/2addr v6, v15

    mul-double/2addr v13, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v13, v6

    cmpg-double v6, v11, v13

    if-lez v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v6

    cmpg-double v6, v11, v6

    if-gtz v6, :cond_2

    :cond_1
    return-wide v9

    :cond_2
    move-wide v6, v9

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v1, v17

    goto :goto_0
.end method
