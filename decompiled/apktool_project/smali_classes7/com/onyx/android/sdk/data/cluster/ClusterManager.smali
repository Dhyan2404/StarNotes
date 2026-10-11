.class public final Lcom/onyx/android/sdk/data/cluster/ClusterManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClusterManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClusterManager.kt\ncom/onyx/android/sdk/data/cluster/ClusterManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n1#2:193\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0011J\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0011J\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0011J\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0011J\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0011J\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\nJ\u0006\u0010\u0019\u001a\u00020\u001aJ\u0008\u0010\u001b\u001a\u00020\u001cH\u0007J\u0008\u0010\u001d\u001a\u00020\u001eH\u0007J\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0011J\u0006\u0010 \u001a\u00020\u0017J\u0008\u0010!\u001a\u00020\u001eH\u0003J\u0019\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001c0#2\u0006\u0010$\u001a\u00020\u001e\u00a2\u0006\u0002\u0010%J\u0006\u0010&\u001a\u00020\u001cJ\u0012\u0010\'\u001a\u0004\u0018\u00010\u001c2\u0008\u0010(\u001a\u0004\u0018\u00010\u001cJ\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020\u000fJ\u0006\u0010,\u001a\u00020\u000fJ\u0006\u0010-\u001a\u00020\u000fJ\u0010\u0010.\u001a\u00020*2\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010/\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u00100\u001a\u00020\u0000H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000c\u0010\u0006R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/cluster/ClusterManager;",
        "",
        "()V",
        "cloudScheduler",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "getCloudScheduler",
        "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "cloudScheduler$delegate",
        "Lkotlin/Lazy;",
        "clusterList",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterList;",
        "dataScheduler",
        "getDataScheduler",
        "dataScheduler$delegate",
        "loaded",
        "",
        "checkSaveObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "createCloudObservable",
        "createDataObservable",
        "ensureLoadObservable",
        "forceLoadObservable",
        "getCloudObserveOn",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getClusterList",
        "getClusterMetadata",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterMetadata;",
        "getCurClusterId",
        "",
        "getCurClusterInfo",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "getCurrentClusterObservable",
        "getDataObserveOn",
        "getDefaultClusterInfo",
        "getIndexServerList",
        "",
        "clusterInfo",
        "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)[Ljava/lang/String;",
        "getMetadataClusterId",
        "getRegion",
        "clusterId",
        "init",
        "",
        "isChinaCluster",
        "isFixedMetadataCluster",
        "isLoaded",
        "setClusterList",
        "setLoaded",
        "updateGlobalData",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nClusterManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClusterManager.kt\ncom/onyx/android/sdk/data/cluster/ClusterManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n1#2:193\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final cloudScheduler$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static clusterList:Lcom/onyx/android/sdk/data/cluster/model/ClusterList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final dataScheduler$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static loaded:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager$dataScheduler$2;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager$dataScheduler$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->dataScheduler$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager$cloudScheduler$2;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager$cloudScheduler$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->cloudScheduler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$updateGlobalData(Lcom/onyx/android/sdk/data/cluster/ClusterManager;)Lcom/onyx/android/sdk/data/cluster/ClusterManager;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->updateGlobalData()Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    move-result-object p0

    return-object p0
.end method

.method private final getCloudScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->cloudScheduler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method private final getDataScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->dataScheduler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method private final getDefaultClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->createDefaultChineseCluster()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->createDefaultAmericaCluster()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->getVIETNAM_SERVER_ID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->createDefaultVietnamCluster()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->getEUR_SERVER_ID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->createDefaultEURCluster()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->getTEST_SERVER_ID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->createTestCluster(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->isCBTestCluster(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->createCBTestCluster()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->createDefaultChineseCluster()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    return-object p0
.end method

.method private final updateGlobalData()Lcom/onyx/android/sdk/data/cluster/ClusterManager;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public final checkSaveObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/cluster/ClusterManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->ensureLoadObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager$checkSaveObservable$1;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager$checkSaveObservable$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager$checkSaveObservable$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager$checkSaveObservable$2;-><init>(Lcom/onyx/android/sdk/data/cluster/ClusterManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createCloudObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/cluster/ClusterManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createDataObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/cluster/ClusterManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final ensureLoadObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/cluster/ClusterManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->createDataObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager$ensureLoadObservable$1;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager$ensureLoadObservable$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager$ensureLoadObservable$2;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager$ensureLoadObservable$2;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final forceLoadObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/cluster/ClusterManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->createDataObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager$forceLoadObservable$1;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager$forceLoadObservable$1;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager$forceLoadObservable$2;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager$forceLoadObservable$2;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public final getClusterList()Lcom/onyx/android/sdk/data/cluster/model/ClusterList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->clusterList:Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;-><init>()V

    sput-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->clusterList:Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->clusterList:Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.data.cluster.model.ClusterList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getClusterMetadata()Lcom/onyx/android/sdk/data/cluster/model/ClusterMetadata;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->getMETADATA_CLUSTER()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/onyx/android/sdk/base/extension/ContextKt;->getMetaData$default(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    new-instance v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager$getClusterMetadata$1;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager$getClusterMetadata$1;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterMetadata;

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterMetadata;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/onyx/android/sdk/data/cluster/model/ClusterMetadata;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    return-object p0
.end method

.method public final getCurClusterId()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->isLoaded()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getClusterList()Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->getCurClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getClusterMetadata()Lcom/onyx/android/sdk/data/cluster/model/ClusterMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterMetadata;->getDefaultCluster()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterUtils;

    const-class v2, Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init curClusterId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getClusterList()Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->setCurClusterId(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    :cond_0
    const-string p0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getCurClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->isTestCluster(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->createTestCluster(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->isCBTestCluster(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->createCBTestCluster()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getClusterList()Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->loadClusterInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getDefaultClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getClusterList()Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->getFirstClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v0

    :cond_3
    const-string p0, "null cannot be cast to non-null type com.onyx.android.sdk.data.cluster.model.ClusterInfo"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCurrentClusterObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->ensureLoadObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager$getCurrentClusterObservable$1;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager$getCurrentClusterObservable$1;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getDataScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public final getIndexServerList(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)[Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "clusterInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->isDevCluster()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->getTEST_INDEX_SERVER_HOST_ARRAY()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->isChineseCluster()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->getINTERNAL_INDEX_SERVER_HOST_ARRAY()[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->getOVERSEA_INDEX_SERVER_HOST_ARRAY()[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getMetadataClusterId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getClusterMetadata()Lcom/onyx/android/sdk/data/cluster/model/ClusterMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterMetadata;->getDefaultCluster()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->clusterList:Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->loadClusterInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getRegion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public final init()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->ensureLoadObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final isChinaCluster()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->isChineseCluster()Z

    move-result p0

    return p0
.end method

.method public final isFixedMetadataCluster()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getClusterMetadata()Lcom/onyx/android/sdk/data/cluster/model/ClusterMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterMetadata;->getFixed()Z

    move-result p0

    return p0
.end method

.method public final isLoaded()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->loaded:Z

    return p0
.end method

.method public final setClusterList(Lcom/onyx/android/sdk/data/cluster/model/ClusterList;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->clusterList:Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    return-void
.end method

.method public final setLoaded(Z)Lcom/onyx/android/sdk/data/cluster/ClusterManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sput-boolean p1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->loaded:Z

    return-object p0
.end method
