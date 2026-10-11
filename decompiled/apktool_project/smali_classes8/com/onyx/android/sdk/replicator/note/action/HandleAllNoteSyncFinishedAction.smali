.class public final Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0004\u001a\u00020\u0000H\u0002J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
        "f",
        "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
        "replicatorManager",
        "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;",
        "g",
        "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;",
        "startReplicatorBean",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)V",
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
.field public final f:Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replicatorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;->f:Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;

    return-void
.end method

.method public static final synthetic access$detachStartReplicatorBean(Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;)Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;->l()Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$start(Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;->m()Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;->f:Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction$b;-><init>(Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;->f:Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->detachStartReplicatorBean()Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;->g:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;->g:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction$c;-><init>(Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
