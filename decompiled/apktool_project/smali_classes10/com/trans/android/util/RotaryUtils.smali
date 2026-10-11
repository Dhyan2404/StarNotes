.class public Lcom/trans/android/util/RotaryUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ROTATE_0:I = 0x0

.field public static final ROTATE_180:I = 0xb4

.field public static final ROTATE_270:I = 0x10e

.field public static final ROTATE_90:I = 0x5a


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAngle(Landroid/graphics/Matrix;)D
    .locals 11

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-double v2, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-double v4, v1

    const/4 v1, 0x3

    aget v1, v0, v1

    float-to-double v6, v1

    const/4 v1, 0x4

    aget v0, v0, v1

    float-to-double v8, v0

    const/4 v10, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngle()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getAngle(Ljava/awt/geom/AffineTransform;)D
    .locals 11

    const/4 v0, 0x6

    new-array v0, v0, [D

    .line 4
    invoke-virtual {p0, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 5
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    const/4 v1, 0x3

    aget-wide v8, v0, v1

    const/4 v10, 0x1

    move-object v1, p0

    move-wide v4, v6

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngle()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDegree(DD)D
    .locals 0

    .line 7
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const-wide p2, -0x3fa9800000000000L    # -90.0

    cmpl-double p2, p0, p2

    if-ltz p2, :cond_0

    const-wide p2, 0x4056800000000000L    # 90.0

    sub-double/2addr p0, p2

    goto :goto_0

    :cond_0
    const-wide p2, 0x4070e00000000000L    # 270.0

    add-double/2addr p0, p2

    :goto_0
    return-wide p0
.end method

.method public static getDegree(Landroid/graphics/Matrix;)J
    .locals 11

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-double v2, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-double v4, v1

    const/4 v1, 0x3

    aget v1, v0, v1

    float-to-double v6, v1

    const/4 v1, 0x4

    aget v0, v0, v1

    float-to-double v8, v0

    const/4 v10, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngle()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDegree(Ljava/awt/geom/AffineTransform;)J
    .locals 11

    const/4 v0, 0x6

    new-array v0, v0, [D

    .line 4
    invoke-virtual {p0, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 5
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    const/4 v1, 0x3

    aget-wide v8, v0, v1

    const/4 v10, 0x1

    move-object v1, p0

    move-wide v4, v6

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngle()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isHorizontal(J)Z
    .locals 2

    const-wide/16 v0, 0x5a

    div-long/2addr p0, v0

    const-wide/16 v0, 0x2

    rem-long/2addr p0, v0

    const-wide/16 v0, 0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInitialDegree(J)Z
    .locals 2

    const-wide/16 v0, 0x5a

    div-long/2addr p0, v0

    const-wide/16 v0, 0x2

    rem-long/2addr p0, v0

    const-wide/16 v0, 0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static nonRotate(Landroid/graphics/Matrix;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/trans/android/util/RotaryUtils;->getDegree(Landroid/graphics/Matrix;)J

    move-result-wide v0

    const-wide/16 v2, 0x5a

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static nonRotate(Ljava/awt/geom/AffineTransform;)Z
    .locals 4

    .line 2
    invoke-static {p0}, Lcom/trans/android/util/RotaryUtils;->getDegree(Ljava/awt/geom/AffineTransform;)J

    move-result-wide v0

    const-wide/16 v2, 0x5a

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
