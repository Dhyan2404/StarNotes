.class public Lcom/tencent/qcloud/track/QCloudTrackService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EVENT_KEY_CLS_REPORT:Ljava/lang/String; = "cls_report"

.field private static final TAG:Ljava/lang/String; = "TrackService"

.field private static volatile instance:Lcom/tencent/qcloud/track/QCloudTrackService;


# instance fields
.field private businessParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private commonParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private isInitialized:Z

.field private simpleDataTrackService:Lcom/tencent/qcloud/track/service/BeaconTrackService;

.field private final trackServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/qcloud/track/service/ATrackService;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->isInitialized:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->trackServiceMap:Ljava/util/Map;

    return-void
.end method

.method private getCommonParams()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "boundle_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v2, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    const-string v1, "app_version_code"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_version_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string v1, "os_name"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "client_local_ip"

    invoke-static {}, Lcom/tencent/qcloud/track/utils/NetworkUtils;->getLocalMachineIP()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/qcloud/track/utils/NetworkUtils;->isProxy()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_proxy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/qcloud/track/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "network_type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;
    .locals 2

    sget-object v0, Lcom/tencent/qcloud/track/QCloudTrackService;->instance:Lcom/tencent/qcloud/track/QCloudTrackService;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/qcloud/track/QCloudTrackService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qcloud/track/QCloudTrackService;->instance:Lcom/tencent/qcloud/track/QCloudTrackService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qcloud/track/QCloudTrackService;

    invoke-direct {v1}, Lcom/tencent/qcloud/track/QCloudTrackService;-><init>()V

    sput-object v1, Lcom/tencent/qcloud/track/QCloudTrackService;->instance:Lcom/tencent/qcloud/track/QCloudTrackService;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/qcloud/track/QCloudTrackService;->instance:Lcom/tencent/qcloud/track/QCloudTrackService;

    return-object v0
.end method

.method private initBeaconAndQimei()V
    .locals 5

    const-string v0, "0AND05KOZX0E3L2H"

    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconConfig;->builder()Lcom/tencent/beacon/event/open/BeaconConfig$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->auditEnable(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->bidEnable(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->qmspEnable(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->pagePathEnable(Z)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;

    move-result-object v1

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v3, v4}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->setNormalPollingTime(J)Lcom/tencent/beacon/event/open/BeaconConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/event/open/BeaconConfig$Builder;->build()Lcom/tencent/beacon/event/open/BeaconConfig;

    move-result-object v1

    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3, v2}, Lcom/tencent/beacon/event/open/BeaconReport;->setCollectProcessInfo(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-static {v0}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getStrategy()Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->enableOAID(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->enableIMEI(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->enableIMSI(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->enableAndroidId(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->enableMAC(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->enableCid(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->enableProcessInfo(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;->enableBuildModel(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;

    iget-object p0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->context:Landroid/content/Context;

    invoke-virtual {v3, p0, v0, v1}, Lcom/tencent/beacon/event/open/BeaconReport;->start(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/beacon/event/open/BeaconConfig;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_2
    invoke-virtual {v3, v2}, Lcom/tencent/beacon/event/open/BeaconReport;->setCollectProcessInfo(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method


# virtual methods
.method public declared-synchronized addTrackService(Ljava/lang/String;Lcom/tencent/qcloud/track/service/ATrackService;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->trackServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->trackServiceMap:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->trackServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->isInitialized:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/qcloud/track/QCloudTrackService;->getCommonParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->commonParams:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->isInclude()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qcloud/track/QCloudTrackService;->initBeaconAndQimei()V

    new-instance v0, Lcom/tencent/qcloud/track/service/BeaconTrackService;

    invoke-direct {v0}, Lcom/tencent/qcloud/track/service/BeaconTrackService;-><init>()V

    iput-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->simpleDataTrackService:Lcom/tencent/qcloud/track/service/BeaconTrackService;

    invoke-virtual {v0, p1}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->setContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->simpleDataTrackService:Lcom/tencent/qcloud/track/service/BeaconTrackService;

    const-string v0, "0AND05KOZX0E3L2H"

    invoke-virtual {p1, v0}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->init(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "TrackService"

    const-string v0, "The beacon library is not referenced, cancel the beacon initialization"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->isInitialized:Z

    goto :goto_1

    :cond_1
    const-string p1, "TrackService"

    const-string v0, "init has been called and the initialization code will not be executed again."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public report(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->commonParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->commonParams:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->businessParams:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->businessParams:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "null"

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->trackServiceMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qcloud/track/service/ATrackService;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qcloud/track/IReport;->report(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public reportSimpleData(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->simpleDataTrackService:Lcom/tencent/qcloud/track/service/BeaconTrackService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->commonParams:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->commonParams:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->businessParams:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->businessParams:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    const-string v0, "cls_report"

    invoke-static {}, Lcom/tencent/qcloud/track/service/ClsTrackService;->isInclude()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "null"

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->simpleDataTrackService:Lcom/tencent/qcloud/track/service/BeaconTrackService;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->report(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setBusinessParams(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->businessParams:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->businessParams:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "business_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->simpleDataTrackService:Lcom/tencent/qcloud/track/service/BeaconTrackService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->setDebug(Z)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->trackServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->trackServiceMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qcloud/track/service/ATrackService;

    invoke-virtual {v2, p1}, Lcom/tencent/qcloud/track/service/ATrackService;->setDebug(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setIsCloseReport(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->simpleDataTrackService:Lcom/tencent/qcloud/track/service/BeaconTrackService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/qcloud/track/service/ATrackService;->setIsCloseReport(Z)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->trackServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qcloud/track/QCloudTrackService;->trackServiceMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qcloud/track/service/ATrackService;

    invoke-virtual {v2, p1}, Lcom/tencent/qcloud/track/service/ATrackService;->setIsCloseReport(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method
