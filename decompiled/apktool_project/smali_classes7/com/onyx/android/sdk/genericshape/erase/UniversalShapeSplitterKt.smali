.class public final Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUniversalShapeSplitter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalShapeSplitter.kt\ncom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 7 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,626:1\n13309#2:627\n13310#2:630\n13309#2,2:645\n13309#2:680\n13310#2:683\n1855#3,2:628\n1855#3,2:631\n1549#3:633\n1620#3,2:634\n1622#3:638\n1549#3:639\n1620#3,3:640\n1855#3,2:643\n1855#3,2:647\n1855#3,2:650\n1603#3,9:652\n1855#3:661\n1856#3:663\n1612#3:664\n1603#3,9:665\n1855#3:674\n1856#3:676\n1612#3:677\n1855#3,2:681\n1855#3,2:684\n673#4,2:636\n1#5:649\n1#5:662\n1#5:675\n37#6,2:678\n37#6,2:686\n37#6,2:689\n26#7:688\n*S KotlinDebug\n*F\n+ 1 UniversalShapeSplitter.kt\ncom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt\n*L\n211#1:627\n211#1:630\n388#1:645,2\n526#1:680\n526#1:683\n213#1:628,2\n241#1:631,2\n264#1:633\n264#1:634,2\n264#1:638\n323#1:639\n323#1:640,3\n369#1:643,2\n403#1:647,2\n497#1:650,2\n508#1:652,9\n508#1:661\n508#1:663\n508#1:664\n509#1:665,9\n509#1:674\n509#1:676\n509#1:677\n545#1:681,2\n569#1:684,2\n278#1:636,2\n508#1:662\n509#1:675\n510#1:678,2\n591#1:686,2\n609#1:689,2\n599#1:688\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a=\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0002\u0010\u000b\u001a8\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002\u001a,\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017*\u00020\u00012\u001a\u0010\u0019\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0008\u0012\u00060\u0007j\u0002`\u001b0\u0006j\u0002`\u001c0\u001a\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020\u001f2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020\"2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020\u00102\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020#2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020$2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020%2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020&2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020\'2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020(2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020)2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020*2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020+2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020,2\u0006\u0010 \u001a\u00020!\u001a=\u0010-\u001a\u00020\u001e*\u00020\u00012\"\u0010\u0005\u001a\u001e\u0012\u0012\u0012\u0010\u0012\u0008\u0012\u00060\u0007j\u0002`\u001b0\u0006j\u0002`\u001c\u0018\u00010\u0006j\u0004\u0018\u0001`.2\u0006\u0010 \u001a\u00020!H\u0002\u00a2\u0006\u0002\u0010/\u001a\u001e\u00100\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0008\u0012\u00060\u0007j\u0002`\u001b0\u0006j\u0002`\u001c0\u0017*\u000201\u00a8\u00062"
    }
    d2 = {
        "createSplitArrowSegment",
        "Lcom/onyx/android/sdk/genericshape/Geometry;",
        "geometry",
        "points",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "coordinates",
        "",
        "",
        "hasStartArrow",
        "",
        "hasEndArrow",
        "(Lcom/onyx/android/sdk/genericshape/Geometry;Lcom/onyx/android/sdk/base/data/TouchPointList;[[FZZ)Lcom/onyx/android/sdk/genericshape/Geometry;",
        "updateCurveFeatureSubType",
        "serializedFeature",
        "Lcom/alibaba/fastjson2/JSONObject;",
        "originFeature",
        "Lcom/onyx/android/sdk/genericshape/Curve;",
        "originStart",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "originEnd",
        "splitStart",
        "splitEnd",
        "joinConnectedLineString",
        "",
        "Lcom/onyx/android/sdk/genericshape/IGeometry;",
        "coordinateList",
        "",
        "Lcom/onyx/android/sdk/genericshape/Position;",
        "Lcom/onyx/android/sdk/genericshape/Line;",
        "splitShape",
        "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;",
        "Lcom/onyx/android/sdk/genericshape/Arc;",
        "eraseBean",
        "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;",
        "Lcom/onyx/android/sdk/genericshape/BidirectionalLine;",
        "Lcom/onyx/android/sdk/genericshape/DirectionLine;",
        "Lcom/onyx/android/sdk/genericshape/Feature;",
        "Lcom/onyx/android/sdk/genericshape/FeatureCollection;",
        "Lcom/onyx/android/sdk/genericshape/LineString;",
        "Lcom/onyx/android/sdk/genericshape/MultiLineString;",
        "Lcom/onyx/android/sdk/genericshape/Oval;",
        "Lcom/onyx/android/sdk/genericshape/Polygon;",
        "Lcom/onyx/android/sdk/genericshape/Polyline;",
        "Lcom/onyx/android/sdk/genericshape/Rectangle;",
        "Lcom/onyx/android/sdk/genericshape/WaveLine;",
        "splitShapeByLines",
        "Lcom/onyx/android/sdk/genericshape/Lines;",
        "(Lcom/onyx/android/sdk/genericshape/Geometry;[[[FLcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;",
        "toRectangleLines",
        "Lcom/onyx/android/sdk/genericshape/MultiPoint;",
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
        "SMAP\nUniversalShapeSplitter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalShapeSplitter.kt\ncom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 7 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,626:1\n13309#2:627\n13310#2:630\n13309#2,2:645\n13309#2:680\n13310#2:683\n1855#3,2:628\n1855#3,2:631\n1549#3:633\n1620#3,2:634\n1622#3:638\n1549#3:639\n1620#3,3:640\n1855#3,2:643\n1855#3,2:647\n1855#3,2:650\n1603#3,9:652\n1855#3:661\n1856#3:663\n1612#3:664\n1603#3,9:665\n1855#3:674\n1856#3:676\n1612#3:677\n1855#3,2:681\n1855#3,2:684\n673#4,2:636\n1#5:649\n1#5:662\n1#5:675\n37#6,2:678\n37#6,2:686\n37#6,2:689\n26#7:688\n*S KotlinDebug\n*F\n+ 1 UniversalShapeSplitter.kt\ncom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt\n*L\n211#1:627\n211#1:630\n388#1:645,2\n526#1:680\n526#1:683\n213#1:628,2\n241#1:631,2\n264#1:633\n264#1:634,2\n264#1:638\n323#1:639\n323#1:640,3\n369#1:643,2\n403#1:647,2\n497#1:650,2\n508#1:652,9\n508#1:661\n508#1:663\n508#1:664\n509#1:665,9\n509#1:674\n509#1:676\n509#1:677\n545#1:681,2\n569#1:684,2\n278#1:636,2\n508#1:662\n509#1:675\n510#1:678,2\n591#1:686,2\n609#1:689,2\n599#1:688\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic access$createSplitArrowSegment(Lcom/onyx/android/sdk/genericshape/Geometry;Lcom/onyx/android/sdk/base/data/TouchPointList;[[FZZ)Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->createSplitArrowSegment(Lcom/onyx/android/sdk/genericshape/Geometry;Lcom/onyx/android/sdk/base/data/TouchPointList;[[FZZ)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    return-object p0
.end method

.method private static final createSplitArrowSegment(Lcom/onyx/android/sdk/genericshape/Geometry;Lcom/onyx/android/sdk/base/data/TouchPointList;[[FZZ)Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 1

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const-string p3, "BidirectionalLine"

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    const-string p3, "LineString"

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->reverse([Ljava/lang/Object;)V

    :cond_2
    const-string p3, "DirectionLine"

    :goto_0
    sget-object p4, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    invoke-virtual {p4, p0, p1, p3}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->parseSegmentGeometry(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/base/data/TouchPointList;Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    instance-of p1, p0, Lcom/onyx/android/sdk/genericshape/LineString;

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    move-object p1, p0

    check-cast p1, Lcom/onyx/android/sdk/genericshape/LineString;

    goto :goto_1

    :cond_3
    move-object p1, p3

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/genericshape/LineString;->setCoordinates([[F)V

    :cond_4
    instance-of p1, p0, Lcom/onyx/android/sdk/genericshape/DirectionLine;

    if-eqz p1, :cond_5

    move-object p1, p0

    check-cast p1, Lcom/onyx/android/sdk/genericshape/DirectionLine;

    goto :goto_2

    :cond_5
    move-object p1, p3

    :goto_2
    const/4 p4, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/genericshape/DirectionLine;->setCoordinates([[F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/genericshape/DirectionLine;->setDrawStartArrow(Z)V

    invoke-virtual {p1, p4}, Lcom/onyx/android/sdk/genericshape/DirectionLine;->setDrawEndArrow(Z)V

    :cond_6
    instance-of p1, p0, Lcom/onyx/android/sdk/genericshape/BidirectionalLine;

    if-eqz p1, :cond_7

    move-object p3, p0

    check-cast p3, Lcom/onyx/android/sdk/genericshape/BidirectionalLine;

    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {p3, p2}, Lcom/onyx/android/sdk/genericshape/DirectionLine;->setCoordinates([[F)V

    invoke-virtual {p3, p4}, Lcom/onyx/android/sdk/genericshape/DirectionLine;->setDrawStartArrow(Z)V

    invoke-virtual {p3, p4}, Lcom/onyx/android/sdk/genericshape/DirectionLine;->setDrawEndArrow(Z)V

    :cond_8
    return-object p0
.end method

.method public static final joinConnectedLineString(Lcom/onyx/android/sdk/genericshape/Geometry;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0    # Lcom/onyx/android/sdk/genericshape/Geometry;
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
            "Lcom/onyx/android/sdk/genericshape/Geometry;",
            "Ljava/util/List<",
            "[[F>;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/genericshape/IGeometry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinateList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/genericshape/Polygon;->Companion:Lcom/onyx/android/sdk/genericshape/Polygon$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/genericshape/Polygon$Companion;->resortLineCoordinateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    new-instance v3, Lcom/onyx/android/sdk/genericshape/Polyline;

    invoke-direct {v3}, Lcom/onyx/android/sdk/genericshape/Polyline;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Geometry;->getFromShapeType()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/genericshape/Geometry;->setFromShapeType(I)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[F

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->lastOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-eqz p0, :cond_1

    const/4 v4, 0x2

    new-array v5, v4, [[F

    move v6, v0

    :goto_0
    if-ge v6, v4, :cond_0

    aput-object p0, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    :cond_1
    new-array p0, v0, [[[F

    invoke-interface {v2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[[F

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/genericshape/Polyline;->setCoordinates([[[F)V

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v1
.end method

.method public static final splitShape(Lcom/onyx/android/sdk/genericshape/Arc;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/genericshape/Arc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Arc;->loadRenderPath()Landroid/graphics/Path;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    new-instance v2, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$1;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$1;-><init>(Lcom/onyx/android/sdk/genericshape/Arc;)V

    invoke-virtual {v1, p0, p1, v0, v2}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->split(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Landroid/graphics/Path;Lkotlin/jvm/functions/Function3;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method

.method public static final splitShape(Lcom/onyx/android/sdk/genericshape/BidirectionalLine;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 6
    .param p0    # Lcom/onyx/android/sdk/genericshape/BidirectionalLine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/DirectionLine;->getCoordinates()[[F

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-eqz v0, :cond_0

    .line 147
    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v5, v0, v2

    aget v0, v0, v1

    invoke-direct {v4, v5, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/DirectionLine;->getCoordinates()[[F

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->lastOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-eqz v0, :cond_1

    .line 149
    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v2, v0, v2

    aget v0, v0, v1

    invoke-direct {v3, v2, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    .line 150
    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    .line 151
    sget-object v1, Lcom/onyx/android/sdk/genericshape/LineString;->Companion:Lcom/onyx/android/sdk/genericshape/LineString$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/DirectionLine;->getCoordinates()[[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/genericshape/LineString$Companion;->loadRenderPath([[F)Landroid/graphics/Path;

    move-result-object v1

    .line 152
    new-instance v2, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$2;

    invoke-direct {v2, v4, v3, p0}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$2;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/genericshape/BidirectionalLine;)V

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->split(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Landroid/graphics/Path;Lkotlin/jvm/functions/Function3;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method

.method public static final splitShape(Lcom/onyx/android/sdk/genericshape/Curve;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 20
    .param p0    # Lcom/onyx/android/sdk/genericshape/Curve;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v6, p0

    const-string v0, "<this>"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v7, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    invoke-direct {v7}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;-><init>()V

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Curve;->getGeometry()Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/onyx/android/sdk/genericshape/IGeometry;->loadSelectionPoints()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 39
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x3

    if-ge v2, v8, :cond_1

    return-object v7

    :cond_1
    const/4 v2, 0x0

    .line 40
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v10, 0x2

    .line 41
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x1

    .line 42
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Curve;->loadRenderPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->firstSegment(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v0

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->getTargetShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v13

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->getErasePath()Landroid/graphics/Path;

    move-result-object v15

    new-array v1, v3, [Landroid/graphics/Matrix;

    aput-object v13, v1, v2

    .line 46
    invoke-static {v0, v1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->concatTransform(Landroid/graphics/Path;[Landroid/graphics/Matrix;)Landroid/graphics/Path;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->splitByPath$default(Landroid/graphics/Path;Landroid/graphics/Path;FZILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/SplitResult;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SplitResult;->getSplitSegmentList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 48
    new-instance v14, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/List;

    .line 51
    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-static {v13}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v8, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_3

    .line 53
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 54
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 55
    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BezierUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BezierUtils;

    invoke-virtual {v0, v9, v12, v11, v5}, Lcom/onyx/android/sdk/geometry/utils/BezierUtils;->getPositionByPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 56
    :goto_1
    invoke-virtual {v0, v9, v12, v11, v4}, Lcom/onyx/android/sdk/geometry/utils/BezierUtils;->getPositionByPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_2

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    add-float/2addr v1, v2

    int-to-float v2, v10

    div-float/2addr v1, v2

    .line 57
    invoke-virtual {v0, v9, v12, v11, v1}, Lcom/onyx/android/sdk/geometry/utils/BezierUtils;->getPointByPosition(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    .line 58
    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v8, v2

    move-object v2, v9

    move-object v10, v3

    move-object v3, v11

    move-object/from16 p1, v4

    move-object v4, v5

    move-object v6, v5

    move-object/from16 v5, p1

    .line 59
    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->updateCurveFeatureSubType(Lcom/alibaba/fastjson2/JSONObject;Lcom/onyx/android/sdk/genericshape/Curve;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v0

    .line 60
    sget-object v1, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    invoke-virtual {v1, v8}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseFeature(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/genericshape/Feature;

    move-result-object v1

    move-object/from16 v2, p1

    .line 61
    filled-new-array {v6, v10, v2}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 64
    :cond_5
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/genericshape/Feature;->updateBySelectionPoints(Ljava/util/List;)V

    move-object v0, v1

    .line 65
    :goto_3
    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x3

    const/4 v10, 0x2

    move-object/from16 v6, p0

    goto/16 :goto_0

    .line 66
    :cond_6
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-virtual {v7, v0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    :cond_7
    :goto_4
    return-object v7
.end method

.method public static final splitShape(Lcom/onyx/android/sdk/genericshape/DirectionLine;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 6
    .param p0    # Lcom/onyx/android/sdk/genericshape/DirectionLine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/DirectionLine;->getCoordinates()[[F

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-eqz v0, :cond_0

    .line 140
    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v5, v0, v2

    aget v0, v0, v1

    invoke-direct {v4, v5, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 141
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/DirectionLine;->getCoordinates()[[F

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->lastOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-eqz v0, :cond_1

    .line 142
    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v2, v0, v2

    aget v0, v0, v1

    invoke-direct {v3, v2, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    .line 143
    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    .line 144
    sget-object v1, Lcom/onyx/android/sdk/genericshape/LineString;->Companion:Lcom/onyx/android/sdk/genericshape/LineString$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/DirectionLine;->getCoordinates()[[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/genericshape/LineString$Companion;->loadRenderPath([[F)Landroid/graphics/Path;

    move-result-object v1

    .line 145
    new-instance v2, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$7;

    invoke-direct {v2, v4, v3, p0}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$7;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/genericshape/DirectionLine;)V

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->split(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Landroid/graphics/Path;Lkotlin/jvm/functions/Function3;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method

.method public static final splitShape(Lcom/onyx/android/sdk/genericshape/Feature;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 5
    .param p0    # Lcom/onyx/android/sdk/genericshape/Feature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getGeometry()Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/genericshape/Geometry;->split(Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    invoke-direct {p1}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;-><init>()V

    .line 29
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    .line 31
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/genericshape/IGeometry;

    .line 32
    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v3

    .line 33
    sget-object v4, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseFeature(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/genericshape/Feature;

    move-result-object v3

    .line 34
    instance-of v4, v2, Lcom/onyx/android/sdk/genericshape/Geometry;

    if-eqz v4, :cond_2

    check-cast v2, Lcom/onyx/android/sdk/genericshape/Geometry;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/genericshape/Feature;->setGeometry(Lcom/onyx/android/sdk/genericshape/Geometry;)V

    .line 35
    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    return-object p1
.end method

.method public static final splitShape(Lcom/onyx/android/sdk/genericshape/FeatureCollection;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 13
    .param p0    # Lcom/onyx/android/sdk/genericshape/FeatureCollection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getFeatures()[Lcom/onyx/android/sdk/genericshape/Feature;

    move-result-object v3

    .line 7
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 8
    invoke-virtual {v6, p1}, Lcom/onyx/android/sdk/genericshape/Feature;->split(Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    check-cast v7, Ljava/lang/Iterable;

    .line 10
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/genericshape/IGeometry;

    .line 11
    sget-object v9, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v9, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v9

    const-string v10, "features"

    .line 12
    invoke-virtual {v9, v10}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "universalShapeType"

    const-string v12, ""

    .line 13
    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x4

    .line 14
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "version"

    invoke-interface {v9, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson2/JSONObject;->putArray(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v10

    .line 16
    instance-of v11, v8, Lcom/onyx/android/sdk/genericshape/Feature;

    if-eqz v11, :cond_1

    check-cast v8, Lcom/onyx/android/sdk/genericshape/Feature;

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    invoke-static {v10, v8}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 17
    sget-object v8, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    invoke-virtual {v8, v9}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseFeatureCollection(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object v8

    .line 18
    sget-object v9, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->Companion:Lcom/onyx/android/sdk/genericshape/FeatureCollection$Companion;

    invoke-virtual {v9, v8}, Lcom/onyx/android/sdk/genericshape/FeatureCollection$Companion;->getFeatureType(Lcom/onyx/android/sdk/genericshape/FeatureCollection;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "LineString"

    .line 19
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v9, Lcom/onyx/android/sdk/genericshape/SelectionPointType;->DRAG:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    goto :goto_3

    :cond_2
    const-string v10, "Arc"

    .line 20
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lcom/onyx/android/sdk/genericshape/SelectionPointType;->SCALE:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    goto :goto_3

    .line 21
    :cond_3
    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getSelectionPointType()Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    move-result-object v9

    .line 22
    :goto_3
    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/onyx/android/sdk/genericshape/Properties;->setSelectionPointType(Lcom/onyx/android/sdk/genericshape/SelectionPointType;)V

    .line 23
    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getFeatures()[Lcom/onyx/android/sdk/genericshape/Feature;

    move-result-object v9

    invoke-static {v9}, Lcom/onyx/android/sdk/base/utils/ArraysKt;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 24
    invoke-static {v1, v8}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_1

    .line 25
    :cond_4
    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->getRemoveShapes()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-static {v2, v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 26
    :cond_5
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p0

    .line 27
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setRemoveShapes(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method

.method public static final splitShape(Lcom/onyx/android/sdk/genericshape/LineString;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 8
    .param p0    # Lcom/onyx/android/sdk/genericshape/LineString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object v1, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/LineString;->loadRenderPath()Landroid/graphics/Path;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->split$default(Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Landroid/graphics/Path;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p0

    .line 132
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    .line 134
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/genericshape/IGeometry;

    .line 135
    instance-of v2, v1, Lcom/onyx/android/sdk/genericshape/LineString;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/genericshape/LineString;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    goto :goto_0

    .line 136
    :cond_2
    sget-object v3, Lcom/onyx/android/sdk/genericshape/LineString;->Companion:Lcom/onyx/android/sdk/genericshape/LineString$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/LineString;->getCoordinates()[[F

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/genericshape/LineString$Companion;->isPoint([[F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    return-object p0
.end method

.method public static final splitShape(Lcom/onyx/android/sdk/genericshape/MultiLineString;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 8
    .param p0    # Lcom/onyx/android/sdk/genericshape/MultiLineString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;-><init>()V

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/MultiLineString;->getCoordinates()[[[F

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 124
    new-instance v6, Lcom/onyx/android/sdk/genericshape/LineString;

    invoke-direct {v6}, Lcom/onyx/android/sdk/genericshape/LineString;-><init>()V

    .line 125
    array-length v7, v5

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v7, "copyOf(this, size)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, [[F

    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/genericshape/LineString;->setCoordinates([[F)V

    .line 126
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Geometry;->getFromShapeType()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/genericshape/Geometry;->setFromShapeType(I)V

    .line 127
    invoke-virtual {v6, p1}, Lcom/onyx/android/sdk/genericshape/LineString;->split(Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object v5

    .line 128
    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-static {v1, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    .line 130
    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setShapeErased(Z)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    return-object v0
.end method

.method public static final splitShape(Lcom/onyx/android/sdk/genericshape/Oval;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 11
    .param p0    # Lcom/onyx/android/sdk/genericshape/Oval;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Oval;->loadRenderPath()Landroid/graphics/Path;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    sget-object v2, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    new-instance v3, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$splitResult$1;

    invoke-direct {v3, v1}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$splitResult$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, p0, p1, v0, v3}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->split(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Landroid/graphics/Path;Lkotlin/jvm/functions/Function3;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->isShapeErased()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 108
    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    .line 109
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 110
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPointList;

    .line 111
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->addAll(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->first()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->last()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    sget-object v3, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->createArc$default(Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;ZZILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/Arc;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Geometry;->getFromShapeType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/Feature;->setFromShapeType(I)V

    .line 116
    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    const-class v2, Lcom/onyx/android/sdk/genericshape/Properties;

    invoke-virtual {v1, p0, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->clone(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/genericshape/Properties;

    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/genericshape/Feature;->setProperties(Lcom/onyx/android/sdk/genericshape/Properties;)V

    .line 118
    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    const-string v1, "Arc"

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/genericshape/Properties;->setSubType(Ljava/lang/String;)V

    .line 119
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    :cond_2
    return-object p1
.end method

.method public static final splitShape(Lcom/onyx/android/sdk/genericshape/Polygon;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/genericshape/Polygon;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Polygon;->getCoordinates()[[[F

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->splitShapeByLines(Lcom/onyx/android/sdk/genericshape/Geometry;[[[FLcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method

.method public static final splitShape(Lcom/onyx/android/sdk/genericshape/Polyline;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 11
    .param p0    # Lcom/onyx/android/sdk/genericshape/Polyline;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Polyline;->getCoordinates()[[[F

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [[[F

    .line 186
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    array-length v3, v0

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    const/4 v6, 0x2

    new-array v7, v6, [[F

    new-array v8, v6, [F

    add-int/lit8 v9, v5, -0x1

    .line 188
    aget-object v9, v0, v9

    aget-object v9, v9, v1

    aget v10, v9, v1

    aput v10, v8, v1

    aget v9, v9, v4

    aput v9, v8, v4

    aput-object v8, v7, v1

    new-array v6, v6, [F

    .line 189
    aget-object v8, v0, v5

    aget-object v8, v8, v1

    aget v9, v8, v1

    aput v9, v6, v1

    aget v8, v8, v4

    aput v8, v6, v4

    aput-object v6, v7, v4

    .line 190
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v1, [[[F

    .line 191
    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    .line 192
    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->splitShapeByLines(Lcom/onyx/android/sdk/genericshape/Geometry;[[[FLcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method

.method public static final splitShape(Lcom/onyx/android/sdk/genericshape/Rectangle;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 7
    .param p0    # Lcom/onyx/android/sdk/genericshape/Rectangle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;-><init>()V

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Rectangle;->getMultiPoint$sdk_genericshape_overseasRelease()Lcom/onyx/android/sdk/genericshape/MultiPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->toRectangleLines(Lcom/onyx/android/sdk/genericshape/MultiPoint;)Ljava/util/List;

    move-result-object v2

    .line 156
    check-cast v2, Ljava/lang/Iterable;

    .line 157
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    .line 158
    new-instance v4, Lcom/onyx/android/sdk/genericshape/LineString;

    invoke-direct {v4}, Lcom/onyx/android/sdk/genericshape/LineString;-><init>()V

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/genericshape/LineString;->setCoordinates([[F)V

    .line 159
    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/genericshape/LineString;->split(Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 161
    invoke-static {v1, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 162
    :cond_1
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 163
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    .line 164
    :cond_2
    new-instance p1, Lcom/onyx/android/sdk/genericshape/Polyline;

    invoke-direct {p1}, Lcom/onyx/android/sdk/genericshape/Polyline;-><init>()V

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 167
    check-cast v3, Lcom/onyx/android/sdk/genericshape/IGeometry;

    .line 168
    instance-of v5, v3, Lcom/onyx/android/sdk/genericshape/LineString;

    if-eqz v5, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/genericshape/LineString;

    :cond_4
    if-eqz v4, :cond_3

    .line 169
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 172
    check-cast v3, Lcom/onyx/android/sdk/genericshape/LineString;

    .line 173
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/LineString;->getCoordinates()[[F

    move-result-object v3

    if-eqz v3, :cond_6

    .line 174
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    new-array v2, v2, [[[F

    .line 175
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[F

    .line 176
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/genericshape/Polyline;->setCoordinates([[[F)V

    .line 177
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Polyline;->getCoordinates()[[[F

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/utils/ArraysKt;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 178
    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v1

    .line 179
    sget-object v2, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseFeature(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/genericshape/Feature;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/genericshape/Properties;->setFillAttr(Lcom/onyx/android/sdk/genericshape/FillAttr;)V

    .line 181
    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/genericshape/Properties;->setSubType(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/genericshape/Feature;->setGeometry(Lcom/onyx/android/sdk/genericshape/Geometry;)V

    .line 183
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Geometry;->getFromShapeType()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/genericshape/Feature;->setFromShapeType(I)V

    .line 184
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    :cond_8
    return-object v0
.end method

.method public static final splitShape(Lcom/onyx/android/sdk/genericshape/WaveLine;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 17
    .param p0    # Lcom/onyx/android/sdk/genericshape/WaveLine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eraseBean"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    invoke-direct {v1}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;-><init>()V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/WaveLine;->getGeometry()Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object v3

    instance-of v4, v3, Lcom/onyx/android/sdk/genericshape/LineString;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Lcom/onyx/android/sdk/genericshape/LineString;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    if-nez v3, :cond_1

    return-object v1

    .line 70
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/WaveLine;->loadRenderPath()Landroid/graphics/Path;

    move-result-object v4

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->getTargetShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->getErasePath()Landroid/graphics/Path;

    move-result-object v8

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v7, 0x0

    aput-object v6, v2, v7

    .line 73
    invoke-static {v4, v2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->concatTransform(Landroid/graphics/Path;[Landroid/graphics/Matrix;)Landroid/graphics/Path;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->splitByPath$default(Landroid/graphics/Path;Landroid/graphics/Path;FZILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/SplitResult;

    move-result-object v2

    .line 74
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/LineString;->loadSelectionPoints()Ljava/util/List;

    move-result-object v3

    .line 75
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v7, :cond_2

    return-object v1

    .line 76
    :cond_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v3, :cond_3

    return-object v1

    .line 77
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/Properties;->getWaveAttr()Lcom/onyx/android/sdk/genericshape/WaveAttr;

    move-result-object v8

    if-nez v8, :cond_4

    new-instance v8, Lcom/onyx/android/sdk/genericshape/WaveAttr;

    invoke-direct {v8}, Lcom/onyx/android/sdk/genericshape/WaveAttr;-><init>()V

    .line 78
    :cond_4
    new-instance v9, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v9, v7, v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    .line 79
    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getFirstPoint(Landroid/graphics/Path;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v10

    if-nez v10, :cond_5

    return-object v1

    .line 80
    :cond_5
    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getLastPoint(Landroid/graphics/Path;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    if-nez v4, :cond_6

    return-object v1

    .line 81
    :cond_6
    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/SplitResult;->getSplitSegmentList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 82
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v2, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 84
    check-cast v12, Ljava/util/List;

    .line 85
    sget-object v13, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-static {v6}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object v12

    .line 86
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v14, :cond_7

    goto/16 :goto_4

    .line 87
    :cond_7
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v12, :cond_8

    goto :goto_4

    :cond_8
    const/4 v15, 0x2

    .line 88
    invoke-static {v14, v10, v5, v15, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->equalXYApproximately$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    move-object v14, v7

    goto :goto_2

    .line 89
    :cond_9
    invoke-virtual {v9, v14}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findCrossPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v14

    .line 90
    :goto_2
    invoke-static {v12, v4, v5, v15, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->equalXYApproximately$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object v12, v3

    goto :goto_3

    .line 91
    :cond_a
    invoke-virtual {v9, v12}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findCrossPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v12

    .line 92
    :goto_3
    invoke-virtual {v13, v14, v7}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distanceTo(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v13

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyLength()F

    move-result v15

    rem-float/2addr v13, v15

    .line 93
    sget-object v15, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v15, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v5

    .line 94
    sget-object v15, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    invoke-virtual {v15, v5}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseFeature(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/genericshape/Feature;

    move-result-object v5

    .line 95
    filled-new-array {v14, v12}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v12

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/onyx/android/sdk/genericshape/Feature;->updateBySelectionPoints(Ljava/util/List;)V

    .line 96
    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v12

    new-instance v14, Lcom/onyx/android/sdk/genericshape/WaveAttr;

    invoke-direct {v14}, Lcom/onyx/android/sdk/genericshape/WaveAttr;-><init>()V

    .line 97
    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyLength()F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->setWavyLength(F)V

    .line 98
    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyPeak()F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->setWavyPeak(F)V

    const v15, 0x40c90fdb

    mul-float/2addr v13, v15

    .line 99
    invoke-virtual {v14}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyLength()F

    move-result v15

    div-float/2addr v13, v15

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyOffset()F

    move-result v15

    add-float/2addr v13, v15

    invoke-virtual {v14, v13}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->setWavyOffset(F)V

    .line 100
    invoke-virtual {v12, v14}, Lcom/onyx/android/sdk/genericshape/Properties;->setWaveAttr(Lcom/onyx/android/sdk/genericshape/WaveAttr;)V

    .line 101
    :goto_4
    invoke-interface {v11, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 102
    :cond_b
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    return-object v1
.end method

.method private static final splitShapeByLines(Lcom/onyx/android/sdk/genericshape/Geometry;[[[FLcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_c

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_c

    aget-object v4, p1, v3

    new-instance v5, Lcom/onyx/android/sdk/genericshape/LineString;

    invoke-direct {v5}, Lcom/onyx/android/sdk/genericshape/LineString;-><init>()V

    array-length v6, v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "copyOf(this, size)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, [[F

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/genericshape/LineString;->setCoordinates([[F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Geometry;->getFromShapeType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/genericshape/Geometry;->setFromShapeType(I)V

    invoke-virtual {v5, p2}, Lcom/onyx/android/sdk/genericshape/LineString;->split(Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->isShapeErased()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/onyx/android/sdk/genericshape/IGeometry;

    :cond_1
    instance-of v5, v7, Lcom/onyx/android/sdk/genericshape/LineString;

    if-eqz v5, :cond_2

    check-cast v7, Lcom/onyx/android/sdk/genericshape/LineString;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/genericshape/LineString;->getCoordinates()[[F

    move-result-object v4

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_4

    goto/16 :goto_3

    :cond_4
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-static {v1, v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    move-object v6, v5

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/genericshape/IGeometry;

    instance-of v9, v8, Lcom/onyx/android/sdk/genericshape/LineString;

    if-eqz v9, :cond_6

    check-cast v8, Lcom/onyx/android/sdk/genericshape/LineString;

    goto :goto_2

    :cond_6
    move-object v8, v7

    :goto_2
    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/LineString;->getCoordinates()[[F

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-static {v9}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    if-nez v9, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_9

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    invoke-static {v9, v10}, Lcom/onyx/android/sdk/genericshape/GeoJsonKt;->isApproximatelyEqual([F[F)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v1, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/LineString;->getCoordinates()[[F

    move-result-object v9

    invoke-static {v0, v9}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/LineString;->getCoordinates()[[F

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-static {v9}, Lkotlin/collections/ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    if-nez v9, :cond_a

    goto :goto_1

    :cond_a
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_5

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    invoke-static {v9, v10}, Lcom/onyx/android/sdk/genericshape/GeoJsonKt;->isApproximatelyEqual([F[F)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/LineString;->getCoordinates()[[F

    move-result-object v8

    invoke-static {v0, v8}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_1

    :cond_b
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    new-instance p1, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    invoke-direct {p1}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->joinConnectedLineString(Lcom/onyx/android/sdk/genericshape/Geometry;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {p2, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->joinConnectedLineString(Lcom/onyx/android/sdk/genericshape/Geometry;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {p2, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    :cond_d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    new-instance v3, Lcom/onyx/android/sdk/genericshape/LineString;

    invoke-direct {v3}, Lcom/onyx/android/sdk/genericshape/LineString;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Geometry;->getFromShapeType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/genericshape/Geometry;->setFromShapeType(I)V

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/genericshape/LineString;->setCoordinates([[F)V

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_4

    :cond_e
    invoke-static {p2, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setShapeErased(Z)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    return-object p1
.end method

.method public static final toRectangleLines(Lcom/onyx/android/sdk/genericshape/MultiPoint;)Ljava/util/List;
    .locals 8
    .param p0    # Lcom/onyx/android/sdk/genericshape/MultiPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/genericshape/MultiPoint;",
            ")",
            "Ljava/util/List<",
            "[[F>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/MultiPoint;->getCoordinates()[[F

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v2, p0, v1

    const/4 v3, 0x1

    aget-object p0, p0, v3

    const/4 v4, 0x2

    new-array v5, v4, [F

    aget v6, p0, v1

    aput v6, v5, v1

    aget v6, v2, v3

    aput v6, v5, v3

    new-array v6, v4, [F

    aget v7, v2, v1

    aput v7, v6, v1

    aget v7, p0, v3

    aput v7, v6, v3

    new-array v7, v4, [[F

    aput-object v2, v7, v1

    aput-object v5, v7, v3

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v7, v4, [[F

    aput-object v5, v7, v1

    aput-object p0, v7, v3

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v5, v4, [[F

    aput-object p0, v5, v1

    aput-object v6, v5, v3

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array p0, v4, [[F

    aput-object v6, p0, v1

    aput-object v2, p0, v3

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static final updateCurveFeatureSubType(Lcom/alibaba/fastjson2/JSONObject;Lcom/onyx/android/sdk/genericshape/Curve;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 5

    const-string v0, "properties"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Curve;->getDrawEndArrow()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-static {p5, p3, v4, v2, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->equalXYApproximately$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v3

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Curve;->getDrawStartArrow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p4, p2, v4, v2, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->equalXYApproximately$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "BidirectionalCurvyArrow"

    goto :goto_3

    :cond_2
    if-nez v1, :cond_4

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "Curve"

    goto :goto_3

    :cond_4
    :goto_2
    const-string p1, "CurvyArrow"

    move v3, v1

    :goto_3
    const-string p2, "subType"

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method
