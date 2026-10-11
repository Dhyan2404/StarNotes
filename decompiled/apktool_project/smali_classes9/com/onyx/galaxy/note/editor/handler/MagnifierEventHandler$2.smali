.class public final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$2;
.super Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0014J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/handler/MagnifierEventHandler$2",
        "Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;",
        "applyChangedShapes",
        "",
        "editorBundleList",
        "",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "changedShapeBean",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "onDraftCellAddedEvent",
        "event",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;",
        "note_overseasRelease"
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
.field public final synthetic g:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V
    .locals 0

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$2;->g:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-direct {p0, p3, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method


# virtual methods
.method public applyChangedShapes(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
            ")V"
        }
    .end annotation

    const-string v0, "editorBundleList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changedShapeBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->applyChangedShapes(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$2;->g:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getFocusEditorBundle$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$2$applyChangedShapes$1;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$2$applyChangedShapes$1;-><init>(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onDraftCellAddedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$2;->g:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getMagnifierViewportStateChangedListener$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->isProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->onDraftCellAddedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;)V

    return-void
.end method
