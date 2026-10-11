.class public final Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;
.super Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000c\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\r\u001a\u00020\u0000H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;",
        "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;",
        "eventBus",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "info",
        "Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;",
        "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;)V",
        "addDataCommitPoint",
        "",
        "dataBean",
        "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
        "onDataSyncSuccess",
        "onPullDataSaveSuccess",
        "syncActual",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "eventBus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;-><init>(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;)V

    return-void
.end method

.method public static synthetic A(Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;->B(Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;)V

    return-void
.end method

.method public static final B(Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->postSyncProgressEvent()V

    return-void
.end method


# virtual methods
.method public addDataCommitPoint(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onDataSyncSuccess(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onPullDataSaveSuccess(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public syncActual()Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteUserSyncDataListAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteUserSyncDataListAction;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    .line 3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator$a;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator$b;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/sunia/HTREnginev2/c5k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/c5k;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method public bridge synthetic syncActual()Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;->syncActual()Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;

    move-result-object p0

    return-object p0
.end method
