.class public Lorg/apache/commons/math3/special/BesselJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/special/BesselJ$BesselJResult;
    }
.end annotation


# static fields
.field public static final f:D = 0.6366197723675814

.field public static final g:D = 6.28125

.field public static final h:D = 0.001935307179586477

.field public static final i:D = 6.283185307179586

.field public static final j:D = 1.0E308

.field public static final k:D = 1.0E16

.field public static final l:D = 1.0E-4

.field public static final m:D = 8.9E-308

.field public static final n:D = 0.0

.field public static final o:D = 10000.0

.field public static final p:[D


# instance fields
.field public final e:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/special/BesselJ;->p:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4018000000000000L    # 6.0
        0x4038000000000000L    # 24.0
        0x405e000000000000L    # 120.0
        0x4086800000000000L    # 720.0
        0x40b3b00000000000L    # 5040.0
        0x40e3b00000000000L    # 40320.0
        0x4116260000000000L    # 362880.0
        0x414baf8000000000L    # 3628800.0
        0x418308a800000000L    # 3.99168E7
        0x41bc8cfc00000000L    # 4.790016E8
        0x41f7328cc0000000L    # 6.2270208E9
        0x42344c3b28000000L    # 8.71782912E10
        0x4273077775800000L    # 1.307674368E12
        0x42b3077775800000L    # 2.0922789888E13
        0x42f437eeecd80000L    # 3.55687428096E14
        0x4336beecca730000L    # 6.402373705728E15
        0x437b02b930689000L    # 1.21645100408832E17
        0x43c0e1b3be415a00L    # 2.43290200817664E18
        0x4406283be9b5c620L    # 5.109094217170944E19
        0x444e77526159f06cL    # 1.1240007277776077E21
        0x4495e5c335f8a4ceL    # 2.585201673888498E22
        0x44e06c52687a7b9aL    # 6.204484017332394E23
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/special/BesselJ;->e:D

    return-void
.end method

.method public static rjBesl(DDI)Lorg/apache/commons/math3/special/BesselJ$BesselJResult;
    .locals 52

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    new-array v5, v4, [D

    double-to-int v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    if-lez v4, :cond_30

    cmpl-double v11, v0, v8

    if-ltz v11, :cond_30

    const-wide v12, 0x40c3880000000000L    # 10000.0

    cmpg-double v12, v0, v12

    if-gtz v12, :cond_30

    cmpl-double v12, v2, v8

    if-ltz v12, :cond_30

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v2, v13

    if-gez v15, :cond_30

    move v15, v7

    :goto_0
    if-ge v15, v4, :cond_0

    aput-wide v8, v5, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    const-wide v15, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v15, v0, v15

    const-wide v16, 0x2fffba634018dbL    # 8.9E-308

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    if-gez v15, :cond_b

    add-double v20, v2, v13

    cmpl-double v6, v0, v16

    if-lez v6, :cond_1

    mul-double v18, v18, v0

    move-wide/from16 v8, v18

    :cond_1
    if-eqz v12, :cond_2

    invoke-static {v8, v9, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v18

    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v24

    mul-double v2, v2, v24

    div-double v18, v18, v2

    goto :goto_1

    :cond_2
    move-wide/from16 v18, v13

    :goto_1
    add-double v2, v0, v13

    cmpl-double v2, v2, v13

    if-lez v2, :cond_3

    neg-double v2, v8

    mul-double/2addr v2, v8

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x0

    :goto_2
    mul-double v24, v18, v2

    div-double v24, v24, v20

    add-double v24, v18, v24

    aput-wide v24, v5, v7

    if-eqz v11, :cond_4

    const-wide/16 v11, 0x0

    cmpl-double v6, v24, v11

    if-nez v6, :cond_5

    goto :goto_3

    :cond_4
    const-wide/16 v11, 0x0

    :cond_5
    move v7, v4

    :goto_3
    if-eq v4, v10, :cond_a

    cmpg-double v6, v0, v11

    if-gtz v6, :cond_6

    :goto_4
    if-ge v10, v4, :cond_a

    aput-wide v11, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    cmpl-double v6, v2, v11

    if-eqz v6, :cond_7

    div-double v16, v16, v2

    goto :goto_5

    :cond_7
    const-wide v11, 0x3fffba634018dbL    # 1.78E-307

    div-double v16, v11, v0

    :goto_5
    if-ge v10, v4, :cond_a

    div-double v18, v18, v20

    add-double v20, v20, v13

    mul-double v0, v18, v8

    mul-double v11, v16, v20

    cmpg-double v6, v0, v11

    if-gtz v6, :cond_8

    const-wide/16 v18, 0x0

    goto :goto_6

    :cond_8
    move-wide/from16 v18, v0

    :goto_6
    mul-double v0, v18, v2

    div-double v0, v0, v20

    add-double v0, v18, v0

    aput-wide v0, v5, v10

    const-wide/16 v11, 0x0

    cmpl-double v0, v0, v11

    if-nez v0, :cond_9

    if-le v7, v10, :cond_9

    move v7, v10

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_a
    move v0, v4

    goto/16 :goto_1c

    :cond_b
    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    cmpl-double v8, v0, v8

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    if-lez v8, :cond_12

    add-int/lit8 v8, v6, 0x1

    if-gt v4, v8, :cond_12

    const-wide v6, 0x3fe45f306dc9c883L    # 0.6366197723675814

    div-double v15, v6, v0

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v15

    const-wide/high16 v20, 0x3fc0000000000000L    # 0.125

    div-double v20, v20, v0

    mul-double v22, v20, v20

    const-wide v24, 0x4060400000000000L    # 130.0

    cmpl-double v8, v0, v24

    if-ltz v8, :cond_c

    const/4 v8, 0x4

    goto :goto_7

    :cond_c
    const-wide v24, 0x4041800000000000L    # 35.0

    cmpl-double v8, v0, v24

    if-ltz v8, :cond_d

    const/16 v8, 0x8

    goto :goto_7

    :cond_d
    const/16 v8, 0xb

    :goto_7
    int-to-double v13, v8

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    mul-double v13, v13, v26

    const-wide v28, 0x401921fb54442d18L    # 6.283185307179586

    div-double v28, v0, v28

    add-double v9, v28, v18

    double-to-int v9, v9

    int-to-double v9, v9

    const-wide v28, 0x4019200000000000L    # 6.28125

    mul-double v28, v28, v9

    sub-double v28, v0, v28

    const-wide v31, 0x3f5fb54442d1846aL    # 0.001935307179586477

    mul-double v9, v9, v31

    sub-double v28, v28, v9

    add-double v9, v2, v18

    div-double/2addr v9, v6

    sub-double v28, v28, v9

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v9

    mul-double/2addr v2, v11

    move-wide/from16 v31, v2

    const/4 v11, 0x1

    const/4 v12, 0x2

    :goto_8
    if-gt v11, v12, :cond_10

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v33, v13, v24

    sub-double v35, v33, v31

    add-double v33, v33, v31

    mul-double v35, v35, v33

    mul-double v35, v35, v22

    mul-double v35, v35, v18

    const-wide/high16 v33, 0x4008000000000000L    # 3.0

    sub-double v37, v13, v33

    sub-double v39, v31, v37

    add-double v37, v31, v37

    mul-double v39, v39, v37

    mul-double v37, v35, v39

    sget-object v12, Lorg/apache/commons/math3/special/BesselJ;->p:[D

    mul-int/lit8 v17, v8, 0x2

    aget-wide v41, v12, v17

    div-double v37, v37, v41

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    add-double v41, v13, v24

    sub-double v43, v31, v41

    add-double v41, v31, v41

    mul-double v43, v43, v41

    mul-double v35, v35, v43

    add-int/lit8 v41, v17, 0x1

    aget-wide v41, v12, v41

    div-double v35, v35, v41

    move-wide/from16 v41, v13

    const/4 v12, 0x2

    :goto_9
    if-gt v12, v8, :cond_e

    sub-double v41, v41, v26

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v43, v41, v24

    sub-double v45, v43, v31

    add-double v43, v43, v31

    mul-double v45, v45, v43

    sub-double v43, v41, v33

    sub-double v47, v31, v43

    add-double v43, v31, v43

    mul-double v43, v43, v47

    sget-object v47, Lorg/apache/commons/math3/special/BesselJ;->p:[D

    add-int/lit8 v48, v17, -0x2

    aget-wide v48, v47, v48

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    div-double v48, v24, v48

    add-double v37, v37, v48

    mul-double v37, v37, v45

    mul-double v37, v37, v43

    mul-double v37, v37, v22

    add-int/lit8 v48, v17, -0x1

    aget-wide v47, v47, v48

    div-double v47, v24, v47

    add-double v35, v35, v47

    mul-double v35, v35, v45

    mul-double v35, v35, v39

    mul-double v35, v35, v22

    add-int/lit8 v17, v17, -0x2

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v39, v43

    goto :goto_9

    :cond_e
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    add-double v37, v37, v24

    add-double v35, v35, v24

    mul-double v33, v31, v31

    sub-double v33, v33, v24

    mul-double v35, v35, v33

    mul-double v35, v35, v20

    add-int/lit8 v12, v11, -0x1

    mul-double v37, v37, v9

    mul-double v35, v35, v6

    sub-double v37, v37, v35

    mul-double v37, v37, v15

    aput-wide v37, v5, v12

    const/4 v12, 0x1

    if-ne v4, v12, :cond_f

    new-instance v0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    invoke-static {v5, v4}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;-><init>([DI)V

    return-object v0

    :cond_f
    neg-double v9, v9

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    add-double v31, v31, v28

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x2

    move-wide/from16 v50, v6

    move-wide v6, v9

    move-wide/from16 v9, v50

    goto/16 :goto_8

    :cond_10
    move v6, v12

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    if-le v4, v6, :cond_11

    add-double v2, v2, v28

    const/4 v9, 0x2

    :goto_a
    if-ge v9, v4, :cond_11

    add-int/lit8 v6, v9, -0x1

    aget-wide v6, v5, v6

    mul-double/2addr v6, v2

    div-double/2addr v6, v0

    add-int/lit8 v8, v9, -0x2

    aget-wide v10, v5, v8

    sub-double/2addr v6, v10

    aput-wide v6, v5, v9

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_11
    move v0, v4

    move v7, v0

    goto/16 :goto_1c

    :cond_12
    sub-int v8, v4, v6

    add-int/lit8 v9, v6, 0x1

    int-to-double v10, v9

    add-double/2addr v10, v2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    div-double v12, v10, v0

    const/4 v14, 0x3

    const-wide v20, 0x4351c37937e08000L    # 2.0E16

    if-lt v8, v14, :cond_19

    const/4 v8, 0x2

    add-int/2addr v6, v8

    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v10, v6, -0x1

    int-to-double v10, v10

    add-double/2addr v10, v2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v14

    move-wide/from16 v26, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_b
    move/from16 v50, v9

    move v9, v6

    move/from16 v6, v50

    const-wide v31, 0x4341c37937e08000L    # 1.0E16

    if-gt v9, v8, :cond_17

    add-double/2addr v10, v14

    mul-double v14, v10, v26

    div-double/2addr v14, v0

    sub-double/2addr v14, v12

    const-wide v12, 0x7c9008896bcf54faL    # 1.0E292

    cmpl-double v6, v14, v12

    if-lez v6, :cond_16

    const-wide v12, 0x7fe1ccf385ebc8a0L    # 1.0E308

    div-double v33, v14, v12

    div-double v35, v26, v12

    add-int/lit8 v6, v9, 0x1

    move-wide/from16 v20, v33

    move-wide/from16 v14, v35

    :goto_c
    const/4 v8, 0x1

    add-int/2addr v9, v8

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v10, v10, v26

    mul-double v26, v10, v20

    div-double v26, v26, v0

    sub-double v26, v26, v14

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v26, v24

    if-lez v8, :cond_15

    div-double v26, v10, v0

    mul-double v14, v14, v20

    mul-double v26, v26, v26

    div-double v26, v18, v26

    sub-double v26, v18, v26

    mul-double v14, v14, v26

    div-double v14, v14, v31

    mul-double v12, v12, v20

    add-int/lit8 v9, v9, -0x1

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    sub-double v10, v10, v26

    invoke-static {v4, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    :goto_d
    if-gt v6, v8, :cond_14

    mul-double v26, v10, v33

    div-double v26, v26, v0

    sub-double v26, v26, v35

    mul-double v35, v26, v33

    cmpl-double v35, v35, v14

    if-lez v35, :cond_13

    goto :goto_e

    :cond_13
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v35, v33

    move-wide/from16 v33, v26

    goto :goto_d

    :cond_14
    :goto_e
    move v6, v9

    const/16 v26, 0x1

    move v9, v8

    goto :goto_f

    :cond_15
    move-wide/from16 v14, v20

    move-wide/from16 v20, v26

    goto :goto_c

    :cond_16
    add-int/lit8 v6, v9, 0x1

    move-wide/from16 v12, v26

    move-wide/from16 v26, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    goto :goto_b

    :cond_17
    move v9, v8

    move-wide/from16 v14, v20

    move v8, v4

    move-wide/from16 v20, v12

    move-wide/from16 v12, v26

    move/from16 v26, v7

    :goto_f
    if-nez v26, :cond_18

    int-to-double v10, v9

    add-double/2addr v10, v2

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v27

    mul-double v31, v31, v20

    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v31

    mul-double v33, v12, v27

    invoke-static/range {v33 .. v34}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v33

    move/from16 v29, v8

    mul-double v7, v31, v33

    invoke-static {v14, v15, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    move-wide/from16 v14, v20

    move-wide/from16 v20, v6

    move/from16 v7, v29

    goto :goto_10

    :cond_18
    move/from16 v29, v8

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    move v9, v6

    move/from16 v7, v29

    move-wide/from16 v50, v14

    move-wide/from16 v14, v20

    move-wide/from16 v20, v50

    goto :goto_10

    :cond_19
    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    move v7, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v26, 0x0

    :goto_10
    const/4 v6, 0x1

    if-nez v26, :cond_1b

    :goto_11
    add-int/2addr v9, v6

    add-double v10, v10, v27

    mul-double v29, v10, v12

    div-double v29, v29, v0

    sub-double v14, v29, v14

    cmpg-double v8, v14, v20

    if-ltz v8, :cond_1a

    move-wide v12, v14

    goto :goto_12

    :cond_1a
    move-wide/from16 v50, v12

    move-wide v12, v14

    move-wide/from16 v14, v50

    goto :goto_11

    :cond_1b
    :goto_12
    add-int/2addr v9, v6

    add-double v10, v10, v27

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v12, v14, v12

    mul-int/lit8 v6, v9, 0x2

    div-int/lit8 v8, v9, 0x2

    mul-int/lit8 v20, v8, 0x4

    sub-int v6, v6, v20

    move/from16 v20, v7

    int-to-double v7, v8

    sub-double v26, v7, v14

    add-double v26, v26, v2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v31, v7, v14

    add-double v31, v31, v2

    if-eqz v6, :cond_1c

    mul-double v26, v26, v12

    mul-double v26, v26, v31

    div-double v14, v26, v7

    move/from16 v21, v6

    goto :goto_13

    :cond_1c
    move/from16 v21, v6

    const-wide/16 v14, 0x0

    :goto_13
    sub-int v6, v9, v4

    move-wide/from16 v26, v12

    const/4 v4, 0x1

    const-wide/16 v12, 0x0

    :goto_14
    if-gt v4, v6, :cond_20

    add-int/lit8 v9, v9, -0x1

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    sub-double v10, v10, v28

    mul-double v31, v10, v26

    div-double v31, v31, v0

    sub-double v31, v31, v12

    rsub-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_1f

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v12

    mul-double v24, v7, v28

    add-double v33, v24, v2

    const/4 v12, 0x1

    if-ne v9, v12, :cond_1d

    move-wide/from16 v12, v26

    move-wide/from16 v26, v31

    goto :goto_15

    :cond_1d
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v36, v7, v12

    add-double v12, v36, v2

    const-wide/16 v22, 0x0

    cmpl-double v36, v12, v22

    if-nez v36, :cond_1e

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :cond_1e
    mul-double v33, v33, v31

    add-double v14, v14, v33

    mul-double/2addr v14, v12

    div-double/2addr v14, v7

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v12, v26

    move-wide/from16 v26, v31

    goto :goto_14

    :cond_20
    :goto_15
    add-int/lit8 v4, v9, -0x1

    aput-wide v26, v5, v4

    move/from16 v4, p4

    if-ltz v6, :cond_25

    const/4 v6, 0x1

    if-gt v4, v6, :cond_22

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    add-double v12, v2, v24

    cmpl-double v6, v12, v24

    if-nez v6, :cond_21

    const/4 v6, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_16

    :cond_21
    move-wide v12, v2

    const/4 v6, 0x0

    :goto_16
    aget-wide v26, v5, v6

    mul-double v26, v26, v12

    add-double v14, v14, v26

    const/4 v6, 0x1

    goto :goto_17

    :cond_22
    add-int/lit8 v9, v9, -0x1

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    sub-double v10, v10, v28

    add-int/lit8 v6, v9, -0x1

    mul-double v26, v26, v10

    div-double v26, v26, v0

    sub-double v26, v26, v12

    aput-wide v26, v5, v6

    const/4 v6, 0x1

    if-ne v9, v6, :cond_23

    const/4 v6, 0x0

    const/4 v12, 0x1

    goto :goto_18

    :cond_23
    rsub-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_25

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v12

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v31, v7, v24

    add-double v31, v31, v2

    sub-double v33, v7, v12

    add-double v12, v33, v2

    const-wide/16 v22, 0x0

    cmpl-double v6, v12, v22

    if-nez v6, :cond_24

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :cond_24
    mul-double v26, v26, v31

    add-double v14, v14, v26

    mul-double/2addr v14, v12

    div-double/2addr v14, v7

    :cond_25
    const/4 v6, 0x0

    :goto_17
    const/4 v12, 0x0

    :goto_18
    if-nez v6, :cond_28

    if-nez v12, :cond_28

    add-int/lit8 v13, v9, -0x2

    if-eqz v13, :cond_28

    const/4 v4, 0x1

    :goto_19
    if-gt v4, v13, :cond_28

    add-int/lit8 v9, v9, -0x1

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    sub-double v10, v10, v26

    add-int/lit8 v26, v9, -0x1

    aget-wide v31, v5, v9

    mul-double v31, v31, v10

    div-double v31, v31, v0

    add-int/lit8 v27, v9, 0x1

    aget-wide v33, v5, v27

    sub-double v31, v31, v33

    aput-wide v31, v5, v26

    const/16 v26, 0x2

    rsub-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_27

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v7, v7, v24

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v33, v7, v26

    add-double v33, v33, v2

    sub-double v26, v7, v24

    add-double v26, v26, v2

    const-wide/16 v22, 0x0

    cmpl-double v36, v26, v22

    if-nez v36, :cond_26

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    :cond_26
    mul-double v31, v31, v33

    add-double v14, v14, v31

    mul-double v14, v14, v26

    div-double/2addr v14, v7

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_28
    if-nez v6, :cond_2b

    if-nez v12, :cond_29

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double v11, v2, v9

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v11, v11, v26

    const/4 v4, 0x1

    aget-wide v24, v5, v4

    mul-double v11, v11, v24

    div-double/2addr v11, v0

    const/4 v4, 0x2

    aget-wide v24, v5, v4

    sub-double v11, v11, v24

    const/4 v4, 0x0

    aput-wide v11, v5, v4

    goto :goto_1a

    :cond_29
    const/4 v4, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    :goto_1a
    sub-double/2addr v7, v9

    mul-double v7, v7, v26

    add-double v6, v7, v2

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_2a

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :cond_2a
    aget-wide v8, v5, v4

    mul-double/2addr v8, v6

    add-double/2addr v14, v8

    :cond_2b
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3c9cd2b297d889bcL    # 1.0E-16

    cmpl-double v4, v6, v8

    if-lez v4, :cond_2c

    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v6

    mul-double v0, v0, v18

    neg-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v6, v0

    mul-double/2addr v14, v6

    :cond_2c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v14, v0

    if-lez v0, :cond_2d

    mul-double v16, v16, v14

    :cond_2d
    move/from16 v0, p4

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v0, :cond_2f

    aget-wide v1, v5, v7

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v16

    if-gez v1, :cond_2e

    const-wide/16 v1, 0x0

    aput-wide v1, v5, v7

    :cond_2e
    aget-wide v1, v5, v7

    div-double/2addr v1, v14

    aput-wide v1, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_2f
    move/from16 v7, v20

    goto :goto_1c

    :cond_30
    move v0, v4

    const/4 v1, 0x0

    if-lez v0, :cond_31

    const-wide/16 v2, 0x0

    aput-wide v2, v5, v1

    :cond_31
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v7, v1, -0x1

    :goto_1c
    new-instance v1, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    invoke-static {v5, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v0

    invoke-direct {v1, v0, v7}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;-><init>([DI)V

    return-object v1
.end method

.method public static value(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    double-to-int v0, p0

    int-to-double v1, v0

    sub-double v1, p0, v1

    add-int/lit8 v3, v0, 0x1

    .line 2
    invoke-static {p2, p3, v1, v2, v3}, Lorg/apache/commons/math3/special/BesselJ;->rjBesl(DDI)Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->a(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 4
    invoke-static {v1}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->b(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D

    move-result-object p0

    aget-wide p0, p0, v0

    return-wide p0

    .line 5
    :cond_0
    invoke-static {v1}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->a(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 6
    invoke-static {v1}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->b(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D

    move-result-object v2

    invoke-static {v1}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->a(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x2b2bff2ee48e0530L    # 1.0E-100

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 7
    invoke-static {v1}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->b(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D

    move-result-object p0

    aget-wide p0, p0, v0

    return-wide p0

    .line 8
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BESSEL_FUNCTION_FAILED_CONVERGENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BESSEL_FUNCTION_BAD_ARGUMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public value(D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/special/BesselJ;->e:D

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/special/BesselJ;->value(DD)D

    move-result-wide p0

    return-wide p0
.end method
