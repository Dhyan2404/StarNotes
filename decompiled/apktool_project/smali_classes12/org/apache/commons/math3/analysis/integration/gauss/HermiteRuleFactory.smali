.class public Lorg/apache/commons/math3/analysis/integration/gauss/HermiteRuleFactory;
.super Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:D = 1.772453850905516

.field public static final d:D = 0.7511255444649425

.field public static final e:D = 1.0622519320271968


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public computeRule(I)Lorg/apache/commons/math3/util/Pair;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/util/Pair<",
            "[",
            "Ljava/lang/Double;",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move/from16 v0, p1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    new-instance v0, Lorg/apache/commons/math3/util/Pair;

    new-array v1, v5, [Ljava/lang/Double;

    aput-object v3, v1, v4

    new-array v2, v5, [Ljava/lang/Double;

    const-wide v5, 0x3ffc5bf891b4ef6bL    # 1.772453850905516

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    add-int/lit8 v6, v0, -0x1

    move-object/from16 v7, p0

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->getRuleInternal(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Double;

    new-array v8, v0, [Ljava/lang/Double;

    new-array v9, v0, [Ljava/lang/Double;

    mul-int/lit8 v10, v6, 0x2

    int-to-double v10, v10

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    mul-int/lit8 v12, v0, 0x2

    int-to-double v12, v12

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    div-int/lit8 v14, v0, 0x2

    move v15, v4

    :goto_0
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    const-wide v18, 0x3fe8093870155910L    # 0.7511255444649425

    if-ge v15, v14, :cond_9

    if-nez v15, :cond_1

    neg-double v1, v10

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v15, -0x1

    aget-object v1, v7, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_1
    if-ne v14, v5, :cond_2

    const-wide/high16 v22, -0x4020000000000000L    # -0.5

    goto :goto_2

    :cond_2
    aget-object v22, v7, v15

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    :goto_2
    const-wide v24, 0x3ff0fefbe1c2b6c9L    # 1.0622519320271968

    mul-double v26, v1, v24

    move v4, v5

    move-wide/from16 v28, v18

    :goto_3
    if-ge v4, v0, :cond_3

    add-int/lit8 v5, v4, 0x1

    move-wide/from16 v30, v10

    int-to-double v10, v5

    div-double v32, v16, v10

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v32

    move/from16 p0, v5

    int-to-double v4, v4

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    mul-double v32, v32, v1

    mul-double v32, v32, v26

    mul-double v4, v4, v28

    sub-double v4, v32, v4

    move-wide/from16 v28, v26

    move-wide/from16 v10, v30

    move-wide/from16 v26, v4

    const/4 v5, 0x1

    move/from16 v4, p0

    goto :goto_3

    :cond_3
    move-wide/from16 v30, v10

    add-double v4, v1, v22

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v10

    move-wide/from16 v32, v18

    const/16 v28, 0x0

    :goto_4
    if-nez v28, :cond_8

    sub-double v28, v22, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v32

    cmpg-double v28, v28, v32

    if-gtz v28, :cond_4

    const/16 v28, 0x1

    goto :goto_5

    :cond_4
    const/16 v28, 0x0

    :goto_5
    mul-double v32, v4, v24

    move-wide/from16 v34, v18

    const/4 v10, 0x1

    :goto_6
    if-ge v10, v0, :cond_5

    add-int/lit8 v11, v10, 0x1

    move-wide/from16 v36, v1

    int-to-double v1, v11

    div-double v38, v16, v1

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v38

    move/from16 p0, v11

    int-to-double v10, v10

    div-double/2addr v10, v1

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    mul-double v38, v38, v4

    mul-double v38, v38, v32

    mul-double v1, v1, v34

    sub-double v1, v38, v1

    move/from16 v10, p0

    move-wide/from16 v34, v32

    move-wide/from16 v32, v1

    move-wide/from16 v1, v36

    goto :goto_6

    :cond_5
    move-wide/from16 v36, v1

    if-nez v28, :cond_7

    mul-double v1, v26, v32

    const-wide/16 v10, 0x0

    cmpg-double v1, v1, v10

    if-gez v1, :cond_6

    move-wide/from16 v22, v4

    move-wide/from16 v1, v36

    goto :goto_7

    :cond_6
    move-wide v1, v4

    move-wide/from16 v26, v32

    :goto_7
    add-double v4, v1, v22

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v20

    move-wide/from16 v10, v20

    move-wide/from16 v32, v34

    goto :goto_4

    :cond_7
    const-wide/16 v10, 0x0

    move-wide/from16 v32, v34

    move-wide/from16 v1, v36

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    goto :goto_4

    :cond_8
    const-wide/16 v10, 0x0

    mul-double v32, v32, v12

    mul-double v32, v32, v32

    div-double v16, v16, v32

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v8, v15

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v9, v15

    sub-int v1, v6, v15

    neg-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v9, v1

    add-int/lit8 v15, v15, 0x1

    move-wide v1, v10

    move-wide/from16 v10, v30

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_9
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_b

    const/4 v5, 0x1

    :goto_8
    if-ge v5, v0, :cond_a

    add-int/lit8 v1, v5, 0x1

    int-to-double v1, v1

    int-to-double v6, v5

    div-double/2addr v6, v1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    neg-double v1, v1

    mul-double v18, v18, v1

    add-int/lit8 v5, v5, 0x2

    goto :goto_8

    :cond_a
    mul-double v12, v12, v18

    mul-double/2addr v12, v12

    div-double v16, v16, v12

    aput-object v3, v8, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v9, v14

    :cond_b
    new-instance v0, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {v0, v8, v9}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
