.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field public static final d:I = 0x10

.field public static final e:[[D


# instance fields
.field public final a:[D

.field public final b:[D

.field public final c:[[Lcom/sunia/HTREnginev2/oq;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v1, v0, [[D

    new-array v2, v0, [D

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-array v0, v0, [D

    fill-array-data v0, :array_f

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->e:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_a
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_b
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_c
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_e
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_f
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>([D[D[[D[[D[[D[[D)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v5, p1

    array-length v6, v5

    move-object/from16 v7, p2

    array-length v8, v7

    if-eqz v6, :cond_a

    if-eqz v8, :cond_a

    array-length v9, v1

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    aget-object v10, v1, v9

    array-length v10, v10

    if-eqz v10, :cond_a

    array-length v10, v1

    if-ne v6, v10, :cond_9

    array-length v10, v2

    if-ne v6, v10, :cond_8

    array-length v10, v3

    if-ne v6, v10, :cond_7

    array-length v10, v4

    if-ne v6, v10, :cond_6

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    invoke-virtual/range {p1 .. p1}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    iput-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->a:[D

    invoke-virtual/range {p2 .. p2}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    iput-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->b:[D

    const/4 v5, 0x1

    sub-int/2addr v6, v5

    add-int/lit8 v7, v8, -0x1

    filled-new-array {v6, v7}, [I

    move-result-object v10

    const-class v11, Lcom/sunia/HTREnginev2/oq;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Lcom/sunia/HTREnginev2/oq;

    iput-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->c:[[Lcom/sunia/HTREnginev2/oq;

    move v10, v9

    :goto_0
    if-ge v10, v6, :cond_5

    aget-object v11, v1, v10

    array-length v11, v11

    if-ne v11, v8, :cond_4

    aget-object v11, v2, v10

    array-length v11, v11

    if-ne v11, v8, :cond_3

    aget-object v11, v3, v10

    array-length v11, v11

    if-ne v11, v8, :cond_2

    aget-object v11, v4, v10

    array-length v11, v11

    if-ne v11, v8, :cond_1

    add-int/lit8 v11, v10, 0x1

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->a:[D

    aget-wide v13, v12, v11

    aget-wide v15, v12, v10

    sub-double/2addr v13, v15

    move v12, v9

    :goto_1
    if-ge v12, v7, :cond_0

    add-int/lit8 v15, v12, 0x1

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->b:[D

    aget-wide v16, v5, v15

    aget-wide v18, v5, v12

    sub-double v16, v16, v18

    mul-double v18, v13, v16

    const/16 v5, 0x10

    new-array v5, v5, [D

    aget-object v20, v1, v10

    aget-wide v21, v20, v12

    aput-wide v21, v5, v9

    aget-object v21, v1, v11

    aget-wide v22, v21, v12

    const/16 v24, 0x1

    aput-wide v22, v5, v24

    const/16 v22, 0x2

    aget-wide v25, v20, v15

    aput-wide v25, v5, v22

    const/16 v20, 0x3

    aget-wide v21, v21, v15

    aput-wide v21, v5, v20

    aget-object v20, v2, v10

    aget-wide v21, v20, v12

    mul-double v21, v21, v13

    const/16 v23, 0x4

    aput-wide v21, v5, v23

    aget-object v21, v2, v11

    aget-wide v22, v21, v12

    mul-double v22, v22, v13

    const/16 v25, 0x5

    aput-wide v22, v5, v25

    aget-wide v22, v20, v15

    mul-double v22, v22, v13

    const/16 v20, 0x6

    aput-wide v22, v5, v20

    aget-wide v20, v21, v15

    mul-double v20, v20, v13

    const/16 v22, 0x7

    aput-wide v20, v5, v22

    aget-object v20, v3, v10

    aget-wide v21, v20, v12

    mul-double v21, v21, v16

    const/16 v23, 0x8

    aput-wide v21, v5, v23

    aget-object v21, v3, v11

    aget-wide v22, v21, v12

    mul-double v22, v22, v16

    const/16 v25, 0x9

    aput-wide v22, v5, v25

    aget-wide v22, v20, v15

    mul-double v22, v22, v16

    const/16 v20, 0xa

    aput-wide v22, v5, v20

    aget-wide v20, v21, v15

    mul-double v20, v20, v16

    const/16 v16, 0xb

    aput-wide v20, v5, v16

    aget-object v16, v4, v10

    aget-wide v20, v16, v12

    mul-double v20, v20, v18

    const/16 v17, 0xc

    aput-wide v20, v5, v17

    aget-object v17, v4, v11

    aget-wide v20, v17, v12

    mul-double v20, v20, v18

    const/16 v22, 0xd

    aput-wide v20, v5, v22

    aget-wide v20, v16, v15

    mul-double v20, v20, v18

    const/16 v16, 0xe

    aput-wide v20, v5, v16

    aget-wide v16, v17, v15

    mul-double v16, v16, v18

    const/16 v18, 0xf

    aput-wide v16, v5, v18

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->c:[[Lcom/sunia/HTREnginev2/oq;

    aget-object v9, v9, v10

    move/from16 p1, v6

    new-instance v6, Lcom/sunia/HTREnginev2/oq;

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->a([D)[D

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/sunia/HTREnginev2/oq;-><init>([D)V

    aput-object v6, v9, v12

    move/from16 v6, p1

    move v12, v15

    move/from16 v5, v24

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_0
    move v10, v11

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v4, v10

    array-length v1, v1

    invoke-direct {v0, v1, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v3, v10

    array-length v1, v1

    invoke-direct {v0, v1, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v2, v10

    array-length v1, v1

    invoke-direct {v0, v1, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v1, v10

    array-length v1, v1

    invoke-direct {v0, v1, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_5
    return-void

    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v4

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v3

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_8
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v2

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_9
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_a
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a([D)[D
    .locals 11

    const/16 p0, 0x10

    new-array v0, p0, [D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    sget-object v3, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->e:[[D

    aget-object v3, v3, v2

    const-wide/16 v4, 0x0

    move v6, v1

    :goto_1
    if-ge v6, p0, :cond_0

    aget-wide v7, v3, v6

    aget-wide v9, p1, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final b(D[D)I
    .locals 2

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    array-length v0, p3

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq p0, v0, :cond_2

    if-gez p0, :cond_0

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x2

    return p0

    :cond_0
    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    if-ne p0, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    return p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aget-wide v0, p3, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p3, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public isValidPoint(DD)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->a:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double p1, p1, v4

    if-gtz p1, :cond_1

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->b:[D

    aget-wide p1, p0, v1

    cmpg-double p1, p3, p1

    if-ltz p1, :cond_1

    array-length p1, p0

    sub-int/2addr p1, v3

    aget-wide p0, p0, p1

    cmpl-double p0, p3, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method public value(DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->a:[D

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->b(D[D)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->b:[D

    invoke-virtual {p0, p3, p4, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->b(D[D)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->a:[D

    aget-wide v3, v2, v0

    sub-double/2addr p1, v3

    add-int/lit8 v5, v0, 0x1

    aget-wide v5, v2, v5

    sub-double/2addr v5, v3

    div-double/2addr p1, v5

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->b:[D

    aget-wide v3, v2, v1

    sub-double/2addr p3, v3

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v2, v5

    sub-double/2addr v5, v3

    div-double/2addr p3, v5

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->c:[[Lcom/sunia/HTREnginev2/oq;

    aget-object p0, p0, v0

    aget-object p0, p0, v1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/oq;->value(DD)D

    move-result-wide p0

    return-wide p0
.end method
