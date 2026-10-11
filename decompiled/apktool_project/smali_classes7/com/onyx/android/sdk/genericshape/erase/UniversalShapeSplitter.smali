.class public final Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J2\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014J$\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0008JH\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u000e2(\u0008\u0002\u0010#\u001a\"\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0017\u0012\u0004\u0012\u00020\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00120$J,\u0010%\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020!2\u0014\u0008\u0002\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000e0(\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;",
        "",
        "()V",
        "createArc",
        "Lcom/onyx/android/sdk/genericshape/Arc;",
        "rectF",
        "Landroid/graphics/RectF;",
        "startPoint",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "endPoint",
        "reverse",
        "",
        "positiveSweepAngle",
        "loadRenderPath",
        "Landroid/graphics/Path;",
        "geometry",
        "Lcom/onyx/android/sdk/genericshape/IGeometry;",
        "parseSegmentGeometry",
        "Lcom/onyx/android/sdk/genericshape/Geometry;",
        "splitSegmentPointList",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "geometryType",
        "",
        "",
        "index",
        "",
        "pointToAngle",
        "",
        "rect",
        "point",
        "split",
        "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;",
        "eraseBean",
        "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;",
        "path",
        "parseFunc",
        "Lkotlin/Function3;",
        "splitPath",
        "Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;",
        "pathFunc",
        "Lkotlin/Function1;",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic createArc$default(Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;ZZILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/Arc;
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->createArc(Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;ZZ)Lcom/onyx/android/sdk/genericshape/Arc;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic parseSegmentGeometry$default(Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/base/data/TouchPointList;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->parseSegmentGeometry(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/base/data/TouchPointList;Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic split$default(Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Landroid/graphics/Path;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    new-instance p4, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter$split$1;

    invoke-direct {p4, p0}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter$split$1;-><init>(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->split(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Landroid/graphics/Path;Lkotlin/jvm/functions/Function3;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic splitPath$default(Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter$splitPath$1;

    invoke-direct {p3, p0}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter$splitPath$1;-><init>(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->splitPath(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createArc(Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;ZZ)Lcom/onyx/android/sdk/genericshape/Arc;
    .locals 6
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->pointToAngle(Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide v0

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->pointToAngle(Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide p2

    sub-double/2addr p2, v0

    const-wide/16 v2, 0x0

    cmpg-double p0, p2, v2

    const/16 v2, 0x168

    if-gez p0, :cond_0

    if-eqz p5, :cond_0

    int-to-double v3, v2

    add-double/2addr p2, v3

    :cond_0
    if-eqz p4, :cond_1

    int-to-double p4, v2

    add-double/2addr p2, p4

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/genericshape/MultiPoint;

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/MultiPoint;-><init>()V

    const/4 p4, 0x3

    new-array p4, p4, [[F

    const/4 p5, 0x2

    new-array v2, p5, [F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p1, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x1

    aput v3, v2, v5

    aput-object v2, p4, v4

    new-array v2, p5, [F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    aput v3, v2, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    aput p1, v2, v5

    aput-object v2, p4, v5

    new-array p1, p5, [F

    double-to-float v0, v0

    aput v0, p1, v4

    double-to-float p2, p2

    aput p2, p1, v5

    aput-object p1, p4, p5

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/genericshape/MultiPoint;->setCoordinates([[F)V

    new-instance p1, Lcom/onyx/android/sdk/genericshape/Arc;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/genericshape/Arc;-><init>(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V

    return-object p1
.end method

.method public final loadRenderPath(Lcom/onyx/android/sdk/genericshape/IGeometry;)Landroid/graphics/Path;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "geometry"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/genericshape/IGeometry;->loadRenderPath()Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public final parseSegmentGeometry(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "geometry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "splitSegmentPointList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->parseSegmentGeometry(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/base/data/TouchPointList;Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    return-object p0
.end method

.method public final parseSegmentGeometry(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/base/data/TouchPointList;Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "geometry"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "splitSegmentPointList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :try_start_0
    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p0

    .line 5
    sget-object p1, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    invoke-virtual {p1, p0, p3}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseGeometry(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/genericshape/IGeometry;->updateBySelectionPoints(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0
.end method

.method public final parseSegmentGeometry(Lcom/onyx/android/sdk/genericshape/IGeometry;Ljava/util/List;I)Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/genericshape/IGeometry;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            ">;I)",
            "Lcom/onyx/android/sdk/genericshape/Geometry;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "geometry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "splitSegmentPointList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPointList;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->parseSegmentGeometry(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    return-object p0
.end method

.method public final pointToAngle(Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/TouchPoint;)D
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "rect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "point"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p0, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr p2, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p2, p1

    div-float/2addr p2, v0

    float-to-double p1, p2

    float-to-double v0, p0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpg-double p2, p0, v0

    if-gez p2, :cond_0

    const/16 p2, 0x168

    int-to-double v0, p2

    add-double/2addr p0, v0

    :cond_0
    return-wide p0
.end method

.method public final split(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Landroid/graphics/Path;Lkotlin/jvm/functions/Function3;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/genericshape/IGeometry;",
            "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;",
            "Landroid/graphics/Path;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/onyx/android/sdk/genericshape/IGeometry;",
            "-",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            ">;-",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/onyx/android/sdk/genericshape/Geometry;",
            ">;)",
            "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "geometry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parseFunc"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter$split$splitPathResult$1;

    invoke-direct {v1, p3}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter$split$splitPathResult$1;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->splitPath(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;->getSplitSegmentList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, p1, p3, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;->isPathErased()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setShapeErased(Z)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    return-object v0
.end method

.method public final splitPath(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/genericshape/IGeometry;",
            "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/genericshape/IGeometry;",
            "+",
            "Landroid/graphics/Path;",
            ">;)",
            "Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "geometry"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "eraseBean"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pathFunc"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Path;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->getTargetShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->getErasePath()Landroid/graphics/Path;

    move-result-object v1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/graphics/Matrix;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->concatTransform(Landroid/graphics/Path;[Landroid/graphics/Matrix;)Landroid/graphics/Path;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->splitByPath$default(Landroid/graphics/Path;Landroid/graphics/Path;FZILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/SplitResult;

    move-result-object p0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SplitResult;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/geometry/data/SplitResult;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;

    invoke-direct {p1}, Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SplitResult;->getSplitTouchPointLists()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SplitResult;->getRemoveTouchPointLists()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SplitResult;->getSplitSegmentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;->setSplitSegmentList(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;->setRemoveSegmentList(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;->setPathErased(Z)Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;

    return-object p1
.end method
