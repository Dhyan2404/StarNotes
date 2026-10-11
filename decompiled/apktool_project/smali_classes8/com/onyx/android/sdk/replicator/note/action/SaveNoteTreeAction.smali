.class public final Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
        "noteReplicatorManager",
        "save",
        "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;",
        "replicator",
        "Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;",
        "syncNoteTreeBean",
        "l",
        "f",
        "Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;)V",
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
.field public final f:Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "syncNoteTreeBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;->f:Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    return-void
.end method

.method public static final synthetic access$getSyncNoteTreeBean$p(Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;)Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;->f:Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    return-object p0
.end method

.method public static final synthetic access$save(Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;)Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;->l(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;)Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;

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
            "Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;->getCurNoteRepManagerObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;)Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;-><init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->setSyncNoteTreeBean(Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;)Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->execute()Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;

    return-object p0
.end method

.method public final save(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "noteReplicatorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;->getTreeReplicator()Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction$b;-><init>(Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction$c;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction$c;-><init>(Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
