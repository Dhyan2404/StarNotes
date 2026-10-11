.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u001f\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "anotherEditorBundle",
        "o",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "syncNoteModel",
        "",
        "l",
        "",
        "n",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "manager",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;",
        "event",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "j",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "",
        "",
        "k",
        "Ljava/util/List;",
        "quoteIds",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;)V",
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
.field public final h:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->h:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->i:Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->k:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$checkPrepareOpenNoteEnabled(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->l(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getEvent$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->i:Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;

    return-object p0
.end method

.method public static final synthetic access$getManager$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->h:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    return-object p0
.end method

.method public static final synthetic access$getQuoteIds$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->k:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$loadShape(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setShape$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->j:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method

.method public static final synthetic access$showNoteNotExistError(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->n()V

    return-void
.end method

.method public static final synthetic access$updateQuotes(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->o(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->h:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getFocusId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->h:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getAnotherEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->i:Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;->getQuoteDocId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/GotoQuoteEvent;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->i:Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;->getQuoteId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/GotoQuoteEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$a;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$c;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$d;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$e;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$f;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$g;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$h;

    invoke-direct {v2, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->n()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->i:Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;->getSourceShapeId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$j;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;Lcom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()V
    .locals 4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/android/sdk/universal/R$string;->can_not_goto_deleted_note_tip:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->j:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$m;

    invoke-direct {v2, p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$n;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
