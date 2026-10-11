.class public final Lcom/onyx/android/sdk/universal/editor/helper/AnglePainterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "drawRightAngle",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "angle",
        "Lcom/onyx/android/sdk/geometry/data/AnglePoints;",
        "radius",
        "",
        "paint",
        "Landroid/graphics/Paint;",
        "sdk-universal_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final drawRightAngle(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/AnglePoints;FLandroid/graphics/Paint;)V
    .locals 12
    .param p0    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/AnglePoints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "angle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-double v0, p2

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    new-instance p2, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getPrevious()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v2, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getNext()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v3, v4, v5, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, p2, v0, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v8

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v10

    move-object v6, p0

    move-object v11, p3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
