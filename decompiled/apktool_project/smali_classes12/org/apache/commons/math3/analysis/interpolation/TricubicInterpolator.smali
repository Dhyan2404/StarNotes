.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/TrivariateGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;->interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;

    move-result-object p0

    return-object p0
.end method

.method public interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;
    .locals 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v5, p4

    .line 2
    array-length v0, v13

    if-eqz v0, :cond_6

    array-length v0, v14

    if-eqz v0, :cond_6

    array-length v0, v15

    if-eqz v0, :cond_6

    array-length v0, v5

    if-eqz v0, :cond_6

    .line 3
    array-length v0, v13

    array-length v1, v5

    if-ne v0, v1, :cond_5

    .line 4
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 5
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 6
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 7
    array-length v0, v13

    .line 8
    array-length v1, v14

    .line 9
    array-length v2, v15

    .line 10
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, [[[D

    .line 11
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, [[[D

    .line 12
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, [[[D

    .line 13
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, [[[D

    .line 14
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, [[[D

    .line 15
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, [[[D

    .line 16
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, [[[D

    const/4 v3, 0x1

    move v4, v3

    move-object/from16 v16, v12

    :goto_0
    add-int/lit8 v12, v0, -0x1

    if-ge v4, v12, :cond_4

    .line 17
    array-length v12, v14

    aget-object v3, v5, v4

    array-length v3, v3

    if-ne v12, v3, :cond_3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v12, v4, -0x1

    .line 18
    aget-wide v18, v13, v3

    .line 19
    aget-wide v20, v13, v12

    sub-double v18, v18, v20

    move/from16 v20, v0

    const/4 v0, 0x1

    const/16 v17, 0x1

    :goto_1
    add-int/lit8 v13, v1, -0x1

    if-ge v0, v13, :cond_2

    .line 20
    array-length v13, v15

    aget-object v21, v5, v4

    move/from16 v22, v1

    aget-object v1, v21, v0

    array-length v1, v1

    if-ne v13, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v13, v0, -0x1

    .line 21
    aget-wide v23, v14, v1

    .line 22
    aget-wide v25, v14, v13

    sub-double v23, v23, v25

    mul-double v25, v18, v23

    move-object/from16 v21, v11

    const/4 v14, 0x1

    const/16 v17, 0x1

    :goto_2
    add-int/lit8 v11, v2, -0x1

    if-ge v14, v11, :cond_0

    add-int/lit8 v11, v14, 0x1

    add-int/lit8 v27, v14, -0x1

    .line 23
    aget-wide v28, v15, v11

    .line 24
    aget-wide v30, v15, v27

    sub-double v28, v28, v30

    .line 25
    aget-object v30, v6, v4

    aget-object v30, v30, v0

    aget-object v31, v5, v3

    aget-object v32, v31, v0

    aget-wide v33, v32, v14

    aget-object v35, v5, v12

    aget-object v36, v35, v0

    aget-wide v37, v36, v14

    sub-double v33, v33, v37

    div-double v33, v33, v18

    aput-wide v33, v30, v14

    .line 26
    aget-object v30, v7, v4

    aget-object v30, v30, v0

    aget-object v33, v5, v4

    aget-object v34, v33, v1

    aget-wide v37, v34, v14

    aget-object v39, v33, v13

    aget-wide v40, v39, v14

    sub-double v37, v37, v40

    div-double v37, v37, v23

    aput-wide v37, v30, v14

    .line 27
    aget-object v30, v8, v4

    aget-object v30, v30, v0

    aget-object v33, v33, v0

    aget-wide v37, v33, v11

    aget-wide v40, v33, v27

    sub-double v37, v37, v40

    div-double v37, v37, v28

    aput-wide v37, v30, v14

    mul-double v37, v18, v28

    mul-double v40, v23, v28

    .line 28
    aget-object v30, v9, v4

    aget-object v30, v30, v0

    aget-object v33, v31, v1

    aget-wide v42, v33, v14

    aget-object v31, v31, v13

    aget-wide v44, v31, v14

    sub-double v42, v42, v44

    aget-object v44, v35, v1

    aget-wide v45, v44, v14

    sub-double v42, v42, v45

    aget-object v35, v35, v13

    aget-wide v45, v35, v14

    add-double v42, v42, v45

    div-double v42, v42, v25

    aput-wide v42, v30, v14

    .line 29
    aget-object v30, v10, v4

    aget-object v30, v30, v0

    aget-wide v42, v32, v11

    aget-wide v45, v32, v27

    sub-double v42, v42, v45

    aget-wide v45, v36, v11

    sub-double v42, v42, v45

    aget-wide v45, v36, v27

    add-double v42, v42, v45

    div-double v42, v42, v37

    aput-wide v42, v30, v14

    .line 30
    aget-object v30, v21, v4

    aget-object v30, v30, v0

    aget-wide v36, v34, v11

    aget-wide v42, v34, v27

    sub-double v36, v36, v42

    aget-wide v42, v39, v11

    sub-double v36, v36, v42

    aget-wide v38, v39, v27

    add-double v36, v36, v38

    div-double v36, v36, v40

    aput-wide v36, v30, v14

    mul-double v28, v28, v25

    .line 31
    aget-object v30, v16, v4

    aget-object v30, v30, v0

    aget-wide v36, v33, v11

    aget-wide v38, v31, v11

    sub-double v36, v36, v38

    aget-wide v38, v44, v11

    sub-double v36, v36, v38

    aget-wide v38, v35, v11

    add-double v36, v36, v38

    aget-wide v32, v33, v27

    sub-double v36, v36, v32

    aget-wide v31, v31, v27

    add-double v36, v36, v31

    aget-wide v31, v44, v27

    add-double v36, v36, v31

    aget-wide v31, v35, v27

    sub-double v36, v36, v31

    div-double v36, v36, v28

    aput-wide v36, v30, v14

    move v14, v11

    goto/16 :goto_2

    :cond_0
    move-object/from16 v14, p2

    move v0, v1

    move-object/from16 v11, v21

    move/from16 v1, v22

    goto/16 :goto_1

    .line 32
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v15

    aget-object v3, v5, v4

    aget-object v0, v3, v0

    array-length v0, v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_2
    const/16 v17, 0x1

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move v4, v3

    move/from16 v3, v17

    move/from16 v0, v20

    goto/16 :goto_0

    .line 33
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v14, p2

    array-length v1, v14

    aget-object v2, v5, v4

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_4
    move-object/from16 v21, v11

    .line 34
    new-instance v17, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$a;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v12, v16

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$a;-><init>(Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;[D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[D[D[D)V

    return-object v17

    .line 35
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v1, p1

    array-length v1, v1

    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 36
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0
.end method
