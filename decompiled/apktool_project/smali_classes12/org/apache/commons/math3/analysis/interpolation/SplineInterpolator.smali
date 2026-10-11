.class public Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p0

    return-object p0
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 2
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_5

    .line 3
    array-length v2, v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-lt v2, v3, :cond_4

    .line 4
    array-length v2, v0

    sub-int/2addr v2, v4

    .line 5
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 6
    new-array v5, v2, [D

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_0

    add-int/lit8 v8, v7, 0x1

    .line 7
    aget-wide v9, v0, v8

    aget-wide v11, v0, v7

    sub-double/2addr v9, v11

    aput-wide v9, v5, v7

    move v7, v8

    goto :goto_0

    .line 8
    :cond_0
    new-array v7, v2, [D

    add-int/lit8 v8, v2, 0x1

    .line 9
    new-array v9, v8, [D

    const-wide/16 v10, 0x0

    .line 10
    aput-wide v10, v7, v6

    .line 11
    aput-wide v10, v9, v6

    move v12, v4

    :goto_1
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    if-ge v12, v2, :cond_1

    add-int/lit8 v17, v12, 0x1

    .line 12
    aget-wide v18, v0, v17

    add-int/lit8 v20, v12, -0x1

    aget-wide v21, v0, v20

    sub-double v18, v18, v21

    mul-double v18, v18, v13

    aget-wide v13, v5, v20

    aget-wide v21, v7, v20

    mul-double v13, v13, v21

    sub-double v18, v18, v13

    .line 13
    aget-wide v13, v5, v12

    div-double v13, v13, v18

    aput-wide v13, v7, v12

    .line 14
    aget-wide v13, v1, v17

    aget-wide v21, v5, v20

    mul-double v13, v13, v21

    aget-wide v23, v1, v12

    aget-wide v25, v0, v17

    aget-wide v27, v0, v20

    sub-double v25, v25, v27

    mul-double v23, v23, v25

    sub-double v13, v13, v23

    aget-wide v23, v1, v20

    aget-wide v25, v5, v12

    mul-double v23, v23, v25

    add-double v13, v13, v23

    mul-double/2addr v13, v15

    mul-double v25, v25, v21

    div-double v13, v13, v25

    aget-wide v15, v9, v20

    mul-double v21, v21, v15

    sub-double v13, v13, v21

    div-double v13, v13, v18

    aput-wide v13, v9, v12

    move/from16 v12, v17

    goto :goto_1

    .line 15
    :cond_1
    new-array v12, v2, [D

    .line 16
    new-array v8, v8, [D

    .line 17
    new-array v3, v2, [D

    .line 18
    aput-wide v10, v9, v2

    .line 19
    aput-wide v10, v8, v2

    add-int/lit8 v10, v2, -0x1

    :goto_2
    if-ltz v10, :cond_2

    .line 20
    aget-wide v17, v9, v10

    aget-wide v19, v7, v10

    add-int/lit8 v11, v10, 0x1

    aget-wide v21, v8, v11

    mul-double v19, v19, v21

    sub-double v17, v17, v19

    aput-wide v17, v8, v10

    .line 21
    aget-wide v19, v1, v11

    aget-wide v21, v1, v10

    sub-double v19, v19, v21

    aget-wide v21, v5, v10

    div-double v19, v19, v21

    aget-wide v23, v8, v11

    mul-double v17, v17, v13

    add-double v23, v23, v17

    mul-double v21, v21, v23

    div-double v21, v21, v15

    sub-double v19, v19, v21

    aput-wide v19, v12, v10

    .line 22
    aget-wide v17, v8, v11

    aget-wide v19, v8, v10

    sub-double v17, v17, v19

    aget-wide v19, v5, v10

    mul-double v19, v19, v15

    div-double v17, v17, v19

    aput-wide v17, v3, v10

    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 23
    :cond_2
    new-array v5, v2, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    const/4 v7, 0x4

    new-array v7, v7, [D

    move v9, v6

    :goto_3
    if-ge v9, v2, :cond_3

    .line 24
    aget-wide v10, v1, v9

    aput-wide v10, v7, v6

    .line 25
    aget-wide v10, v12, v9

    aput-wide v10, v7, v4

    const/4 v10, 0x2

    .line 26
    aget-wide v13, v8, v9

    aput-wide v13, v7, v10

    .line 27
    aget-wide v10, v3, v9

    const/4 v13, 0x3

    aput-wide v10, v7, v13

    .line 28
    new-instance v10, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v10, v7}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 29
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    invoke-direct {v1, v0, v5}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object v1

    .line 30
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 31
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    array-length v1, v1

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method
