.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final e:I = 0x10

.field public static final f:[[D


# instance fields
.field public final a:[D

.field public final b:[D

.field public final c:[[Lcom/sunia/HTREnginev2/pq;

.field public final d:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;


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

    sput-object v1, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->f:[[D

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;-><init>([D[D[[D[[D[[D[[DZ)V

    return-void
.end method

.method public constructor <init>([D[D[[D[[D[[D[[DZ)V
    .locals 23
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

    move/from16 v5, p7

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p1

    .line 3
    array-length v7, v6

    move-object/from16 v8, p2

    .line 4
    array-length v9, v8

    if-eqz v7, :cond_d

    if-eqz v9, :cond_d

    .line 5
    array-length v10, v1

    if-eqz v10, :cond_d

    const/4 v10, 0x0

    aget-object v11, v1, v10

    array-length v11, v11

    if-eqz v11, :cond_d

    .line 6
    array-length v11, v1

    if-ne v7, v11, :cond_c

    .line 7
    array-length v11, v2

    if-ne v7, v11, :cond_b

    .line 8
    array-length v11, v3

    if-ne v7, v11, :cond_a

    .line 9
    array-length v11, v4

    if-ne v7, v11, :cond_9

    .line 10
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 11
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 12
    invoke-virtual/range {p1 .. p1}, [D->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    iput-object v6, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->a:[D

    .line 13
    invoke-virtual/range {p2 .. p2}, [D->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    iput-object v6, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->b:[D

    const/4 v6, 0x1

    sub-int/2addr v7, v6

    add-int/lit8 v8, v9, -0x1

    .line 14
    filled-new-array {v7, v8}, [I

    move-result-object v11

    const-class v12, Lcom/sunia/HTREnginev2/pq;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Lcom/sunia/HTREnginev2/pq;

    iput-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->c:[[Lcom/sunia/HTREnginev2/pq;

    move v11, v10

    :goto_0
    const/4 v14, 0x2

    if-ge v11, v7, :cond_5

    .line 15
    aget-object v15, v1, v11

    array-length v15, v15

    if-ne v15, v9, :cond_4

    .line 16
    aget-object v15, v2, v11

    array-length v15, v15

    if-ne v15, v9, :cond_3

    .line 17
    aget-object v15, v3, v11

    array-length v15, v15

    if-ne v15, v9, :cond_2

    .line 18
    aget-object v15, v4, v11

    array-length v15, v15

    if-ne v15, v9, :cond_1

    add-int/lit8 v15, v11, 0x1

    move v12, v10

    :goto_1
    if-ge v12, v8, :cond_0

    add-int/lit8 v16, v12, 0x1

    const/16 v13, 0x10

    new-array v13, v13, [D

    .line 19
    aget-object v18, v1, v11

    aget-wide v19, v18, v12

    aput-wide v19, v13, v10

    aget-object v19, v1, v15

    aget-wide v20, v19, v12

    aput-wide v20, v13, v6

    aget-wide v20, v18, v16

    aput-wide v20, v13, v14

    aget-wide v18, v19, v16

    const/16 v17, 0x3

    aput-wide v18, v13, v17

    aget-object v18, v2, v11

    aget-wide v19, v18, v12

    const/16 v21, 0x4

    aput-wide v19, v13, v21

    aget-object v19, v2, v15

    aget-wide v20, v19, v12

    const/16 v22, 0x5

    aput-wide v20, v13, v22

    const/16 v20, 0x6

    aget-wide v21, v18, v16

    aput-wide v21, v13, v20

    const/16 v18, 0x7

    aget-wide v19, v19, v16

    aput-wide v19, v13, v18

    aget-object v18, v3, v11

    aget-wide v19, v18, v12

    const/16 v21, 0x8

    aput-wide v19, v13, v21

    aget-object v19, v3, v15

    aget-wide v20, v19, v12

    const/16 v22, 0x9

    aput-wide v20, v13, v22

    const/16 v20, 0xa

    aget-wide v21, v18, v16

    aput-wide v21, v13, v20

    const/16 v18, 0xb

    aget-wide v19, v19, v16

    aput-wide v19, v13, v18

    aget-object v18, v4, v11

    aget-wide v19, v18, v12

    const/16 v21, 0xc

    aput-wide v19, v13, v21

    aget-object v19, v4, v15

    aget-wide v20, v19, v12

    const/16 v22, 0xd

    aput-wide v20, v13, v22

    const/16 v20, 0xe

    aget-wide v21, v18, v16

    aput-wide v21, v13, v20

    const/16 v18, 0xf

    aget-wide v19, v19, v16

    aput-wide v19, v13, v18

    .line 20
    iget-object v14, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->c:[[Lcom/sunia/HTREnginev2/pq;

    aget-object v14, v14, v11

    new-instance v6, Lcom/sunia/HTREnginev2/pq;

    invoke-virtual {v0, v13}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->a([D)[D

    move-result-object v13

    invoke-direct {v6, v13, v5}, Lcom/sunia/HTREnginev2/pq;-><init>([DZ)V

    aput-object v6, v14, v12

    move/from16 v12, v16

    const/4 v6, 0x1

    const/4 v14, 0x2

    goto/16 :goto_1

    :cond_0
    move v11, v15

    goto/16 :goto_0

    .line 21
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v4, v11

    array-length v1, v1

    invoke-direct {v0, v1, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 22
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v3, v11

    array-length v1, v1

    invoke-direct {v0, v1, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 23
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v2, v11

    array-length v1, v1

    invoke-direct {v0, v1, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 24
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v1, v11

    array-length v1, v1

    invoke-direct {v0, v1, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_5
    if-eqz v5, :cond_7

    const/4 v1, 0x5

    .line 25
    filled-new-array {v1, v7, v8}, [I

    move-result-object v1

    const-class v2, Lorg/apache/commons/math3/analysis/BivariateFunction;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->d:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    move v1, v10

    :goto_2
    if-ge v1, v7, :cond_8

    move v2, v10

    :goto_3
    if-ge v2, v8, :cond_6

    .line 26
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->c:[[Lcom/sunia/HTREnginev2/pq;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    .line 27
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->d:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    aget-object v4, v4, v10

    aget-object v4, v4, v1

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/pq;->c()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v5

    aput-object v5, v4, v2

    .line 28
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->d:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aget-object v4, v4, v1

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/pq;->f()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v6

    aput-object v6, v4, v2

    .line 29
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->d:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aget-object v4, v4, v1

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/pq;->d()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v9

    aput-object v9, v4, v2

    .line 30
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->d:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v9, 0x3

    aget-object v4, v4, v9

    aget-object v4, v4, v1

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/pq;->g()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v11

    aput-object v11, v4, v2

    .line 31
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->d:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v11, 0x4

    aget-object v4, v4, v11

    aget-object v4, v4, v1

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/pq;->e()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 32
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->d:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    :cond_8
    return-void

    .line 33
    :cond_9
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v4

    invoke-direct {v0, v7, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 34
    :cond_a
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v3

    invoke-direct {v0, v7, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 35
    :cond_b
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v2

    invoke-direct {v0, v7, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 36
    :cond_c
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    invoke-direct {v0, v7, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 37
    :cond_d
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

    sget-object v3, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->f:[[D

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

.method public final b(IDD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->a:[D

    invoke-virtual {p0, p2, p3, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->c(D[D)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->b:[D

    invoke-virtual {p0, p4, p5, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->c(D[D)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->a:[D

    aget-wide v3, v2, v0

    sub-double/2addr p2, v3

    add-int/lit8 v5, v0, 0x1

    aget-wide v5, v2, v5

    sub-double/2addr v5, v3

    div-double/2addr p2, v5

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->b:[D

    aget-wide v3, v2, v1

    sub-double/2addr p4, v3

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v2, v5

    sub-double/2addr v5, v3

    div-double/2addr p4, v5

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->d:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    aget-object p0, p0, p1

    aget-object p0, p0, v0

    aget-object p0, p0, v1

    invoke-interface {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/analysis/BivariateFunction;->value(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public final c(D[D)I
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

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->a:[D

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

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->b:[D

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

.method public partialDerivativeX(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->b(IDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public partialDerivativeXX(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->b(IDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public partialDerivativeXY(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->b(IDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public partialDerivativeY(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->b(IDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public partialDerivativeYY(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v1, 0x3

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->b(IDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public value(DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->a:[D

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->c(D[D)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->b:[D

    invoke-virtual {p0, p3, p4, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->c(D[D)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->a:[D

    aget-wide v3, v2, v0

    sub-double/2addr p1, v3

    add-int/lit8 v5, v0, 0x1

    aget-wide v5, v2, v5

    sub-double/2addr v5, v3

    div-double/2addr p1, v5

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->b:[D

    aget-wide v3, v2, v1

    sub-double/2addr p3, v3

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v2, v5

    sub-double/2addr v5, v3

    div-double/2addr p3, v5

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->c:[[Lcom/sunia/HTREnginev2/pq;

    aget-object p0, p0, v0

    aget-object p0, p0, v1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/pq;->value(DD)D

    move-result-wide p0

    return-wide p0
.end method
