.class public abstract Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataReplicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataReplicator.kt\ncom/onyx/android/sdk/replicator/replicator/DataReplicator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,396:1\n1#2:397\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010F\u001a\u00020C\u0012\u0006\u0010L\u001a\u00020G\u00a2\u0006\u0004\u0008\\\u0010]J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0007\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\u00020\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u001e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0010H\u0002J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0018\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0010\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0018\u0010#\u001a\u00020\"2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0002J\u0010\u0010$\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010&\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0012\u0010*\u001a\u00020)2\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0002J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0018\u0010,\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010/\u001a\u00020-2\u0006\u0010.\u001a\u00020-H\u0002J\u0008\u00100\u001a\u00020\u0000H&J\u0012\u00101\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H&J\u0012\u00102\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H&J\u0012\u00103\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H&J\u0006\u00104\u001a\u00020\u0002J\u0006\u00105\u001a\u00020\u0002J\u0008\u00106\u001a\u0004\u0018\u00010\'J\u0014\u00108\u001a\u00020\u00022\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u00109\u001a\u00020\u0002J\u0010\u0010:\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0010\u0010;\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0006\u0010<\u001a\u00020\u0002J\u0018\u0010>\u001a\u0008\u0012\u0004\u0012\u00020)0\u000f2\u0008\u0010=\u001a\u0004\u0018\u00010\'H\u0016J\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020-0\u000fJ\u0006\u0010@\u001a\u00020\u0002J\u0008\u0010A\u001a\u0004\u0018\u00010-J\u0006\u0010B\u001a\u00020\u0002R\u0014\u0010F\u001a\u00020C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0017\u0010L\u001a\u00020G8\u0006\u00a2\u0006\u000c\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010KR\u0014\u0010P\u001a\u00020M8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u001a\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00050Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010RR\u0018\u0010.\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010TR\u0011\u0010W\u001a\u00020\'8F\u00a2\u0006\u0006\u001a\u0004\u0008U\u0010VR\u0013\u0010[\u001a\u0004\u0018\u00010X8F\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010Z\u00a8\u0006^"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;",
        "",
        "",
        "z",
        "",
        "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
        "beanList",
        "j",
        "y",
        "syncRecordList",
        "k",
        "dataBean",
        "r",
        "Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;",
        "getObjectBean",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
        "i",
        "headObjectResult",
        "",
        "d",
        "",
        "throwable",
        "l",
        "p",
        "Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;",
        "args",
        "q",
        "",
        "errorType",
        "o",
        "h",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
        "result",
        "Lcom/onyx/android/sdk/replicator/request/SaveDataFileRequest;",
        "w",
        "f",
        "t",
        "u",
        "",
        "uploadFilePath",
        "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;",
        "e",
        "n",
        "m",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "clusterInfo",
        "x",
        "syncActual",
        "onDataSyncSuccess",
        "onPullDataSaveSuccess",
        "addDataCommitPoint",
        "onAllTaskFinished",
        "startSync",
        "getUserId",
        "dataBeans",
        "syncDataFile",
        "stop",
        "isDataNotFound",
        "onPullCoverNotExist",
        "postSyncProgressEvent",
        "filePath",
        "computeFileMD5Observable",
        "updateClusterInfoObservable",
        "postComparedSyncFileEvent",
        "getClusterInfo",
        "close",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "a",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "eventBusHolder",
        "Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;",
        "b",
        "Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;",
        "getReplicatorInfo",
        "()Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;",
        "replicatorInfo",
        "Lcom/onyx/android/sdk/replicator/bean/TaskManager;",
        "c",
        "Lcom/onyx/android/sdk/replicator/bean/TaskManager;",
        "taskManager",
        "",
        "Ljava/util/List;",
        "syncDataBeans",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "getDocumentId",
        "()Ljava/lang/String;",
        "documentId",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "getRxOSSManager",
        "()Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "rxOSSManager",
        "<init>",
        "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;)V",
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
        "SMAP\nDataReplicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataReplicator.kt\ncom/onyx/android/sdk/replicator/replicator/DataReplicator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,396:1\n1#2:397\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "eventBusHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replicatorInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->a:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->b:Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;

    new-instance p1, Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->s(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    return-void
.end method

.method public static final synthetic access$checkPullDataExist(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->d(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$compute(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->e(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPullDataHeadObservable(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->i(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onPullError(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->l(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onPushError(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->m(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onSyncError(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->o(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;I)V

    return-void
.end method

.method public static final synthetic access$saveToFile(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)Lcom/onyx/android/sdk/replicator/request/SaveDataFileRequest;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->w(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)Lcom/onyx/android/sdk/replicator/request/SaveDataFileRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setClusterInfo(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->x(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->g(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->v(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    return-void
.end method

.method public static final g(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dataBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->p(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    return-void
.end method

.method public static final s(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dataBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->p(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    return-void
.end method

.method public static final v(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dataBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->n(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    return-void
.end method


# virtual methods
.method public abstract addDataCommitPoint(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->close()V

    return-void
.end method

.method public computeFileMD5Observable(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$a;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getLocalSavePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateBase64Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has exist "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    move p0, p2

    :goto_0
    return p0
.end method

.method public final e(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;->execute()Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;

    new-instance p1, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;->getMd5()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getOssFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->getRxOSSManager()Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->deleteMultipleObject(Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/mue;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/mue;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$b;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$b;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->e:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->b:Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->b:Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;

    return-object p0
.end method

.method public final getRxOSSManager()Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->e:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getRxOSSManager(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->b:Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;->getUserId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(I)Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getUSER_STORAGE_TOO_LOW()I

    move-result p0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
            "Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getLocalSavePath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;-><init>()V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->getRxOSSManager()Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->headObject(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final isDataNotFound(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of p0, p1, Lcom/alibaba/sdk/android/oss/ServiceException;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/alibaba/sdk/android/oss/ServiceException;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result p0

    const/16 p1, 0x194

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

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

    return-void

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->d:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    sget-object v0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$mergeSyncDataList$1;->INSTANCE:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$mergeSyncDataList$1;

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addDistinctBy(Ljava/util/Collection;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getOssFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    sget-object v2, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getNETWORK_ERROR()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->onTaskFail(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->postSyncProgressEvent()V

    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pull error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getSyncOssPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getPULL_DATA_ERROR()I

    move-result v1

    instance-of v2, p2, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getTIMEOUT_ERROR()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->isDataNotFound(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/onyx/android/sdk/replicator/bean/SyncRecordType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/SyncRecordType;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getRecordType()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/replicator/bean/SyncRecordType;->isCoverType(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getTHUMBNAIL_CLOUD_FILE_NOT_EXIST()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->onPullCoverNotExist(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->o(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;I)V

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getPUSH_DATA_ERROR()I

    move-result v1

    instance-of p2, p2, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getTIMEOUT_ERROR()I

    move-result v1

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->o(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;I)V

    sget-object p2, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "push error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getSyncOssPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getLocalSavePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "push success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getSyncOssPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->useStorage(J)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->setNeedUpdateUserStorage(Z)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->setNeedRecalculateUserStorage(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->addDataCommitPoint(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->p(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getOssFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v1, v0, p2}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->onTaskFail(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->isTaskSyncFinished(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;->setPostProgress(Z)Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->h(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;->setSyncNext(Z)Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->q(Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;)V

    return-void
.end method

.method public final onAllTaskFinished()V
    .locals 0

    return-void
.end method

.method public abstract onDataSyncSuccess(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final onPullCoverNotExist(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->onDataSyncSuccess(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    return-void
.end method

.method public abstract onPullDataSaveSuccess(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final p(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getOssFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->onTaskSuccess(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->onDataSyncSuccess(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    new-instance p1, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;->setPostProgress(Z)Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;->setSyncNext(Z)Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->q(Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;)V

    return-void
.end method

.method public final postComparedSyncFileEvent()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->a:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    new-instance v0, Lcom/onyx/android/sdk/replicator/event/ComparedSyncFileEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/event/ComparedSyncFileEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final postSyncProgressEvent()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->a:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    new-instance v1, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->isAllTaskFinished()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->setFinished(Z)Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->getErrorTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->setErrorTypes(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->getSyncSuccessTaskCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->setCompleted(J)Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->getPushSuccessTaskCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->setPushCompletedCount(J)Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->getPullSuccessTaskCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->setPullCompletedCount(J)Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->getTotalTaskCount()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;->setTotal(J)Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->isAllTaskFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->onAllTaskFinished()V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", documentId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->printTaskResult(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;->isSyncNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->z()V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/TaskFinishArgs;->isPostProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->postSyncProgressEvent()V

    :cond_2
    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getOssFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->isTaskSyncingOrFinished(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->b:Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;->getDebugLog()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pull ossFileKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getSyncOssPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " save file Path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getLocalSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->postSyncProgressEvent()V

    new-instance v1, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v3}, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/Range;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getSyncOssPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;->setOssFileObjectKey(Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$c;

    invoke-direct {v3, p0, p1, v1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$c;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$d;

    invoke-direct {v3, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$d;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$e;->e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$e;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$f;

    invoke-direct {v3, p0, v1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$f;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$g;

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$g;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/nue;

    invoke-direct {v2, p0, p1}, Lcom/sunia/HTREnginev2/nue;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$h;

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$h;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    const-string v2, "subscribe(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    new-instance v2, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;-><init>()V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->setKey(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getRecordType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->setSyncRecordType(I)Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->setTaskDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->startPull(Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;)V

    return-void
.end method

.method public final startSync()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->updateClusterInfoObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$k;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->postSyncProgressEvent()V

    return-void
.end method

.method public abstract syncActual()Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final syncDataFile(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataBeans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->j(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->y()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->postSyncProgressEvent()V

    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getOssFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->isTaskSyncingOrFinished(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getLocalSavePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->isUserStorageEnough(J)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getUSER_STORAGE_TOO_LOW()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->o(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;I)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->setNeedUpdateUserStorage(Z)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "user storage is not enough"

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload data path is empty:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->p(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->b:Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;->getDebugLog()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "push ossFileKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getSyncOssPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " upload file Path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->postSyncProgressEvent()V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    new-instance v2, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getRecordType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->setSyncRecordType(I)Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->setKey(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->startPush(Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->u(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    return-void
.end method

.method public final u(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getLocalSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getOssFilePath()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;-><init>(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, v0}, Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;->setUploadFilePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getSyncOssPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;->setOssFileObjectKey(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->computeFileMD5Observable(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$i;

    invoke-direct {v2, v8, p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$i;-><init>(Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/oue;

    invoke-direct {v2, p0, p1}, Lcom/sunia/HTREnginev2/oue;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$j;

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$j;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v2, "subscribe(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    new-instance v2, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;-><init>()V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->setKey(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getRecordType()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->setSyncRecordType(I)Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->setTaskDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->startPush(Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;)V

    return-void
.end method

.method public final updateClusterInfoObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurrentClusterObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$l;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)Lcom/onyx/android/sdk/replicator/request/SaveDataFileRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/request/SaveDataFileRequest;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/replicator/request/SaveDataFileRequest;-><init>(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/request/SaveDataFileRequest;->execute()Lcom/onyx/android/sdk/replicator/request/SaveDataFileRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->onPullDataSaveSuccess(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    sget-object p2, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pull success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getLocalSavePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public final x(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->e:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object p1
.end method

.method public final y()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

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
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->postSyncProgressEvent()V

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->d:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getOssFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->placeTaskHolder(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->isAllTaskFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->postSyncProgressEvent()V

    return-void

    :cond_4
    sget-object v2, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->k(Ljava/util/List;)V

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->c:Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->isSyncTaskOutOfLimit()Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    :cond_6
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;->getSyncStatus()I

    move-result v3

    if-eq v3, v1, :cond_9

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->f(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->t(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->r(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    goto :goto_3

    :cond_a
    return-void
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->y()V

    :cond_0
    return-void
.end method
