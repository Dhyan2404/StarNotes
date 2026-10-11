.class public Lcom/onyx/android/sdk/genericshape/Star;
.super Lcom/onyx/android/sdk/genericshape/Polygon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Star\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1558:1\n37#2,2:1559\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Star\n*L\n1465#1:1559,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000fH\u0016J\u0016\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000fH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/Star;",
        "Lcom/onyx/android/sdk/genericshape/Polygon;",
        "()V",
        "type",
        "",
        "getType",
        "()Ljava/lang/String;",
        "setType",
        "(Ljava/lang/String;)V",
        "getInnerPoint",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "circleCenter",
        "previous",
        "next",
        "loadSelectionPoints",
        "",
        "updateBySelectionPoints",
        "",
        "selectionPoints",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Star\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1558:1\n37#2,2:1559\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Star\n*L\n1465#1:1559,2\n*E\n"
    }
.end annotation


# instance fields
.field private type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/Polygon;-><init>()V

    const-string v0, "Star"

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/Star;->type:Ljava/lang/String;

    return-void
.end method

.method private final getInnerPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p0, p2, p3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p2, p1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p2

    sget-object p3, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getPentagramInnerPointDistancePercent()F

    move-result p3

    mul-float/2addr p2, p3

    new-instance p3, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p3, p1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p3, p2, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findPointOnVector(FLcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/Star;->type:Ljava/lang/String;

    return-object p0
.end method

.method public loadSelectionPoints()Ljava/util/List;
    .locals 2
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Polygon;->getCoordinates()[[[F

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/onyx/android/sdk/genericshape/GeoJsonKt;->toTouchPoints([[[F)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/Star;->type:Ljava/lang/String;

    return-void
.end method

.method public updateBySelectionPoints(Ljava/util/List;)V
    .locals 11
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

    const-string v0, "selectionPoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    add-int/lit8 v5, v4, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_0

    move v6, v3

    goto :goto_1

    :cond_0
    move v6, v5

    :goto_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v7, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v7, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->gravityCenter(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    invoke-direct {p0, v7, v4, v6}, Lcom/onyx/android/sdk/genericshape/Star;->getInnerPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x2

    new-array v9, v8, [[F

    invoke-static {v4}, Lcom/onyx/android/sdk/genericshape/GeoJsonKt;->toFloatArray(Lcom/onyx/android/sdk/base/data/TouchPoint;)[F

    move-result-object v4

    aput-object v4, v9, v3

    invoke-static {v7}, Lcom/onyx/android/sdk/genericshape/GeoJsonKt;->toFloatArray(Lcom/onyx/android/sdk/base/data/TouchPoint;)[F

    move-result-object v4

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v4, v8, [[F

    invoke-static {v7}, Lcom/onyx/android/sdk/genericshape/GeoJsonKt;->toFloatArray(Lcom/onyx/android/sdk/base/data/TouchPoint;)[F

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v6}, Lcom/onyx/android/sdk/genericshape/GeoJsonKt;->toFloatArray(Lcom/onyx/android/sdk/base/data/TouchPoint;)[F

    move-result-object v6

    aput-object v6, v4, v10

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_0

    :cond_1
    new-array p1, v3, [[[F

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[F

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/Polygon;->setCoordinates([[[F)V

    return-void
.end method
