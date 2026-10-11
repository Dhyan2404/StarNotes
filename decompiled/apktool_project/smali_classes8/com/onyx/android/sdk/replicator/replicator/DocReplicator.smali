.class public abstract Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\"\u001a\u00020\u0002\u00a2\u0006\u0004\u0008@\u0010AJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004J\u0012\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\tH\u0016J\u0008\u0010\u000e\u001a\u00020\tH\u0016J\u0008\u0010\u000f\u001a\u00020\tH\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0016J\u0012\u0010\u0012\u001a\u00020\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0016J\u0008\u0010\u0013\u001a\u00020\u0000H\u0016J\u0006\u0010\u0015\u001a\u00020\u0014J\u001c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00192\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016J\u0008\u0010\u001b\u001a\u00020\u0000H&J\u0008\u0010\u001c\u001a\u00020\u0000H&J\u0008\u0010\u001d\u001a\u00020\u0014H&J\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u000bH\u0002R\u0014\u0010\"\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u001b\u0010(\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u001b\u0010,\u001a\u00020)8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010%\u001a\u0004\u0008*\u0010+R\"\u00102\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u0011\u00106\u001a\u0002038F\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\u0011\u0010:\u001a\u0002078F\u00a2\u0006\u0006\u001a\u0004\u00088\u00109R\u0011\u0010=\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<R\u0013\u0010?\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010<\u00a8\u0006B"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
        "",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "getReplicatorInfo",
        "Lio/reactivex/rxjava3/core/Observable;",
        "createObservable",
        "createObservableWithoutPost",
        "Lcom/onyx/android/sdk/replicator/event/ComparedSyncFileEvent;",
        "event",
        "",
        "onComparedSyncFileEvent",
        "",
        "getDocumentId",
        "postDocSyncProgressImpl",
        "waitReplicator",
        "reset",
        "stop",
        "o",
        "post",
        "resumeReplicator",
        "",
        "startUserDataReplicator",
        "",
        "offset",
        "limit",
        "",
        "loadEnableShapeIdList",
        "start",
        "closeReplicator",
        "tryCloseReplicator",
        "requestId",
        "d",
        "a",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "replicatorInfo",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "b",
        "Lkotlin/Lazy;",
        "c",
        "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "rxScheduler",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "getEventBusHolder",
        "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "eventBusHolder",
        "Z",
        "getDebugLog",
        "()Z",
        "setDebugLog",
        "(Z)V",
        "debugLog",
        "Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;",
        "getSyncStatus",
        "()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;",
        "syncStatus",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getObserveOn",
        "()Lio/reactivex/rxjava3/core/Scheduler;",
        "observeOn",
        "getDbId",
        "()Ljava/lang/String;",
        "dbId",
        "getCBUserId",
        "cBUserId",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V",
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
.field public final a:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replicatorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->a:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    sget-object p1, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$rxScheduler$2;->INSTANCE:Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$rxScheduler$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->b:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$eventBusHolder$2;->INSTANCE:Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$eventBusHolder$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->b(Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onObservableDone(Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method public abstract closeReplicator()Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final createObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$a;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$a;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$b;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$b;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/a9f;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/a9f;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnComplete(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createObservableWithoutPost()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;->setStatus(I)Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final getCBUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->a:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getUserId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDbId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getCBUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->dbFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDebugLog()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->d:Z

    return p0
.end method

.method public getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method public final getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->c:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-object p0
.end method

.method public final getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->c()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public final getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->a:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    return-object p0
.end method

.method public final getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->a:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object p0

    return-object p0
.end method

.method public final loadEnableShapeIdList(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final onComparedSyncFileEvent(Lcom/onyx/android/sdk/replicator/event/ComparedSyncFileEvent;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/event/ComparedSyncFileEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->setSyncCloudFileStatus(I)V

    return-void
.end method

.method public post(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public postDocSyncProgressImpl()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public resumeReplicator()Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public final setDebugLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->d:Z

    return-void
.end method

.method public abstract start()Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final startUserDataReplicator()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public abstract tryCloseReplicator()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public waitReplicator()V
    .locals 0

    return-void
.end method
