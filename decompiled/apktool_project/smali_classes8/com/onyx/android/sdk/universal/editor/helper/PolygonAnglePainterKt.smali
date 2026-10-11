.class public final Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a&\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002\u001a\u0008\u0010\t\u001a\u00020\u0008H\u0002\u001a\u0008\u0010\n\u001a\u00020\u0008H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "strokedCenter",
        "angleCenter",
        "",
        "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
        "sides",
        "",
        "c",
        "Landroid/graphics/Paint;",
        "a",
        "b",
        "sdk-universal_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public static final a()Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getAngleDefaultStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object v0
.end method

.method public static final synthetic access$createDefaultArcPaint()Landroid/graphics/Paint;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainterKt;->a()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createDefaultTextPaint()Landroid/graphics/Paint;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainterKt;->b()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$distanceToSides(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainterKt;->c(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)F

    move-result p0

    return p0
.end method

.method public static final b()Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getAngleDefaultTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-object v0
.end method

.method public static final c(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)F
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
            ">;)F"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->containsEndPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->isCrossPointOnVector(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distanceTo(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distanceTo(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->isSameSide(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->containsEndPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->isCrossPointOnVector(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distanceTo(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v4, p0, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distanceTo(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->isSameSide(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v4

    if-nez v4, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_7
    return v0

    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
