.class public Lorg/apache/poi/util/BezierUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bezierCoords([FII)[[F
    .locals 6

    .line 1
    array-length v0, p0

    rem-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    div-int/2addr v0, p1

    filled-new-array {v0, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_1

    .line 4
    aget-object v4, v0, v2

    mul-int v5, v2, p1

    add-int/2addr v5, v3

    aget v5, p0, v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/poi/util/BezierUtils;->bezierCoords([[FI)[[F

    move-result-object p0

    return-object p0
.end method

.method public static bezierCoords([[FI)[[F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 6
    aget-object v3, v0, v2

    array-length v3, v3

    .line 7
    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7

    if-ge v3, v5, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v5, v1, 0x1

    .line 8
    filled-new-array {v5, v3}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    .line 9
    new-array v6, v4, [I

    const/4 v7, 0x1

    .line 10
    aput v7, v6, v7

    aput v7, v6, v2

    const/4 v8, 0x3

    :goto_0
    if-gt v8, v4, :cond_3

    add-int/lit8 v9, v8, -0x1

    .line 11
    new-array v10, v9, [I

    move v11, v2

    :goto_1
    if-ge v11, v9, :cond_1

    .line 12
    aget v12, v6, v11

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 13
    :cond_1
    aput v7, v6, v9

    aput v7, v6, v2

    move v9, v2

    :goto_2
    add-int/lit8 v11, v8, -0x2

    if-ge v9, v11, :cond_2

    add-int/lit8 v11, v9, 0x1

    .line 14
    aget v9, v10, v9

    aget v12, v10, v11

    add-int/2addr v9, v12

    aput v9, v6, v11

    move v9, v11

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move v8, v2

    :goto_3
    if-gt v8, v1, :cond_6

    int-to-float v9, v8

    int-to-float v10, v1

    div-float/2addr v9, v10

    move v10, v2

    :goto_4
    if-ge v10, v3, :cond_5

    const/4 v11, 0x0

    move v12, v2

    :goto_5
    if-ge v12, v4, :cond_4

    float-to-double v13, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v9

    move v15, v3

    float-to-double v2, v11

    sub-int v11, v4, v12

    sub-int/2addr v11, v7

    move/from16 v16, v8

    int-to-double v7, v11

    .line 15
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aget-object v7, v0, v12

    aget v7, v7, v10

    float-to-double v7, v7

    mul-double/2addr v2, v7

    float-to-double v7, v9

    int-to-double v0, v12

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v2, v0

    aget v0, v6, v12

    int-to-double v0, v0

    mul-double/2addr v2, v0

    add-double/2addr v13, v2

    double-to-float v11, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    move v3, v15

    move/from16 v8, v16

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    :cond_4
    move v15, v3

    move/from16 v16, v8

    .line 16
    aget-object v0, v5, v16

    aput v11, v0, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    goto :goto_4

    :cond_5
    move v15, v3

    move/from16 v16, v8

    add-int/lit8 v8, v16, 0x1

    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    goto :goto_3

    :cond_6
    return-object v5

    :cond_7
    :goto_6
    const/4 v0, 0x0

    return-object v0
.end method
