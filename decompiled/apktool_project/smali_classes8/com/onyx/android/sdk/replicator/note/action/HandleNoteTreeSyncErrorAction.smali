.class public final Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0004H\u0002R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;",
        "l",
        "docListRequest",
        "m",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "f",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "getReplicator",
        "()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "replicator",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V",
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


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    return-void
.end method

.method public static final synthetic access$loadCouchDocList(Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;)Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;->l()Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateProgress(Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;)Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;->m(Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;)Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;

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
            "Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->createBaseObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction$b;-><init>(Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

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

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;-><init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;->execute()Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;

    return-object v1
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;)Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;->getDocumentList()Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

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
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicatorError()Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    move-result-object v0

    if-nez v0, :cond_3

    return-object p0

    :cond_3
    new-instance v1, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->setStatus(I)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->addErrorTypeList(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/couchbase/lite/MutableDocument;

    sget-object v3, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteDocument(Lcom/couchbase/lite/MutableDocument;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteDocSyncEnabled(Lcom/couchbase/lite/MutableDocument;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    invoke-direct {v3}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;-><init>()V

    invoke-virtual {v2}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v3

    const-string v4, "note"

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setScope(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setSyncType(I)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v2, v4}, Lcom/couchbase/lite/Document;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setAccountId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setSyncStatus(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;

    new-instance v1, Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;

    new-instance v2, Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;-><init>(Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->post(Ljava/lang/Object;)V

    return-object p0
.end method
