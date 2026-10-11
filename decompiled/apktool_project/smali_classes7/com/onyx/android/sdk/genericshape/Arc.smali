.class public final Lcom/onyx/android/sdk/genericshape/Arc;
.super Lcom/onyx/android/sdk/genericshape/Feature;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0016\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/Arc;",
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
        "loadRenderPath",
        "Landroid/graphics/Path;",
        "loadSelectionPoints",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "split",
        "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;",
        "eraseBean",
        "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;",
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

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/Arc;->multiPoint:Lcom/onyx/android/sdk/genericshape/MultiPoint;

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/Arc;->geometry:Lcom/onyx/android/sdk/genericshape/Geometry;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    const-string p1, "Arc"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/Properties;->setSubType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getGeometry()Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/Arc;->geometry:Lcom/onyx/android/sdk/genericshape/Geometry;

    return-object p0
.end method

.method public loadRenderPath()Landroid/graphics/Path;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/Arc;->multiPoint:Lcom/onyx/android/sdk/genericshape/MultiPoint;

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
    const/4 v0, 0x0

    aget-object v1, p0, v0

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v4, v1, v3

    aget-object v1, p0, v3

    aget v5, v1, v0

    aget v6, v1, v3

    const/4 v1, 0x2

    aget-object p0, p0, v1

    aget v8, p0, v0

    aget p0, p0, v3

    move-object v0, v7

    move v1, v2

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v8

    move v6, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addArc(FFFFFF)V

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

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/Arc;->multiPoint:Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/MultiPoint;->getCoordinates()[[F

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v2, p0, v1

    const/4 v3, 0x1

    aget-object p0, p0, v3

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v5, v2, v1

    aget v6, v2, v3

    invoke-direct {v4, v5, v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v5, p0, v1

    aget v6, v2, v3

    invoke-direct {v4, v5, v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v5, p0, v1

    aget v6, p0, v3

    invoke-direct {v4, v5, v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v1, v2, v1

    aget p0, p0, v3

    invoke-direct {v4, v1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setGeometry(Lcom/onyx/android/sdk/genericshape/Geometry;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/Geometry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/Arc;->geometry:Lcom/onyx/android/sdk/genericshape/Geometry;

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

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->splitShape(Lcom/onyx/android/sdk/genericshape/Arc;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

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

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/Arc;->multiPoint:Lcom/onyx/android/sdk/genericshape/MultiPoint;

    const/4 v0, 0x2

    new-array v1, v0, [[F

    new-array v2, v0, [F

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    aput v4, v2, v3

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    aput v5, v2, v4

    aput-object v2, v1, v3

    new-array v2, v0, [F

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    aput v5, v2, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    aput p1, v2, v4

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/genericshape/MultiPoint;->setCoordinates([[F)V

    return-void
.end method
