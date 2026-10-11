.class public final Lcom/onyx/android/sdk/genericshape/GeoJsonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/GeoJsonKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1558:1\n1549#2:1559\n1620#2,3:1560\n1549#2:1565\n1620#2,3:1566\n1549#2:1569\n1620#2,3:1570\n1549#2:1573\n1620#2,3:1574\n37#3,2:1563\n13374#4,3:1577\n1#5:1580\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/GeoJsonKt\n*L\n1488#1:1559\n1488#1:1560,3\n1491#1:1565\n1491#1:1566,3\n1495#1:1569\n1495#1:1570,3\n1504#1:1573\n1504#1:1574,3\n1488#1:1563,2\n1513#1:1577,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001aD\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e\u001a\"\u0010\u0010\u001a\u00020\u000e*\n\u0018\u00010\u0011j\u0004\u0018\u0001`\u00122\u000e\u0010\u0013\u001a\n\u0018\u00010\u0011j\u0004\u0018\u0001`\u0012\u001aG\u0010\u0014\u001a\u00020\u000e*\u001a\u0012\u0012\u0012\u0010\u0012\u0008\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002`\u00160\u0015j\u0002`\u00172\u001e\u0010\u0018\u001a\u001a\u0012\u0012\u0012\u0010\u0012\u0008\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002`\u00160\u0015j\u0002`\u0017\u00a2\u0006\u0002\u0010\u0019\u001a*\u0010\u001a\u001a\u00020\n*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e\u001a\n\u0010\u001b\u001a\u00020\u0011*\u00020\u001c\u001a\u001b\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0015*\u0008\u0012\u0004\u0012\u00020\u001c0\u001d\u00a2\u0006\u0002\u0010\u001e\u001a#\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001d*\u0010\u0012\u0008\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002` \u00a2\u0006\u0002\u0010!\u001a-\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u001d*\u001a\u0012\u0012\u0012\u0010\u0012\u0008\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002`\u00160\u0015j\u0002`\u0017\u00a2\u0006\u0002\u0010$\u001a-\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001d*\u001a\u0012\u0012\u0012\u0010\u0012\u0008\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002`\u00160\u0015j\u0002`\u0017\u00a2\u0006\u0002\u0010$*\u0014\u0010&\"\u0002` 2\u000c\u0012\u0008\u0012\u00060\u0011j\u0002`\u00120\u0015*$\u0010\'\"\u0008\u0012\u0004\u0012\u0002`\u00160\u00152\u0016\u0012\u0012\u0012\u0010\u0012\u0008\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002`\u00160\u0015*\n\u0010(\"\u00020\u00112\u00020\u0011*\u001a\u0010)\"\u0008\u0012\u0004\u0012\u0002`\u00120\u00152\u000c\u0012\u0008\u0012\u00060\u0011j\u0002`\u00120\u0015*.\u0010*\"\u0008\u0012\u0004\u0012\u0002`\u00170\u00152 \u0012\u001c\u0012\u001a\u0012\u0012\u0012\u0010\u0012\u0008\u0012\u00060\u0011j\u0002`\u00120\u0015j\u0002`\u00160\u0015j\u0002`\u00170\u0015\u00a8\u0006+"
    }
    d2 = {
        "drawArrowPath",
        "",
        "Lcom/onyx/android/sdk/genericshape/Geometry;",
        "canvas",
        "Landroid/graphics/Canvas;",
        "matrix",
        "Landroid/graphics/Matrix;",
        "strokePaint",
        "Landroid/graphics/Paint;",
        "renderPath",
        "Landroid/graphics/Path;",
        "strokeWidth",
        "",
        "drawStartArrow",
        "",
        "drawEndArrow",
        "isApproximatelyEqual",
        "",
        "Lcom/onyx/android/sdk/genericshape/Position;",
        "position",
        "isEquals",
        "",
        "Lcom/onyx/android/sdk/genericshape/Line;",
        "Lcom/onyx/android/sdk/genericshape/Lines;",
        "lines",
        "([[[F[[[F)Z",
        "loadArrowPath",
        "toFloatArray",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "",
        "(Ljava/util/List;)[[F",
        "toTouchPointList",
        "Lcom/onyx/android/sdk/genericshape/Positions;",
        "([[F)Ljava/util/List;",
        "toTouchPointPairs",
        "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
        "([[[F)Ljava/util/List;",
        "toTouchPoints",
        "Line",
        "Lines",
        "Position",
        "Positions",
        "Surface",
        "sdk-genericshape_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/GeoJsonKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1558:1\n1549#2:1559\n1620#2,3:1560\n1549#2:1565\n1620#2,3:1566\n1549#2:1569\n1620#2,3:1570\n1549#2:1573\n1620#2,3:1574\n37#3,2:1563\n13374#4,3:1577\n1#5:1580\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/GeoJsonKt\n*L\n1488#1:1559\n1488#1:1560,3\n1491#1:1565\n1491#1:1566,3\n1495#1:1569\n1495#1:1570,3\n1504#1:1573\n1504#1:1574,3\n1488#1:1563,2\n1513#1:1577,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final drawArrowPath(Lcom/onyx/android/sdk/genericshape/Geometry;Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/Paint;Landroid/graphics/Path;FZZ)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/genericshape/Geometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strokePaint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderPath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p4, p5, p6, p7}, Lcom/onyx/android/sdk/genericshape/GeoJsonKt;->loadArrowPath(Lcom/onyx/android/sdk/genericshape/Geometry;Landroid/graphics/Path;FZZ)Landroid/graphics/Path;

    move-result-object p4

    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/4 p3, 0x0

    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    if-eqz p2, :cond_0

    invoke-virtual {p4, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Geometry;->isFromPencil()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/pen/NeoPencilPen;->Companion:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;

    invoke-virtual {p0, p1, p4, p5}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public static final isApproximatelyEqual([F[F)Z
    .locals 4
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    aget v2, p0, v1

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/FloatKt;->roundToIntFloat(F)F

    move-result v2

    aget v3, p1, v1

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/FloatKt;->roundToIntFloat(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    aget p0, p0, v0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FloatKt;->roundToIntFloat(F)F

    move-result p0

    aget p1, p1, v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/FloatKt;->roundToIntFloat(F)F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_2

    move p0, v0

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :cond_4
    :goto_2
    return v0
.end method

.method public static final isEquals([[[F[[[F)Z
    .locals 6
    .param p0    # [[[F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [[[F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lines"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    array-length v0, p0

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p0, v1

    add-int/lit8 v5, v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static final loadArrowPath(Lcom/onyx/android/sdk/genericshape/Geometry;Landroid/graphics/Path;FZZ)Landroid/graphics/Path;
    .locals 6
    .param p0    # Lcom/onyx/android/sdk/genericshape/Geometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "renderPath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    move v2, p4

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createLineArrowPath$default(Landroid/graphics/Path;ZZLjava/lang/Number;ILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final toFloatArray(Lcom/onyx/android/sdk/base/data/TouchPoint;)[F
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    aput p0, v0, v1

    return-object v0
.end method

.method public static final toFloatArray(Ljava/util/List;)[[F
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)[[F"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p0, Ljava/lang/Iterable;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 6
    invoke-static {v1}, Lcom/onyx/android/sdk/genericshape/GeoJsonKt;->toFloatArray(Lcom/onyx/android/sdk/base/data/TouchPoint;)[F

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [[F

    .line 8
    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[F

    return-object p0
.end method

.method public static final toTouchPointList([[F)Ljava/util/List;
    .locals 5
    .param p0    # [[F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[F)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-direct {v2, v3, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toTouchPointPairs([[[F)Ljava/util/List;
    .locals 7
    .param p0    # [[[F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[F)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    aget v5, v4, v3

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-direct {v2, v5, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget-object v1, v1, v6

    aget v3, v1, v3

    aget v1, v1, v6

    invoke-direct {v4, v3, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v1, v2, v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toTouchPoints([[[F)Ljava/util/List;
    .locals 5
    .param p0    # [[[F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[F)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-direct {v2, v3, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
