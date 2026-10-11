.class public Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;
    }
.end annotation


# static fields
.field public static final f:D


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:D

.field public final e:D


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v2, v0

    sput-wide v2, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->f:D

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 1
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->a:D

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->b:D

    .line 5
    iput-wide p5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->c:D

    .line 6
    iput-wide p7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->d:D

    .line 7
    iput-wide p9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->e:D

    return-void
.end method


# virtual methods
.method public final a([D[D[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;I[D[D)V
    .locals 27

    move-object/from16 v0, p3

    move/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->b(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)[I

    move-result-object v3

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->a(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)[[D

    move-result-object v4

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->c(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)[D

    move-result-object v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    aget v8, v3, v7

    add-int/lit8 v9, v7, 0x1

    move v10, v9

    :goto_1
    if-ge v10, v1, :cond_0

    aget-object v11, v4, v10

    aget-object v12, v4, v7

    aget v13, v3, v10

    aget-wide v12, v12, v13

    aput-wide v12, v11, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    aget-wide v10, v5, v8

    aput-wide v10, v2, v7

    aget-wide v10, p1, v7

    aput-wide v10, p6, v7

    move v7, v9

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_2
    const-wide/16 v7, 0x0

    if-ge v5, v1, :cond_7

    aget v9, v3, v5

    aget-wide v9, p2, v9

    cmpl-double v11, v9, v7

    if-eqz v11, :cond_2

    add-int/lit8 v11, v5, 0x1

    array-length v12, v0

    invoke-static {v0, v11, v12, v7, v8}, Ljava/util/Arrays;->fill([DIID)V

    :cond_2
    aput-wide v9, v0, v5

    move v9, v5

    move-wide v10, v7

    :goto_3
    if-ge v9, v1, :cond_6

    aget v12, v3, v9

    aget-wide v13, v0, v9

    cmpl-double v13, v13, v7

    if-eqz v13, :cond_4

    aget-object v13, v4, v9

    aget-wide v13, v13, v12

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    aget-wide v17, v0, v9

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    cmpg-double v15, v15, v17

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-gez v15, :cond_3

    aget-wide v18, v0, v9

    div-double v18, v13, v18

    mul-double v20, v18, v18

    add-double v20, v20, v16

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v20

    div-double v16, v16, v20

    mul-double v18, v18, v16

    move-wide/from16 v6, v16

    move-wide/from16 v15, v18

    goto :goto_4

    :cond_3
    aget-wide v18, v0, v9

    div-double v18, v18, v13

    mul-double v20, v18, v18

    add-double v20, v20, v16

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v20

    div-double v15, v16, v20

    mul-double v17, v15, v18

    move-wide/from16 v6, v17

    :goto_4
    aget-object v8, v4, v9

    mul-double/2addr v13, v15

    aget-wide v17, v0, v9

    mul-double v17, v17, v6

    add-double v13, v13, v17

    aput-wide v13, v8, v12

    aget-wide v13, p6, v9

    mul-double v17, v15, v13

    mul-double v21, v6, v10

    add-double v17, v17, v21

    move-object v8, v3

    neg-double v2, v6

    mul-double/2addr v13, v2

    mul-double/2addr v10, v15

    add-double/2addr v10, v13

    aput-wide v17, p6, v9

    add-int/lit8 v13, v9, 0x1

    :goto_5
    if-ge v13, v1, :cond_5

    aget-object v14, v4, v13

    aget-wide v17, v14, v12

    mul-double v21, v15, v17

    aget-wide v23, v0, v13

    mul-double v25, v6, v23

    add-double v21, v21, v25

    mul-double v17, v17, v2

    mul-double v23, v23, v15

    add-double v17, v17, v23

    aput-wide v17, v0, v13

    aput-wide v21, v14, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_4
    move-object v8, v3

    :cond_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p7

    move-object v3, v8

    const-wide/16 v7, 0x0

    goto/16 :goto_3

    :cond_6
    move-object v8, v3

    aget-object v2, v4, v5

    aget v3, v8, v5

    aget-wide v6, v2, v3

    aput-wide v6, v0, v5

    move-object/from16 v6, p7

    aget-wide v9, v6, v5

    aput-wide v9, v2, v3

    add-int/lit8 v5, v5, 0x1

    move-object v2, v6

    move-object v3, v8

    goto/16 :goto_2

    :cond_7
    move-object v6, v2

    move-object v8, v3

    move v3, v1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_a

    aget-wide v9, v0, v2

    const-wide/16 v11, 0x0

    cmpl-double v5, v9, v11

    if-nez v5, :cond_8

    if-ne v3, v1, :cond_8

    move v3, v2

    :cond_8
    if-ge v3, v1, :cond_9

    aput-wide v11, p6, v2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    const-wide/16 v11, 0x0

    if-lez v3, :cond_c

    add-int/lit8 v1, v3, -0x1

    :goto_7
    if-ltz v1, :cond_c

    aget v2, v8, v1

    add-int/lit8 v5, v1, 0x1

    move-wide v9, v11

    :goto_8
    if-ge v5, v3, :cond_b

    aget-object v7, v4, v5

    aget-wide v13, v7, v2

    aget-wide v15, p6, v5

    mul-double/2addr v13, v15

    add-double/2addr v9, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_b
    aget-wide v13, p6, v1

    sub-double/2addr v13, v9

    aget-wide v9, v0, v1

    div-double/2addr v13, v9

    aput-wide v13, p6, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_9
    array-length v1, v6

    if-ge v0, v1, :cond_d

    aget v1, v8, v0

    aget-wide v2, p6, v0

    aput-wide v2, v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method public final b([DD[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;I[D[D[D[DD)D
    .locals 34

    move-wide/from16 v8, p2

    move/from16 v10, p6

    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->a(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)[[D

    move-result-object v11

    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->b(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)[I

    move-result-object v12

    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->e(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)I

    move-result v0

    invoke-static/range {p5 .. p5}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->c(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)[D

    move-result-object v1

    const/4 v13, 0x0

    aget-object v2, v11, v13

    array-length v2, v2

    move v3, v13

    :goto_0
    if-ge v3, v0, :cond_0

    aget v4, v12, v3

    aget-wide v5, p1, v3

    aput-wide v5, p10, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    const-wide/16 v14, 0x0

    if-ge v3, v2, :cond_1

    aget v4, v12, v3

    aput-wide v14, p10, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, -0x1

    :goto_2
    if-ltz v2, :cond_3

    aget v3, v12, v2

    aget-wide v4, p10, v3

    aget-wide v6, v1, v3

    div-double/2addr v4, v6

    move v6, v13

    :goto_3
    if-ge v6, v2, :cond_2

    aget v7, v12, v6

    aget-wide v16, p10, v7

    aget-object v18, v11, v6

    aget-wide v18, v18, v3

    mul-double v18, v18, v4

    sub-double v16, v16, v18

    aput-wide v16, p10, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    aput-wide v4, p10, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    move v2, v13

    move-wide v3, v14

    :goto_4
    if-ge v2, v10, :cond_4

    aget v5, v12, v2

    aget-wide v6, p4, v5

    aget-wide v16, p10, v5

    mul-double v6, v6, v16

    aput-wide v6, p7, v5

    mul-double/2addr v6, v6

    add-double/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    sub-double v4, v2, v8

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v16, v8, v6

    cmpg-double v18, v4, v16

    if-gtz v18, :cond_5

    return-wide v14

    :cond_5
    if-ne v0, v10, :cond_9

    move v0, v13

    :goto_5
    if-ge v0, v10, :cond_6

    aget v18, v12, v0

    aget-wide v19, p7, v18

    aget-wide v21, p4, v18

    div-double v21, v21, v2

    mul-double v19, v19, v21

    aput-wide v19, p7, v18

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move v0, v13

    move-wide/from16 v18, v14

    :goto_6
    if-ge v0, v10, :cond_8

    aget v20, v12, v0

    move-wide/from16 v22, v14

    :goto_7
    if-ge v13, v0, :cond_7

    aget-object v24, v11, v13

    aget-wide v24, v24, v20

    aget v26, v12, v13

    aget-wide v26, p7, v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_7
    aget-wide v24, p7, v20

    sub-double v24, v24, v22

    aget-wide v22, v1, v20

    div-double v24, v24, v22

    aput-wide v24, p7, v20

    mul-double v24, v24, v24

    add-double v18, v18, v24

    add-int/lit8 v0, v0, 0x1

    const/4 v13, 0x0

    goto :goto_6

    :cond_8
    mul-double v0, v8, v18

    div-double v0, v4, v0

    goto :goto_8

    :cond_9
    move-wide v0, v14

    :goto_8
    move-wide/from16 v18, v14

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v10, :cond_b

    aget v20, v12, v13

    move-wide/from16 v24, v14

    const/4 v6, 0x0

    :goto_a
    if-gt v6, v13, :cond_a

    aget-object v7, v11, v6

    aget-wide v26, v7, v20

    aget-wide v28, p1, v6

    mul-double v26, v26, v28

    add-double v24, v24, v26

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_a
    aget-wide v6, p4, v20

    div-double v24, v24, v6

    mul-double v24, v24, v24

    add-double v18, v18, v24

    add-int/lit8 v13, v13, 0x1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    goto :goto_9

    :cond_b
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    div-double v18, v6, v8

    cmpl-double v13, v18, v14

    if-nez v13, :cond_c

    sget-wide v18, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v14, 0x3fb999999999999aL    # 0.1

    invoke-static {v8, v9, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v13

    div-double v18, v18, v13

    :cond_c
    move-wide/from16 v13, v18

    move-wide/from16 v18, v4

    move-wide/from16 v4, p11

    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    invoke-static {v13, v14, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    const-wide/16 v22, 0x0

    cmpl-double v15, v4, v22

    if-nez v15, :cond_d

    div-double v4, v6, v2

    :cond_d
    const/16 v2, 0xa

    move v15, v2

    move-wide v6, v13

    move-wide v13, v0

    :goto_b
    if-ltz v15, :cond_19

    cmpl-double v0, v4, v22

    if-nez v0, :cond_e

    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    :cond_e
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v10, :cond_f

    aget v3, v12, v2

    aget-wide v22, p4, v3

    mul-double v22, v22, v0

    aput-wide v22, p7, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide/from16 v30, v4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v32, v6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->a([D[D[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;I[D[D)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v10, :cond_10

    aget v3, v12, v2

    aget-wide v4, p4, v3

    aget-wide v6, p10, v3

    mul-double/2addr v4, v6

    aput-wide v4, p9, v3

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_10
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sub-double v4, v0, v8

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v16

    if-lez v2, :cond_18

    const-wide/16 v2, 0x0

    cmpl-double v6, v13, v2

    if-nez v6, :cond_11

    cmpg-double v6, v4, v18

    if-gtz v6, :cond_11

    cmpg-double v6, v18, v2

    if-gez v6, :cond_11

    goto/16 :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v10, :cond_12

    aget v3, v12, v2

    aget-wide v6, p9, v3

    aget-wide v18, p4, v3

    mul-double v6, v6, v18

    div-double/2addr v6, v0

    aput-wide v6, p7, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_12
    const/4 v0, 0x0

    :cond_13
    if-ge v0, v10, :cond_14

    aget v1, v12, v0

    aget-wide v2, p7, v1

    aget-wide v6, p8, v0

    div-double/2addr v2, v6

    aput-wide v2, p7, v1

    add-int/lit8 v0, v0, 0x1

    move v6, v0

    :goto_f
    if-ge v6, v10, :cond_13

    aget v7, v12, v6

    aget-wide v18, p7, v7

    aget-object v20, v11, v6

    aget-wide v22, v20, v1

    mul-double v22, v22, v2

    sub-double v18, v18, v22

    aput-wide v18, p7, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_14
    const/4 v0, 0x0

    const-wide/16 v22, 0x0

    :goto_10
    if-ge v0, v10, :cond_15

    aget v1, v12, v0

    aget-wide v1, p7, v1

    mul-double/2addr v1, v1

    add-double v22, v22, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_15
    mul-double v0, v8, v22

    div-double v0, v4, v0

    const-wide/16 v2, 0x0

    cmpl-double v6, v4, v2

    if-lez v6, :cond_16

    move-wide/from16 v6, v30

    invoke-static {v13, v14, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v13

    move-wide/from16 v2, v32

    goto :goto_11

    :cond_16
    move-wide/from16 v6, v30

    cmpg-double v18, v4, v2

    move-wide/from16 v2, v32

    if-gez v18, :cond_17

    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    :cond_17
    :goto_11
    add-double/2addr v0, v6

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    add-int/lit8 v15, v15, -0x1

    move-wide v6, v2

    move-wide/from16 v18, v4

    const-wide/16 v22, 0x0

    move-wide v4, v0

    goto/16 :goto_b

    :cond_18
    :goto_12
    move-wide/from16 v6, v30

    return-wide v6

    :cond_19
    return-wide v4
.end method

.method public final c([DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)V
    .locals 12

    invoke-static {p2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->a(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)[[D

    move-result-object p0

    invoke-static {p2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->b(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)[I

    move-result-object v0

    invoke-static {p2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->f(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)[D

    move-result-object p2

    array-length v1, p0

    const/4 v2, 0x0

    aget-object v3, p0, v2

    array-length v3, v3

    :goto_0
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    const-wide/16 v5, 0x0

    move v7, v2

    :goto_1
    if-ge v7, v1, :cond_0

    aget-object v8, p0, v7

    aget-wide v8, v8, v4

    aget-wide v10, p1, v7

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    aget-wide v7, p2, v4

    mul-double/2addr v5, v7

    move v7, v2

    :goto_2
    if-ge v7, v1, :cond_1

    aget-wide v8, p1, v7

    aget-object v10, p0, v7

    aget-wide v10, v10, v4

    mul-double/2addr v10, v5

    sub-double/2addr v8, v10

    aput-wide v8, p1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final d(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    move-object/from16 v2, p1

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    array-length v0, v2

    const/4 v1, 0x0

    aget-object v3, v2, v1

    array-length v3, v3

    new-array v4, v3, [I

    new-array v5, v3, [D

    new-array v6, v3, [D

    new-array v7, v3, [D

    move v8, v1

    :goto_0
    const-wide/16 v9, 0x0

    if-ge v8, v3, :cond_1

    aput v8, v4, v8

    move v11, v1

    :goto_1
    if-ge v11, v0, :cond_0

    aget-object v12, v2, v11

    aget-wide v12, v12, v8

    mul-double/2addr v12, v12

    add-double/2addr v9, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    aput-wide v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_2
    if-ge v8, v3, :cond_b

    const/4 v1, -0x1

    const-wide/high16 v11, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move v13, v8

    :goto_3
    if-ge v13, v3, :cond_5

    move v14, v8

    move-wide v15, v9

    :goto_4
    if-ge v14, v0, :cond_2

    aget-object v17, v2, v14

    aget v18, v4, v13

    aget-wide v17, v17, v18

    mul-double v17, v17, v17

    add-double v15, v15, v17

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-nez v14, :cond_4

    cmpl-double v14, v15, v11

    if-lez v14, :cond_3

    move v1, v13

    move-wide v11, v15

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_5
    move-object/from16 v13, p0

    iget-wide v14, v13, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->e:D

    cmpg-double v14, v11, v14

    if-gtz v14, :cond_6

    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;

    move-object v1, v0

    move-object v3, v4

    move v4, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;-><init>([[D[II[D[D[D)V

    return-object v0

    :cond_6
    aget v14, v4, v1

    aget v15, v4, v8

    aput v15, v4, v1

    aput v14, v4, v8

    aget-object v1, v2, v8

    aget-wide v15, v1, v14

    cmpl-double v1, v15, v9

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    if-lez v1, :cond_7

    neg-double v9, v9

    :cond_7
    mul-double/2addr v15, v9

    sub-double/2addr v11, v15

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double/2addr v15, v11

    aput-wide v15, v7, v14

    aput-wide v9, v5, v14

    aget-object v1, v2, v8

    aget-wide v11, v1, v14

    sub-double/2addr v11, v9

    aput-wide v11, v1, v14

    add-int/lit8 v1, v3, -0x1

    sub-int/2addr v1, v8

    :goto_5
    if-lez v1, :cond_a

    move v9, v8

    const-wide/16 v10, 0x0

    :goto_6
    if-ge v9, v0, :cond_8

    aget-object v12, v2, v9

    aget-wide v19, v12, v14

    add-int v21, v8, v1

    aget v21, v4, v21

    aget-wide v21, v12, v21

    mul-double v19, v19, v21

    add-double v10, v10, v19

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    mul-double/2addr v10, v15

    move v9, v8

    :goto_7
    if-ge v9, v0, :cond_9

    aget-object v12, v2, v9

    add-int v19, v8, v1

    aget v19, v4, v19

    aget-wide v20, v12, v19

    aget-wide v22, v12, v14

    mul-double v22, v22, v10

    sub-double v20, v20, v22

    aput-wide v20, v12, v19

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v8, v8, 0x1

    const-wide/16 v9, 0x0

    goto/16 :goto_2

    :cond_b
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;

    move-object v1, v0

    move-object v3, v4

    move/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;-><init>([[D[II[D[D[D)V

    return-object v0
.end method

.method public getCostRelativeTolerance()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->b:D

    return-wide v0
.end method

.method public getInitialStepBoundFactor()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->a:D

    return-wide v0
.end method

.method public getOrthoTolerance()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->d:D

    return-wide v0
.end method

.method public getParameterRelativeTolerance()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->c:D

    return-wide v0
.end method

.method public getRankingThreshold()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->e:D

    return-wide v0
.end method

.method public optimize(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;
    .locals 62

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getObservationSize()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getParameterSize()I

    move-result v11

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/optim/OptimizationProblem;->getIterationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/optim/OptimizationProblem;->getEvaluationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v17

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/optim/OptimizationProblem;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v12

    invoke-static {v15, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    new-array v9, v11, [D

    new-array v8, v11, [D

    new-array v7, v11, [D

    new-array v0, v15, [D

    new-array v6, v15, [D

    new-array v5, v11, [D

    new-array v4, v11, [D

    new-array v2, v11, [D

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getStart()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-interface {v14, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCost()D

    move-result-wide v18

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v3

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    move-wide/from16 v27, v25

    move-object/from16 v61, v3

    move-object v3, v0

    move-object/from16 v0, v61

    :goto_0
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    move-object/from16 v29, v2

    invoke-interface {v3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-virtual {v13, v2, v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->d(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->a(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)[[D

    move-result-object v30

    invoke-static {v2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->b(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)[I

    move-result-object v31

    invoke-static {v2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->c(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)[D

    move-result-object v32

    invoke-static {v2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;->d(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)[D

    move-result-object v33

    const/16 v34, 0x0

    move-object/from16 v35, v4

    move/from16 v4, v34

    :goto_1
    if-ge v4, v15, :cond_0

    aget-wide v36, v1, v4

    aput-wide v36, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v13, v6, v2}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->c([DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;)V

    move/from16 v4, v34

    :goto_2
    if-ge v4, v10, :cond_1

    aget v36, v31, v4

    aget-object v37, v30, v4

    aget-wide v38, v32, v36

    aput-wide v38, v37, v36

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    if-eqz v22, :cond_5

    move-wide/from16 v25, v20

    move/from16 v4, v34

    :goto_3
    if-ge v4, v11, :cond_3

    aget-wide v27, v33, v4

    cmpl-double v32, v27, v20

    if-nez v32, :cond_2

    move-wide/from16 v27, v36

    :cond_2
    aget-wide v38, v0, v4

    mul-double v38, v38, v27

    mul-double v38, v38, v38

    add-double v25, v25, v38

    aput-wide v27, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v27

    cmpl-double v4, v27, v20

    move-object/from16 v32, v0

    if-nez v4, :cond_4

    move-object v4, v1

    iget-wide v0, v13, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->a:D

    goto :goto_4

    :cond_4
    move-object v4, v1

    iget-wide v0, v13, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->a:D

    mul-double v0, v0, v27

    :goto_4
    move-wide/from16 v25, v0

    goto :goto_5

    :cond_5
    move-object/from16 v32, v0

    move-object v4, v1

    :goto_5
    cmpl-double v0, v18, v20

    move-object/from16 v38, v2

    if-eqz v0, :cond_9

    move-wide/from16 v1, v20

    move/from16 v0, v34

    :goto_6
    if-ge v0, v10, :cond_8

    aget v39, v31, v0

    aget-wide v40, v33, v39

    cmpl-double v42, v40, v20

    if-eqz v42, :cond_7

    move-object/from16 v42, v4

    move-wide/from16 v43, v20

    move/from16 v4, v34

    :goto_7
    if-gt v4, v0, :cond_6

    aget-object v45, v30, v4

    aget-wide v45, v45, v39

    aget-wide v47, v6, v4

    mul-double v45, v45, v47

    add-double v43, v43, v45

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_6
    invoke-static/range {v43 .. v44}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v43

    mul-double v40, v40, v18

    move-object/from16 v39, v5

    div-double v4, v43, v40

    invoke-static {v1, v2, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    goto :goto_8

    :cond_7
    move-object/from16 v42, v4

    move-object/from16 v39, v5

    :goto_8
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v39

    move-object/from16 v4, v42

    goto :goto_6

    :cond_8
    move-object/from16 v42, v4

    move-object/from16 v39, v5

    move-wide/from16 v40, v1

    goto :goto_9

    :cond_9
    move-object/from16 v42, v4

    move-object/from16 v39, v5

    move-wide/from16 v40, v20

    :goto_9
    iget-wide v0, v13, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->d:D

    cmpg-double v0, v40, v0

    if-gtz v0, :cond_a

    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/b;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v2

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/math3/fitting/leastsquares/b;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    return-object v0

    :cond_a
    move/from16 v0, v34

    :goto_a
    if-ge v0, v11, :cond_b

    aget-wide v1, v8, v0

    aget-wide v4, v33, v0

    invoke-static {v1, v2, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    aput-wide v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_b
    move-object v0, v3

    move-object/from16 v5, v32

    move-object/from16 v1, v42

    move-wide/from16 v32, v20

    :goto_b
    const-wide v42, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, v32, v42

    if-gez v2, :cond_26

    move/from16 v0, v34

    :goto_c
    if-ge v0, v10, :cond_c

    aget v1, v31, v0

    aget-wide v32, v5, v1

    aput-wide v32, v7, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_c
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v4, v3

    move-object/from16 v32, v38

    move-wide/from16 v2, v25

    move-object/from16 v33, v35

    move/from16 v35, v15

    move-object v15, v4

    move-object v4, v8

    move-object v13, v5

    move-object/from16 v38, v39

    move-object/from16 v5, v32

    move-object/from16 v39, v6

    move v6, v10

    move-object/from16 v44, v7

    move-object/from16 v7, v38

    move-object/from16 v45, v8

    move-object/from16 v8, v33

    move-object/from16 v46, v9

    move-object/from16 v9, v29

    move-object/from16 v47, v15

    move v15, v10

    move-object/from16 v10, v46

    move/from16 v49, v11

    move-object/from16 v50, v12

    move-wide/from16 v11, v23

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->b([DD[DLorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$a;I[D[D[D[DD)D

    move-result-wide v0

    move-wide/from16 v3, v20

    move/from16 v2, v34

    :goto_d
    if-ge v2, v15, :cond_d

    aget v5, v31, v2

    aget-wide v6, v46, v5

    neg-double v6, v6

    aput-wide v6, v46, v5

    aget-wide v8, v44, v5

    add-double/2addr v8, v6

    aput-wide v8, v13, v5

    aget-wide v6, v45, v5

    aget-wide v8, v46, v5

    mul-double/2addr v6, v8

    mul-double/2addr v6, v6

    add-double/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_d
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    move-wide/from16 v4, v25

    if-eqz v22, :cond_e

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v25

    move-wide/from16 v4, v25

    :cond_e
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v6, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    invoke-interface {v14, v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v7

    invoke-interface {v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCost()D

    move-result-wide v8

    invoke-interface {v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v10

    const-wide v11, 0x3fb999999999999aL    # 0.1

    mul-double v23, v8, v11

    cmpg-double v13, v23, v18

    if-gez v13, :cond_f

    div-double v25, v8, v18

    mul-double v25, v25, v25

    sub-double v25, v36, v25

    goto :goto_e

    :cond_f
    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    :goto_e
    move/from16 v13, v34

    :goto_f
    if-ge v13, v15, :cond_11

    aget v48, v31, v13

    aget-wide v51, v46, v48

    aput-wide v20, v38, v13

    move/from16 v11, v34

    :goto_10
    if-gt v11, v13, :cond_10

    aget-wide v53, v38, v11

    aget-object v12, v30, v11

    aget-wide v55, v12, v48

    mul-double v55, v55, v51

    add-double v53, v53, v55

    aput-wide v53, v38, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_10
    add-int/lit8 v13, v13, 0x1

    const-wide v11, 0x3fb999999999999aL    # 0.1

    goto :goto_f

    :cond_11
    move-wide/from16 v12, v20

    move/from16 v11, v34

    :goto_11
    if-ge v11, v15, :cond_12

    aget-wide v51, v38, v11

    mul-double v51, v51, v51

    add-double v12, v12, v51

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_12
    mul-double v51, v18, v18

    div-double v12, v12, v51

    mul-double v53, v0, v2

    mul-double v53, v53, v2

    div-double v53, v53, v51

    const-wide/high16 v51, 0x4000000000000000L    # 2.0

    mul-double v55, v53, v51

    add-double v55, v12, v55

    add-double v12, v12, v53

    neg-double v11, v12

    cmpl-double v13, v55, v20

    if-nez v13, :cond_13

    move-wide/from16 v53, v20

    goto :goto_12

    :cond_13
    div-double v53, v25, v55

    :goto_12
    const-wide/high16 v57, 0x3fd0000000000000L    # 0.25

    cmpg-double v13, v53, v57

    const-wide/high16 v57, 0x3fe0000000000000L    # 0.5

    if-gtz v13, :cond_17

    cmpg-double v13, v25, v20

    if-gez v13, :cond_14

    mul-double v59, v11, v57

    mul-double v57, v57, v25

    add-double v11, v11, v57

    div-double v57, v59, v11

    :cond_14
    cmpl-double v11, v23, v18

    if-gez v11, :cond_16

    const-wide v11, 0x3fb999999999999aL    # 0.1

    cmpg-double v13, v57, v11

    if-gez v13, :cond_15

    goto :goto_13

    :cond_15
    move-wide/from16 v11, v57

    goto :goto_13

    :cond_16
    const-wide v11, 0x3fb999999999999aL    # 0.1

    :goto_13
    const-wide/high16 v23, 0x4024000000000000L    # 10.0

    mul-double v2, v2, v23

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    mul-double/2addr v2, v11

    div-double/2addr v0, v11

    goto :goto_15

    :cond_17
    cmpl-double v11, v0, v20

    if-eqz v11, :cond_19

    const-wide/high16 v11, 0x3fe8000000000000L    # 0.75

    cmpl-double v11, v53, v11

    if-ltz v11, :cond_18

    goto :goto_14

    :cond_18
    move-wide/from16 v23, v0

    move-wide v2, v4

    goto :goto_16

    :cond_19
    :goto_14
    mul-double v2, v2, v51

    mul-double v0, v0, v57

    :goto_15
    move-wide/from16 v23, v0

    :goto_16
    cmpl-double v0, v53, v42

    if-ltz v0, :cond_1d

    move-wide/from16 v4, v20

    move/from16 v0, v34

    move/from16 v11, v49

    :goto_17
    if-ge v0, v11, :cond_1a

    aget-wide v12, v45, v0

    aget-wide v18, v10, v0

    mul-double v12, v12, v18

    mul-double/2addr v12, v12

    add-double/2addr v4, v12

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_1a
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v27

    move-object/from16 v12, v50

    if-eqz v12, :cond_1b

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    move-object/from16 v1, v47

    invoke-interface {v12, v0, v1, v6}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/b;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v2

    invoke-direct {v0, v6, v1, v2}, Lorg/apache/commons/math3/fitting/leastsquares/b;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    return-object v0

    :cond_1b
    move-object/from16 v1, v47

    :cond_1c
    move-object v0, v6

    move-wide/from16 v18, v8

    move/from16 v22, v34

    goto :goto_19

    :cond_1d
    move-object/from16 v1, v47

    move/from16 v11, v49

    move-object/from16 v12, v50

    move/from16 v0, v34

    :goto_18
    if-ge v0, v15, :cond_1e

    aget v4, v31, v0

    aget-wide v5, v44, v4

    aput-wide v5, v10, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_1e
    move-object v0, v1

    :goto_19
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    move-object/from16 v6, p0

    iget-wide v8, v6, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->b:D

    cmpg-double v4, v4, v8

    if-gtz v4, :cond_1f

    cmpg-double v4, v55, v8

    if-gtz v4, :cond_1f

    cmpg-double v4, v53, v51

    if-lez v4, :cond_20

    :cond_1f
    iget-wide v4, v6, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->c:D

    mul-double v4, v4, v27

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_21

    :cond_20
    new-instance v1, Lorg/apache/commons/math3/fitting/leastsquares/b;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/math3/fitting/leastsquares/b;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    return-object v1

    :cond_21
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    sget-wide v8, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->f:D

    cmpg-double v4, v4, v8

    if-gtz v4, :cond_23

    cmpg-double v4, v55, v8

    if-gtz v4, :cond_23

    cmpg-double v4, v53, v51

    if-lez v4, :cond_22

    goto :goto_1a

    :cond_22
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, v6, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_23
    :goto_1a
    mul-double v4, v8, v27

    cmpg-double v4, v2, v4

    if-lez v4, :cond_25

    cmpg-double v4, v40, v8

    if-lez v4, :cond_24

    move-wide/from16 v25, v2

    move-object v13, v6

    move-object v5, v10

    move v10, v15

    move/from16 v15, v35

    move-object/from16 v6, v39

    move-object/from16 v8, v45

    move-object/from16 v9, v46

    move-object v3, v1

    move-object v1, v7

    move-object/from16 v35, v33

    move-object/from16 v39, v38

    move-object/from16 v7, v44

    move-object/from16 v38, v32

    move-wide/from16 v32, v53

    goto/16 :goto_b

    :cond_24
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, v6, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_25
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, v6, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_26
    move-object/from16 v32, v5

    move-wide/from16 v4, v25

    move-object/from16 v33, v35

    move-object/from16 v38, v39

    move-object v3, v0

    move-object/from16 v2, v29

    move-object/from16 v0, v32

    move-object/from16 v4, v33

    move-object/from16 v5, v38

    goto/16 :goto_0
.end method

.method public withCostRelativeTolerance(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 12

    new-instance v11, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->a:D

    iget-wide v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->c:D

    iget-wide v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->d:D

    iget-wide v9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->e:D

    move-object v0, v11

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v11
.end method

.method public withInitialStepBoundFactor(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 12

    new-instance v11, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->b:D

    iget-wide v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->c:D

    iget-wide v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->d:D

    iget-wide v9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->e:D

    move-object v0, v11

    move-wide v1, p1

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v11
.end method

.method public withOrthoTolerance(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 12

    new-instance v11, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->a:D

    iget-wide v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->b:D

    iget-wide v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->c:D

    iget-wide v9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->e:D

    move-object v0, v11

    move-wide v7, p1

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v11
.end method

.method public withParameterRelativeTolerance(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 12

    new-instance v11, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->a:D

    iget-wide v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->b:D

    iget-wide v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->d:D

    iget-wide v9, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->e:D

    move-object v0, v11

    move-wide v5, p1

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v11
.end method

.method public withRankingThreshold(D)Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
    .locals 12

    new-instance v11, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    iget-wide v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->a:D

    iget-wide v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->b:D

    iget-wide v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->c:D

    iget-wide v7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;->d:D

    move-object v0, v11

    move-wide v9, p1

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-object v11
.end method
