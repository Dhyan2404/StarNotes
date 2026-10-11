.class public final Lcom/onyx/android/sdk/universal/editor/action/tag/SaveTagPageThumbnailAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/tag/SaveTagPageThumbnailAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/base/data/Orientation;",
        "orientation",
        "",
        "l",
        "h",
        "Ljava/lang/String;",
        "pageId",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V",
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
.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SaveTagPageThumbnailAction;->h:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$updatePageTagModelOrientation(Lcom/onyx/android/sdk/universal/editor/action/tag/SaveTagPageThumbnailAction;Lcom/onyx/android/sdk/base/data/Orientation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/tag/SaveTagPageThumbnailAction;->l(Lcom/onyx/android/sdk/base/data/Orientation;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SaveTagPageThumbnailAction;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/tag/SaveTagPageThumbnailAction$a;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/tag/SaveTagPageThumbnailAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/tag/SaveTagPageThumbnailAction;Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SavePageThumbnailAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/tag/SaveTagPageThumbnailAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/tag/SaveTagPageThumbnailAction$b;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/base/data/Orientation;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SaveTagPageThumbnailAction;->h:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->updatePageTagModelOrientation(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Orientation;)J

    return-void
.end method
