.class public final Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRendererCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RendererCacheManager.kt\ncom/onyx/android/sdk/note/common/data/render/RendererCacheManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,85:1\n1855#2,2:86\n215#3,2:88\n215#3,2:90\n*S KotlinDebug\n*F\n+ 1 RendererCacheManager.kt\ncom/onyx/android/sdk/note/common/data/render/RendererCacheManager\n*L\n44#1:86,2\n61#1:88,2\n73#1:90,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001a\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u000f\u001a\u00020\u0006J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00152\u0006\u0010\u000c\u001a\u00020\u000bH\u0002R\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;",
        "",
        "Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;",
        "pageInfo",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "addRendererBitmap",
        "getRendererBitmap",
        "",
        "containsKey",
        "",
        "pageUniqueId",
        "clearPageCacheByUniqueId",
        "ensureClearPageDiffCache",
        "clearBitmapCache",
        "a",
        "b",
        "",
        "layerId",
        "c",
        "",
        "d",
        "Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;",
        "Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;",
        "renderBitmapCache",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRendererCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RendererCacheManager.kt\ncom/onyx/android/sdk/note/common/data/render/RendererCacheManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,85:1\n1855#2,2:86\n215#3,2:88\n215#3,2:90\n*S KotlinDebug\n*F\n+ 1 RendererCacheManager.kt\ncom/onyx/android/sdk/note/common/data/render/RendererCacheManager\n*L\n44#1:86,2\n61#1:88,2\n73#1:90,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;

    const/high16 v1, 0x2800000

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->a:Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final addRendererBitmap(Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->a:Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->a(Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->a:Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->a(Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->recycle(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final c(Ljava/lang/String;I)Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->a:Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    const-string v0, "snapshot(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->getLayerId()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final clearBitmapCache()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->a:Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public final clearPageCacheByUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageUniqueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->b(Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final containsKey(Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->getRendererBitmap(Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->isValid(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public final d(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->a:Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    const-string v1, "snapshot(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v3, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;

    invoke-virtual {v2, v1, v3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final ensureClearPageDiffCache(Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->getLayerId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->c(Ljava/lang/String;I)Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->b(Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;)V

    :cond_1
    return-void
.end method

.method public final getRendererBitmap(Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->a:Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;->a(Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method
