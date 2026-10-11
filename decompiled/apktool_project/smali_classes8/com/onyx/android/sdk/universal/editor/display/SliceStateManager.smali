.class public final Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSliceStateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SliceStateManager.kt\ncom/onyx/android/sdk/universal/editor/display/SliceStateManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,236:1\n1603#2,9:237\n1855#2:246\n1856#2:248\n1612#2:249\n1#3:247\n1#3:250\n1313#4,2:251\n*S KotlinDebug\n*F\n+ 1 SliceStateManager.kt\ncom/onyx/android/sdk/universal/editor/display/SliceStateManager\n*L\n174#1:237,9\n174#1:246\n174#1:248\n174#1:249\n174#1:247\n198#1:251,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010,\u001a\u00020\u0011\u00a2\u0006\u0004\u0008<\u0010=J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ\u0012\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\tJ\u0014\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\rJ\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0013\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0011J\u0006\u0010\u0016\u001a\u00020\u0004J\u0010\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u0017\u001a\u0004\u0018\u00010\tJ\u0006\u0010\u001a\u001a\u00020\u0004J*\u0010\u001e\u001a\u00020\u00042\"\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00060\u001bj\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0006`\u001cJ\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0011J\u0012\u0010!\u001a\u00020\u00182\u0008\u0010\u0017\u001a\u0004\u0018\u00010\tH\u0002J\u0012\u0010\"\u001a\u00020\u00182\u0008\u0010\u0017\u001a\u0004\u0018\u00010\tH\u0002J\u0008\u0010$\u001a\u00020#H\u0002J\u0008\u0010%\u001a\u00020#H\u0002J\u001e\u0010(\u001a\u00020\u00042\u0014\u0008\u0002\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00180&H\u0002R\u0017\u0010,\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010)\u001a\u0004\u0008*\u0010+R#\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\t0-8\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010.\u001a\u0004\u0008/\u00100R\u0017\u00106\u001a\u0002028\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u00103\u001a\u0004\u00084\u00105R\u0017\u0010;\u001a\u0002078\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u00108\u001a\u0004\u00089\u0010:\u00a8\u0006>"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;",
        "result",
        "",
        "afterRefreshPage",
        "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;",
        "pageNodeInfo",
        "moveDisplayToCache",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "newInfo",
        "ensureSliceCacheInfo",
        "findDisplayCache",
        "",
        "sliceList",
        "Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;",
        "saveBitmapListToCache",
        "",
        "getSimpleDebugString",
        "safeClearAllNoteSliceCache",
        "pageId",
        "safeClearPageNoteSliceCache",
        "clear",
        "sliceInfo",
        "",
        "removeDisplayBitmap",
        "removeNotDisplayCache",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "pageRenderNodeMap",
        "logBitmapDisplayCount",
        "msg",
        "log",
        "c",
        "d",
        "",
        "a",
        "b",
        "Lkotlin/Function1;",
        "predicate",
        "e",
        "Ljava/lang/String;",
        "getTag",
        "()Ljava/lang/String;",
        "tag",
        "",
        "Ljava/util/Map;",
        "getDisplayCache",
        "()Ljava/util/Map;",
        "displayCache",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;",
        "getRenderRequestManager",
        "()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;",
        "renderRequestManager",
        "Lcom/onyx/android/sdk/geometry/data/SliceLruCache;",
        "Lcom/onyx/android/sdk/geometry/data/SliceLruCache;",
        "getLruCache",
        "()Lcom/onyx/android/sdk/geometry/data/SliceLruCache;",
        "lruCache",
        "<init>",
        "(Ljava/lang/String;)V",
        "sdk-universal_overseasRelease"
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
        "SMAP\nSliceStateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SliceStateManager.kt\ncom/onyx/android/sdk/universal/editor/display/SliceStateManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,236:1\n1603#2,9:237\n1855#2:246\n1856#2:248\n1612#2:249\n1#3:247\n1#3:250\n1313#4,2:251\n*S KotlinDebug\n*F\n+ 1 SliceStateManager.kt\ncom/onyx/android/sdk/universal/editor/display/SliceStateManager\n*L\n174#1:237,9\n174#1:246\n174#1:248\n174#1:249\n174#1:247\n198#1:251,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/onyx/android/sdk/geometry/data/SliceLruCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->b:Ljava/util/Map;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->c:Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    new-instance p1, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;-><init>(Lcom/onyx/android/sdk/geometry/data/SizeConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d:Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    return-void
.end method

.method public static synthetic f(Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$safeClearDisplayIf$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$safeClearDisplayIf$1;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->e(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->safelyByteCount(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public final afterRefreshPage(Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->getSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->getNewContentNote()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->c(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->getNewContent()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->c(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "afterRefreshPage, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", moveCacheToDisplay.contentNote = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->getNewContentNote()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->getDebugString(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", moveCacheToDisplay.content = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->getNewContent()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->getDebugString(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->isContentCacheKeyChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->getOldContent()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", moveDisplayToCache.content = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, ", contentCacheKey not changed, do not moveDisplayToCache"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->getOldContent()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->getDebugString(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->isContentNoteCacheKeyChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->getOldContentNote()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", moveDisplayToCache.contentNote = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, ", contentNoteCacheKey not changed, do not moveDisplayToCache"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->getOldContentNote()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->getDebugString(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final c(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getState()Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 p1, 0x2

    if-eq v2, p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "moveCacheToDisplay, DISPLAY, do nothing"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;->DISPLAY:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->updateState(Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copy()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d:Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveCacheToDisplay, IN_CACHE -> DISPLAY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->log(Ljava/lang/String;)V

    :goto_0
    move v0, v3

    :goto_1
    return v0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d:Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->c:Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->cancelAllRequest()V

    return-void
.end method

.method public final d(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getState()Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d:Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->saveBitmapToCache(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDisplayToCache, removeFromDisplay = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    move v0, v3

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", saveToCache = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "moveDisplayToCache, inCache, do nothing"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->log(Ljava/lang/String;)V

    :goto_1
    move v0, v3

    :goto_2
    return v0
.end method

.method public final e(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->b:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->asSequence(Ljava/util/Map;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$safeClearDisplayIf$2;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$safeClearDisplayIf$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ensureSliceCacheInfo(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "newInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copy()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copyDisplayData(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->c:Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->getRenderingSlice(Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copyDisplayData(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d:Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copy()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copyDisplayData(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    return-object p0

    :cond_2
    return-object p1
.end method

.method public final findDisplayCache(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isSamePage(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    :cond_2
    check-cast v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copyDisplayData(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    return-object v0

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d:Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->findDisplayCache(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayCache()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->b:Ljava/util/Map;

    return-object p0
.end method

.method public final getLruCache()Lcom/onyx/android/sdk/geometry/data/SliceLruCache;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d:Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    return-object p0
.end method

.method public final getRenderRequestManager()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->c:Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    return-object p0
.end method

.method public final getSimpleDebugString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayCacheCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", displayCacheSize = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->a()I

    move-result v3

    const/high16 v4, 0x100000

    div-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " MB\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", renderRequestManager: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->c:Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->getDebugString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", cacheInfo = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d:Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->getSimpleDebugString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final log(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final logBitmapDisplayCount(Ljava/util/LinkedHashMap;)V
    .locals 0
    .param p1    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "pageRenderNodeMap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final moveDisplayToCache(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageNodeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getContentSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", moveDisplayToCache.contentNote = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->getDebugString(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", moveDisplayToCache.content = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getContentSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->getDebugString(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final removeDisplayBitmap(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final removeNotDisplayCache()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d:Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->clear()V

    return-void
.end method

.method public final safeClearAllNoteSliceCache()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d:Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$safeClearAllNoteSliceCache$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$safeClearAllNoteSliceCache$1;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->safeClearCacheIf(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$safeClearAllNoteSliceCache$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$safeClearAllNoteSliceCache$2;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->e(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->c:Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->cancelAllNoteRequest()V

    return-void
.end method

.method public final safeClearPageNoteSliceCache(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d:Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$safeClearPageNoteSliceCache$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$safeClearPageNoteSliceCache$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->safeClearCacheIf(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$safeClearPageNoteSliceCache$2;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager$safeClearPageNoteSliceCache$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->e(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->c:Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->cancelNoteRequest(Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method public final saveBitmapListToCache(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;)",
            "Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sliceList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->d:Lcom/onyx/android/sdk/geometry/data/SliceLruCache;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->saveBitmapListToCache(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;

    move-result-object p0

    return-object p0
.end method
