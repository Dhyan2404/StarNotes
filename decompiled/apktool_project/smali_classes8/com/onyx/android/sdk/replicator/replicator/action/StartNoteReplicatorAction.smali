.class public final Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;
.super Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction<",
        "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u001d\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;",
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;",
        "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "",
        "f",
        "Ljava/util/List;",
        "getDocIdList",
        "()Ljava/util/List;",
        "docIdList",
        "<init>",
        "(Ljava/util/List;)V",
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
.field public final f:Ljava/util/List;
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
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "docIdList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$startReplicator(Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;->l()Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$a;->e:Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$b;->e:Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$c;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$d;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDocIdList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;->f:Ljava/util/List;

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->getCurNoteRepManagerObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$e;->e:Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$e;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$f;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
