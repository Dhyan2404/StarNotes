.class public abstract Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0010#\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010`\u001a\u00020[\u0012\u0008\u0010\u00b2\u0001\u001a\u00030\u00b1\u0001\u00a2\u0006\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000c\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0014J\u0006\u0010\u001a\u001a\u00020\u0019J\u0008\u0010\u001b\u001a\u00020\u0019H\u0016J\u000e\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u001cH\u0016J\u0008\u0010\u001e\u001a\u00020\u0006H\u0014J\u0010\u0010!\u001a\u00020\u00002\u0008\u0010 \u001a\u0004\u0018\u00010\u001fJ\u0010\u0010#\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010\u001fJ\u0010\u0010&\u001a\u00020\u00002\u0008\u0010%\u001a\u0004\u0018\u00010$J\u0010\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010(\u001a\u00020\'J\u0006\u0010,\u001a\u00020+J\u0006\u0010-\u001a\u00020\u0004J\u0010\u0010.\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0001J\u000e\u00100\u001a\u00020\u00042\u0006\u0010/\u001a\u00020+J\u000e\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u00020+J\u000e\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u00020+J\u000e\u00107\u001a\u00020\u00042\u0006\u00106\u001a\u000205J\u0016\u0010;\u001a\u00020\u00002\u000e\u0010:\u001a\n\u0012\u0004\u0012\u000209\u0018\u000108J\u000e\u0010=\u001a\u00020\u00042\u0006\u0010<\u001a\u000209J\u000e\u0010>\u001a\u00020\u00042\u0006\u0010<\u001a\u000209J\u0010\u0010?\u001a\u00020+2\u0008\u0010<\u001a\u0004\u0018\u000109J\u0006\u0010@\u001a\u00020\u0006J\u0008\u0010A\u001a\u0004\u0018\u00010\u0006J\u0016\u0010D\u001a\u00020\u00002\u000e\u0010C\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001090BJ\u0012\u0010G\u001a\u00020+2\n\u0008\u0002\u0010F\u001a\u0004\u0018\u00010EJ\u0006\u0010H\u001a\u00020+J\u0008\u0010I\u001a\u00020\u0004H&J\u000e\u0010J\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010K\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010L\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u0002090BJ\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u0002090BJ\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u0002090BJ\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u0002090BJ\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u0002090BJ\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u0002090BJ\u000c\u0010S\u001a\u0008\u0012\u0004\u0012\u0002090BJ\u0006\u0010T\u001a\u00020+J\u0006\u0010V\u001a\u00020UJ\u0006\u0010W\u001a\u00020\u0004J\u0006\u0010X\u001a\u00020+J\u0006\u0010Y\u001a\u00020\u0000J\u0006\u0010Z\u001a\u00020\u0000R\u0017\u0010`\u001a\u00020[8\u0006\u00a2\u0006\u000c\n\u0004\u0008\\\u0010]\u001a\u0004\u0008^\u0010_R\u0018\u0010c\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u001b\u0010h\u001a\u00020d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010e\u001a\u0004\u0008f\u0010gR\u001b\u0010m\u001a\u00020i8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008j\u0010e\u001a\u0004\u0008k\u0010lR\u001a\u0010q\u001a\u0008\u0012\u0004\u0012\u0002090n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u001a\u0010r\u001a\u0008\u0012\u0004\u0012\u0002090n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010pR\u001a\u0010s\u001a\u0008\u0012\u0004\u0012\u0002090n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010pR\u001a\u0010t\u001a\u0008\u0012\u0004\u0012\u0002090n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008f\u0010pR8\u0010x\u001a&\u0012\u000c\u0012\n v*\u0004\u0018\u00010909 v*\u0012\u0012\u000c\u0012\n v*\u0004\u0018\u00010909\u0018\u0001080u8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010wR\u0016\u0010z\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010yR\u0016\u00101\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010{R\u0016\u00103\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010{R\"\u0010|\u001a\u00020+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010{\u001a\u0004\u0008|\u0010}\"\u0004\u0008~\u0010\u007fR%\u0010\u0080\u0001\u001a\u00020+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u000c\u0010{\u001a\u0005\u0008\u0080\u0001\u0010}\"\u0005\u0008\u0081\u0001\u0010\u007fR\u001a\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0007\u0010\u0082\u0001R\u0019\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\r\u0010\u0082\u0001R\u0019\u0010%\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0005\u0010\u0084\u0001R\u0019\u0010\u0087\u0001\u001a\u00030\u0085\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u000e\u0010\u0086\u0001R\u0018\u0010\u0089\u0001\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0088\u0001\u0010{R\u001a\u0010\u008d\u0001\u001a\u00030\u008a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001R)\u0010\u0097\u0001\u001a\u0002098\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001\"\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u0017\u0010\u0099\u0001\u001a\u0002098&X\u00a6\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0098\u0001\u0010\u0094\u0001R\u0015\u0010\u009d\u0001\u001a\u00030\u009a\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u009b\u0001\u0010\u009c\u0001R\u0015\u0010\u00a1\u0001\u001a\u00030\u009e\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u001c\u0010\u00a4\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001090B8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R\u0013\u0010\u00a5\u0001\u001a\u00020+8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a5\u0001\u0010}R\u0015\u0010\u00a8\u0001\u001a\u00030\u0085\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u0013\u0010\u00a9\u0001\u001a\u00020+8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a9\u0001\u0010}R\u0015\u0010\u00ac\u0001\u001a\u00030\u008a\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001R\u0014\u0010\u00ae\u0001\u001a\u0002098F\u00a2\u0006\u0008\u001a\u0006\u0008\u00ad\u0001\u0010\u0094\u0001R\u0017\u0010\u00b0\u0001\u001a\u0002098VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00af\u0001\u0010\u0094\u0001\u00a8\u0006\u00b5\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "g",
        "",
        "q",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "o",
        "c",
        "Lcom/couchbase/lite/ReplicatorChange;",
        "change",
        "i",
        "n",
        "p",
        "r",
        "Lcom/couchbase/lite/DocumentReplication;",
        "replication",
        "k",
        "j",
        "l",
        "m",
        "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;",
        "f",
        "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;",
        "getSyncGateway",
        "Lcom/couchbase/lite/Collection;",
        "ensureCollectionRequireNonNull",
        "ensureCollection",
        "Lio/reactivex/rxjava3/core/Observable;",
        "createBaseObservable",
        "createCouchHolder",
        "Lcom/couchbase/lite/ReplicationFilter;",
        "filter",
        "setPushFilter",
        "pullFilter",
        "setPullFilter",
        "Lcom/couchbase/lite/ConflictResolver;",
        "conflictResolver",
        "setConflictResolver",
        "Lcom/couchbase/lite/Conflict;",
        "conflict",
        "Lcom/couchbase/lite/Document;",
        "handleConflictResolver",
        "",
        "isSyncEnabled",
        "sendReplicatorInfoBroadcast",
        "post",
        "retry",
        "setRetryWhenError",
        "continuous",
        "setContinuous",
        "enableLog",
        "setEnableLog",
        "Lcom/couchbase/lite/ReplicatorType;",
        "type",
        "setReplicatorType",
        "",
        "",
        "map",
        "setDisabledSyncDocIdMap",
        "documentId",
        "addDisabledSyncDocId",
        "removeDisabledSyncDocId",
        "isEnabledSyncDocId",
        "ensureCouchDb",
        "getCouchHolder",
        "",
        "channels",
        "setSyncChannels",
        "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;",
        "args",
        "startReplicator",
        "hasReplicator",
        "onSyncChangeFinished",
        "onSyncChanged",
        "onPulledDocument",
        "onPushedDocument",
        "detachPullDeleteDocIdList",
        "detachPullUpdateDocIdList",
        "detachPushUpdateDocIdList",
        "detachErrorPushDocIdList",
        "getPullDeleteDocIdList",
        "getPullUpdateDocIdList",
        "getPushUpdateDocIdList",
        "clear",
        "Lcom/couchbase/lite/Database;",
        "ensureDB",
        "delete",
        "hasSynced",
        "closeReplicator",
        "stopReplicator",
        "Lcom/onyx/android/sdk/bundle/DBProviderBundle;",
        "a",
        "Lcom/onyx/android/sdk/bundle/DBProviderBundle;",
        "getProviderBundle",
        "()Lcom/onyx/android/sdk/bundle/DBProviderBundle;",
        "providerBundle",
        "b",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "couchHolder",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "Lkotlin/Lazy;",
        "h",
        "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "rxScheduler",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "d",
        "getEventBusHolder",
        "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "eventBusHolder",
        "",
        "e",
        "Ljava/util/List;",
        "pullUpdateDocIdList",
        "pushUpdateDocIdList",
        "pullDeleteDocIdList",
        "errorPushDocIdList",
        "",
        "kotlin.jvm.PlatformType",
        "Ljava/util/Set;",
        "disabledSyncDocIdMap",
        "Lcom/couchbase/lite/ReplicatorType;",
        "replicatorType",
        "Z",
        "isPushed",
        "()Z",
        "setPushed",
        "(Z)V",
        "isLoadedDisabledSyncDocId",
        "setLoadedDisabledSyncDocId",
        "Lcom/couchbase/lite/ReplicationFilter;",
        "pushFilter",
        "Lcom/couchbase/lite/ConflictResolver;",
        "",
        "I",
        "retryCount",
        "s",
        "retryWhenError",
        "",
        "t",
        "J",
        "lastRetryTime",
        "u",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "retryTimerObserver",
        "v",
        "Ljava/lang/String;",
        "getUserId",
        "()Ljava/lang/String;",
        "setUserId",
        "(Ljava/lang/String;)V",
        "userId",
        "getCouchName",
        "couchName",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getObserveOn",
        "()Lio/reactivex/rxjava3/core/Scheduler;",
        "observeOn",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;",
        "getReplicatorBean",
        "()Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;",
        "replicatorBean",
        "getSyncChannels",
        "()Ljava/util/List;",
        "syncChannels",
        "isSyncError",
        "getReplicatorStatus",
        "()I",
        "replicatorStatus",
        "isSyncIdle",
        "getCount",
        "()J",
        "count",
        "getDbId",
        "dbId",
        "getCbUserId",
        "cbUserId",
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
.field public final a:Lcom/onyx/android/sdk/bundle/DBProviderBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/util/List;
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

.field public final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/couchbase/lite/ReplicatorType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Lcom/couchbase/lite/ReplicationFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Lcom/couchbase/lite/ReplicationFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Lcom/couchbase/lite/ConflictResolver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:I

.field public s:Z

.field public t:J

.field public u:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Ljava/lang/String;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->a:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    sget-object p1, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator$rxScheduler$2;->INSTANCE:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator$rxScheduler$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->c:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator$eventBusHolder$2;->INSTANCE:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator$eventBusHolder$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->d:Lkotlin/Lazy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->e:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->f:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->h:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->i:Ljava/util/Set;

    sget-object p1, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->j:Lcom/couchbase/lite/ReplicatorType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->s:Z

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->v:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/couchbase/lite/DocumentReplication;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->d(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/couchbase/lite/DocumentReplication;)V

    return-void
.end method

.method public static final synthetic access$onDocumentReplication(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/couchbase/lite/DocumentReplication;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->j(Lcom/couchbase/lite/DocumentReplication;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onReplicatorChange(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/couchbase/lite/ReplicatorChange;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->n(Lcom/couchbase/lite/ReplicatorChange;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$retryStartReplicator(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->q()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->e(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/couchbase/lite/ReplicatorChange;)V

    return-void
.end method

.method public static final d(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/couchbase/lite/DocumentReplication;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->k(Lcom/couchbase/lite/DocumentReplication;)V

    return-void
.end method

.method public static final e(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "change"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->i(Lcom/couchbase/lite/ReplicatorChange;)V

    return-void
.end method

.method public static synthetic startReplicator$default(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;ILjava/lang/Object;)Z
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->startReplicator(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startReplicator"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addDisabledSyncDocId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->i:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->hasReplicationListener()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/fo;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fo;-><init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->addDocumentReplicationListener(Lcom/couchbase/lite/DocumentReplicationListener;)Lcom/couchbase/lite/ListenerToken;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/go;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/go;-><init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->addChangeListener(Lcom/couchbase/lite/ReplicatorChangeListener;)Lcom/couchbase/lite/ListenerToken;

    return-void
.end method

.method public final clear()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->clear(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)Z

    move-result p0

    return p0
.end method

.method public final closeReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->b:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->n:Z

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->a:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->f()Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->closeCouchHolder(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->b:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->p()V

    return-object p0
.end method

.method public createBaseObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public createCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->a:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->f()Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getNoteCouchHolder(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    return-object p0
.end method

.method public final delete()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->delete(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    return-void
.end method

.method public final detachErrorPushDocIdList()Ljava/util/List;
    .locals 2
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

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->h:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public final detachPullDeleteDocIdList()Ljava/util/List;
    .locals 2
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

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->g:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public final detachPullUpdateDocIdList()Ljava/util/List;
    .locals 2
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

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->e:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public final detachPushUpdateDocIdList()Ljava/util/List;
    .locals 2
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

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->f:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public ensureCollection()Lcom/couchbase/lite/Collection;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection$default(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/lang/String;ILjava/lang/Object;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final ensureCollectionRequireNonNull()Lcom/couchbase/lite/Collection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollectionRequireNonNull()Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->b:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->o()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->b:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->b:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.data.couchbase.CouchHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final ensureDB()Lcom/couchbase/lite/Database;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureDB()Lcom/couchbase/lite/Database;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->v:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCouchName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getNoteProviderInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public final g()Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->u:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator$getRetryTimerObserver$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator$getRetryTimerObserver$1;-><init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->u:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->u:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.base.utils.RxTimerUtil.TimerObserver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCbUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->b:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getUserId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final getCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->b:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    return-object p0
.end method

.method public abstract getCouchName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getCount()J
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDbId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCbUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCouchName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->dbFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->d:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-object p0
.end method

.method public final getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->h()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public final getProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->a:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    return-object p0
.end method

.method public final getPullDeleteDocIdList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->g:Ljava/util/List;

    return-object p0
.end method

.method public final getPullUpdateDocIdList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->e:Ljava/util/List;

    return-object p0
.end method

.method public final getPushUpdateDocIdList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->f:Ljava/util/List;

    return-object p0
.end method

.method public final getReplicatorBean()Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->setStatus(I)Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getReplicatorStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->setStatus(I)Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicatorError()Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->setError(Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;)Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getSyncGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->isInValid()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_4

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;->setCode(I)Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getSyncGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getError()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;->setMessage(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->setError(Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;)Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;

    :cond_4
    return-object v0
.end method

.method public final getReplicatorStatus()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getReplicatorStatus()I

    move-result p0

    return p0
.end method

.method public final getSyncChannels()Ljava/util/List;
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getSyncChannels()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSyncGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getSyncGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    return-object p0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->v:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->c:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method public final handleConflictResolver(Lcom/couchbase/lite/Conflict;)Lcom/couchbase/lite/Document;
    .locals 8
    .param p1    # Lcom/couchbase/lite/Conflict;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "conflict"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getRemoteDocument()Lcom/couchbase/lite/Document;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getLocalDocument()Lcom/couchbase/lite/Document;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getRemoteDocument()Lcom/couchbase/lite/Document;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getLocalDocument()Lcom/couchbase/lite/Document;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getRemoteDocument()Lcom/couchbase/lite/Document;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getRemoteDocument()Lcom/couchbase/lite/Document;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getLocalDocument()Lcom/couchbase/lite/Document;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getLocalDocument()Lcom/couchbase/lite/Document;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getRemoteDocument()Lcom/couchbase/lite/Document;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "updatedAt"

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Document;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getLocalDocument()Lcom/couchbase/lite/Document;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Document;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-object v4, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConflictResolver local time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v6, v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\uff0cremote time: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    cmp-long p0, v2, v0

    if-ltz p0, :cond_3

    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getRemoteDocument()Lcom/couchbase/lite/Document;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getLocalDocument()Lcom/couchbase/lite/Document;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final hasReplicator()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->b:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->hasReplicator()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasSynced()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->f:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->e:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->g:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final i(Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->createBaseObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator$a;-><init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/couchbase/lite/ReplicatorChange;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final isEnabledSyncDocId(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->b:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isEnabledSyncDocId(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public final isLoadedDisabledSyncDocId()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->n:Z

    return p0
.end method

.method public final isPushed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->m:Z

    return p0
.end method

.method public final isSyncEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isSyncError()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->b:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncError()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSyncIdle()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncIdle()Z

    move-result p0

    return p0
.end method

.method public final j(Lcom/couchbase/lite/DocumentReplication;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->printDocumentReplicationLog(Lcom/couchbase/lite/DocumentReplication;)V

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->isPush()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->m(Lcom/couchbase/lite/DocumentReplication;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->l(Lcom/couchbase/lite/DocumentReplication;)V

    :goto_0
    return-object p0
.end method

.method public final k(Lcom/couchbase/lite/DocumentReplication;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->createBaseObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator$b;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator$b;-><init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/couchbase/lite/DocumentReplication;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final l(Lcom/couchbase/lite/DocumentReplication;)V
    .locals 6

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->getDocuments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/ReplicatedDocument;

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->checkReplicatedDocumentValid(Lcom/couchbase/lite/DocumentReplication;Lcom/couchbase/lite/ReplicatedDocument;)Z

    move-result v3

    const-string v4, "getID(...)"

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->e:Ljava/util/List;

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->e:Ljava/util/List;

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->isDeleteDocument(Lcom/couchbase/lite/ReplicatedDocument;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->g:Ljava/util/List;

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->g:Ljava/util/List;

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pull doc count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->getDocuments()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->onPulledDocument(Lcom/couchbase/lite/DocumentReplication;)V

    return-void
.end method

.method public final m(Lcom/couchbase/lite/DocumentReplication;)V
    .locals 6

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->getDocuments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/ReplicatedDocument;

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->checkReplicatedDocumentValid(Lcom/couchbase/lite/DocumentReplication;Lcom/couchbase/lite/ReplicatedDocument;)Z

    move-result v2

    const-string v3, "getID(...)"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->f:Ljava/util/List;

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->f:Ljava/util/List;

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatedDocument;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->h:Ljava/util/List;

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "push doc id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push doc count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->getDocuments()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->m:Z

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->onPushedDocument(Lcom/couchbase/lite/DocumentReplication;)V

    return-void
.end method

.method public final n(Lcom/couchbase/lite/ReplicatorChange;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->onSyncChanged(Lcom/couchbase/lite/ReplicatorChange;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->printChangeLog(Lcom/couchbase/lite/ReplicatorChange;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v1

    const-string v2, "getStatus(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncFinished(Lcom/couchbase/lite/ReplicatorStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->onSyncChangeFinished()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->r(Lcom/couchbase/lite/ReplicatorChange;)V

    :cond_1
    return-object p0
.end method

.method public final o()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->createCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->j:Lcom/couchbase/lite/ReplicatorType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->setReplicatorType(Lcom/couchbase/lite/ReplicatorType;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->k:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->setContinuous(Z)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->o:Lcom/couchbase/lite/ReplicationFilter;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->setPushFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->p:Lcom/couchbase/lite/ReplicationFilter;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->setPullFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->q:Lcom/couchbase/lite/ConflictResolver;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->setConflictResolver(Lcom/couchbase/lite/ConflictResolver;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    return-object p0
.end method

.method public onPulledDocument(Lcom/couchbase/lite/DocumentReplication;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/DocumentReplication;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "replication"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPushedDocument(Lcom/couchbase/lite/DocumentReplication;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/DocumentReplication;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "replication"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onSyncChangeFinished()V
.end method

.method public final onSyncChanged(Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicatorChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "change"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final p()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->r:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->t:J

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->u:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)V

    return-void
.end method

.method public final post(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final q()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->startReplicator$default(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;ILjava/lang/Object;)Z

    iget v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->r:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->r:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->t:J

    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " retry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->r:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final r(Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 5

    iget-boolean v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->s:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->p()V

    return-void

    :cond_1
    iget p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->r:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->t:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v0, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->q()V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->u:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    invoke-virtual {p1, v4}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)V

    sub-long/2addr v2, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->g()Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    move-result-object p0

    invoke-virtual {p1, v2, v3, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public final removeDisabledSyncDocId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->i:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final sendReplicatorInfoBroadcast()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCouchName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getReplicatorBean()Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setConflictResolver(Lcom/couchbase/lite/ConflictResolver;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ConflictResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->q:Lcom/couchbase/lite/ConflictResolver;

    return-object p0
.end method

.method public final setContinuous(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->k:Z

    return-void
.end method

.method public final setDisabledSyncDocIdMap(Ljava/util/Set;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->i:Ljava/util/Set;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->n:Z

    return-object p0
.end method

.method public final setEnableLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->l:Z

    return-void
.end method

.method public final setLoadedDisabledSyncDocId(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->n:Z

    return-void
.end method

.method public final setPullFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicationFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->p:Lcom/couchbase/lite/ReplicationFilter;

    return-object p0
.end method

.method public final setPushFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicationFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->o:Lcom/couchbase/lite/ReplicationFilter;

    return-object p0
.end method

.method public final setPushed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->m:Z

    return-void
.end method

.method public final setReplicatorType(Lcom/couchbase/lite/ReplicatorType;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicatorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->j:Lcom/couchbase/lite/ReplicatorType;

    return-void
.end method

.method public final setRetryWhenError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->s:Z

    return-void
.end method

.method public final setSyncChannels(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
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
            ">;)",
            "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "channels"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->setSyncChannels(Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    return-object p0
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->v:Ljava/lang/String;

    return-void
.end method

.method public final startReplicator(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getSyncGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->setSyncGateway(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->c()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->startReplicator(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)Z

    move-result p0

    return p0
.end method

.method public final stopReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->b:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->stopReplicator()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    :cond_0
    return-object p0
.end method
