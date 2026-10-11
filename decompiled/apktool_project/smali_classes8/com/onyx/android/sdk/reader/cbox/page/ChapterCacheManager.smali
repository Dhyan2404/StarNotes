.class public final Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0017B\u0019\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003J.\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u0014R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;",
        "Landroid/util/LruCache;",
        "",
        "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;",
        "chapter",
        "",
        "cacheChapter",
        "",
        "evicted",
        "key",
        "oldValue",
        "newValue",
        "entryRemoved",
        "Lcom/onyx/engine/sdk/NeoBaseNative;",
        "a",
        "Lcom/onyx/engine/sdk/NeoBaseNative;",
        "neoNative",
        "",
        "b",
        "I",
        "maxSize",
        "<init>",
        "(Lcom/onyx/engine/sdk/NeoBaseNative;I)V",
        "Companion",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:I = 0x3


# instance fields
.field public final a:Lcom/onyx/engine/sdk/NeoBaseNative;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;->Companion:Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/NeoBaseNative;I)V
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/NeoBaseNative;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "neoNative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/engine/sdk/NeoBaseNative;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x3

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;-><init>(Lcom/onyx/engine/sdk/NeoBaseNative;I)V

    return-void
.end method


# virtual methods
.method public final cacheChapter(Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;->getChapter()Lcom/onyx/engine/sdk/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    check-cast p4, Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;->entryRemoved(ZLjava/lang/String;Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)V

    return-void
.end method

.method public entryRemoved(ZLjava/lang/String;Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;->a:Lcom/onyx/engine/sdk/NeoBaseNative;

    invoke-interface {p0, p2}, Lcom/onyx/engine/sdk/NeoBaseNative;->recycleChapter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
