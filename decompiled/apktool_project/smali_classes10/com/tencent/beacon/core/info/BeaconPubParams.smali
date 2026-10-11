.class public Lcom/tencent/beacon/core/info/BeaconPubParams;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sParamsHolder:Lcom/tencent/beacon/core/info/BeaconPubParams;


# instance fields
.field private androidId:Ljava/lang/String;

.field private appFirstInstallTime:Ljava/lang/String;

.field private appLastUpdatedTime:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private beaconId:Ljava/lang/String;

.field private boundleId:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private dpi:Ljava/lang/String;

.field private dtImei2:Ljava/lang/String;

.field private dtMeid:Ljava/lang/String;

.field private dtMf:Ljava/lang/String;

.field private fingerprint:Ljava/lang/String;

.field private gpu:Ljava/lang/String;

.field private hardwareOs:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private isRooted:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private modelApn:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private qimei:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field private sdkId:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private wifiMac:Ljava/lang/String;

.field private wifiSsid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/tencent/beacon/core/info/BeaconPubParams;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getPubParams(Landroid/content/Context;)Lcom/tencent/beacon/core/info/BeaconPubParams;
    .locals 3

    const-class v0, Lcom/tencent/beacon/core/info/BeaconPubParams;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/beacon/core/info/BeaconPubParams;->sParamsHolder:Lcom/tencent/beacon/core/info/BeaconPubParams;

    if-nez v1, :cond_1

    const-class v1, Lcom/tencent/beacon/core/info/BeaconPubParams;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/tencent/beacon/core/info/BeaconPubParams;->sParamsHolder:Lcom/tencent/beacon/core/info/BeaconPubParams;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/beacon/core/info/BeaconPubParams;

    invoke-direct {v2, p0}, Lcom/tencent/beacon/core/info/BeaconPubParams;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/tencent/beacon/core/info/BeaconPubParams;->sParamsHolder:Lcom/tencent/beacon/core/info/BeaconPubParams;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->sParamsHolder:Lcom/tencent/beacon/core/info/BeaconPubParams;

    invoke-direct {p0}, Lcom/tencent/beacon/core/info/BeaconPubParams;->refresh()V

    sget-object p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->sParamsHolder:Lcom/tencent/beacon/core/info/BeaconPubParams;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/beacon/a/c/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/beacon/a/c/b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->appVersion:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/beacon/a/c/b;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->boundleId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/c;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->sdkId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/c;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->sdkVersion:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/beacon/a/c/j;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->beaconId:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/a/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->appFirstInstallTime:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/beacon/a/c/e;->l()Lcom/tencent/beacon/a/c/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/beacon/a/c/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->appLastUpdatedTime:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/c;->g()B

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->platform:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/e;->o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->dtMf:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/e;->t()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->osVersion:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/e;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->hardwareOs:Ljava/lang/String;

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->brand:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/beacon/a/c/f;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->model:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/e;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->language:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/e;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->resolution:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/e;->z()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->dpi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->gpu:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/e;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :goto_0
    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->isRooted:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->fingerprint:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/beacon/a/c/j;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->qimei:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/beacon/a/c/f;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->mac:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/beacon/a/c/f;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->wifiMac:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/beacon/a/c/f;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->wifiSsid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/e;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->cid:Ljava/lang/String;

    return-void
.end method

.method private refresh()V
    .locals 3

    invoke-static {}, Lcom/tencent/beacon/a/c/e;->l()Lcom/tencent/beacon/a/c/e;

    move-result-object v0

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/e;->q()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->networkType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/e;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->modelApn:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->imei:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/f;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->dtImei2:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/f;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->dtMeid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/f;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->imsi:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/f;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->androidId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/f;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->mac:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/f;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->wifiMac:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/f;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->wifiSsid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->androidId:Ljava/lang/String;

    return-object p0
.end method

.method public getAppFirstInstallTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->appFirstInstallTime:Ljava/lang/String;

    return-object p0
.end method

.method public getAppLastUpdatedTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->appLastUpdatedTime:Ljava/lang/String;

    return-object p0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getBeaconId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->beaconId:Ljava/lang/String;

    return-object p0
.end method

.method public getBoundleId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->boundleId:Ljava/lang/String;

    return-object p0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->brand:Ljava/lang/String;

    return-object p0
.end method

.method public getCid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->cid:Ljava/lang/String;

    return-object p0
.end method

.method public getDpi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->dpi:Ljava/lang/String;

    return-object p0
.end method

.method public getDtImei2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->dtImei2:Ljava/lang/String;

    return-object p0
.end method

.method public getDtMeid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->dtMeid:Ljava/lang/String;

    return-object p0
.end method

.method public getDtMf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->dtMf:Ljava/lang/String;

    return-object p0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->fingerprint:Ljava/lang/String;

    return-object p0
.end method

.method public getHardwareOs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->hardwareOs:Ljava/lang/String;

    return-object p0
.end method

.method public getImei()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->imei:Ljava/lang/String;

    return-object p0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->imsi:Ljava/lang/String;

    return-object p0
.end method

.method public getIsRooted()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->isRooted:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getMac()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->mac:Ljava/lang/String;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->model:Ljava/lang/String;

    return-object p0
.end method

.method public getModelApn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->modelApn:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->networkType:Ljava/lang/String;

    return-object p0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->osVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public getQimei()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->qimei:Ljava/lang/String;

    return-object p0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->resolution:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->sdkId:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getWifiMac()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->wifiMac:Ljava/lang/String;

    return-object p0
.end method

.method public getWifiSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/core/info/BeaconPubParams;->wifiSsid:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
