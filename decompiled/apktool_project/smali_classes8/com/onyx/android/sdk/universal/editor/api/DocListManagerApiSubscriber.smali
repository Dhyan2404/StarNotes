.class public final Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;
.super Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00084\u00105J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0015H\u0007J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001e2\u0006\u0010\u0005\u001a\u00020\u0013H\u0002J\u001e\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001e2\u0006\u0010!\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020\u0013H\u0002R*\u0010+\u001a\u0015\u0012\u000c\u0012\n %*\u0004\u0018\u00010\u00130\u00130$\u00a2\u0006\u0002\u0008&8\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R$\u00103\u001a\u0004\u0018\u00010,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;",
        "Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;",
        "",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportPdfEvent;",
        "event",
        "onImportPdfEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsEvent;",
        "onImportDocumentsEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsDoneEvent;",
        "onImportDocumentsDoneEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/OpenDocumentEvent;",
        "onOpenDocumentEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageEvent;",
        "onImportImageEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;",
        "onSaveDocumentEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartAutoBackupEvent;",
        "onStartAutoBackupEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;",
        "onStartActivateDocumentEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/CloseDocumentEvent;",
        "onCloseDocumentEvent",
        "",
        "docId",
        "e",
        "f",
        "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;",
        "autoBackupContext",
        "k",
        "Lio/reactivex/rxjava3/core/Observable;",
        "d",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "syncModel",
        "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
        "j",
        "Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "a",
        "Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "getActivateDocumentSubject",
        "()Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "activateDocumentSubject",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "b",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "getActivateDocumentDisposeable",
        "()Lio/reactivex/rxjava3/disposables/Disposable;",
        "setActivateDocumentDisposeable",
        "(Lio/reactivex/rxjava3/disposables/Disposable;)V",
        "activateDocumentDisposeable",
        "<init>",
        "()V",
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
.field public final a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;-><init>()V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$1;-><init>(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->concatMapIfLast(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->b:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->i(Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;)V

    return-void
.end method

.method public static final synthetic access$activateDocument(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->d(Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$autoBackup(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$openDocument(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->j(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->g(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->h(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    return-void
.end method

.method public static final g(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static final h(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static final i(Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;)V
    .locals 1

    const-string v0, "$event"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;->getDestroy()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$onSaveDocumentEvent$5$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$onSaveDocumentEvent$5$1;-><init>(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->takeIfTrue(Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/RenderRequestManagerKt;->safeClearAllSliceCache(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "just(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$1;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$2;

    invoke-direct {v3, p0, v0}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$2;-><init>(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$a;-><init>(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$b;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$b;-><init>(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$c;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$c;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->destroy()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->b:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->b:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "docId is null, can\'t auto backup"

    invoke-virtual {p0, p1, v1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getLocalBackupAutoOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudBackupAutoOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;-><init>(Ljava/lang/String;ZZ)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->insertAutoBackupTask(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 11

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;-><init>()V

    new-instance v10, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;-><init>(IZZZLjava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setSyncAll(Z)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setSyncDocIdList(Ljava/util/List;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;

    invoke-direct {p1, v10, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final getActivateDocumentDisposeable()Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->b:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method public final getActivateDocumentSubject()Lio/reactivex/rxjava3/subjects/BehaviorSubject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    return-object p0
.end method

.method public final j(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$openDocument$openDocArgs$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$openDocument$openDocArgs$1;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setPageId(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$d;-><init>(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final k(Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;)V
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onCloseDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/app/CloseDocumentEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/CloseDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/CloseDocumentEvent;->getSave()Z

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/CloseDocumentEvent;->getCleanContentView()Z

    move-result p1

    invoke-direct {v1, p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZZ)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onImportDocumentsDoneEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsDoneEvent;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;->pauseTask(Z)V

    return-void
.end method

.method public final onImportDocumentsEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsEvent;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;->pauseTask(Z)V

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsEvent;->getImportArgs()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onImportImageEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageEvent;->getArgs()Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onImportPdfEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ImportPdfEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportPdfEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportPdfEvent;->getUriList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;->setUriList(Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onOpenDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/app/OpenDocumentEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/OpenDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/OpenDocumentEvent;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSaveDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$onSaveDocumentEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$onSaveDocumentEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;)V

    new-instance v2, Lcom/sunia/HTREnginev2/o7f;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/o7f;-><init>(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$onSaveDocumentEvent$3;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$onSaveDocumentEvent$3;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;)V

    new-instance v2, Lcom/sunia/HTREnginev2/p7f;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/p7f;-><init>(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/q7f;

    invoke-direct {v1, p1, p0}, Lcom/sunia/HTREnginev2/q7f;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onStartActivateDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RenderRequestManagerKt;->safeClearAllSliceCache(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onStartAutoBackupEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StartAutoBackupEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartAutoBackupEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartAutoBackupEvent;->getDocId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final setActivateDocumentDisposeable(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->b:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
