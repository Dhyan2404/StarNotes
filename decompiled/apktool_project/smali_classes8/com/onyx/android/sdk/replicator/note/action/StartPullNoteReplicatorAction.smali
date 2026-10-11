.class public final Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u000e\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B+\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0012\u0012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0012\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0008\u001a\u00020\u0006H\u0002J\u0016\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002R\u0014\u0010\u0011\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0014R(\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0014\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "treeReplicator",
        "Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;",
        "n",
        "docListRequest",
        "",
        "",
        "p",
        "pullDocIds",
        "",
        "o",
        "f",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "replicator",
        "",
        "g",
        "Ljava/util/List;",
        "updateDocIdList",
        "h",
        "deleteDocIdList",
        "i",
        "getRemoveDocIdList",
        "()Ljava/util/List;",
        "setRemoveDocIdList",
        "(Ljava/util/List;)V",
        "removeDocIdList",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Ljava/util/List;Ljava/util/List;)V",
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

.field public final h:Ljava/util/List;
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

.field public i:Ljava/util/List;
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
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "replicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDocIdList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteDocIdList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->g:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->h:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->i:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$loadCouchDocList(Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->n(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postPullSyncNoteEvent(Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;Ljava/util/Set;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->o(Ljava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$postStartPullTreeEvent(Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;)Ljava/util/Set;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->p(Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->m(Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;)Z

    move-result p0

    return p0
.end method

.method public static final m(Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->g:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->createBaseObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction$b;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction$c;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/xxm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xxm;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction$d;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRemoveDocIdList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->i:Ljava/util/List;

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->g:Ljava/util/List;

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelyDetachList(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;-><init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;->execute()Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;

    return-object v0
.end method

.method public final o(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/event/PullSyncNoteEvent;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/replicator/event/PullSyncNoteEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->i:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/event/PullRemoveSyncNoteEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->i:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/event/PullRemoveSyncNoteEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;)Ljava/util/Set;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->h:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->i:Ljava/util/List;

    iget-object v4, v0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->h:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;->getDocumentList()Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/couchbase/lite/MutableDocument;

    sget-object v8, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;

    invoke-virtual {v8, v6}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteDocCommitPoint(Lcom/couchbase/lite/Document;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "documentUniqueId"

    invoke-virtual {v6, v9}, Lcom/couchbase/lite/Document;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    new-instance v10, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    invoke-direct {v10}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;-><init>()V

    invoke-virtual {v6, v9}, Lcom/couchbase/lite/Document;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v9

    const-string v10, "note"

    invoke-virtual {v9, v10}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setScope(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setSyncType(I)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v9

    const-string v10, "user"

    invoke-virtual {v6, v10}, Lcom/couchbase/lite/Document;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setAccountId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v9

    new-instance v10, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    invoke-direct {v10}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;-><init>()V

    invoke-virtual {v10, v7}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->setStatus(I)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v9, v10}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->setSyncStatus(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v8, v6}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteDocument(Lcom/couchbase/lite/MutableDocument;)Z

    move-result v7

    const-string v9, "getId(...)"

    if-nez v7, :cond_3

    invoke-virtual {v8, v6}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteLibrary(Lcom/couchbase/lite/MutableDocument;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    invoke-virtual {v8, v6}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteDocEnabled(Lcom/couchbase/lite/MutableDocument;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->i:Ljava/util/List;

    invoke-virtual {v6}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v8, v6}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteLibrary(Lcom/couchbase/lite/MutableDocument;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v8, v6}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteDocEnabled(Lcom/couchbase/lite/MutableDocument;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    invoke-virtual {v6}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v8, v6}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteLibrary(Lcom/couchbase/lite/MutableDocument;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v8, v6}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteDocEnabled(Lcom/couchbase/lite/MutableDocument;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    sget-object v3, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;

    new-instance v6, Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;

    new-instance v8, Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;

    invoke-direct {v8, v4}, Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;-><init>(Ljava/util/List;)V

    invoke-direct {v6, v8}, Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;-><init>(Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;)V

    invoke-virtual {v3, v6}, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->post(Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v0, v0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->f:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    new-instance v3, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7f

    const/16 v17, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v17}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;-><init>(IZZZLjava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setSyncDocIdList(Ljava/util/List;)V

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setLibraryDocIdList(Ljava/util/List;)V

    invoke-virtual {v3, v7}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setSyncAll(Z)V

    new-instance v2, Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;-><init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->post(Ljava/lang/Object;)V

    :cond_8
    return-object v1
.end method

.method public final setRemoveDocIdList(Ljava/util/List;)V
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

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;->i:Ljava/util/List;

    return-void
.end method
