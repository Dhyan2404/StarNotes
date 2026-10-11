.class public final Lcom/onyx/android/sdk/genericshape/Bracket;
.super Lcom/onyx/android/sdk/genericshape/Feature;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\u0016\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/Bracket;",
        "Lcom/onyx/android/sdk/genericshape/Feature;",
        "multiPoint",
        "Lcom/onyx/android/sdk/genericshape/MultiPoint;",
        "(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V",
        "geometry",
        "Lcom/onyx/android/sdk/genericshape/Geometry;",
        "getGeometry",
        "()Lcom/onyx/android/sdk/genericshape/Geometry;",
        "setGeometry",
        "(Lcom/onyx/android/sdk/genericshape/Geometry;)V",
        "getBoundingRect",
        "Landroid/graphics/RectF;",
        "loadRenderPath",
        "Landroid/graphics/Path;",
        "loadSelectionPoints",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "updateBySelectionPoints",
        "",
        "list",
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

.field private final multiPoint:Lcom/onyx/android/sdk/genericshape/MultiPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/MultiPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "multiPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/Feature;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/Bracket;->multiPoint:Lcom/onyx/android/sdk/genericshape/MultiPoint;

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/Bracket;->geometry:Lcom/onyx/android/sdk/genericshape/Geometry;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    const-string p1, "Bracket"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/Properties;->setSubType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBoundingRect()Landroid/graphics/RectF;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/Bracket;->multiPoint:Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/MultiPoint;->getCoordinates()[[F

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    aget v4, v3, v2

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-direct {v1, v4, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget-object v4, p0, v5

    aget v6, v4, v2

    aget v4, v4, v5

    invoke-direct {v3, v6, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v6, 0x2

    aget-object p0, p0, v6

    aget v6, p0, v2

    aget p0, p0, v5

    invoke-direct {v4, v6, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    cmpl-float p0, p0, v6

    if-ltz p0, :cond_2

    move v2, v5

    :cond_2
    const/16 p0, 0xa

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    int-to-float v6, p0

    sub-float/2addr v5, v6

    :goto_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    int-to-float p0, p0

    sub-float/2addr v6, p0

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    add-float/2addr v1, p0

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    :goto_1
    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    add-float/2addr v2, p0

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-object v0
.end method

.method public getGeometry()Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/Bracket;->geometry:Lcom/onyx/android/sdk/genericshape/Geometry;

    return-object p0
.end method

.method public loadRenderPath()Landroid/graphics/Path;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/Bracket;->multiPoint:Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/MultiPoint;->getCoordinates()[[F

    move-result-object p0

    if-nez p0, :cond_0

    return-object v7

    :cond_0
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    return-object v7

    :cond_1
    new-instance v8, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-direct {v8, v2, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget-object v2, p0, v3

    aget v4, v2, v0

    aget v2, v2, v3

    invoke-direct {v1, v4, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v4, 0x2

    aget-object p0, p0, v4

    aget v4, p0, v0

    aget p0, p0, v3

    invoke-direct {v2, v4, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    cmpg-float p0, p0, v4

    if-gez p0, :cond_2

    move-object p0, v1

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    move v0, v3

    :cond_3
    const/16 v2, 0xa

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    int-to-float v4, v2

    add-float/2addr v3, v4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    int-to-float v4, v2

    sub-float/2addr v3, v4

    :goto_1
    move v5, v3

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    int-to-float v3, v2

    add-float/2addr v0, v3

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    int-to-float v3, v2

    sub-float/2addr v0, v3

    :goto_2
    move v9, v0

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v0

    sget-object v3, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sget-object v6, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getCurlyBracketMaxHeightPercent()F

    move-result v6

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v10

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v7, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    sub-float/2addr v3, v10

    invoke-virtual {v7, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v7, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    const/16 v11, 0x8

    int-to-float v11, v11

    sub-float v12, v0, v11

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    int-to-float v13, v2

    sub-float v14, v0, v13

    move-object v0, v7

    move v1, v3

    move v2, v4

    move v3, v6

    move v4, v12

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    add-float/2addr v1, v10

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    add-float v4, v0, v11

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    add-float v6, p0, v13

    move-object v0, v7

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v7
.end method

.method public loadSelectionPoints()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/Bracket;->multiPoint:Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/MultiPoint;->getCoordinates()[[F

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    aget v4, v3, v2

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-direct {v1, v4, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget-object v4, p0, v5

    aget v6, v4, v2

    aget v4, v4, v5

    invoke-direct {v3, v6, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v6, 0x2

    aget-object p0, p0, v6

    aget v2, p0, v2

    aget p0, p0, v5

    invoke-direct {v4, v2, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setGeometry(Lcom/onyx/android/sdk/genericshape/Geometry;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/Geometry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/Bracket;->geometry:Lcom/onyx/android/sdk/genericshape/Geometry;

    return-void
.end method

.method public updateBySelectionPoints(Ljava/util/List;)V
    .locals 1
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

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/Bracket;->multiPoint:Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-static {p1}, Lcom/onyx/android/sdk/genericshape/GeoJsonKt;->toFloatArray(Ljava/util/List;)[[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/MultiPoint;->setCoordinates([[F)V

    return-void
.end method
