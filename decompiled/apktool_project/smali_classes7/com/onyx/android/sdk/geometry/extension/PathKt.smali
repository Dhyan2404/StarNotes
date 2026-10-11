.class public final Lcom/onyx/android/sdk/geometry/extension/PathKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\ncom/onyx/android/sdk/geometry/extension/PathKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,698:1\n348#1,29:706\n330#1,4:735\n334#1,7:742\n330#1,4:749\n334#1,7:756\n348#1,29:763\n348#1,29:792\n348#1,29:843\n13309#2,2:699\n13309#2,2:701\n344#3,3:703\n344#3,3:739\n344#3,3:753\n344#3,3:875\n1477#4:821\n1502#4,3:822\n1505#4,3:832\n1549#4:838\n1620#4,3:839\n1747#4,3:872\n1855#4,2:878\n1855#4,2:880\n1855#4,2:882\n372#5,7:825\n125#6:835\n152#6,2:836\n154#6:842\n*S KotlinDebug\n*F\n+ 1 Path.kt\ncom/onyx/android/sdk/geometry/extension/PathKt\n*L\n383#1:706,29\n392#1:735,4\n392#1:742,7\n403#1:749,4\n403#1:756,7\n417#1:763,29\n443#1:792,29\n467#1:843,29\n69#1:699,2\n77#1:701,2\n333#1:703,3\n392#1:739,3\n403#1:753,3\n512#1:875,3\n445#1:821\n445#1:822,3\n445#1:832,3\n446#1:838\n446#1:839,3\n486#1:872,3\n541#1:878,2\n666#1:880,2\n696#1:882,2\n445#1:825,7\n446#1:835\n446#1:836,2\n446#1:842\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0004\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a#\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0003\"\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0004\u001a*\u0010\u0005\u001a\u00020\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000b0\n\u001a \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\r\u001a\n\u0010\u0011\u001a\u00020\u0012*\u00020\u0001\u001a\u0010\u0010\u0011\u001a\u00020\u0012*\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u001a\u001c\u0010\u0013\u001a\u00020\u0001*\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u001a\u001a\u0010\u0016\u001a\u00020\u000b*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008\u001a*\u0010\u0016\u001a\u00020\u000b*\u00020\u00012\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\r\u001a\u0018\u0010\u0016\u001a\u00020\u000b*\u00020\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u001a\"\u0010\u001b\u001a\u00020\u0001*\u00020\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0012\u001a\'\u0010\u001d\u001a\u00020\u0001*\u00020\u00012\u0016\u0010\u001e\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u001f0\u0003\"\u0004\u0018\u00010\u001f\u00a2\u0006\u0002\u0010 \u001a\u0012\u0010!\u001a\u00020\u0015*\u00020\u00012\u0006\u0010\"\u001a\u00020\u0008\u001a<\u0010#\u001a\u00020\u0001*\u00020\u00012\u0008\u0008\u0002\u0010$\u001a\u00020\u00152\u0008\u0008\u0002\u0010%\u001a\u00020\u00152\u0008\u0008\u0002\u0010&\u001a\u00020\r2\u0008\u0008\u0002\u0010\'\u001a\u00020\u00122\u0008\u0008\u0002\u0010(\u001a\u00020\r\u001a2\u0010)\u001a\u00020\u0001*\u00020\u00012\u0008\u0008\u0002\u0010$\u001a\u00020\u00152\u0008\u0008\u0002\u0010%\u001a\u00020\u00152\u0008\u0008\u0002\u0010&\u001a\u00020\r2\u0008\u0008\u0002\u0010(\u001a\u00020\r\u001a\u0014\u0010*\u001a\u00020\u0001*\u00020\u00082\u0008\u0008\u0002\u0010+\u001a\u00020,\u001a$\u0010*\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010+\u001a\u00020,2\u0008\u0008\u0002\u0010-\u001a\u00020\u0015\u001a2\u0010.\u001a\u00020\u0001*\u00020\u00012\u0008\u0008\u0002\u0010$\u001a\u00020\u00152\u0008\u0008\u0002\u0010%\u001a\u00020\u00152\u0008\u0008\u0002\u0010&\u001a\u00020\r2\u0008\u0008\u0002\u0010(\u001a\u00020\r\u001a(\u0010/\u001a\u00020\u0001*\u00020\u00012\u0008\u0008\u0002\u0010$\u001a\u00020\u00152\u0008\u0008\u0002\u0010%\u001a\u00020\u00152\u0008\u0008\u0002\u0010&\u001a\u00020,\u001a\u001e\u00100\u001a\u000201*\u00020\u00012\u0008\u0008\u0002\u00102\u001a\u0002032\u0008\u0008\u0002\u00104\u001a\u00020\u0015\u001a\u0018\u00105\u001a\u00020\u000b*\u00020\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u001a\n\u00106\u001a\u00020\u0001*\u00020\u0001\u001a.\u00107\u001a\u00020\u000b*\u00020\u00012\u0008\u0008\u0002\u00108\u001a\u00020,2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b0\nH\u0086\u0008\u00f8\u0001\u0000\u001a)\u0010;\u001a\u00020\u000b*\u00020\u00012\u0017\u00109\u001a\u0013\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0008=H\u0086\u0008\u00f8\u0001\u0000\u001a\n\u0010>\u001a\u00020\u0008*\u00020\u0001\u001a\u001e\u0010?\u001a\u00020\u0001*\u00020\u00012\u0008\u0008\u0002\u0010(\u001a\u00020,2\u0008\u0008\u0002\u0010@\u001a\u00020\u0015\u001a\u000c\u0010A\u001a\u0004\u0018\u00010\u0008*\u00020\u0001\u001a\u000c\u0010B\u001a\u0004\u0018\u00010\u0008*\u00020\u0001\u001a\u0014\u0010C\u001a\u0004\u0018\u00010\u0008*\u00020\u00012\u0006\u0010D\u001a\u00020\r\u001a#\u0010E\u001a\u0004\u0018\u00010\r*\u00020\u00012\u0006\u0010\"\u001a\u00020\u00082\u0008\u0008\u0002\u00108\u001a\u00020\u0012\u00a2\u0006\u0002\u0010F\u001a\u0012\u0010G\u001a\u00020\u0001*\u00020\u00012\u0006\u0010H\u001a\u00020\u0012\u001a\u0010\u0010I\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020J0\u0007\u001a\u0012\u0010K\u001a\u00020\u0015*\u00020\u00012\u0006\u0010L\u001a\u00020\u0001\u001a0\u0010K\u001a\u00020\u0015*\u00020\u00012\u0006\u0010\"\u001a\u00020\u00082\u0008\u0008\u0002\u0010M\u001a\u00020,2\u0008\u0008\u0002\u0010(\u001a\u00020,2\u0008\u0008\u0002\u0010@\u001a\u00020\u0015\u001a6\u0010K\u001a\u00020\u0015*\u00020\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010M\u001a\u00020,2\u0008\u0008\u0002\u0010(\u001a\u00020,2\u0008\u0008\u0002\u0010@\u001a\u00020\u0015\u001a\u001e\u0010N\u001a\u00020\u0015*\u00020\u00012\u0008\u0008\u0002\u00108\u001a\u00020,2\u0008\u0008\u0002\u0010O\u001a\u00020,\u001a&\u0010P\u001a\u00020\u0015*\u00020\u00012\u0006\u0010\"\u001a\u00020\u00082\u0008\u0008\u0002\u00108\u001a\u00020,2\u0008\u0008\u0002\u0010O\u001a\u00020,\u001a\u0018\u0010Q\u001a\u00020\u000b*\u00020\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u001a\"\u0010R\u001a\u00020\u000b*\u00020\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u00108\u001a\u00020\u0012\u001a\u001a\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007*\u00020\u00012\u0008\u0008\u0002\u00108\u001a\u00020,\u001a \u0010T\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0007*\u00020\u00012\u0008\u0008\u0002\u00108\u001a\u00020,\u001aN\u0010U\u001a\u00020\u000b*\u00020\u00012\u0006\u0010V\u001a\u00020W2\u0008\u0008\u0002\u0010X\u001a\u00020\r2\u0008\u0008\u0002\u0010Y\u001a\u00020\u00122\u0008\u0008\u0002\u0010Z\u001a\u00020\u00122\u0008\u0008\u0002\u0010[\u001a\u00020\u00082\u0008\u0008\u0002\u0010\\\u001a\u00020\r2\u0008\u0008\u0002\u0010]\u001a\u00020\u0012\u001a&\u0010^\u001a\u00020_*\u00020\u00012\u0006\u0010`\u001a\u00020\u00012\u0008\u0008\u0002\u0010a\u001a\u00020\r2\u0008\u0008\u0002\u0010b\u001a\u00020\u0015\u001a&\u0010c\u001a\u00020_*\u00020\u00012\u0006\u0010d\u001a\u0002012\u0008\u0008\u0002\u00108\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0012\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006e"
    }
    d2 = {
        "concat",
        "Landroid/graphics/Path;",
        "paths",
        "",
        "([Landroid/graphics/Path;)Landroid/graphics/Path;",
        "createPathFrom",
        "points",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "compose",
        "Lkotlin/Function1;",
        "",
        "getQuadToEndPos",
        "",
        "current",
        "next",
        "factor",
        "area",
        "",
        "asPath",
        "closed",
        "",
        "averageQuadTo",
        "currentX",
        "currentY",
        "nextX",
        "nextY",
        "clipByPointRegion",
        "minPathPoint",
        "concatTransform",
        "matrixs",
        "Landroid/graphics/Matrix;",
        "(Landroid/graphics/Path;[Landroid/graphics/Matrix;)Landroid/graphics/Path;",
        "contains",
        "point",
        "createArrowPath",
        "addStartArrow",
        "addEndArrow",
        "arrowSize",
        "arrowStyle",
        "strokeWidth",
        "createCloseAndFilledArrowPath",
        "createHitTestPath",
        "hotspotRadius",
        "",
        "includeFillRegion",
        "createLineAndStrokedArrowPath",
        "createLineArrowPath",
        "createRegion",
        "Landroid/graphics/Region;",
        "rectF",
        "Landroid/graphics/RectF;",
        "useDefaultRect",
        "cubicTo",
        "firstSegment",
        "forEachPoint",
        "step",
        "consumer",
        "Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;",
        "forEachRegionRect",
        "Landroid/graphics/Rect;",
        "Lkotlin/ExtensionFunctionType;",
        "getCenterPointByPosition",
        "getFillStrokePath",
        "fillPath",
        "getFirstPoint",
        "getLastPoint",
        "getPercentPoint",
        "percent",
        "getPointPosition",
        "(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;I)Ljava/lang/Float;",
        "getSegmentByIndex",
        "index",
        "getUnionRegionPath",
        "Lcom/onyx/android/sdk/base/data/SelectionRegion;",
        "hitTestPath",
        "other",
        "hitTestRadius",
        "isPathClosed",
        "threshold",
        "isPointNear",
        "lineTo",
        "realQuadTo",
        "resample",
        "resampleMultiSegmentPath",
        "saveToDebugFile",
        "file",
        "",
        "pathStrokeWidth",
        "pathStrokeColor",
        "pathFillColor",
        "circlePoint",
        "circleRadius",
        "circleFillColor",
        "splitByPath",
        "Lcom/onyx/android/sdk/geometry/data/SplitResult;",
        "erasePath",
        "eraseRadius",
        "forceClosePath",
        "splitByRegion",
        "region",
        "sdk-geometry_release"
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
        "SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\ncom/onyx/android/sdk/geometry/extension/PathKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,698:1\n348#1,29:706\n330#1,4:735\n334#1,7:742\n330#1,4:749\n334#1,7:756\n348#1,29:763\n348#1,29:792\n348#1,29:843\n13309#2,2:699\n13309#2,2:701\n344#3,3:703\n344#3,3:739\n344#3,3:753\n344#3,3:875\n1477#4:821\n1502#4,3:822\n1505#4,3:832\n1549#4:838\n1620#4,3:839\n1747#4,3:872\n1855#4,2:878\n1855#4,2:880\n1855#4,2:882\n372#5,7:825\n125#6:835\n152#6,2:836\n154#6:842\n*S KotlinDebug\n*F\n+ 1 Path.kt\ncom/onyx/android/sdk/geometry/extension/PathKt\n*L\n383#1:706,29\n392#1:735,4\n392#1:742,7\n403#1:749,4\n403#1:756,7\n417#1:763,29\n443#1:792,29\n467#1:843,29\n69#1:699,2\n77#1:701,2\n333#1:703,3\n392#1:739,3\n403#1:753,3\n512#1:875,3\n445#1:821\n445#1:822,3\n445#1:832,3\n446#1:838\n446#1:839,3\n486#1:872,3\n541#1:878,2\n666#1:880,2\n696#1:882,2\n445#1:825,7\n446#1:835\n446#1:836,2\n446#1:842\n*E\n"
    }
.end annotation


# direct methods
.method public static final area(Landroid/graphics/Path;)I
    .locals 4
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    .line 3
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/PathKt;->computeBounds(Landroid/graphics/Path;Z)Landroid/graphics/RectF;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/graphics/Region;

    .line 6
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 7
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 8
    invoke-direct {v2, v3}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {v0, p0, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 10
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    new-instance v1, Landroid/graphics/RegionIterator;

    invoke-direct {v1, v0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-virtual {v1, p0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 14
    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/RectKt;->area(Landroid/graphics/Rect;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final area(Ljava/util/List;)I
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
            ">;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createPathFrom$default(Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->area(Landroid/graphics/Path;)I

    move-result p0

    return p0
.end method

.method public static final asPath(Ljava/util/List;Z)Landroid/graphics/Path;
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;Z)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->lineTo(Landroid/graphics/Path;Ljava/util/List;)V

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :cond_3
    return-object v0
.end method

.method public static synthetic asPath$default(Ljava/util/List;ZILjava/lang/Object;)Landroid/graphics/Path;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->asPath(Ljava/util/List;Z)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final averageQuadTo(Landroid/graphics/Path;FFFF)V
    .locals 3
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-static {p1, p3, v0, v1, v2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getQuadToEndPos$default(FFFILjava/lang/Object;)F

    move-result p3

    .line 2
    invoke-static {p2, p4, v0, v1, v2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getQuadToEndPos$default(FFFILjava/lang/Object;)F

    move-result p4

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-void
.end method

.method public static final averageQuadTo(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 2
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-static {p0, v0, p1, v1, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->averageQuadTo(Landroid/graphics/Path;FFFF)V

    return-void
.end method

.method public static final averageQuadTo(Landroid/graphics/Path;Ljava/util/List;)V
    .locals 2
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 9
    invoke-static {p0, v0, v1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->averageQuadTo(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final clipByPointRegion(Landroid/graphics/Path;Ljava/util/List;I)Landroid/graphics/Path;
    .locals 10
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;I)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->asPath(Ljava/util/List;Z)Landroid/graphics/Path;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getFillStrokePath(Landroid/graphics/Path;Ljava/lang/Number;Z)Landroid/graphics/Path;

    move-result-object p1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v3}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createRegion$default(Landroid/graphics/Path;Landroid/graphics/RectF;ZILjava/lang/Object;)Landroid/graphics/Region;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, p0

    move v7, p2

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->splitByRegion$default(Landroid/graphics/Path;Landroid/graphics/Region;IIILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/SplitResult;

    move-result-object p0

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SplitResult;->getRemoveSegmentList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p2, v1, v0, v3}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->asPath$default(Ljava/util/List;ZILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static synthetic clipByPointRegion$default(Landroid/graphics/Path;Ljava/util/List;IILjava/lang/Object;)Landroid/graphics/Path;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x5

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->clipByPointRegion(Landroid/graphics/Path;Ljava/util/List;I)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs concat([Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 4
    .param p0    # [Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "paths"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    :cond_0
    invoke-virtual {v0, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final varargs concatTransform(Landroid/graphics/Path;[Landroid/graphics/Matrix;)Landroid/graphics/Path;
    .locals 3
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrixs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/PathKt;->copy(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->nonNull(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static final contains(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 5
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/PathKt;->computeBounds(Landroid/graphics/Path;Z)Landroid/graphics/RectF;

    move-result-object v2

    new-instance v3, Landroid/graphics/Region;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-direct {v3, v4}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/RegionIterator;

    invoke-direct {v2, v0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    :cond_0
    invoke-virtual {v2, p0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final createArrowPath(Landroid/graphics/Path;ZZFIF)Landroid/graphics/Path;
    .locals 1
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3, p5}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createCloseAndFilledArrowPath(Landroid/graphics/Path;ZZFF)Landroid/graphics/Path;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2, p3, p5}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createLineAndStrokedArrowPath(Landroid/graphics/Path;ZZFF)Landroid/graphics/Path;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic createArrowPath$default(Landroid/graphics/Path;ZZFIFILjava/lang/Object;)Landroid/graphics/Path;
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    sget-object p3, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 p7, 0x41600000    # 14.0f

    invoke-virtual {p3, p7}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result p3

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    const/4 p4, 0x1

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    const/4 p5, 0x0

    :cond_4
    invoke-static/range {p0 .. p5}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createArrowPath(Landroid/graphics/Path;ZZFIF)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final createCloseAndFilledArrowPath(Landroid/graphics/Path;ZZFF)Landroid/graphics/Path;
    .locals 16
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p4

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    sget-object v3, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    new-instance v4, Landroid/graphics/PathMeasure;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v0, 0x2

    new-array v6, v0, [F

    new-array v7, v0, [F

    const v9, 0x3f060a92

    const v10, 0x3fc90fdb

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v4, v12, v6, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    new-instance v13, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v14, v6, v5

    aget v15, v6, v11

    invoke-direct {v13, v14, v15}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v14, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    new-instance v15, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v15, v12, v12}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v12, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v8, v7, v5

    aget v5, v7, v11

    invoke-direct {v12, v8, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-direct {v14, v15, v12}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v14}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v5

    sub-float v8, v5, v10

    add-float v12, v5, v10

    sget-object v14, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    neg-float v15, v1

    int-to-float v10, v0

    mul-float/2addr v15, v10

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v14, v13, v10, v15}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v10

    float-to-double v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v14, v13, v0, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v1, v10, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v1

    const/high16 v13, 0x3f400000    # 0.75f

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v10, v1, v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v14, v0, v5, v8}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v14, v0, v8, v12}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v8

    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v10

    invoke-virtual {v3, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v8

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-virtual {v3, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    invoke-virtual {v4, v0, v6, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    aget v4, v6, v1

    aget v5, v6, v11

    invoke-direct {v0, v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v4, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    new-instance v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v1, v7, v1

    aget v7, v7, v11

    invoke-direct {v6, v1, v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-direct {v4, v5, v6}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v1

    const v4, 0x3fc90fdb

    sub-float v5, v1, v4

    add-float v10, v1, v4

    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    const/4 v6, 0x2

    int-to-float v6, v6

    mul-float v6, v6, p4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v0, v6, v7}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    neg-float v7, v2

    float-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v4, v0, v7, v8}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    new-instance v7, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v7, v6, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v7

    const/high16 v8, 0x3f400000    # 0.75f

    mul-float/2addr v7, v8

    neg-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v4, v6, v7, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v0, v7, v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v0, v2, v7}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    :cond_1
    return-object v3
.end method

.method public static synthetic createCloseAndFilledArrowPath$default(Landroid/graphics/Path;ZZFFILjava/lang/Object;)Landroid/graphics/Path;
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    sget-object p3, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 p6, 0x41600000    # 14.0f

    invoke-virtual {p3, p6}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createCloseAndFilledArrowPath(Landroid/graphics/Path;ZZFF)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final createHitTestPath(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Landroid/graphics/Path;
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotspotRadius"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 4
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 5
    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-object v0
.end method

.method public static final createHitTestPath(Ljava/util/List;Ljava/lang/Number;Z)Landroid/graphics/Path;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            "Z)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotspotRadius"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-object p0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 9
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createHitTestPath(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v1, v0, v1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createPathFrom$default(Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p0

    .line 11
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getFillStrokePath(Landroid/graphics/Path;Ljava/lang/Number;Z)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createHitTestPath$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;ILjava/lang/Object;)Landroid/graphics/Path;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createHitTestPath(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createHitTestPath$default(Ljava/util/List;Ljava/lang/Number;ZILjava/lang/Object;)Landroid/graphics/Path;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 4
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createHitTestPath(Ljava/util/List;Ljava/lang/Number;Z)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final createLineAndStrokedArrowPath(Landroid/graphics/Path;ZZFF)Landroid/graphics/Path;
    .locals 16
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p4

    sget-object v2, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    new-instance v3, Landroid/graphics/PathMeasure;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v0, 0x2

    new-array v5, v0, [F

    new-array v0, v0, [F

    const v6, 0x3f060a92

    const v7, 0x3fc90fdb

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v3, v9, v5, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    new-instance v10, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v11, v5, v4

    aget v12, v5, v8

    invoke-direct {v10, v11, v12}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v11, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    new-instance v12, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v12, v9, v9}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v13, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v14, v0, v4

    aget v15, v0, v8

    invoke-direct {v13, v14, v15}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-direct {v11, v12, v13}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v11}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v11

    sub-float v12, v11, v7

    add-float v13, v11, v7

    sget-object v14, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    float-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    double-to-float v7, v7

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v14, v10, v7, v8}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v14, v7, v8, v11}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v14, v7, v11, v12}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v11

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v8

    invoke-virtual {v2, v11, v8}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v8

    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v10

    invoke-virtual {v2, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v8

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v7

    invoke-virtual {v2, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    invoke-virtual {v3, v7, v5, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v7, v5, v4

    const/4 v8, 0x1

    aget v5, v5, v8

    invoke-direct {v3, v7, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v5, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    new-instance v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v7, v9, v9}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v9, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v4, v0, v4

    aget v0, v0, v8

    invoke-direct {v9, v4, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-direct {v5, v7, v9}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v0

    const v4, 0x3fc90fdb

    sub-float v5, v0, v4

    add-float v7, v0, v4

    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    neg-float v8, v1

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    double-to-float v6, v9

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v3, v6, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v0, v6, v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v0, v1, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    return-object v2
.end method

.method public static synthetic createLineAndStrokedArrowPath$default(Landroid/graphics/Path;ZZFFILjava/lang/Object;)Landroid/graphics/Path;
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    sget-object p3, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 p6, 0x40e00000    # 7.0f

    invoke-virtual {p3, p6}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createLineAndStrokedArrowPath(Landroid/graphics/Path;ZZFF)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final createLineArrowPath(Landroid/graphics/Path;ZZLjava/lang/Number;)Landroid/graphics/Path;
    .locals 17
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "arrowSize"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v3, Landroid/graphics/PathMeasure;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v0, 0x2

    new-array v5, v0, [F

    new-array v0, v0, [F

    const v6, 0x3f860a92

    const v7, 0x3fc90fdb

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v3, v9, v5, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    new-instance v10, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v11, v5, v4

    aget v12, v5, v8

    invoke-direct {v10, v11, v12}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v11, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    new-instance v12, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v12, v9, v9}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v13, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v14, v0, v4

    aget v15, v0, v8

    invoke-direct {v13, v14, v15}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-direct {v11, v12, v13}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v11}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v11

    sub-float v12, v11, v7

    add-float v13, v11, v7

    sget-object v14, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->floatValue()F

    move-result v15

    float-to-double v7, v6

    move-object/from16 v16, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v14, v10, v4, v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->floatValue()F

    move-result v5

    move-object/from16 p1, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v14, v4, v5, v9}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v14, v4, v7, v8}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-virtual {v1, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v7

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_0
    move-object/from16 v16, v5

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    move-object/from16 v5, v16

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v4, 0x0

    aget v7, v5, v4

    const/4 v8, 0x1

    aget v5, v5, v8

    invoke-direct {v3, v7, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v5, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    new-instance v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v9, 0x0

    invoke-direct {v7, v9, v9}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v9, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v4, v0, v4

    aget v0, v0, v8

    invoke-direct {v9, v4, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-direct {v5, v7, v9}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v0

    const v4, 0x3fc90fdb

    sub-float v5, v0, v4

    add-float v7, v0, v4

    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->floatValue()F

    move-result v8

    neg-float v8, v8

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v6, v11

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v3, v6, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v8, v11

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v0, v6, v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v0, v2, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    return-object v1
.end method

.method public static synthetic createLineArrowPath$default(Landroid/graphics/Path;ZZLjava/lang/Number;ILjava/lang/Object;)Landroid/graphics/Path;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 p4, 0x41600000    # 14.0f

    invoke-virtual {p3, p4}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createLineArrowPath(Landroid/graphics/Path;ZZLjava/lang/Number;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final createPathFrom(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Landroid/graphics/Path;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Path;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "points"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic createPathFrom$default(Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/graphics/Path;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/geometry/extension/PathKt$createPathFrom$1;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/geometry/extension/PathKt$createPathFrom$1;-><init>(Ljava/util/List;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createPathFrom(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final createRegion(Landroid/graphics/Path;Landroid/graphics/RectF;Z)Landroid/graphics/Region;
    .locals 3
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    :cond_0
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    new-instance v1, Landroid/graphics/Region;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-direct {v1, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    if-eqz p2, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic createRegion$default(Landroid/graphics/Path;Landroid/graphics/RectF;ZILjava/lang/Object;)Landroid/graphics/Region;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createRegion(Landroid/graphics/Path;Landroid/graphics/RectF;Z)Landroid/graphics/Region;

    move-result-object p0

    return-object p0
.end method

.method public static final cubicTo(Landroid/graphics/Path;Ljava/util/List;)V
    .locals 14
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v0

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 v2, v1, 0x3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    add-int/lit8 v4, v1, 0x2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    add-int/lit8 v5, v1, 0x4

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v5

    :goto_1
    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    add-float/2addr v5, v6

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float v12, v5, v6

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    add-float/2addr v5, v2

    div-float v13, v5, v6

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v8

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v9

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v10

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v11

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_2
    if-eq v1, v0, :cond_3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final firstSegment(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getSegmentByIndex(Landroid/graphics/Path;I)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final forEachPoint(Landroid/graphics/Path;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;)V
    .locals 17
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "step"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "consumer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    add-float/2addr v6, v7

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v0, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v0, 0x2

    new-array v7, v0, [F

    new-array v0, v0, [F

    move v8, v4

    :goto_1
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->floatValue()F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    sget-object v10, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-lez v10, :cond_4

    invoke-static {v4, v9, v10}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v9

    if-ltz v9, :cond_2

    move v11, v4

    :goto_2
    sget-object v13, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    int-to-float v14, v11

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    add-float/2addr v5, v13

    invoke-virtual {v2, v13, v7, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v13, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;

    invoke-direct {v13}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;-><init>()V

    new-instance v14, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v15, v7, v4

    aget v4, v7, v12

    invoke-direct {v14, v15, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v13, v14}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    aget v4, v0, v12

    float-to-double v14, v4

    const/4 v4, 0x0

    aget v12, v0, v4

    move/from16 v16, v5

    float-to-double v4, v12

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v13, v4}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setDirection(F)V

    move/from16 v5, v16

    invoke-virtual {v13, v5}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setCurrentLength(F)V

    invoke-virtual {v13, v6}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setTotalLength(F)V

    invoke-virtual {v13, v8}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setSegmentIndex(I)V

    invoke-interface {v1, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eq v11, v9, :cond_2

    add-int/2addr v11, v10

    const/4 v4, 0x0

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step must be positive, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic forEachPoint$default(Landroid/graphics/Path;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    const-string v4, "<this>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "step"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "consumer"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/PathMeasure;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    add-float/2addr v7, v8

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v0, 0x2

    new-array v8, v0, [F

    new-array v0, v0, [F

    move v9, v5

    :goto_2
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v10, v10

    sget-object v11, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-lez v11, :cond_5

    invoke-static {v5, v10, v11}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v10

    if-ltz v10, :cond_3

    move v12, v5

    :goto_3
    sget-object v13, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    int-to-float v14, v12

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    add-float/2addr v6, v13

    invoke-virtual {v4, v13, v8, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v13

    if-eqz v13, :cond_2

    new-instance v13, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;

    invoke-direct {v13}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;-><init>()V

    new-instance v14, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v15, v8, v5

    aget v5, v8, v2

    invoke-direct {v14, v15, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v13, v14}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    aget v5, v0, v2

    float-to-double v14, v5

    const/4 v5, 0x0

    aget v2, v0, v5

    move/from16 p0, v6

    float-to-double v5, v2

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v2, v5

    invoke-virtual {v13, v2}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setDirection(F)V

    move/from16 v6, p0

    invoke-virtual {v13, v6}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setCurrentLength(F)V

    invoke-virtual {v13, v7}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setTotalLength(F)V

    invoke-virtual {v13, v9}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setSegmentIndex(I)V

    invoke-interface {v1, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v12, v10, :cond_3

    add-int/2addr v12, v11

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    const/4 v2, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step must be positive, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final forEachRegionRect(Landroid/graphics/Path;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Rect;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/PathKt;->computeBounds(Landroid/graphics/Path;Z)Landroid/graphics/RectF;

    move-result-object v1

    new-instance v2, Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-direct {v2, v3}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/RegionIterator;

    invoke-direct {v1, v0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    :goto_0
    invoke-virtual {v1, p0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final getCenterPointByPosition(Landroid/graphics/Path;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 4
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 p0, 0x2

    new-array v2, p0, [F

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    int-to-float p0, p0

    div-float/2addr v3, p0

    const/4 p0, 0x0

    invoke-virtual {v0, v3, v2, p0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v0, v2, v1

    const/4 v1, 0x1

    aget v1, v2, v1

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    return-object p0
.end method

.method public static final getFillStrokePath(Landroid/graphics/Path;Ljava/lang/Number;Z)Landroid/graphics/Path;
    .locals 2
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strokeWidth"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    if-eqz p2, :cond_0

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, p0, v0}, Landroid/graphics/Paint;->getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z

    invoke-virtual {p0}, Landroid/graphics/Path;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/PathKt;->copy(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static synthetic getFillStrokePath$default(Landroid/graphics/Path;Ljava/lang/Number;ZILjava/lang/Object;)Landroid/graphics/Path;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getFillStrokePath(Landroid/graphics/Path;Ljava/lang/Number;Z)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final getFirstPoint(Landroid/graphics/Path;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getPercentPoint(Landroid/graphics/Path;F)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public static final getLastPoint(Landroid/graphics/Path;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getPercentPoint(Landroid/graphics/Path;F)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public static final getPercentPoint(Landroid/graphics/Path;F)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 5
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {p0}, Landroid/graphics/Path;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p0

    const/4 v2, 0x0

    cmpg-float p0, p0, v2

    const/4 v2, 0x1

    if-nez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    new-array v3, p0, [F

    new-array p0, p0, [F

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v0, v4, v3, p0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget p1, v3, v1

    aget v0, v3, v2

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getPointPosition(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;I)Ljava/lang/Float;
    .locals 17
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "point"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v0, 0x2

    new-array v6, v0, [F

    new-array v0, v0, [F

    move v7, v3

    :goto_1
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    move/from16 v9, p2

    int-to-float v10, v9

    add-float/2addr v8, v10

    float-to-int v8, v8

    sget-object v10, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-lez v10, :cond_4

    invoke-static {v3, v8, v10}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v8

    if-ltz v8, :cond_2

    move v11, v3

    :goto_2
    sget-object v13, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    int-to-float v14, v11

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    add-float/2addr v4, v13

    invoke-virtual {v2, v13, v6, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v13, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;

    invoke-direct {v13}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;-><init>()V

    new-instance v14, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v15, v6, v3

    aget v3, v6, v12

    invoke-direct {v14, v15, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v13, v14}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    aget v3, v0, v12

    float-to-double v14, v3

    const/4 v3, 0x0

    aget v12, v0, v3

    move/from16 v16, v4

    float-to-double v3, v12

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v13, v3}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setDirection(F)V

    move/from16 v4, v16

    invoke-virtual {v13, v4}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setCurrentLength(F)V

    invoke-virtual {v13, v5}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setTotalLength(F)V

    invoke-virtual {v13, v7}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setSegmentIndex(I)V

    invoke-virtual {v13}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->getPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->equalXY(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v13}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->getCurrentLength()F

    move-result v0

    invoke-virtual {v13}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->getTotalLength()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_1
    if-eq v11, v8, :cond_2

    add-int/2addr v11, v10

    const/4 v3, 0x0

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step must be positive, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic getPointPosition$default(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;IILjava/lang/Object;)Ljava/lang/Float;
    .locals 0

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getPointPosition(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;I)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static final getQuadToEndPos(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static synthetic getQuadToEndPos$default(FFFILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const p2, 0x3f333333    # 0.7f

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getQuadToEndPos(FFF)F

    move-result p0

    return p0
.end method

.method public static final getSegmentByIndex(Landroid/graphics/Path;I)Landroid/graphics/Path;
    .locals 4
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 p0, 0x1

    sub-int/2addr p1, p0

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    invoke-virtual {v1, v2, p1, v0, p0}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    return-object v0
.end method

.method public static final getUnionRegionPath(Ljava/util/List;)Landroid/graphics/Path;
    .locals 6
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/SelectionRegion;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/SelectionRegion;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v3, v2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->concatTransform(Landroid/graphics/Path;[Landroid/graphics/Matrix;)Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {v0, p0, v2, v2, p0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getFillStrokePath$default(Landroid/graphics/Path;Ljava/lang/Number;ZILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final hitTestPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .locals 3
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 1
    invoke-static {p0, v0, v1, v2, v0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createRegion$default(Landroid/graphics/Path;Landroid/graphics/RectF;ZILjava/lang/Object;)Landroid/graphics/Region;

    move-result-object p0

    .line 2
    invoke-static {p1, v0, v1, v2, v0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createRegion$default(Landroid/graphics/Path;Landroid/graphics/RectF;ZILjava/lang/Object;)Landroid/graphics/Region;

    move-result-object p1

    .line 3
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result p0

    return p0
.end method

.method public static final hitTestPath(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;Z)Z
    .locals 1
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitTestRadius"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strokeWidth"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p3, p4}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getFillStrokePath(Landroid/graphics/Path;Ljava/lang/Number;Z)Landroid/graphics/Path;

    move-result-object p0

    const/4 p3, 0x0

    const/4 p4, 0x3

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0, p3, p4, v0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createRegion$default(Landroid/graphics/Path;Landroid/graphics/RectF;ZILjava/lang/Object;)Landroid/graphics/Region;

    move-result-object p3

    const p4, 0x10100ac

    const v0, 0x10100ad

    .line 6
    invoke-virtual {p3, p4, v0}, Landroid/graphics/Region;->contains(II)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    return p0

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createHitTestPath(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Landroid/graphics/Path;

    move-result-object p1

    .line 8
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->hitTestPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z

    move-result p0

    return p0
.end method

.method public static final hitTestPath(Landroid/graphics/Path;Ljava/util/List;Ljava/lang/Number;Ljava/lang/Number;Z)Z
    .locals 1
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            "Z)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitTestRadius"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strokeWidth"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p0, p3, p4}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getFillStrokePath(Landroid/graphics/Path;Ljava/lang/Number;Z)Landroid/graphics/Path;

    move-result-object p0

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 10
    invoke-static {p1, p2, v0, p3, p4}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createHitTestPath$default(Ljava/util/List;Ljava/lang/Number;ZILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->hitTestPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic hitTestPath$default(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    .line 2
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x1

    .line 3
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->hitTestPath(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic hitTestPath$default(Landroid/graphics/Path;Ljava/util/List;Ljava/lang/Number;Ljava/lang/Number;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 4
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    .line 5
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x1

    .line 6
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->hitTestPath(Landroid/graphics/Path;Ljava/util/List;Ljava/lang/Number;Ljava/lang/Number;Z)Z

    move-result p0

    return p0
.end method

.method public static final isPathClosed(Landroid/graphics/Path;Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 8
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threshold"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getFirstPoint(Landroid/graphics/Path;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, p0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 p0, 0x2

    new-array v3, p0, [F

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    int-to-float p0, p0

    div-float/2addr v4, p0

    float-to-int p0, v4

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    sget-object v5, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, p1, v7}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {v4, p0}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, p0

    check-cast p1, Lkotlin/collections/IntIterator;

    invoke-virtual {p1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result p1

    sget-object v4, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    move p1, v1

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v4, v3, v1

    aget v5, v3, v6

    invoke-direct {p1, v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v4, v0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distanceTo(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v4

    cmpg-float p1, p1, v4

    if-gez p1, :cond_3

    move p1, v6

    :goto_0
    if-eqz p1, :cond_2

    move v1, v6

    :cond_5
    :goto_1
    return v1
.end method

.method public static synthetic isPathClosed$default(Landroid/graphics/Path;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 p4, 0x40000000    # 2.0f

    invoke-virtual {p1, p4}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 p3, 0x40a00000    # 5.0f

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->isPathClosed(Landroid/graphics/Path;Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static final isPointNear(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 17
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "point"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "step"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "threshold"

    move-object/from16 v4, p3

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    add-float/2addr v7, v8

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v0, 0x2

    new-array v8, v0, [F

    new-array v0, v0, [F

    move v9, v5

    :goto_1
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->floatValue()F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v10, v10

    sget-object v11, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-lez v11, :cond_4

    invoke-static {v5, v10, v11}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v10

    if-ltz v10, :cond_2

    move v12, v5

    :goto_2
    sget-object v14, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    int-to-float v15, v12

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    add-float/2addr v6, v13

    invoke-virtual {v2, v13, v8, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v13, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;

    invoke-direct {v13}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;-><init>()V

    new-instance v14, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v15, v8, v5

    const/16 v16, 0x1

    aget v5, v8, v16

    invoke-direct {v14, v15, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v13, v14}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    aget v5, v0, v16

    float-to-double v14, v5

    const/4 v5, 0x0

    aget v3, v0, v5

    float-to-double v3, v3

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v13, v3}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setDirection(F)V

    invoke-virtual {v13, v6}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setCurrentLength(F)V

    invoke-virtual {v13, v7}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setTotalLength(F)V

    invoke-virtual {v13, v9}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setSegmentIndex(I)V

    sget-object v3, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v13}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->getPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->floatValue()F

    move-result v5

    float-to-double v13, v5

    cmpg-double v3, v3, v13

    if-gez v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x1

    if-eq v12, v10, :cond_2

    add-int/2addr v12, v11

    move-object/from16 v4, p3

    move v13, v3

    const/4 v5, 0x0

    move-object/from16 v3, p2

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    return v3

    :cond_3
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step must be positive, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic isPointNear$default(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-virtual {p2, p5}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 p4, 0x40000000    # 2.0f

    invoke-virtual {p3, p4}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->isPointNear(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static final lineTo(Landroid/graphics/Path;Ljava/util/List;)V
    .locals 2
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final realQuadTo(Landroid/graphics/Path;Ljava/util/List;I)V
    .locals 7
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez p2, :cond_4

    const/4 v1, 0x0

    invoke-static {v1, v0, p2}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v0

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 v2, v1, 0x2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    add-int/lit8 v4, v1, 0x3

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    add-float/2addr v4, v5

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    add-float/2addr v6, v2

    div-float/2addr v6, v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    if-eq v1, v0, :cond_3

    add-int/2addr v1, p2

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step must be positive, was: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic realQuadTo$default(Landroid/graphics/Path;Ljava/util/List;IILjava/lang/Object;)V
    .locals 0

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->realQuadTo(Landroid/graphics/Path;Ljava/util/List;I)V

    return-void
.end method

.method public static final resample(Landroid/graphics/Path;Ljava/lang/Number;)Ljava/util/List;
    .locals 17
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "step"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/graphics/PathMeasure;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    add-float/2addr v6, v7

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/PathMeasure;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v0, 0x2

    new-array v7, v0, [F

    new-array v0, v0, [F

    move v8, v4

    :goto_1
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->floatValue()F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    sget-object v10, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-lez v10, :cond_4

    invoke-static {v4, v9, v10}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v9

    if-ltz v9, :cond_2

    move v11, v4

    :goto_2
    sget-object v13, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    int-to-float v14, v11

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    add-float/2addr v5, v13

    invoke-virtual {v3, v13, v7, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v13, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;

    invoke-direct {v13}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;-><init>()V

    new-instance v14, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v15, v7, v4

    aget v4, v7, v12

    invoke-direct {v14, v15, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v13, v14}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    aget v4, v0, v12

    float-to-double v14, v4

    const/4 v4, 0x0

    aget v12, v0, v4

    move/from16 v16, v5

    float-to-double v4, v12

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v13, v4}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setDirection(F)V

    move/from16 v5, v16

    invoke-virtual {v13, v5}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setCurrentLength(F)V

    invoke-virtual {v13, v6}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setTotalLength(F)V

    invoke-virtual {v13, v8}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setSegmentIndex(I)V

    invoke-virtual {v13}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->getPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eq v11, v9, :cond_2

    add-int/2addr v11, v10

    const/4 v4, 0x0

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v4

    if-nez v4, :cond_3

    return-object v1

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step must be positive, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic resample$default(Landroid/graphics/Path;Ljava/lang/Number;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->resample(Landroid/graphics/Path;Ljava/lang/Number;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final resampleMultiSegmentPath(Landroid/graphics/Path;Ljava/lang/Number;)Ljava/util/List;
    .locals 17
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "step"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/graphics/PathMeasure;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    add-float/2addr v6, v7

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/PathMeasure;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v0, 0x2

    new-array v7, v0, [F

    new-array v0, v0, [F

    move v8, v4

    :goto_1
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->floatValue()F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    sget-object v10, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-lez v10, :cond_8

    invoke-static {v4, v9, v10}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v9

    if-ltz v9, :cond_2

    move v11, v4

    :goto_2
    sget-object v13, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    int-to-float v14, v11

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    add-float/2addr v5, v13

    invoke-virtual {v3, v13, v7, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v13, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;

    invoke-direct {v13}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;-><init>()V

    new-instance v14, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v15, v7, v4

    aget v4, v7, v12

    invoke-direct {v14, v15, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v13, v14}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    aget v4, v0, v12

    float-to-double v14, v4

    const/4 v4, 0x0

    aget v12, v0, v4

    move/from16 v16, v5

    float-to-double v4, v12

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v13, v4}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setDirection(F)V

    move/from16 v5, v16

    invoke-virtual {v13, v5}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setCurrentLength(F)V

    invoke-virtual {v13, v6}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setTotalLength(F)V

    invoke-virtual {v13, v8}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->setSegmentIndex(I)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eq v11, v9, :cond_2

    add-int/2addr v11, v10

    const/4 v4, 0x0

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->getSegmentIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->getPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    return-object v1

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step must be positive, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic resampleMultiSegmentPath$default(Landroid/graphics/Path;Ljava/lang/Number;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->resampleMultiSegmentPath(Landroid/graphics/Path;Ljava/lang/Number;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final saveToDebugFile(Landroid/graphics/Path;Ljava/lang/String;FIILcom/onyx/android/sdk/base/data/TouchPoint;FI)V
    .locals 8
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "circlePoint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/PathKt;->computeBounds(Landroid/graphics/Path;Z)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v3, v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v3, "createBitmap(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iget v5, v0, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v0, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v7

    add-float/2addr v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3, p0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v4, p4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, p0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v4, p7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {p5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {v3, p0, p2, p6, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    const/4 p2, 0x0

    invoke-static {v1, p1, p0, v2, p2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->save$default(Landroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/Object;)Z

    return-void
.end method

.method public static synthetic saveToDebugFile$default(Landroid/graphics/Path;Ljava/lang/String;FIILcom/onyx/android/sdk/base/data/TouchPoint;FIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_1

    const v2, -0xffff01

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    const/high16 v3, -0x10000

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_3

    sget-object v4, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v1, p6

    :goto_4
    and-int/lit8 v5, p8, 0x40

    if-eqz v5, :cond_5

    const v5, -0xff0100

    goto :goto_5

    :cond_5
    move v5, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move p4, v0

    move p5, v2

    move p6, v3

    move-object p7, v4

    move p8, v1

    move p9, v5

    invoke-static/range {p2 .. p9}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->saveToDebugFile(Landroid/graphics/Path;Ljava/lang/String;FIILcom/onyx/android/sdk/base/data/TouchPoint;FI)V

    return-void
.end method

.method public static final splitByPath(Landroid/graphics/Path;Landroid/graphics/Path;FZ)Lcom/onyx/android/sdk/geometry/data/SplitResult;
    .locals 7
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "erasePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getFillStrokePath(Landroid/graphics/Path;Ljava/lang/Number;Z)Landroid/graphics/Path;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x3

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3, v0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createRegion$default(Landroid/graphics/Path;Landroid/graphics/RectF;ZILjava/lang/Object;)Landroid/graphics/Region;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->splitByRegion$default(Landroid/graphics/Path;Landroid/graphics/Region;IIILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/SplitResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic splitByPath$default(Landroid/graphics/Path;Landroid/graphics/Path;FZILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/SplitResult;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->splitByPath(Landroid/graphics/Path;Landroid/graphics/Path;FZ)Lcom/onyx/android/sdk/geometry/data/SplitResult;

    move-result-object p0

    return-object p0
.end method

.method public static final splitByRegion(Landroid/graphics/Path;Landroid/graphics/Region;II)Lcom/onyx/android/sdk/geometry/data/SplitResult;
    .locals 5
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Region;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/SplitResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/SplitResult;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->resample(Landroid/graphics/Path;Ljava/lang/Number;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p3, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/SplitResult;->addSplitSegment(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/SplitResult;->addRemoveSegment(Ljava/util/List;)V

    :cond_3
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p2

    move p2, v3

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, p3, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/SplitResult;->addSplitSegment(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/SplitResult;->addRemoveSegment(Ljava/util/List;)V

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static synthetic splitByRegion$default(Landroid/graphics/Path;Landroid/graphics/Region;IIILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/SplitResult;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x2

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->splitByRegion(Landroid/graphics/Path;Landroid/graphics/Region;II)Lcom/onyx/android/sdk/geometry/data/SplitResult;

    move-result-object p0

    return-object p0
.end method
