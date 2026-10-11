.class public final Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B1\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Landroid/graphics/Bitmap;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "h",
        "Ljava/lang/Integer;",
        "pageIndex",
        "",
        "i",
        "Ljava/lang/String;",
        "pageId",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "j",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "thumbnailSize",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public h:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thumbnailSize"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;->h:Ljava/lang/Integer;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;->i:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;->j:Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 1
    sget-object p4, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getDEFAULT_PAGE_THUMBNAIL_SIZE()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p4

    .line 2
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)V

    return-void
.end method

.method public static final synthetic access$getThumbnailSize$p(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;)Lcom/onyx/android/sdk/base/data/Size;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;->j:Lcom/onyx/android/sdk/base/data/Size;

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;->h:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;->i:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;->j:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v8, v0}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;->setExportSize(Lcom/onyx/android/sdk/base/data/Size;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->retry(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->computation()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
