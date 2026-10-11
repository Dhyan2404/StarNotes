.class public final Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartNoteDocSyncAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartNoteDocSyncAction.kt\ncom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n1855#2,2:136\n*S KotlinDebug\n*F\n+ 1 StartNoteDocSyncAction.kt\ncom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction\n*L\n128#1:136,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\u000f\u001a\u00020\u0007H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
        "noteReplicatorManager",
        "start",
        "",
        "exportUserData",
        "l",
        "p",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "replicator",
        "o",
        "m",
        "n",
        "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;",
        "f",
        "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;",
        "startReplicatorBean",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;",
        "checkArgs",
        "<init>",
        "(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStartNoteDocSyncAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartNoteDocSyncAction.kt\ncom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n1855#2,2:136\n*S KotlinDebug\n*F\n+ 1 StartNoteDocSyncAction.kt\ncom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction\n*L\n128#1:136,2\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "startReplicatorBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->f:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    .line 5
    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->g:Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    new-instance p2, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-direct {p2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;-><init>()V

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V

    return-void
.end method

.method public static final synthetic access$checkSyncGatewayExist(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$exportUserData(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->exportUserData()V

    return-void
.end method

.method public static final synthetic access$start(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->o(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$syncForceRemovedNote(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->p()Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->g:Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$b;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$c;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final exportUserData()V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;->exportToPBFromDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V

    return-void
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getSyncGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V
    .locals 6

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/couchbase/lite/SelectResult;

    const-string v2, "uniqueId"

    invoke-static {v2}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "type"

    invoke-static {v3}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-static {v1}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCollectionRequireNonNull()Lcom/couchbase/lite/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->noteTreeExpression()Lcom/couchbase/lite/Expression;

    move-result-object v1

    sget-object v4, Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;->isNoteEnabledExpression()Lcom/couchbase/lite/Expression;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;->notCommitDocExpression()Lcom/couchbase/lite/Expression;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;->docSyncEnableExpression()Lcom/couchbase/lite/Expression;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object p1

    const-string v1, "where(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lcom/couchbase/lite/Query;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/couchbase/lite/ResultSet;->allResults()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/couchbase/lite/Result;

    invoke-virtual {v4, v2}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v3}, Lcom/couchbase/lite/Result;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->f:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setSyncDocIdList(Ljava/util/List;)V

    return-void
.end method

.method public final n()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    sget-object v2, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserNoteTreeProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getNoteProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->f:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncDocIdList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadParentIds(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->f:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getLibraryDocIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->f:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncDocIdList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->f:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncAll()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->m(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->n()V

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start note size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->f:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncDocIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->f:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;-><init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->post(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;->f:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncAll()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;-><init>(Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$j;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final start(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
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
            "Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "noteReplicatorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$d;->e:Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$e;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$f;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;->getTreeReplicator()Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$g;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;->getTreeReplicator()Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$h;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$h;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$i;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction$i;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
