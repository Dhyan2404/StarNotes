.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;
.super Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction<",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalRestoreAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalRestoreAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n1#2:57\n1855#3,2:58\n*S KotlinDebug\n*F\n+ 1 LocalRestoreAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction\n*L\n50#1:58,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\'\u0010\u0017\u001a\u0015\u0012\u000c\u0012\n \u0013*\u0004\u0018\u00010\u00020\u00020\u0012\u00a2\u0006\u0002\u0008\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "throwable",
        "",
        "q",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;",
        "g",
        "Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;",
        "restoreContext",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "h",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "progressSubject",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "i",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "localImportDisposable",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V",
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
        "SMAP\nLocalRestoreAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalRestoreAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n1#2:57\n1855#3,2:58\n*S KotlinDebug\n*F\n+ 1 LocalRestoreAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction\n*L\n50#1:58,2\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restoreContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->g:Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->h:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-void
.end method

.method public static final synthetic access$handleRestoreError(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->q(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$localImport(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->o(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->p(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;)V

    return-void
.end method

.method public static final o(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final p(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->g:Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;-><init>(Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupIoObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction$a;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction$c;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/r0j;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/r0j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->h:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    new-instance v1, Lcom/sunia/HTREnginev2/s0j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/s0j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnDispose(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Ljava/lang/Throwable;)V
    .locals 3

    const-class v0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local restore error e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->g:Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;->setThrowable(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->g:Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;->getNoteImportList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setUseOriginParentId(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->g:Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;->getNoteImportList()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
