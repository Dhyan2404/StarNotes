.class public final Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000bJ\u001c\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u0002J\u0006\u0010\u0018\u001a\u00020\u0005J\u0006\u0010\u0019\u001a\u00020\u0005R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;",
        "",
        "pageId",
        "",
        "success",
        "",
        "oldContent",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "oldContentNote",
        "newContent",
        "newContentNote",
        "(Ljava/lang/String;ZLcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V",
        "getNewContent",
        "()Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "getNewContentNote",
        "getOldContent",
        "getOldContentNote",
        "getPageId",
        "()Ljava/lang/String;",
        "getSuccess",
        "()Z",
        "isCacheKeyChanged",
        "old",
        "new",
        "isContentCacheKeyChanged",
        "isContentNoteCacheKeyChanged",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final newContent:Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final newContentNote:Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final oldContent:Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final oldContentNote:Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final success:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->pageId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->success:Z

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->oldContent:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->oldContentNote:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->newContent:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    iput-object p6, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->newContentNote:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-void
.end method

.method private final isCacheKeyChanged(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-nez p0, :cond_2

    const-string p0, ""

    :cond_2
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final getNewContent()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->newContent:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-object p0
.end method

.method public final getNewContentNote()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->newContentNote:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-object p0
.end method

.method public final getOldContent()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->oldContent:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-object p0
.end method

.method public final getOldContentNote()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->oldContentNote:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->success:Z

    return p0
.end method

.method public final isContentCacheKeyChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->oldContent:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->newContent:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->isCacheKeyChanged(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result p0

    return p0
.end method

.method public final isContentNoteCacheKeyChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->oldContentNote:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->newContentNote:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->isCacheKeyChanged(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result p0

    return p0
.end method
