.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/TrivariateGridInterpolator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public bridge synthetic interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/TrivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;

    move-result-object p0

    return-object p0
.end method

.method public interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 2
    array-length v5, v1

    if-eqz v5, :cond_15

    array-length v5, v2

    if-eqz v5, :cond_15

    array-length v5, v3

    if-eqz v5, :cond_15

    array-length v5, v4

    if-eqz v5, :cond_15

    .line 3
    array-length v5, v1

    array-length v6, v4

    if-ne v5, v6, :cond_14

    .line 4
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 5
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 6
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 7
    array-length v5, v1

    .line 8
    array-length v6, v2

    .line 9
    array-length v7, v3

    .line 10
    filled-new-array {v7, v5, v6}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[D

    .line 11
    filled-new-array {v6, v7, v5}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[D

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v5, :cond_4

    .line 12
    aget-object v12, v4, v11

    array-length v12, v12

    if-ne v12, v6, :cond_3

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v6, :cond_2

    .line 13
    aget-object v13, v4, v11

    aget-object v13, v13, v12

    array-length v13, v13

    if-ne v13, v7, :cond_1

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v7, :cond_0

    .line 14
    aget-object v14, v4, v11

    aget-object v14, v14, v12

    aget-wide v14, v14, v13

    .line 15
    aget-object v16, v8, v13

    aget-object v16, v16, v11

    aput-wide v14, v16, v12

    .line 16
    aget-object v16, v9, v12

    aget-object v16, v16, v13

    aput-wide v14, v16, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 17
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v4, v11

    aget-object v1, v1, v12

    array-length v1, v1

    invoke-direct {v0, v1, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 18
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v4, v11

    array-length v1, v1

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 19
    :cond_4
    new-instance v11, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;-><init>(Z)V

    .line 20
    new-array v12, v5, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v5, :cond_5

    .line 21
    aget-object v14, v4, v13

    invoke-virtual {v11, v2, v3, v14}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 22
    :cond_5
    new-array v13, v6, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v6, :cond_6

    .line 23
    aget-object v15, v9, v14

    invoke-virtual {v11, v3, v1, v15}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v15

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 24
    :cond_6
    new-array v9, v7, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v7, :cond_7

    .line 25
    aget-object v15, v8, v14

    invoke-virtual {v11, v1, v2, v15}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v15

    aput-object v15, v9, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 26
    :cond_7
    filled-new-array {v5, v6, v7}, [I

    move-result-object v8

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[D

    .line 27
    filled-new-array {v5, v6, v7}, [I

    move-result-object v11

    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[[D

    .line 28
    filled-new-array {v5, v6, v7}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[[D

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v7, :cond_a

    .line 29
    aget-object v10, v9, v15

    move-object/from16 v17, v9

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v5, :cond_9

    .line 30
    aget-wide v3, v1, v9

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v6, :cond_8

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    .line 31
    aget-wide v12, v2, v0

    .line 32
    aget-object v20, v8, v9

    aget-object v20, v20, v0

    invoke-virtual {v10, v3, v4, v12, v13}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeX(DD)D

    move-result-wide v21

    aput-wide v21, v20, v15

    .line 33
    aget-object v20, v11, v9

    aget-object v20, v20, v0

    invoke-virtual {v10, v3, v4, v12, v13}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeY(DD)D

    move-result-wide v21

    aput-wide v21, v20, v15

    .line 34
    aget-object v20, v14, v9

    aget-object v20, v20, v0

    invoke-virtual {v10, v3, v4, v12, v13}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v12

    aput-wide v12, v20, v15

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    goto :goto_8

    :cond_8
    move-object/from16 v18, v12

    move-object/from16 v19, v13

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    goto :goto_7

    :cond_9
    move-object/from16 v18, v12

    move-object/from16 v19, v13

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v9, v17

    goto :goto_6

    :cond_a
    move-object/from16 v18, v12

    move-object/from16 v19, v13

    .line 35
    filled-new-array {v5, v6, v7}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [[[D

    .line 36
    filled-new-array {v5, v6, v7}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [[[D

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v5, :cond_d

    .line 37
    aget-object v3, v18, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v6, :cond_c

    .line 38
    aget-wide v12, v2, v4

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v7, :cond_b

    .line 39
    aget-wide v1, p3, v15

    .line 40
    aget-object v17, v9, v0

    aget-object v17, v17, v4

    invoke-virtual {v3, v12, v13, v1, v2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeY(DD)D

    move-result-wide v20

    aput-wide v20, v17, v15

    .line 41
    aget-object v17, v10, v0

    aget-object v17, v17, v4

    invoke-virtual {v3, v12, v13, v1, v2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v1

    aput-wide v1, v17, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_b

    :cond_b
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_a

    :cond_c
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_9

    .line 42
    :cond_d
    filled-new-array {v5, v6, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [[[D

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v6, :cond_10

    .line 43
    aget-object v1, v19, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v7, :cond_f

    .line 44
    aget-wide v3, p3, v2

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v5, :cond_e

    move-object/from16 v15, p1

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    .line 45
    aget-wide v9, v15, v13

    .line 46
    aget-object v20, v12, v13

    aget-object v20, v20, v0

    invoke-virtual {v1, v3, v4, v9, v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v9

    aput-wide v9, v20, v2

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    goto :goto_e

    :cond_e
    move-object/from16 v15, p1

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_f
    move-object/from16 v15, p1

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_10
    move-object/from16 v15, p1

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    .line 47
    filled-new-array {v5, v6, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [[[D

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v5, :cond_13

    move-object/from16 v1, p0

    .line 48
    invoke-virtual {v1, v0, v5}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->a(II)I

    move-result v2

    .line 49
    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->b(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v6, :cond_12

    .line 50
    invoke-virtual {v1, v4, v6}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->a(II)I

    move-result v9

    .line 51
    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->b(I)I

    move-result v10

    move/from16 v19, v5

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v7, :cond_11

    .line 52
    invoke-virtual {v1, v5, v7}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->a(II)I

    move-result v20

    .line 53
    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->b(I)I

    move-result v21

    .line 54
    aget-object v22, v13, v0

    aget-object v22, v22, v4

    move/from16 v23, v6

    move-object/from16 v6, p4

    aget-object v24, v6, v2

    aget-object v25, v24, v9

    aget-wide v26, v25, v20

    aget-object v24, v24, v10

    aget-wide v28, v24, v20

    sub-double v26, v26, v28

    aget-object v28, v6, v3

    aget-object v29, v28, v9

    aget-wide v30, v29, v20

    sub-double v26, v26, v30

    aget-object v28, v28, v10

    aget-wide v30, v28, v20

    add-double v26, v26, v30

    aget-wide v30, v25, v21

    sub-double v26, v26, v30

    aget-wide v24, v24, v21

    add-double v26, v26, v24

    aget-wide v24, v29, v21

    add-double v26, v26, v24

    aget-wide v24, v28, v21

    sub-double v26, v26, v24

    aget-wide v24, v15, v2

    aget-wide v28, v15, v3

    sub-double v24, v24, v28

    aget-wide v28, p2, v9

    aget-wide v30, p2, v10

    sub-double v28, v28, v30

    mul-double v24, v24, v28

    aget-wide v28, p3, v20

    aget-wide v20, p3, v21

    sub-double v28, v28, v20

    mul-double v24, v24, v28

    div-double v26, v26, v24

    aput-wide v26, v22, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v23

    goto :goto_11

    :cond_11
    move/from16 v23, v6

    move-object/from16 v6, p4

    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v19

    move/from16 v6, v23

    goto :goto_10

    :cond_12
    move/from16 v19, v5

    move/from16 v23, v6

    move-object/from16 v6, p4

    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v23

    goto/16 :goto_f

    :cond_13
    move-object/from16 v6, p4

    .line 55
    new-instance v16, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v8

    move-object v6, v11

    move-object/from16 v7, v17

    move-object v8, v14

    move-object v9, v12

    move-object/from16 v10, v18

    move-object v11, v13

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;-><init>([D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D)V

    return-object v16

    :cond_14
    move-object v15, v1

    move-object v6, v4

    .line 56
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v15

    array-length v2, v6

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 57
    :cond_15
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0
.end method
