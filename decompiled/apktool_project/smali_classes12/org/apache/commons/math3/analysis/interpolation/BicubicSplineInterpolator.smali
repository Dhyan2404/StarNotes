.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/BivariateGridInterpolator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->a:Z

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method public final b(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object p0

    return-object p0
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2
    array-length v4, v1

    if-eqz v4, :cond_c

    array-length v4, v2

    if-eqz v4, :cond_c

    array-length v4, v3

    if-eqz v4, :cond_c

    .line 3
    array-length v4, v1

    array-length v5, v3

    if-ne v4, v5, :cond_b

    .line 4
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 5
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 6
    array-length v4, v1

    .line 7
    array-length v5, v2

    .line 8
    filled-new-array {v5, v4}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v4, :cond_2

    .line 9
    aget-object v9, v3, v8

    array-length v9, v9

    if-ne v9, v5, :cond_1

    move v9, v7

    :goto_1
    if-ge v9, v5, :cond_0

    .line 10
    aget-object v10, v6, v9

    aget-object v11, v3, v8

    aget-wide v11, v11, v9

    aput-wide v11, v10, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v3, v8

    array-length v1, v1

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 12
    :cond_2
    new-instance v8, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;

    invoke-direct {v8}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;-><init>()V

    .line 13
    new-array v9, v5, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move v10, v7

    :goto_2
    if-ge v10, v5, :cond_3

    .line 14
    aget-object v11, v6, v10

    invoke-virtual {v8, v1, v11}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 15
    :cond_3
    new-array v6, v4, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move v10, v7

    :goto_3
    if-ge v10, v4, :cond_4

    .line 16
    aget-object v11, v3, v10

    invoke-virtual {v8, v2, v11}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v11

    aput-object v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 17
    :cond_4
    filled-new-array {v4, v5}, [I

    move-result-object v8

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    move v10, v7

    :goto_4
    if-ge v10, v5, :cond_6

    .line 18
    aget-object v11, v9, v10

    invoke-virtual {v11}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v11

    move v12, v7

    :goto_5
    if-ge v12, v4, :cond_5

    .line 19
    aget-object v13, v8, v12

    aget-wide v14, v1, v12

    invoke-interface {v11, v14, v15}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v14

    aput-wide v14, v13, v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 20
    :cond_6
    filled-new-array {v4, v5}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    move v10, v7

    :goto_6
    if-ge v10, v4, :cond_8

    .line 21
    aget-object v11, v6, v10

    invoke-virtual {v11}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v11

    move v12, v7

    :goto_7
    if-ge v12, v5, :cond_7

    .line 22
    aget-object v13, v9, v10

    aget-wide v14, v2, v12

    invoke-interface {v11, v14, v15}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v14

    aput-wide v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 23
    :cond_8
    filled-new-array {v4, v5}, [I

    move-result-object v6

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    move v10, v7

    :goto_8
    if-ge v10, v4, :cond_a

    .line 24
    invoke-virtual {v0, v10, v4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->a(II)I

    move-result v11

    .line 25
    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->b(I)I

    move-result v12

    move v13, v7

    :goto_9
    if-ge v13, v5, :cond_9

    .line 26
    invoke-virtual {v0, v13, v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->a(II)I

    move-result v14

    .line 27
    invoke-virtual {v0, v13}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->b(I)I

    move-result v15

    .line 28
    aget-object v16, v6, v10

    aget-object v17, v3, v11

    aget-wide v18, v17, v14

    aget-wide v20, v17, v15

    sub-double v18, v18, v20

    aget-object v17, v3, v12

    aget-wide v20, v17, v14

    sub-double v18, v18, v20

    aget-wide v20, v17, v15

    add-double v18, v18, v20

    aget-wide v20, v1, v11

    aget-wide v22, v1, v12

    sub-double v20, v20, v22

    aget-wide v22, v2, v14

    aget-wide v14, v2, v15

    sub-double v22, v22, v14

    mul-double v20, v20, v22

    div-double v18, v18, v20

    aput-wide v18, v16, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 29
    :cond_a
    new-instance v10, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    iget-boolean v7, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->a:Z

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;-><init>([D[D[[D[[D[[D[[DZ)V

    return-object v10

    .line 30
    :cond_b
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    array-length v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 31
    :cond_c
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0
.end method
