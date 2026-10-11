.class public abstract Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReplicatorManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReplicatorManager.kt\ncom/onyx/android/sdk/replicator/replicator/ReplicatorManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,295:1\n215#2,2:296\n*S KotlinDebug\n*F\n+ 1 ReplicatorManager.kt\ncom/onyx/android/sdk/replicator/replicator/ReplicatorManager\n*L\n246#1:296,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u001e\n\u0002\u0008\u000e\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\\\u0010]J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J8\u0010\u000b\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH&J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH&J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0005J\u0006\u0010\u0013\u001a\u00020\u0002J\u0006\u0010\u0014\u001a\u00020\u0002J\u000e\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015J\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0015J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tJ\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0019J\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00192\u0006\u0010\u001b\u001a\u00020\u0005J\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00192\u0006\u0010\u001b\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0015J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010!\u001a\u00020\u0000J\u0006\u0010\"\u001a\u00020\u0000J\u0006\u0010#\u001a\u00020\u0000J\u000e\u0010$\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010%\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010&\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010(\u001a\u00020\'2\u0006\u0010\u0011\u001a\u00020\u0005J\u0006\u0010)\u001a\u00020\u0002J\u0006\u0010*\u001a\u00020\u0002J\u0010\u0010+\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010,\u001a\u00020\'2\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010-\u001a\u00020\'2\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010.\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tJ\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060/J\u0008\u00101\u001a\u00020\u0002H\u0016J\u0006\u00103\u001a\u000202J\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060/J\u0008\u00105\u001a\u00020\u0000H\u0016J\u0006\u00106\u001a\u00020\u0002J\u0016\u00107\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00192\u0006\u0010\n\u001a\u00020\tH\u0016R \u0010:\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u00109R \u0010;\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u00109R\u0014\u0010=\u001a\u0002028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010<R\u001a\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u00050>8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u001a\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00050>8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010@R\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0011\u0010M\u001a\u00020J8F\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010LR\u0011\u0010N\u001a\u00020\'8F\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010OR\u0019\u0010S\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060P8F\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010RR\u0017\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\u00060P8F\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010RR\u0011\u0010X\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010WR\u0011\u0010[\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010Z\u00a8\u0006^"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
        "",
        "",
        "a",
        "",
        "",
        "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
        "srcMap",
        "dstMap",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "replicatorInfo",
        "b",
        "",
        "c",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "getTreeReplicator",
        "createDocReplicator",
        "documentId",
        "ensureDocReplicator",
        "start",
        "close",
        "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;",
        "replicatorBean",
        "mergeStartReplicatorBean",
        "detachStartReplicatorBean",
        "Lio/reactivex/rxjava3/core/Observable;",
        "createObservable",
        "docId",
        "ensureReplicatorObservable",
        "ensureReplicatorObservableWithoutPost",
        "startReplicatorBean",
        "addPendingDoc",
        "addWaitingDocReplicator",
        "clearDocReplicator",
        "clearQueue",
        "clearSyncReplicators",
        "onReplicateFail",
        "addClosingDocId",
        "removeClosingDocId",
        "",
        "isClosingDocId",
        "scheduleNextReplicator",
        "timerScheduleWaitingReplicator",
        "getRunningDocReplicator",
        "isRunningDocReplicator",
        "isRunningOrWaitingDocReplicator",
        "finishReplicator",
        "",
        "getRunningDocReplicatorMap",
        "onAllDocsSyncFinished",
        "Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;",
        "getPendingDocReplicators",
        "getWaitingDocReplicatorMap",
        "postProgress",
        "checkClearFinishMapDocId",
        "addCommitPoint",
        "Ljava/util/LinkedHashMap;",
        "Ljava/util/LinkedHashMap;",
        "runningDocReplicatorMap",
        "waitingDocReplicatorMap",
        "Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;",
        "pendingDocReplicators",
        "Ljava/util/LinkedHashSet;",
        "d",
        "Ljava/util/LinkedHashSet;",
        "finishDocIdMap",
        "e",
        "closingDocIdMap",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "f",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "rxScheduler",
        "g",
        "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getObserveOn",
        "()Lio/reactivex/rxjava3/core/Scheduler;",
        "observeOn",
        "isSyncEnabled",
        "()Z",
        "",
        "getRunningDocReplicatorList",
        "()Ljava/util/Collection;",
        "runningDocReplicatorList",
        "getOpenDocReplicatorList",
        "openDocReplicatorList",
        "getRunningDocInfo",
        "()Ljava/lang/String;",
        "runningDocInfo",
        "getProgress",
        "()I",
        "progress",
        "<init>",
        "()V",
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
        "SMAP\nReplicatorManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReplicatorManager.kt\ncom/onyx/android/sdk/replicator/replicator/ReplicatorManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,295:1\n215#2,2:296\n*S KotlinDebug\n*F\n+ 1 ReplicatorManager.kt\ncom/onyx/android/sdk/replicator/replicator/ReplicatorManager\n*L\n246#1:296,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->b:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->c:Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->d:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->e:Ljava/util/LinkedHashSet;

    sget-object v0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->newSingleThreadManager()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->f:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public final addClosingDocId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCommitPoint(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "replicatorInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final addPendingDoc(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "startReplicatorBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncDocIdList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->checkClearFinishMapDocId()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncDocIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getLibraryDocIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->c:Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getTriggerSource()I

    move-result v4

    invoke-virtual {v3, v1, v4, v2}, Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;->addReplicator(Ljava/lang/String;II)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getTreeReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCbUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->setUserId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final addWaitingDocReplicator(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "replicatorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->b(Ljava/util/Map;Ljava/util/Map;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V

    return-object p0
.end method

.method public final b(Ljava/util/Map;Ljava/util/Map;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()I
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getPendingDocReplicators()Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getRunningDocReplicatorMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getWaitingDocReplicatorMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final checkClearFinishMapDocId()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->clear()V

    :cond_0
    return-void
.end method

.method public final clearDocReplicator()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a()V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-object p0
.end method

.method public final clearQueue()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a()V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->c:Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-object p0
.end method

.method public final clearSyncReplicators()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->c:Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-object p0
.end method

.method public final close()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getTreeReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract createDocReplicator(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final createObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final detachStartReplicatorBean()Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->g:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->g:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    return-object v0
.end method

.method public final ensureDocReplicator(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "replicatorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;

    if-eqz v1, :cond_0

    return-object v1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->createDocReplicator(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;

    move-result-object v1

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->reset()V

    return-object v1
.end method

.method public final ensureDocReplicator(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->Companion:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo$Companion;->create(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getTreeReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCbUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->setUserId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->ensureDocReplicator(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;

    move-result-object p0

    return-object p0
.end method

.method public final ensureReplicatorObservable(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "docId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager$a;-><init>(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager$b;->e:Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager$b;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final ensureReplicatorObservableWithoutPost(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "docId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager$c;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager$c;-><init>(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager$d;->e:Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager$d;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final finishReplicator(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "replicatorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->d:Ljava/util/LinkedHashSet;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public final getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->f:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public final getOpenDocReplicatorList()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getPendingDocReplicators()Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->c:Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;

    return-object p0
.end method

.method public final getProgress()I
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/16 v0, 0x64

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public final getRunningDocInfo()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRunningDocReplicator(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a()V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;

    return-object p0
.end method

.method public final getRunningDocReplicatorList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a()V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "<get-values>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRunningDocReplicatorMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public abstract getTreeReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getWaitingDocReplicatorMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->b:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public final isClosingDocId(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isRunningDocReplicator(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isRunningOrWaitingDocReplicator(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isSyncEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final mergeStartReplicatorBean(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replicatorBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->g:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;-><init>(IZZZLjava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->g:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->g:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    if-eqz p0, :cond_1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBeanKt;->merge(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V

    :cond_1
    return-void
.end method

.method public onAllDocsSyncFinished()V
    .locals 0

    return-void
.end method

.method public final onReplicateFail(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "replicatorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->a()V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->c:Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;->onReplicateFail(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V

    return-void
.end method

.method public postProgress()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public final removeClosingDocId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final scheduleNextReplicator()V
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/ScheduleNextDocReplicatorAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/ScheduleNextDocReplicatorAction;-><init>(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final start()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getTreeReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final timerScheduleWaitingReplicator()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager$timerScheduleWaitingReplicator$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager$timerScheduleWaitingReplicator$1;-><init>(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    return-void
.end method
