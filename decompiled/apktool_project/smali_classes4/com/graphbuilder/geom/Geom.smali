.class public final Lcom/graphbuilder/geom/Geom;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INTERSECT:Ljava/lang/Object;

.field public static final PARALLEL:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/graphbuilder/geom/Geom;->PARALLEL:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/graphbuilder/geom/Geom;->INTERSECT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAngle(DDDD)D
    .locals 7

    sub-double v0, p4, p0

    sub-double v2, p6, p2

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_1

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    return-wide v4

    :cond_0
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_0

    :cond_1
    div-double/2addr v2, v0

    .line 1
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    cmpg-double v2, v0, v4

    if-gez v2, :cond_2

    neg-double v0, v0

    :cond_2
    :goto_0
    cmpl-double p0, p4, p0

    if-ltz p0, :cond_3

    cmpg-double p0, p6, p2

    if-gez p0, :cond_5

    const-wide p0, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v0, p0, v0

    goto :goto_1

    :cond_3
    cmpg-double p0, p6, p2

    const-wide p1, 0x400921fb54442d18L    # Math.PI

    if-gez p0, :cond_4

    add-double/2addr v0, p1

    goto :goto_1

    :cond_4
    sub-double v0, p1, v0

    :cond_5
    :goto_1
    return-wide v0
.end method

.method public static getAngle(Lcom/graphbuilder/geom/Point2d;Lcom/graphbuilder/geom/Point2d;)D
    .locals 8

    .line 2
    invoke-interface {p0}, Lcom/graphbuilder/geom/Point2d;->getX()D

    move-result-wide v0

    invoke-interface {p0}, Lcom/graphbuilder/geom/Point2d;->getY()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/graphbuilder/geom/Point2d;->getX()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/graphbuilder/geom/Point2d;->getY()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/graphbuilder/geom/Geom;->getAngle(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getCircle(DDDDDD[D)Z
    .locals 16

    sub-double v0, p4, p0

    sub-double v2, p6, p2

    sub-double v4, p0, p8

    sub-double v6, p2, p10

    mul-double v8, v0, v6

    mul-double v10, v2, v4

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    const/4 v11, 0x0

    if-nez v10, :cond_0

    return v11

    :cond_0
    sub-double v12, p8, p4

    sub-double v14, p10, p6

    mul-double/2addr v12, v4

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    div-double/2addr v12, v8

    mul-double v4, v12, v2

    sub-double v4, v0, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    add-double v4, p0, v4

    mul-double/2addr v12, v0

    add-double/2addr v2, v12

    div-double/2addr v2, v6

    add-double v0, p2, v2

    sub-double v2, p0, v4

    sub-double v6, p2, v0

    mul-double/2addr v2, v2

    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    const/4 v6, 0x1

    if-eqz p12, :cond_1

    aput-wide v4, p12, v11

    aput-wide v0, p12, v6

    const/4 v0, 0x2

    aput-wide v2, p12, v0

    :cond_1
    return v6
.end method

.method public static getLineLineIntersection(DDDDDDDD[D)Ljava/lang/Object;
    .locals 14

    sub-double v0, p4, p0

    sub-double v2, p6, p2

    sub-double v4, p12, p8

    sub-double v6, p14, p10

    mul-double v8, v0, v6

    mul-double v10, v2, v4

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-nez v10, :cond_0

    sget-object v0, Lcom/graphbuilder/geom/Geom;->PARALLEL:Ljava/lang/Object;

    return-object v0

    :cond_0
    sub-double v10, p8, p0

    sub-double v12, p10, p2

    mul-double/2addr v10, v6

    mul-double/2addr v12, v4

    sub-double/2addr v10, v12

    div-double/2addr v10, v8

    if-eqz p16, :cond_1

    mul-double/2addr v0, v10

    add-double/2addr v0, p0

    const/4 v4, 0x0

    aput-wide v0, p16, v4

    mul-double/2addr v2, v10

    add-double v0, p2, v2

    const/4 v2, 0x1

    aput-wide v0, p16, v2

    const/4 v0, 0x2

    aput-wide v10, p16, v0

    :cond_1
    sget-object v0, Lcom/graphbuilder/geom/Geom;->INTERSECT:Ljava/lang/Object;

    return-object v0
.end method

.method public static getLineSegIntersection(DDDDDDDD[D)Ljava/lang/Object;
    .locals 16

    sub-double v0, p4, p0

    sub-double v2, p6, p2

    sub-double v4, p12, p8

    sub-double v6, p14, p10

    mul-double v8, v0, v6

    mul-double v10, v2, v4

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    if-nez v12, :cond_0

    sget-object v0, Lcom/graphbuilder/geom/Geom;->PARALLEL:Ljava/lang/Object;

    return-object v0

    :cond_0
    sub-double v12, p8, p0

    sub-double v14, p10, p2

    mul-double/2addr v12, v2

    mul-double/2addr v14, v0

    sub-double/2addr v12, v14

    div-double/2addr v12, v8

    cmpg-double v0, v12, v10

    if-ltz v0, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v12, v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p16, :cond_2

    mul-double/2addr v4, v12

    add-double v0, p8, v4

    const/4 v2, 0x0

    aput-wide v0, p16, v2

    mul-double/2addr v6, v12

    add-double v0, p10, v6

    const/4 v2, 0x1

    aput-wide v0, p16, v2

    const/4 v0, 0x2

    aput-wide v12, p16, v0

    :cond_2
    sget-object v0, Lcom/graphbuilder/geom/Geom;->INTERSECT:Ljava/lang/Object;

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSegSegIntersection(DDDDDDDD[D)Ljava/lang/Object;
    .locals 18

    sub-double v0, p4, p0

    sub-double v2, p6, p2

    sub-double v4, p12, p8

    sub-double v6, p14, p10

    mul-double v8, v0, v6

    mul-double v10, v2, v4

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    if-nez v12, :cond_0

    sget-object v0, Lcom/graphbuilder/geom/Geom;->PARALLEL:Ljava/lang/Object;

    return-object v0

    :cond_0
    sub-double v12, p8, p0

    sub-double v14, p10, p2

    mul-double/2addr v6, v12

    mul-double/2addr v4, v14

    sub-double/2addr v6, v4

    div-double/2addr v6, v8

    cmpg-double v4, v6, v10

    const/4 v5, 0x0

    if-ltz v4, :cond_4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v6, v16

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    mul-double/2addr v12, v2

    mul-double/2addr v14, v0

    sub-double/2addr v12, v14

    div-double/2addr v12, v8

    cmpg-double v4, v12, v10

    if-ltz v4, :cond_4

    cmpl-double v4, v12, v16

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p16, :cond_3

    mul-double/2addr v0, v6

    add-double v0, p0, v0

    const/4 v4, 0x0

    aput-wide v0, p16, v4

    mul-double/2addr v2, v6

    add-double v0, p2, v2

    const/4 v2, 0x1

    aput-wide v0, p16, v2

    const/4 v0, 0x2

    aput-wide v6, p16, v0

    :cond_3
    sget-object v0, Lcom/graphbuilder/geom/Geom;->INTERSECT:Ljava/lang/Object;

    return-object v0

    :cond_4
    :goto_0
    return-object v5
.end method

.method public static getTriangleAreaSq(DDD)D
    .locals 8

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_8

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_7

    cmpg-double v0, p4, v0

    if-ltz v0, :cond_6

    add-double v0, p2, p4

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_5

    add-double v0, p0, p4

    cmpl-double v0, p2, v0

    if-gtz v0, :cond_4

    add-double v0, p0, p2

    cmpl-double v0, p4, v0

    if-gtz v0, :cond_3

    cmpg-double v0, p0, p4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v6, p0

    move-wide p0, p4

    move-wide p4, v6

    :goto_0
    cmpg-double v0, p2, p0

    if-gez v0, :cond_1

    move-wide v6, p0

    move-wide p0, p2

    move-wide p2, v6

    :cond_1
    cmpg-double v0, p4, p2

    if-gez v0, :cond_2

    move-wide v6, p2

    move-wide p2, p4

    move-wide p4, v6

    :cond_2
    add-double v0, p2, p0

    add-double/2addr v0, p4

    sub-double v2, p4, p2

    sub-double v4, p0, v2

    mul-double/2addr v0, v4

    add-double/2addr v2, p0

    mul-double/2addr v0, v2

    sub-double/2addr p2, p0

    add-double/2addr p4, p2

    mul-double/2addr v0, p4

    const-wide/high16 p0, 0x4030000000000000L    # 16.0

    div-double/2addr v0, p0

    return-wide v0

    .line 2
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "c <= a + b required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "b <= a + c required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "a <= b + c required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "c >= 0 required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "b >= 0 required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "a >= 0 required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getTriangleAreaSq(DDDDDD)D
    .locals 14

    .line 1
    sub-double v0, p0, p4

    sub-double v2, p2, p6

    sub-double v4, p4, p8

    sub-double v6, p6, p10

    sub-double v8, p8, p0

    sub-double v10, p10, p2

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    mul-double/2addr v4, v4

    mul-double/2addr v6, v6

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    mul-double/2addr v8, v8

    mul-double/2addr v10, v10

    add-double/2addr v8, v10

    div-double/2addr v8, v2

    cmpg-double v6, v4, v0

    if-gez v6, :cond_0

    move-wide v12, v0

    move-wide v0, v4

    move-wide v4, v12

    :cond_0
    cmpg-double v6, v8, v0

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v12, v0

    move-wide v0, v8

    move-wide v8, v12

    :goto_0
    sub-double v0, v4, v0

    add-double/2addr v0, v8

    div-double/2addr v0, v2

    mul-double/2addr v8, v4

    mul-double/2addr v0, v0

    sub-double/2addr v8, v0

    return-wide v8
.end method

.method public static ptLineDistSq(DDDDDD[D)D
    .locals 10

    sub-double v0, p4, p0

    sub-double v2, p6, p2

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    sub-double v6, p8, p0

    mul-double/2addr v6, v0

    sub-double v8, p10, p2

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    div-double/2addr v6, v4

    :cond_0
    mul-double/2addr v0, v6

    add-double/2addr v0, p0

    mul-double/2addr v2, v6

    add-double/2addr v2, p2

    if-eqz p12, :cond_1

    const/4 v4, 0x0

    .line 1
    aput-wide v0, p12, v4

    const/4 v4, 0x1

    .line 2
    aput-wide v2, p12, v4

    const/4 v4, 0x2

    .line 3
    aput-wide v6, p12, v4

    :cond_1
    sub-double v0, p8, v0

    sub-double v2, p10, v2

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static ptLineDistSq([D[D[D[DI)D
    .locals 15

    move/from16 v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-wide v3, p1, v2

    aget-wide v5, p0, v2

    sub-double/2addr v3, v5

    aput-wide v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    move v4, v1

    move-wide v5, v2

    :goto_1
    if-ge v4, v0, :cond_1

    .line 5
    aget-wide v7, p3, v4

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    cmpl-double v4, v5, v2

    if-eqz v4, :cond_3

    move v4, v1

    move-wide v7, v2

    :goto_2
    if-ge v4, v0, :cond_2

    .line 6
    aget-wide v9, p3, v4

    aget-wide v11, p2, v4

    aget-wide v13, p0, v4

    sub-double/2addr v11, v13

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    div-double/2addr v7, v5

    goto :goto_3

    :cond_3
    move-wide v7, v2

    :goto_3
    move v4, v1

    :goto_4
    if-ge v4, v0, :cond_4

    .line 7
    aget-wide v5, p0, v4

    aget-wide v9, p3, v4

    mul-double/2addr v9, v7

    add-double/2addr v5, v9

    aput-wide v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 8
    :cond_4
    aput-wide v7, p3, v0

    :goto_5
    if-ge v1, v0, :cond_5

    .line 9
    aget-wide v4, p2, v1

    aget-wide v6, p3, v1

    sub-double/2addr v4, v6

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    return-wide v2
.end method

.method public static ptSegDistSq(DDDDDD[D)D
    .locals 12

    sub-double v0, p4, p0

    sub-double v2, p6, p2

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    sub-double v8, p8, p0

    mul-double/2addr v8, v0

    sub-double v10, p10, p2

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    div-double/2addr v8, v4

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    cmpg-double v4, v8, v6

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v8, v6

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    move-wide v6, v8

    :goto_1
    mul-double/2addr v0, v6

    add-double/2addr v0, p0

    mul-double/2addr v2, v6

    add-double/2addr v2, p2

    if-eqz p12, :cond_3

    const/4 v4, 0x0

    .line 1
    aput-wide v0, p12, v4

    const/4 v4, 0x1

    .line 2
    aput-wide v2, p12, v4

    const/4 v4, 0x2

    .line 3
    aput-wide v6, p12, v4

    :cond_3
    sub-double v0, p8, v0

    sub-double v2, p10, v2

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static ptSegDistSq([D[D[D[DI)D
    .locals 15

    move/from16 v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-wide v3, p1, v2

    aget-wide v5, p0, v2

    sub-double/2addr v3, v5

    aput-wide v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    move v4, v1

    move-wide v5, v2

    :goto_1
    if-ge v4, v0, :cond_1

    .line 5
    aget-wide v7, p3, v4

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    cmpl-double v4, v5, v2

    if-eqz v4, :cond_3

    move v4, v1

    move-wide v7, v2

    :goto_2
    if-ge v4, v0, :cond_2

    .line 6
    aget-wide v9, p3, v4

    aget-wide v11, p2, v4

    aget-wide v13, p0, v4

    sub-double/2addr v11, v13

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    div-double/2addr v7, v5

    goto :goto_3

    :cond_3
    move-wide v7, v2

    :goto_3
    cmpg-double v4, v7, v2

    if-gez v4, :cond_4

    move-wide v7, v2

    goto :goto_4

    :cond_4
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v7, v4

    if-lez v6, :cond_5

    move-wide v7, v4

    :cond_5
    :goto_4
    move v4, v1

    :goto_5
    if-ge v4, v0, :cond_6

    .line 7
    aget-wide v5, p0, v4

    aget-wide v9, p3, v4

    mul-double/2addr v9, v7

    add-double/2addr v5, v9

    aput-wide v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 8
    :cond_6
    aput-wide v7, p3, v0

    :goto_6
    if-ge v1, v0, :cond_7

    .line 9
    aget-wide v4, p2, v1

    aget-wide v6, p3, v1

    sub-double/2addr v4, v6

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    return-wide v2
.end method
