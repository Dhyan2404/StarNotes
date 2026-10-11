.class public final Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorSetModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorSetModel.kt\ncom/onyx/android/sdk/replicator/colorset/data/ColorSetModelKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1549#2:43\n1620#2,3:44\n1855#2,2:47\n*S KotlinDebug\n*F\n+ 1 ColorSetModel.kt\ncom/onyx/android/sdk/replicator/colorset/data/ColorSetModelKt\n*L\n31#1:43\n31#1:44,3\n37#1:47,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "loadDefaultColorSets",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;",
        "loadDefaultColors",
        "Lcom/onyx/android/sdk/base/extension/IntList;",
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
        "SMAP\nColorSetModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorSetModel.kt\ncom/onyx/android/sdk/replicator/colorset/data/ColorSetModelKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1549#2:43\n1620#2,3:44\n1855#2,2:47\n*S KotlinDebug\n*F\n+ 1 ColorSetModel.kt\ncom/onyx/android/sdk/replicator/colorset/data/ColorSetModelKt\n*L\n31#1:43\n31#1:44,3\n37#1:47,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final loadDefaultColorSets()Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RawResourceUtil;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/android/sdk/replicator/R$raw;->default_color_sets:I

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->contentOfRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v2, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getNameRes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->setName(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->setPreset(Z)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final loadDefaultColors()Lcom/onyx/android/sdk/base/extension/IntList;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RawResourceUtil;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/android/sdk/replicator/R$raw;->default_colors:I

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->contentOfRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v2, Lcom/onyx/android/sdk/base/extension/StringList;

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/android/sdk/base/extension/StringList;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/TypeExtKt;->toIntList(Ljava/util/List;)Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v0

    return-object v0
.end method
