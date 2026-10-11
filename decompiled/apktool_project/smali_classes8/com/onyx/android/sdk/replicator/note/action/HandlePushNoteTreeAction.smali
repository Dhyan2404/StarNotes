.class public final Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\u000c\u001a\u00020\u0004\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0006H\u0002R\u0014\u0010\u000c\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "treeReplicator",
        "Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;",
        "l",
        "docListRequest",
        "m",
        "f",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "replicator",
        "",
        "",
        "g",
        "Ljava/util/List;",
        "docIdList",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Ljava/util/List;)V",
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

.field public final g:Ljava/util/List;
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
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "replicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "docIdList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;->g:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$loadCouchDocList(Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;->l(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postSyncProgress(Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;)Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;->m(Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;)Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;

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
            "Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->createBaseObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction$b;-><init>(Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;->g:Ljava/util/List;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;-><init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;->execute()Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;

    return-object v0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;)Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;
    .locals 4

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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/MutableDocument;

    sget-object v2, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteDocCommitPoint(Lcom/couchbase/lite/Document;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;-><init>()V

    const-string v3, "documentUniqueId"

    invoke-virtual {v1, v3}, Lcom/couchbase/lite/Document;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v2

    const-string v3, "note"

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setScope(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setSyncType(I)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v1, v3}, Lcom/couchbase/lite/Document;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setAccountId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->setStatus(I)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->setPushAt(Ljava/util/Date;)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setSyncStatus(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;

    new-instance v1, Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;

    new-instance v2, Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;-><init>(Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->post(Ljava/lang/Object;)V

    return-object p0
.end method
