.class public final Lcom/onyx/android/sdk/genericshape/WaveLine;
.super Lcom/onyx/android/sdk/genericshape/Feature;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J0\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0016\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000e0!H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/WaveLine;",
        "Lcom/onyx/android/sdk/genericshape/Feature;",
        "lineString",
        "Lcom/onyx/android/sdk/genericshape/LineString;",
        "(Lcom/onyx/android/sdk/genericshape/LineString;)V",
        "geometry",
        "Lcom/onyx/android/sdk/genericshape/Geometry;",
        "getGeometry",
        "()Lcom/onyx/android/sdk/genericshape/Geometry;",
        "setGeometry",
        "(Lcom/onyx/android/sdk/genericshape/Geometry;)V",
        "maxWaveCount",
        "",
        "computeWavePoint",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "axis",
        "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
        "waveCycle",
        "",
        "waveHeight",
        "position",
        "offset",
        "getBoundingRect",
        "Landroid/graphics/RectF;",
        "loadRenderPath",
        "Landroid/graphics/Path;",
        "split",
        "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;",
        "eraseBean",
        "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;",
        "updateBySelectionPoints",
        "",
        "latestPoints",
        "",
        "sdk-genericshape_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private geometry:Lcom/onyx/android/sdk/genericshape/Geometry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final lineString:Lcom/onyx/android/sdk/genericshape/LineString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxWaveCount:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/genericshape/LineString;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/LineString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lineString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/Feature;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/WaveLine;->lineString:Lcom/onyx/android/sdk/genericshape/LineString;

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/WaveLine;->geometry:Lcom/onyx/android/sdk/genericshape/Geometry;

    const/16 p1, 0x1388

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/WaveLine;->maxWaveCount:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    const-string p1, "WaveLine"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/Properties;->setSubType(Ljava/lang/String;)V

    return-void
.end method

.method private final computeWavePoint(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;FFFF)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    rem-float/2addr p4, p2

    add-float/2addr p4, p5

    div-float/2addr p4, p2

    const p2, 0x40c90fdb

    mul-float/2addr p4, p2

    float-to-double p4, p4

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    double-to-float p2, p4

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findPointByDistance(FLcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBoundingRect()Landroid/graphics/RectF;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/WaveLine;->lineString:Lcom/onyx/android/sdk/genericshape/LineString;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/LineString;->getCoordinates()[[F

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getWaveAttr()Lcom/onyx/android/sdk/genericshape/WaveAttr;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    array-length v0, v1

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    aget v5, v4, v3

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-direct {v2, v5, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sub-int/2addr v0, v6

    aget-object v0, v1, v0

    aget v1, v0, v3

    aget v0, v0, v6

    invoke-direct {v4, v1, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v1, v2, v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyPeak()F

    move-result p0

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->computeRectByHeight(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getGeometry()Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/WaveLine;->geometry:Lcom/onyx/android/sdk/genericshape/Geometry;

    return-object p0
.end method

.method public loadRenderPath()Landroid/graphics/Path;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/WaveLine;->lineString:Lcom/onyx/android/sdk/genericshape/LineString;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/LineString;->getCoordinates()[[F

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getWaveAttr()Lcom/onyx/android/sdk/genericshape/WaveAttr;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    array-length v3, v1

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v5, 0x0

    aget-object v6, v1, v5

    aget v7, v6, v5

    const/4 v8, 0x1

    aget v6, v6, v8

    invoke-direct {v4, v7, v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sub-int/2addr v3, v8

    aget-object v1, v1, v3

    aget v3, v1, v5

    aget v1, v1, v8

    invoke-direct {v6, v3, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v1, v4, v6}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyLength()F

    move-result v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyPeak()F

    move-result v5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyOffset()F

    move-result v2

    const v7, 0x40c90fdb

    div-float/2addr v2, v7

    mul-float/2addr v2, v3

    sget-object v7, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    neg-float v8, v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v4, v8, v9}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    new-instance v8, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v8, v7, v6}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v8}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v7

    div-float v8, v7, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-int v8, v8

    const v9, 0x3a83126f    # 0.001f

    cmpg-float v10, v3, v9

    if-ltz v10, :cond_4

    cmpg-float v10, v5, v9

    if-ltz v10, :cond_4

    cmpg-float v7, v7, v9

    if-ltz v7, :cond_4

    iget v7, p0, Lcom/onyx/android/sdk/genericshape/WaveLine;->maxWaveCount:I

    if-le v8, v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v13

    int-to-float v4, v8

    div-float v4, v13, v4

    const/16 v6, 0xb4

    int-to-float v6, v6

    div-float v14, v4, v6

    const/4 v4, 0x0

    move-object v7, p0

    move-object v8, v1

    move v9, v3

    move v10, v5

    move v11, v4

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/onyx/android/sdk/genericshape/WaveLine;->computeWavePoint(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;FFFF)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_3
    sget-object v6, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    add-float/2addr v4, v14

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    move-object v7, p0

    move-object v8, v1

    move v9, v3

    move v10, v5

    move v11, v4

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/onyx/android/sdk/genericshape/WaveLine;->computeWavePoint(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;FFFF)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    cmpg-float v6, v4, v13

    if-ltz v6, :cond_3

    return-object v0

    :cond_4
    :goto_0
    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method public setGeometry(Lcom/onyx/android/sdk/genericshape/Geometry;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/Geometry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/WaveLine;->geometry:Lcom/onyx/android/sdk/genericshape/Geometry;

    return-void
.end method

.method public split(Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->splitShape(Lcom/onyx/android/sdk/genericshape/WaveLine;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method

.method public updateBySelectionPoints(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "latestPoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->loadSelectionPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/Properties;->getWaveAttr()Lcom/onyx/android/sdk/genericshape/WaveAttr;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->equalXY(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distanceTo(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyOffset()F

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyLength()F

    move-result v4

    div-float/2addr v0, v4

    const v4, 0x40c90fdb

    mul-float/2addr v0, v4

    add-float/2addr v3, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2, v0, v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distanceTo(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyLength()F

    move-result v5

    div-float/2addr v0, v5

    mul-float/2addr v0, v4

    sub-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->toUnsignedRad(F)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->setWavyOffset(F)V

    :cond_2
    invoke-super {p0, p1}, Lcom/onyx/android/sdk/genericshape/Feature;->updateBySelectionPoints(Ljava/util/List;)V

    return-void
.end method
