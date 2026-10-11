.class public final Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
        "noteReplicatorManager",
        "start",
        "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;",
        "f",
        "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;",
        "startReplicatorBean",
        "<init>",
        "(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V",
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
.field public final f:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "startReplicatorBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;->f:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    return-void
.end method

.method public static final synthetic access$getStartReplicatorBean$p(Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;)Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;->f:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    return-object p0
.end method

.method public static final synthetic access$start(Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;->start(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;->getCurNoteRepManagerObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final start(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$b;->e:Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;->getTreeReplicator()Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$c;

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$c;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$d;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$d;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
