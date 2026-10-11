.class public final LColorResponseKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorResponse.kt\nColorResponseKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,39:1\n1549#2:40\n1620#2,2:41\n1549#2:43\n1620#2,2:44\n1622#2:63\n1622#2:64\n125#3,17:46\n*S KotlinDebug\n*F\n+ 1 ColorResponse.kt\nColorResponseKt\n*L\n27#1:40\n27#1:41,2\n31#1:43\n31#1:44,2\n31#1:63\n27#1:64\n34#1:46,17\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "toColorSets",
        "",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        "LColorSetQueryResponse;",
        "isPreset",
        "",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nColorResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorResponse.kt\nColorResponseKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,39:1\n1549#2:40\n1620#2,2:41\n1549#2:43\n1620#2,2:44\n1622#2:63\n1622#2:64\n125#3,17:46\n*S KotlinDebug\n*F\n+ 1 ColorResponse.kt\nColorResponseKt\n*L\n27#1:40\n27#1:41,2\n31#1:43\n31#1:44,2\n31#1:63\n27#1:64\n34#1:46,17\n*E\n"
    }
.end annotation


# direct methods
.method public static final toColorSets(LColorSetQueryResponse;Z)Ljava/util/List;
    .locals 10
    .param p0    # LColorSetQueryResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LColorSetQueryResponse;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getData()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, LColorSetQueryResult;

    invoke-virtual {p0}, LColorSetQueryResult;->getResources()LColorSetResourceList;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LColorSetResource;

    new-instance v3, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-direct {v3}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;-><init>()V

    invoke-virtual {v2}, LColorSetResource;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v2}, LColorSetResource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, LColorSetResource;->getColors()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LColorItem;

    invoke-virtual {v5}, LColorItem;->getColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xff

    int-to-float v8, v7

    invoke-virtual {v5}, LColorItem;->getOpacity()F

    move-result v5

    mul-float/2addr v8, v5

    float-to-int v5, v8

    shr-int/lit8 v8, v6, 0x10

    and-int/2addr v8, v7

    shr-int/lit8 v9, v6, 0x8

    and-int/2addr v9, v7

    and-int/2addr v6, v7

    invoke-static {v5, v8, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->setColors(Ljava/util/List;)V

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->setPreset(Z)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic toColorSets$default(LColorSetQueryResponse;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-static {p0, p1}, LColorResponseKt;->toColorSets(LColorSetQueryResponse;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
