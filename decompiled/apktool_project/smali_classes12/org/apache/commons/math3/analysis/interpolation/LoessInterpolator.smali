.class public Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_ACCURACY:D = 1.0E-12

.field public static final DEFAULT_BANDWIDTH:D = 0.3

.field public static final DEFAULT_ROBUSTNESS_ITERS:I = 0x2

.field private static final serialVersionUID:J = 0x483b9da904604c5dL


# instance fields
.field private final accuracy:D

.field private final bandwidth:D

.field private final robustnessIters:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3fd3333333333333L    # 0.3

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 4
    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 6

    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;-><init>(DID)V

    return-void
.end method

.method public constructor <init>(DID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_1

    .line 7
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    if-ltz p3, :cond_0

    .line 8
    iput p3, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    .line 9
    iput-wide p4, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    return-void

    .line 10
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROBUSTNESS_ITERATIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BANDWIDTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p0, p3, p1, p2, p4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method private static checkAllFiniteReal([D)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->checkFinite(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static nextNonzero([DI)I
    .locals 4

    :goto_0
    add-int/lit8 p1, p1, 0x1

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-wide v0, p0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static tricube(D)D
    .locals 4

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    mul-double v2, p0, p0

    mul-double/2addr v2, p0

    sub-double/2addr v0, v2

    mul-double p0, v0, v0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private static updateBandwidthInterval([D[DI[I)V
    .locals 10

    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x1

    aget v3, p3, v2

    invoke-static {p1, v3}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->nextNonzero([DI)I

    move-result v3

    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget-wide v4, p0, v3

    aget-wide v6, p0, p2

    sub-double/2addr v4, v6

    aget-wide v8, p0, v1

    sub-double/2addr v6, v8

    cmpg-double p0, v4, v6

    if-gez p0, :cond_0

    aget p0, p3, v0

    invoke-static {p1, p0}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->nextNonzero([DI)I

    move-result p0

    aput p0, p3, v0

    aput v3, p3, v2

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p0

    return-object p0
.end method

.method public final interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->smooth([D[D)[D

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p0

    return-object p0
.end method

.method public final smooth([D[D)[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 40
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 41
    array-length v0, p1

    new-array v0, v0, [D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 42
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 43
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->smooth([D[D[D)[D

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public final smooth([D[D[D)[D
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    array-length v4, v1

    array-length v5, v2

    if-ne v4, v5, :cond_f

    .line 2
    array-length v4, v1

    if-eqz v4, :cond_e

    .line 3
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 4
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 5
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 6
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    new-array v0, v6, [D

    .line 7
    aget-wide v1, v2, v5

    aput-wide v1, v0, v5

    return-object v0

    :cond_0
    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    new-array v0, v7, [D

    .line 8
    aget-wide v3, v2, v5

    aput-wide v3, v0, v5

    aget-wide v1, v2, v6

    aput-wide v1, v0, v6

    return-object v0

    .line 9
    :cond_1
    iget-wide v8, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    int-to-double v10, v4

    mul-double/2addr v8, v10

    double-to-int v8, v8

    if-lt v8, v7, :cond_d

    .line 10
    new-array v7, v4, [D

    .line 11
    new-array v9, v4, [D

    .line 12
    new-array v10, v4, [D

    .line 13
    new-array v11, v4, [D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 14
    invoke-static {v11, v12, v13}, Ljava/util/Arrays;->fill([DD)V

    move v14, v5

    .line 15
    :goto_0
    iget v15, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    if-gt v14, v15, :cond_c

    add-int/lit8 v15, v8, -0x1

    .line 16
    filled-new-array {v5, v15}, [I

    move-result-object v15

    move v12, v5

    :goto_1
    const-wide/16 v18, 0x0

    if-ge v12, v4, :cond_7

    .line 17
    aget-wide v20, v1, v12

    if-lez v12, :cond_2

    .line 18
    invoke-static {v1, v3, v12, v15}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->updateBandwidthInterval([D[DI[I)V

    .line 19
    :cond_2
    aget v13, v15, v5

    .line 20
    aget v5, v15, v6

    .line 21
    aget-wide v23, v1, v12

    aget-wide v25, v1, v13

    sub-double v25, v23, v25

    aget-wide v27, v1, v5

    sub-double v27, v27, v23

    cmpl-double v23, v25, v27

    if-lez v23, :cond_3

    move/from16 v23, v13

    goto :goto_2

    :cond_3
    move/from16 v23, v5

    .line 22
    :goto_2
    aget-wide v23, v1, v23

    sub-double v23, v23, v20

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v23, v16, v23

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v23

    move-wide/from16 v25, v18

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    :goto_3
    if-gt v13, v5, :cond_5

    .line 23
    aget-wide v35, v1, v13

    .line 24
    aget-wide v37, v2, v13

    if-ge v13, v12, :cond_4

    sub-double v39, v20, v35

    goto :goto_4

    :cond_4
    sub-double v39, v35, v20

    :goto_4
    mul-double v39, v39, v23

    .line 25
    invoke-static/range {v39 .. v40}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->tricube(D)D

    move-result-wide v39

    aget-wide v41, v11, v13

    mul-double v39, v39, v41

    aget-wide v41, v3, v13

    mul-double v39, v39, v41

    mul-double v41, v35, v39

    add-double v27, v27, v39

    add-double v25, v25, v41

    mul-double v35, v35, v41

    add-double v33, v33, v35

    mul-double v39, v39, v37

    add-double v29, v29, v39

    mul-double v37, v37, v41

    add-double v31, v31, v37

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    div-double v25, v25, v27

    div-double v29, v29, v27

    div-double v31, v31, v27

    div-double v33, v33, v27

    mul-double v23, v25, v25

    sub-double v33, v33, v23

    .line 26
    invoke-static/range {v33 .. v34}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v23

    move-object v13, v7

    iget-wide v6, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    cmpg-double v6, v23, v6

    if-gez v6, :cond_6

    goto :goto_5

    :cond_6
    mul-double v6, v25, v29

    sub-double v31, v31, v6

    div-double v18, v31, v33

    :goto_5
    mul-double v25, v25, v18

    sub-double v29, v29, v25

    mul-double v18, v18, v20

    add-double v18, v18, v29

    .line 27
    aput-wide v18, v13, v12

    .line 28
    aget-wide v6, v2, v12

    sub-double v6, v6, v18

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    aput-wide v6, v9, v12

    add-int/lit8 v12, v12, 0x1

    move-object v7, v13

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_7
    move-object v13, v7

    .line 29
    iget v6, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    if-ne v14, v6, :cond_8

    goto :goto_8

    :cond_8
    const/4 v6, 0x0

    .line 30
    invoke-static {v9, v6, v10, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    invoke-static {v10}, Ljava/util/Arrays;->sort([D)V

    .line 32
    div-int/lit8 v7, v4, 0x2

    aget-wide v20, v10, v7

    .line 33
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    cmpg-double v5, v22, v5

    if-gez v5, :cond_9

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_b

    .line 34
    aget-wide v22, v9, v5

    const-wide/high16 v24, 0x4018000000000000L    # 6.0

    mul-double v24, v24, v20

    div-double v22, v22, v24

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v22, v15

    if-ltz v6, :cond_a

    .line 35
    aput-wide v18, v11, v5

    goto :goto_7

    :cond_a
    mul-double v22, v22, v22

    sub-double v22, v15, v22

    mul-double v22, v22, v22

    .line 36
    aput-wide v22, v11, v5

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v14, v14, 0x1

    move-object v7, v13

    move-wide v12, v15

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_c
    move-object v13, v7

    :goto_8
    return-object v13

    .line 37
    :cond_d
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BANDWIDTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 38
    :cond_e
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 39
    :cond_f
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method
