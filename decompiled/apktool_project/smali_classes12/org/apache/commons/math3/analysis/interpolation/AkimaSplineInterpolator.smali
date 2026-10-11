.class public Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# static fields
.field public static final e:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([D[DIIII)D
    .locals 8

    aget-wide v0, p2, p4

    aget-wide v2, p2, p5

    aget-wide v4, p2, p6

    aget-wide p2, p1, p3

    aget-wide v6, p1, p4

    sub-double/2addr p2, v6

    aget-wide p4, p1, p5

    sub-double/2addr p4, v6

    aget-wide p0, p1, p6

    sub-double/2addr p0, v6

    sub-double/2addr v4, v0

    div-double v6, p0, p4

    sub-double/2addr v2, v0

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    mul-double v0, p0, p0

    mul-double/2addr p0, p4

    sub-double/2addr v0, p0

    div-double/2addr v4, v0

    mul-double p0, v4, p4

    mul-double/2addr p0, p4

    sub-double/2addr v2, p0

    div-double/2addr v2, p4

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p0

    mul-double/2addr v4, p2

    add-double/2addr v4, v2

    return-wide v4
.end method

.method public final b([D[D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 29

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    array-length v3, v0

    array-length v4, v1

    if-ne v3, v4, :cond_3

    array-length v3, v0

    array-length v4, v2

    if-ne v3, v4, :cond_2

    array-length v3, v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    array-length v3, v0

    sub-int/2addr v3, v5

    new-array v6, v3, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    const/4 v7, 0x4

    new-array v7, v7, [D

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v3, :cond_0

    add-int/lit8 v10, v9, 0x1

    aget-wide v11, v0, v10

    aget-wide v13, v0, v9

    sub-double/2addr v11, v13

    mul-double v13, v11, v11

    aget-wide v15, v1, v9

    aget-wide v17, v1, v10

    aget-wide v19, v2, v9

    aget-wide v21, v2, v10

    aput-wide v15, v7, v8

    aget-wide v23, v2, v9

    aput-wide v23, v7, v5

    const-wide/high16 v23, 0x4008000000000000L    # 3.0

    sub-double v25, v17, v15

    mul-double v25, v25, v23

    div-double v25, v25, v11

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v27, v19, v23

    sub-double v25, v25, v27

    sub-double v25, v25, v21

    div-double v25, v25, v11

    aput-wide v25, v7, v4

    sub-double v15, v15, v17

    mul-double v15, v15, v23

    div-double/2addr v15, v11

    add-double v15, v15, v19

    add-double v15, v15, v21

    div-double/2addr v15, v13

    const/4 v11, 0x3

    aput-wide v15, v7, v11

    new-instance v11, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v11, v7}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v11, v6, v9

    move v9, v10

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    invoke-direct {v1, v0, v6}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object v1

    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    array-length v2, v2

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_3
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    array-length v1, v1

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public bridge synthetic interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p0

    return-object p0
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 2
    array-length v0, v7

    array-length v1, v8

    if-ne v0, v1, :cond_5

    .line 3
    array-length v0, v7

    const/4 v1, 0x5

    const/4 v9, 0x1

    if-lt v0, v1, :cond_4

    .line 4
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 5
    array-length v0, v7

    sub-int/2addr v0, v9

    .line 6
    new-array v1, v0, [D

    .line 7
    new-array v2, v0, [D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 8
    aget-wide v5, v8, v4

    aget-wide v11, v8, v3

    sub-double/2addr v5, v11

    aget-wide v11, v7, v4

    aget-wide v13, v7, v3

    sub-double/2addr v11, v13

    div-double/2addr v5, v11

    aput-wide v5, v1, v3

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v9

    :goto_1
    if-ge v3, v0, :cond_1

    .line 9
    aget-wide v4, v1, v3

    add-int/lit8 v6, v3, -0x1

    aget-wide v11, v1, v6

    sub-double/2addr v4, v11

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    array-length v0, v7

    new-array v11, v0, [D

    const/4 v12, 0x2

    move v3, v12

    :goto_2
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 11
    aget-wide v5, v2, v4

    add-int/lit8 v13, v3, -0x1

    .line 12
    aget-wide v14, v2, v13

    const-wide/16 v9, 0x0

    .line 13
    invoke-static {v5, v6, v9, v10}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v14, v15, v9, v10}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 14
    aget-wide v5, v7, v3

    .line 15
    aget-wide v9, v7, v4

    .line 16
    aget-wide v14, v7, v13

    sub-double v16, v9, v5

    .line 17
    aget-wide v18, v1, v13

    mul-double v16, v16, v18

    sub-double/2addr v5, v14

    aget-wide v18, v1, v3

    mul-double v5, v5, v18

    add-double v16, v16, v5

    sub-double/2addr v9, v14

    div-double v16, v16, v9

    aput-wide v16, v11, v3

    goto :goto_3

    .line 18
    :cond_2
    aget-wide v9, v1, v13

    mul-double/2addr v9, v5

    aget-wide v16, v1, v3

    mul-double v16, v16, v14

    add-double v9, v9, v16

    add-double/2addr v5, v14

    div-double/2addr v9, v5

    aput-wide v9, v11, v3

    :goto_3
    move v3, v4

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 19
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->a([D[DIIII)D

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, v11, v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 20
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->a([D[DIIII)D

    move-result-wide v0

    const/4 v9, 0x1

    aput-wide v0, v11, v9

    .line 21
    array-length v0, v7

    add-int/lit8 v10, v0, -0x2

    array-length v0, v7

    add-int/lit8 v3, v0, -0x2

    array-length v0, v7

    add-int/lit8 v4, v0, -0x3

    array-length v0, v7

    add-int/lit8 v5, v0, -0x2

    array-length v0, v7

    add-int/lit8 v6, v0, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->a([D[DIIII)D

    move-result-wide v0

    aput-wide v0, v11, v10

    .line 22
    array-length v0, v7

    add-int/lit8 v10, v0, -0x1

    array-length v0, v7

    add-int/lit8 v3, v0, -0x1

    array-length v0, v7

    add-int/lit8 v4, v0, -0x3

    array-length v0, v7

    add-int/lit8 v5, v0, -0x2

    array-length v0, v7

    add-int/lit8 v6, v0, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->a([D[DIIII)D

    move-result-wide v0

    aput-wide v0, v11, v10

    move-object/from16 v0, p0

    .line 23
    invoke-virtual {v0, v7, v8, v11}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->b([D[D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v0

    return-object v0

    .line 24
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 25
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v7

    array-length v2, v8

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 26
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method
