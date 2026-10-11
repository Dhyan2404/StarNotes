.class public Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010B\u001a\u00020+\u0012\u0006\u0010G\u001a\u00020C\u0012\u0006\u0010R\u001a\u00020M\u0012\u0006\u0010L\u001a\u00020H\u00a2\u0006\u0004\u0008[\u0010\\J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0002J\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J\u0008\u0010\u0013\u001a\u00020\u0000H\u0002J\u0008\u0010\u0014\u001a\u00020\u0002H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u000e\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0019J\u0008\u0010\u001d\u001a\u00020\u001cH\u0014J\u0016\u0010\"\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 J\u0006\u0010#\u001a\u00020\u0002J\u000e\u0010$\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007J\u0018\u0010(\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020&H\u0016J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020)H\u0007J\u001c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t2\u0006\u0010,\u001a\u00020+2\u0006\u0010\r\u001a\u00020\u000cJ\u001c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000cJ\u0010\u0010/\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020.H\u0007J\u0010\u00101\u001a\u00020\u00022\u0006\u0010\'\u001a\u000200H\u0007J\u0010\u00103\u001a\u00020\u00022\u0006\u0010\'\u001a\u000202H\u0007J\u0010\u00105\u001a\u00020\u00022\u0006\u0010\'\u001a\u000204H\u0007J\u0010\u00107\u001a\u00020\u00022\u0006\u0010\'\u001a\u000206H\u0007J\u0010\u00109\u001a\u00020\u00022\u0006\u0010\'\u001a\u000208H\u0007J\u0010\u0010;\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020:H\u0007J\u0006\u0010<\u001a\u00020\u0002J\u0010\u0010>\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020=H\u0007R\u0017\u0010B\u001a\u00020+8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010?\u001a\u0004\u0008@\u0010AR\u0017\u0010G\u001a\u00020C8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010D\u001a\u0004\u0008E\u0010FR\u0017\u0010L\u001a\u00020H8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010I\u001a\u0004\u0008J\u0010KR$\u0010R\u001a\u00020M2\u0006\u0010N\u001a\u00020M8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010O\u001a\u0004\u0008P\u0010QR\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010S\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR\u0018\u0010Z\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010Y\u00a8\u0006]"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;",
        "Landroid/view/View$OnTouchListener;",
        "",
        "h",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "syncNoteModel",
        "",
        "a",
        "Lio/reactivex/rxjava3/core/Observable;",
        "g",
        "noteModel",
        "Landroid/graphics/RectF;",
        "viewRectF",
        "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;",
        "f",
        "openDocArgs",
        "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
        "e",
        "c",
        "b",
        "Landroid/view/View;",
        "editorView",
        "d",
        "initEditorView",
        "Landroid/app/Activity;",
        "activity",
        "attachActivity",
        "Landroid/view/View$OnDragListener;",
        "createDragListener",
        "Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "Landroidx/activity/result/ActivityResultCaller;",
        "activityResultLauncher",
        "postEditorCreatedEvent",
        "destroy",
        "saveDocument",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouch",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;",
        "onSplitScreenShowQuoteEvent",
        "",
        "docId",
        "openAnotherDocument",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;",
        "onSplitScreenShowSourceEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeHighlightAnimationEvent;",
        "onShowShapeHighlightAnimationEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/DismissShapeHighlightAnimationEvent;",
        "onDismissShapeHighlightAnimationEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;",
        "onDeleteExcerptResultEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultEvent;",
        "onUpdateExcerptResultEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartDropImageTransformEvent;",
        "onStartDropImageTransformEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenOpenShapeLinkEvent;",
        "onSplitScreenOpenShapeLinkEvent",
        "closeDocumentAfterExitSplitScreen",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;",
        "onDocumentOpenSuccessEvent",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "id",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "getManager",
        "()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "manager",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;",
        "getViewDownListener",
        "()Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;",
        "viewDownListener",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "<set-?>",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Landroid/view/View;",
        "getEditorView",
        "()Landroid/view/View;",
        "setEditorView",
        "(Landroid/view/View;)V",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "highlightAnimationDisposable",
        "<init>",
        "(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;)V",
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
.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public editorView:Landroid/view/View;

.field public final f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewDownListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p3, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$checkPrepareOpenNoteEnabled(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onBeforeRenderDocument(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->d(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$openDocument(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->e(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseOpenDocArgs(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->f(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showNoteNotExistError(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->i()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->i()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final attachActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->attachActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->isDisposed(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final c()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getAnotherEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    return-object p0
.end method

.method public final closeDocumentAfterExitSplitScreen()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->setClosingDocumentAfterExitSplitScreen(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/CloseDocumentEvent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/onyx/android/sdk/universal/editor/events/app/CloseDocumentEvent;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public createDragListener()Landroid/view/View$OnDragListener;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-object v0
.end method

.method public final d(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/BeforeRenderDocumentEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/BeforeRenderDocumentEvent;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->b()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RenderRequestManagerKt;->safeClearAllSliceCache(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->saveDocument(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->destroy()V

    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
    .locals 1

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setParentUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getActiveScene()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setActiveScene(I)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/RectKt;->toSize(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setViewSize(Lcom/onyx/android/sdk/base/data/Size;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setUseExternalViewSize(Z)V

    :cond_0
    return-object p0
.end method

.method public final g()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isDocumentOpen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2, v4}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;-><init>(ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$o;->e:Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$o;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getEditorView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->editorView:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "editorView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getManager()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    return-object p0
.end method

.method public final getViewDownListener()Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;

    return-object p0
.end method

.method public final h()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->createDragListener()Landroid/view/View$OnDragListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public final i()V
    .locals 4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/android/sdk/universal/R$string;->can_not_goto_deleted_note_tip:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public final initEditorView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->setEditorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->updateContentView(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getDisplayBundle()Lcom/onyx/android/sdk/universal/editor/DisplayBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h()V

    return-void
.end method

.method public final onDeleteExcerptResultEvent(Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isEnabledSplitScreen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->c()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isDocumentOpen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "notify hide quote indicator"

    invoke-virtual {v1, v2, v4, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->b()V

    iget-object p0, v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/HideQuoteIndicatorEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;->getResult()Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;->getExcerptCollectionList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/HideQuoteIndicatorEvent;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onDismissShapeHighlightAnimationEvent(Lcom/onyx/android/sdk/universal/editor/events/note/DismissShapeHighlightAnimationEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/DismissShapeHighlightAnimationEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->b()V

    return-void
.end method

.method public final onDocumentOpenSuccessEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->setAnimatingStartSplitScreen(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDoAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onShowShapeHighlightAnimationEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeHighlightAnimationEvent;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeHighlightAnimationEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->b()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowShapeHighlightAnimationAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeHighlightAnimationEvent;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowShapeHighlightAnimationAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSplitScreenOpenShapeLinkEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenOpenShapeLinkEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenOpenShapeLinkEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenOpenShapeLinkEvent;->getLinkBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->c()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v1

    iget-object v2, v1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v1, v3, v2, v3}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->ensureEnableSpiltScreen$default(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;ILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->openAnotherDocument(Ljava/lang/String;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$a;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$a;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenOpenShapeLinkEvent;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$b;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$b;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenOpenShapeLinkEvent;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnNext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenOpenShapeLinkEvent;->getLinkBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isLinkPageType()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenOpenShapeLinkEvent;->getLinkBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->gotoPageOrShape(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    :cond_3
    return-void
.end method

.method public final onSplitScreenShowQuoteEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-direct {v0, v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSplitScreenShowSourceEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->c()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;->getSourceDocId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/GotoSourceEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;->getSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/GotoSourceEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadNoteModelAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;->getSourceDocId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadNoteModelAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$c;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$c;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$d;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$d;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$e;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$e;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$f;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$f;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$g;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$g;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onStartDropImageTransformEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StartDropImageTransformEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartDropImageTransformEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartDropImageTransformEvent;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isEnabledSplitScreen()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->c()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isDocumentOpen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    iget-object v0, v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->e:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->updateFocusId(Ljava/lang/String;Z)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/StartTransformEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartDropImageTransformEvent;->getTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTransformEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->filterByActionDown(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->e:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;->onDown(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onUpdateExcerptResultEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->isEnabledSplitScreen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->c()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isDocumentOpen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateQuoteShapeEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultEvent;->getArgs()Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateQuoteShapeEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final openAnotherDocument(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            "Landroid/graphics/RectF;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "noteModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->g()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$j;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$j;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$k;

    invoke-direct {v0, p0, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$k;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Landroid/graphics/RectF;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$l;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$l;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$m;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$m;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$n;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$n;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final openAnotherDocument(Ljava/lang/String;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "docId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->c()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "just(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$openAnotherDocument$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$openAnotherDocument$1;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$openAnotherDocument$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$openAnotherDocument$2;

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$h;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$h;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$i;

    invoke-direct {v0, p0, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$i;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Landroid/graphics/RectF;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final postEditorCreatedEvent(Landroidx/lifecycle/Lifecycle;Landroidx/activity/result/ActivityResultCaller;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/activity/result/ActivityResultCaller;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityResultLauncher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/EditorCreatedEvent;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/EditorCreatedEvent;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/activity/result/ActivityResultCaller;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final saveDocument(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isDocumentOpen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;-><init>(Z)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setEditorView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->editorView:Landroid/view/View;

    return-void
.end method
