.class public final Lcom/onyx/android/sdk/genericshape/LineString$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/genericshape/LineString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/LineString$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1558:1\n1549#2:1559\n1620#2,3:1560\n37#3,2:1563\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/LineString$Companion\n*L\n960#1:1559\n960#1:1560,3\n960#1:1563,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0018\u0010\u0005\u001a\u0014\u0012\u0008\u0012\u00060\u0007j\u0002`\u0008\u0018\u00010\u0006j\u0004\u0018\u0001`\t\u00a2\u0006\u0002\u0010\nJ%\u0010\u000b\u001a\u00020\u000c2\u0018\u0010\u0005\u001a\u0014\u0012\u0008\u0012\u00060\u0007j\u0002`\u0008\u0018\u00010\u0006j\u0004\u0018\u0001`\t\u00a2\u0006\u0002\u0010\rJ+\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0018\u0010\u0005\u001a\u0014\u0012\u0008\u0012\u00060\u0007j\u0002`\u0008\u0018\u00010\u0006j\u0004\u0018\u0001`\t\u00a2\u0006\u0002\u0010\u0011JE\u0010\u0012\u001a\u0014\u0012\u0008\u0012\u00060\u0007j\u0002`\u0008\u0018\u00010\u0006j\u0004\u0018\u0001`\t2\u0018\u0010\u0013\u001a\u0014\u0012\u0008\u0012\u00060\u0007j\u0002`\u0008\u0018\u00010\u0006j\u0004\u0018\u0001`\t2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0002\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/LineString$Companion;",
        "",
        "()V",
        "isPoint",
        "",
        "coordinates",
        "",
        "",
        "Lcom/onyx/android/sdk/genericshape/Position;",
        "Lcom/onyx/android/sdk/genericshape/Line;",
        "([[F)Z",
        "loadRenderPath",
        "Landroid/graphics/Path;",
        "([[F)Landroid/graphics/Path;",
        "loadSelectionPoints",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "([[F)Ljava/util/List;",
        "updateBySelectionPoints",
        "originCoordinates",
        "list",
        "([[FLjava/util/List;)[[F",
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
        "SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/LineString$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1558:1\n1549#2:1559\n1620#2,3:1560\n37#3,2:1563\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/LineString$Companion\n*L\n960#1:1559\n960#1:1560,3\n960#1:1563,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/LineString$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isPoint([[F)Z
    .locals 1
    .param p1    # [[F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    array-length v0, p1

    if-gt v0, p0, :cond_1

    return p0

    :cond_1
    array-length p0, p1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->lastOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0
.end method

.method public final loadRenderPath([[F)Landroid/graphics/Path;
    .locals 6
    .param p1    # [[F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    aget v3, v2, v1

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {p0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v4

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    aget v5, v3, v1

    aget v3, v3, v4

    invoke-virtual {p0, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final loadSelectionPoints([[F)Ljava/util/List;
    .locals 7
    .param p1    # [[F
        .annotation build Lorg/jetbrains/annotations/Nullable;
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

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget-object v4, p1, v2

    aget v5, v4, v1

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-direct {v3, v5, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final updateBySelectionPoints([[FLjava/util/List;)[[F
    .locals 3
    .param p1    # [[F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[F",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)[[F"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "list"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/genericshape/LineString$Companion$updateBySelectionPoints$1;->INSTANCE:Lcom/onyx/android/sdk/genericshape/LineString$Companion$updateBySelectionPoints$1;

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->transform(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    aput p2, v1, v0

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array p0, v0, [[F

    invoke-interface {p1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[F

    return-object p0
.end method
