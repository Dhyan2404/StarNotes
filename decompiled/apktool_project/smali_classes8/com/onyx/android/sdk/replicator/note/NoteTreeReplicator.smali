.class public final Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;
.super Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0006\u0010\u0006\u001a\u00020\u0004J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u0004H\u0002J\u0008\u0010\u000e\u001a\u00020\u0004H\u0002R\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "createObservable",
        "",
        "onSyncChangeFinished",
        "startDataReplicator",
        "Lcom/couchbase/lite/Document;",
        "document",
        "",
        "x",
        "A",
        "w",
        "y",
        "z",
        "Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;",
        "Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;",
        "dataReplicator",
        "",
        "getCouchName",
        "()Ljava/lang/String;",
        "couchName",
        "getCbUserId",
        "cbUserId",
        "Lcom/onyx/android/sdk/bundle/DBProviderBundle;",
        "providerBundle",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;",
        "replicatorArgs",
        "<init>",
        "(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;)V",
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
.field public final w:Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/bundle/DBProviderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "providerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replicatorArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;-><init>(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;)V

    new-instance p1, Lcom/sunia/HTREnginev2/a5k;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/a5k;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->setPushFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    new-instance p1, Lcom/sunia/HTREnginev2/b5k;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/b5k;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->setPullFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;->setUserId(Ljava/lang/String;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance p2, Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;

    invoke-direct {p2, p1, v0}, Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;-><init>(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;->w:Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;

    return-void
.end method

.method public static synthetic s(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/couchbase/lite/Document;Ljava/util/EnumSet;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;->v(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/couchbase/lite/Document;Ljava/util/EnumSet;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/couchbase/lite/Document;Ljava/util/EnumSet;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;->u(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/couchbase/lite/Document;Ljava/util/EnumSet;)Z

    move-result p0

    return p0
.end method

.method public static final u(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/couchbase/lite/Document;Ljava/util/EnumSet;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;->x(Lcom/couchbase/lite/Document;)Z

    move-result p0

    return p0
.end method

.method public static final v(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/couchbase/lite/Document;Ljava/util/EnumSet;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;->x(Lcom/couchbase/lite/Document;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->hasSynced()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HHMMSS()Ljava/text/SimpleDateFormat;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudSyncLastTime()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object v0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final createObservable()Lio/reactivex/rxjava3/core/Observable;
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator$b;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCbUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getUserId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCouchName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "NOTE_TREE"

    return-object p0
.end method

.method public onSyncChangeFinished()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;->A()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;->y()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;->z()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;->w()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->sendReplicatorInfoBroadcast()V

    return-void
.end method

.method public final startDataReplicator()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;->w:Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->startSync()V

    return-void
.end method

.method public final w()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicatorError()Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;-><init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;->isTokenInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/action/CloseNoteTreeReplicatorAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/note/action/CloseNoteTreeReplicatorAction;-><init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator$a;->e:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public final x(Lcom/couchbase/lite/Document;)Z
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isCommitPoint(Lcom/couchbase/lite/Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "documentUniqueId"

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/Document;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->isEnabledSyncDocId(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;->isNoteTagDocument(Lcom/couchbase/lite/Document;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "documentId"

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/Document;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->isEnabledSyncDocId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->isEnabledSyncDocId(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->isEnabledSyncDocId(Ljava/lang/String;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public final y()V
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->detachPullUpdateDocIdList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->detachPullDeleteDocIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v3, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;

    new-instance v2, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, p0, v2, v0}, Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;-><init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Ljava/util/List;Ljava/util/List;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final z()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->detachPushUpdateDocIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;

    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v1}, Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;-><init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Ljava/util/List;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
