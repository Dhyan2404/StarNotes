.class public Lcom/tencent/qcloud/track/service/BeaconTrackService;
.super Lcom/tencent/qcloud/track/service/ATrackService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BeaconTrackService"


# instance fields
.field private beaconKey:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/track/service/ATrackService;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qcloud/track/service/BeaconTrackService;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->lambda$report$0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/qcloud/track/service/BeaconTrackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->lambda$report$1()V

    return-void
.end method

.method private directReport(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
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

    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconEvent;->builder()Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qcloud/track/service/BeaconTrackService;->beaconKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withAppKey(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withCode(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/tencent/beacon/event/open/EventType;->NORMAL:Lcom/tencent/beacon/event/open/EventType;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withType(Lcom/tencent/beacon/event/open/EventType;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withParams(Ljava/util/Map;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->build()Lcom/tencent/beacon/event/open/BeaconEvent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/event/open/BeaconReport;->report(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/qcloud/track/service/ATrackService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v4, p2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "}"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qcloud/track/service/BeaconTrackService;->beaconKey:Ljava/lang/String;

    iget-wide v5, v0, Lcom/tencent/beacon/event/open/EventResult;->eventID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget p0, v0, Lcom/tencent/beacon/event/open/EventResult;->errorCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Lcom/tencent/beacon/event/open/EventResult;->errMsg:Ljava/lang/String;

    move-object v3, p1

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "beaconKey: %s, eventCode: %s, params: %s => result{ eventID: %s, errorCode: %d, errorMsg: %s}"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BeaconTrackService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static isInclude()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isSimpleDataTrackService()Z
    .locals 1

    const-string v0, "0AND05KOZX0E3L2H"

    iget-object p0, p0, Lcom/tencent/qcloud/track/service/BeaconTrackService;->beaconKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$report$0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/track/service/BeaconTrackService;->context:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/tencent/qcloud/track/utils/EventFileUtils;->appendEventToFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$report$1()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/tencent/qcloud/track/service/BeaconTrackService;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/tencent/qcloud/track/utils/EventFileUtils;->readEventFromFile(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {p0, v3, v4}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->directReport(Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qcloud/track/service/ATrackService;->isInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qcloud/track/service/ATrackService;->isInit:Z

    iput-object p1, p0, Lcom/tencent/qcloud/track/service/BeaconTrackService;->beaconKey:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->isInclude()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/qcloud/track/service/ATrackService;->isDebug()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/tencent/beacon/event/open/BeaconReport;->setLogAble(Z)V

    :cond_1
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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

    iget-boolean v0, p0, Lcom/tencent/qcloud/track/service/ATrackService;->isInit:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->isSimpleDataTrackService()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/qcloud/track/TrackExecutors;->COMMAND_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/sunia/HTREnginev2/ro;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/ro;-><init>(Lcom/tencent/qcloud/track/service/BeaconTrackService;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qcloud/track/service/ATrackService;->isCloseReport()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/qcloud/track/service/ATrackService;->isInit:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->isInclude()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->isSimpleDataTrackService()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qcloud/track/service/BeaconTrackService;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qcloud/track/utils/EventFileUtils;->eventFileExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/qcloud/track/TrackExecutors;->COMMAND_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/sunia/HTREnginev2/so;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/so;-><init>(Lcom/tencent/qcloud/track/service/BeaconTrackService;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->directReport(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/track/service/BeaconTrackService;->context:Landroid/content/Context;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/qcloud/track/service/ATrackService;->setDebug(Z)V

    invoke-static {}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->isInclude()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/event/open/BeaconReport;->setLogAble(Z)V

    :cond_0
    return-void
.end method
