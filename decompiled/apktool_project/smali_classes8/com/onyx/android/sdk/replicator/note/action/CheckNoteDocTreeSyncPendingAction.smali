.class public final Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0004\u001a\u00020\u0000H\u0002R\u0017\u0010\n\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0010\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "f",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "getReplicator",
        "()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "replicator",
        "",
        "g",
        "Ljava/lang/String;",
        "getDocumentId",
        "()Ljava/lang/String;",
        "documentId",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Ljava/lang/String;)V",
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
.field public final f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;->g:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$check(Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;)Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;->l()Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;

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
            "Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->createBaseObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->pendingDocumentIds()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v0

    const-string v1, "note"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setScope(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setSyncType(I)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCbUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setAccountId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->setStatus(I)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setSyncStatus(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;

    new-instance v2, Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;

    new-instance v3, Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;-><init>(Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->post(Ljava/lang/Object;)V

    return-object p0
.end method
