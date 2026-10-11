.class public final Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;
.super Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\u0001H\u0016J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0007J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0012H\u0007R\u0014\u0010\u0016\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
        "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "replicatorInfo",
        "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
        "createDocReplicator",
        "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;",
        "getTreeReplicator",
        "postProgress",
        "Lio/reactivex/rxjava3/core/Observable;",
        "addCommitPoint",
        "",
        "onAllDocsSyncFinished",
        "Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;",
        "event",
        "onDocDataSyncProgressEvent",
        "Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;",
        "onStartNoteDocReplicatorEvent",
        "Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;",
        "onDocSyncFinishEvent",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;",
        "noteTreeReplicator",
        "treeReplicator",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "treeReplicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;->h:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    return-void
.end method


# virtual methods
.method public addCommitPoint(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "replicatorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;->h:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$a;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$a;-><init>(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public createDocReplicator(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "replicatorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;->h:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/replicator/note/NoteDocReplicator;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V

    return-object v0
.end method

.method public getTreeReplicator()Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;->h:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    return-object p0
.end method

.method public bridge synthetic getTreeReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;->getTreeReplicator()Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    move-result-object p0

    return-object p0
.end method

.method public onAllDocsSyncFinished()V
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onDocDataSyncProgressEvent(Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$b;->e:Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$b;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$c;->e:Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$c;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onDocSyncFinishEvent(Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;-><init>(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;->setReplicatorInfo(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;->isSuccess()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;->setSuccess(Z)Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onStartNoteDocReplicatorEvent(Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;)V
    .locals 13
    .param p1    # Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;->getStartReplicatorBean()Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncAll()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;->getStartReplicatorBean()Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncDocIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;->getStartReplicatorBean()Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_1
    new-instance v7, Lcom/onyx/android/sdk/replicator/note/action/StartUserDataReplicatorAction;

    invoke-direct {v7}, Lcom/onyx/android/sdk/replicator/note/action/StartUserDataReplicatorAction;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$d;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$d;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/AddPendingDocReplicatorAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;->getStartReplicatorBean()Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/AddPendingDocReplicatorAction;-><init>(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$e;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$e;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public postProgress()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/event/TotalSyncNoteProgressEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getProgress()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/event/TotalSyncNoteProgressEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-object p0
.end method
