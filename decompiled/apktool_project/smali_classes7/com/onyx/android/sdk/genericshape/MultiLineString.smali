.class public final Lcom/onyx/android/sdk/genericshape/MultiLineString;
.super Lcom/onyx/android/sdk/genericshape/Feature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/MultiLineString\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1558:1\n13309#2,2:1559\n13309#2,2:1561\n37#3,2:1563\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/MultiLineString\n*L\n984#1:1559,2\n992#1:1561,2\n1006#1:1563,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0016\u0010\u001d\u001a\u00020\u001e2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0016R8\u0010\u0003\u001a\u001e\u0012\u0012\u0012\u0010\u0012\u0008\u0012\u00060\u0005j\u0002`\u00060\u0004j\u0002`\u0007\u0018\u00010\u0004j\u0004\u0018\u0001`\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/MultiLineString;",
        "Lcom/onyx/android/sdk/genericshape/Feature;",
        "()V",
        "coordinates",
        "",
        "",
        "Lcom/onyx/android/sdk/genericshape/Position;",
        "Lcom/onyx/android/sdk/genericshape/Line;",
        "Lcom/onyx/android/sdk/genericshape/Lines;",
        "getCoordinates",
        "()[[[F",
        "setCoordinates",
        "([[[F)V",
        "[[[F",
        "type",
        "",
        "getType",
        "()Ljava/lang/String;",
        "setType",
        "(Ljava/lang/String;)V",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/MultiLineString\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1558:1\n13309#2,2:1559\n13309#2,2:1561\n37#3,2:1563\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/MultiLineString\n*L\n984#1:1559,2\n992#1:1561,2\n1006#1:1563,2\n*E\n"
    }
.end annotation


# instance fields
.field private coordinates:[[[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/Feature;-><init>()V

    const-string v0, "MultiLineString"

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/MultiLineString;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCoordinates()[[[F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/MultiLineString;->coordinates:[[[F

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/MultiLineString;->type:Ljava/lang/String;

    return-object p0
.end method

.method public loadRenderPath()Landroid/graphics/Path;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/MultiLineString;->coordinates:[[[F

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    sget-object v4, Lcom/onyx/android/sdk/genericshape/LineString;->Companion:Lcom/onyx/android/sdk/genericshape/LineString$Companion;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/genericshape/LineString$Companion;->loadRenderPath([[F)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public loadSelectionPoints()Ljava/util/List;
    .locals 5
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

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/MultiLineString;->coordinates:[[[F

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    sget-object v4, Lcom/onyx/android/sdk/genericshape/LineString;->Companion:Lcom/onyx/android/sdk/genericshape/LineString$Companion;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/genericshape/LineString$Companion;->loadSelectionPoints([[F)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final setCoordinates([[[F)V
    .locals 0
    .param p1    # [[[F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/MultiLineString;->coordinates:[[[F

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/MultiLineString;->type:Ljava/lang/String;

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

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->splitShape(Lcom/onyx/android/sdk/genericshape/MultiLineString;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method

.method public updateBySelectionPoints(Ljava/util/List;)V
    .locals 9
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    const/4 v4, 0x2

    new-array v5, v4, [[F

    new-array v6, v4, [F

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    aput v7, v6, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v7

    const/4 v8, 0x1

    aput v7, v6, v8

    aput-object v6, v5, v2

    new-array v4, v4, [F

    add-int/lit8 v6, v3, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    aput v7, v4, v2

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    aput v6, v4, v8

    aput-object v4, v5, v8

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    new-array p1, v2, [[[F

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[F

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/MultiLineString;->coordinates:[[[F

    return-void
.end method
