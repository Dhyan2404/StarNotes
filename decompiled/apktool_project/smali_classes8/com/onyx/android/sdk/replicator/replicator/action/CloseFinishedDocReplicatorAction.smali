.class public final Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;
.super Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction<",
        "Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0016\u0010\u0005\u001a\u00020\u00002\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00000\tH\u0016J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u000b\u001a\u00020\u0003H\u0002J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u000b\u001a\u00020\u0003H\u0002J\u0018\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0006H\u0002R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;",
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "replicatorInfoList",
        "setReplicatorInfoList",
        "",
        "success",
        "setSuccess",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "replicatorInfo",
        "l",
        "m",
        "closedSuccess",
        "n",
        "f",
        "Ljava/util/List;",
        "g",
        "Z",
        "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
        "replicatorManager",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V",
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
.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replicatorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;-><init>(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;->g:Z

    return-void
.end method

.method public static final synthetic access$closeDocObservable(Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;->l(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onClosedDocument(Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;Z)Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;->n(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;Z)Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;

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
            "Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;->f:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;->f:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$e;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$e;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$f;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$g;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;->m(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$a;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->isRunningOrWaitingDocReplicator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->isClosingDocId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->addClosingDocId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->ensureReplicatorObservableWithoutPost(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$b;->e:Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$c;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$c;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$d;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction$d;-><init>(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;Z)Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->isShapeReplicatorError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->onReplicateFail(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->finishReplicator(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->removeClosingDocId(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setReplicatorInfoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;->f:Ljava/util/List;

    return-object p0
.end method

.method public final setSuccess(Z)Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;->g:Z

    return-object p0
.end method
