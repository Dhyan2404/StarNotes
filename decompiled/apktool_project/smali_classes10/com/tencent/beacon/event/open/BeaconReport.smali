.class public final Lcom/tencent/beacon/event/open/BeaconReport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/tencent/beacon/event/open/BeaconReport; = null

.field private static b:Ljava/lang/String; = ""

.field private static c:Z


# instance fields
.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Lcom/tencent/beacon/event/immediate/IBeaconImmediateReport;

.field private g:Lcom/tencent/beacon/event/quic/IBeaconQuicReport;

.field private h:Lcom/tencent/beacon/module/EventModule;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class p0, Lcom/tencent/beacon/event/open/BeaconReport;

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/tencent/beacon/event/open/BeaconReport;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/beacon/event/open/BeaconReport;->c:Z

    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "\u5355\u4f8b\u6a21\u5f0f\u88ab\u4fb5\u72af\uff01"

    :try_start_1
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/beacon/event/open/BeaconInitException;
        }
    .end annotation

    .line 3
    const-class v0, Lcom/tencent/beacon/event/open/BeaconReport;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.beacon"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "BEACON_MAIN_APPKEY"

    .line 7
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "we strongly recommend you add mainAppkey to manifest file."

    .line 8
    invoke-static {v1, v0}, Lcom/tencent/beacon/base/util/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    .line 9
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "appKey in manifest.xml and start-params is conflicted"

    const-string v2, "205"

    .line 11
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/tencent/beacon/event/open/BeaconReport;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    return-object p2
.end method

.method private a()V
    .locals 7

    .line 28
    invoke-static {}, Lcom/tencent/beacon/module/ModuleName;->values()[Lcom/tencent/beacon/module/ModuleName;

    move-result-object v0

    .line 29
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 30
    :try_start_0
    invoke-virtual {v4}, Lcom/tencent/beacon/module/ModuleName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/beacon/event/c/d;->f(Ljava/lang/String;)Lcom/tencent/beacon/module/BeaconModule;

    move-result-object v5

    .line 31
    sget-object v6, Lcom/tencent/beacon/module/BeaconModule;->a:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init Module error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {v4}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_0
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 35
    sget-object v4, Lcom/tencent/beacon/module/BeaconModule;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/beacon/module/BeaconModule;

    if-eqz v3, :cond_1

    .line 36
    iget-object v4, p0, Lcom/tencent/beacon/event/open/BeaconReport;->d:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/tencent/beacon/module/BeaconModule;->a(Landroid/content/Context;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 37
    :cond_2
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v0

    sget-object v1, Lcom/tencent/beacon/module/ModuleName;->EVENT:Lcom/tencent/beacon/module/ModuleName;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/c/c;->a(Lcom/tencent/beacon/module/ModuleName;)Lcom/tencent/beacon/module/BeaconModule;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/module/EventModule;

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->h:Lcom/tencent/beacon/module/EventModule;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/beacon/event/open/BeaconInitException;
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/tencent/beacon/base/util/c;->b()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "BeaconReport"

    .line 13
    invoke-static {p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/tencent/beacon/a/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    new-instance p0, Lcom/tencent/beacon/event/open/BeaconInitException;

    invoke-direct {p0, p3}, Lcom/tencent/beacon/event/open/BeaconInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/tencent/beacon/event/open/BeaconConfig;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BeaconReport"

    invoke-static {v2, v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getConfigHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getUploadHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/beacon/base/net/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/tencent/beacon/event/open/BeaconReport;->b(Lcom/tencent/beacon/event/open/BeaconConfig;)V

    .line 19
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->isEnableQmsp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/c/c;->a(Z)V

    .line 20
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getRealtimeUploadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/d/b;->d(I)V

    .line 21
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getNormalUploadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/d/b;->c(I)V

    .line 22
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getCompressType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/d/b;->a(I)V

    .line 23
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getRsaPubKeyType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/d/b;->e(I)V

    .line 24
    :cond_0
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/event/open/BeaconReport;->d:Landroid/content/Context;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getHttpAdapter()Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/tencent/beacon/base/net/c;->a(Landroid/content/Context;Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;)V

    .line 25
    invoke-static {}, Lcom/tencent/beacon/a/d/a;->a()Lcom/tencent/beacon/a/d/a;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->d:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/tencent/beacon/a/d/a;->a(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/tencent/beacon/a/c/b;->f()V

    .line 27
    invoke-static {}, Lcom/tencent/beacon/a/c/e;->l()Lcom/tencent/beacon/a/c/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/a/c/e;->C()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/beacon/event/open/BeaconReport;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tencent/beacon/event/open/BeaconReport;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/beacon/event/open/BeaconReport;Lcom/tencent/beacon/event/open/BeaconConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/beacon/event/open/BeaconReport;->a(Lcom/tencent/beacon/event/open/BeaconConfig;)V

    return-void
.end method

.method private b(Lcom/tencent/beacon/event/open/BeaconConfig;)V
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getRealtimePollingTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "u_c_r_p"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getNormalPollingTIme()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "u_c_n_p"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p1

    new-instance v0, Lcom/tencent/beacon/a/a/c;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lcom/tencent/beacon/a/a/c;-><init>(ILjava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/a/a/b;->b(Lcom/tencent/beacon/a/a/c;)V

    return-void
.end method

.method private c(Lcom/tencent/beacon/event/open/BeaconConfig;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "u_c_a_e"

    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->isAuditEnable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "u_c_b_e"

    :try_start_2
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->isBidEnable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "u_c_d_s"

    :try_start_3
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getMaxDBCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v0, "u_c_p_s"

    :try_start_4
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->isPagePathEnable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v0, "u_s_o_h"

    :try_start_5
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->isSocketMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/tencent/beacon/a/a/c;

    const/16 v0, 0x8

    invoke-direct {p1, v0, p0}, Lcom/tencent/beacon/a/a/c;-><init>(ILjava/util/Map;)V

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/a/b;->b(Lcom/tencent/beacon/a/a/c;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdk init error! package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/beacon/a/c/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "202"

    invoke-virtual {p1, v1, v0, p0}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private d(Lcom/tencent/beacon/event/open/BeaconConfig;)V
    .locals 1

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p0

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/a/c/f;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/a/c/f;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getImei2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getImei2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/a/c/f;->c(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/a/c/f;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getMeid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getMeid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/a/c/f;->f(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/a/c/f;->g(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/a/c/f;->e(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/a/c/f;->i(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/a/c/f;->j(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getOaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconConfig;->getOaid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/c/f;->h(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static getInstance()Lcom/tencent/beacon/event/open/BeaconReport;
    .locals 2

    sget-object v0, Lcom/tencent/beacon/event/open/BeaconReport;->a:Lcom/tencent/beacon/event/open/BeaconReport;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/beacon/event/open/BeaconReport;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/beacon/event/open/BeaconReport;->a:Lcom/tencent/beacon/event/open/BeaconReport;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/beacon/event/open/BeaconReport;

    invoke-direct {v1}, Lcom/tencent/beacon/event/open/BeaconReport;-><init>()V

    sput-object v1, Lcom/tencent/beacon/event/open/BeaconReport;->a:Lcom/tencent/beacon/event/open/BeaconReport;

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
    sget-object v0, Lcom/tencent/beacon/event/open/BeaconReport;->a:Lcom/tencent/beacon/event/open/BeaconReport;

    return-object v0
.end method

.method public static getSoPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/beacon/event/open/BeaconReport;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static setSoPath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/beacon/event/open/BeaconReport;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public disableReport()V
    .locals 2

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/beacon/d/b;->a(ZZ)V

    return-void
.end method

.method public enableReport()V
    .locals 1

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/tencent/beacon/d/b;->a(ZZ)V

    return-void
.end method

.method public getBeaconQuicReport()Lcom/tencent/beacon/event/quic/IBeaconQuicReport;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->g:Lcom/tencent/beacon/event/quic/IBeaconQuicReport;

    return-object p0
.end method

.method public getCommonParams(Landroid/content/Context;)Lcom/tencent/beacon/core/info/BeaconPubParams;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/tencent/beacon/core/info/BeaconPubParams;->getPubParams(Landroid/content/Context;)Lcom/tencent/beacon/core/info/BeaconPubParams;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getImmediateReport()Lcom/tencent/beacon/event/immediate/IBeaconImmediateReport;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->f:Lcom/tencent/beacon/event/immediate/IBeaconImmediateReport;

    return-object p0
.end method

.method public getOAID()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "this method do not collect OAID, use method in qmsp instead"

    invoke-static {v0, p0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/a/c/f;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQimei(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/tencent/beacon/a/c/j;->b(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object p0

    return-object p0
.end method

.method public getQimei(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p1, p2, p3}, Lcom/tencent/beacon/a/c/j;->a(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    return-void
.end method

.method public getRtQimei(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2}, Lcom/tencent/beacon/a/c/j;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object p0

    return-object p0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "4.2.86.7-hf1"

    return-object p0
.end method

.method public isInitBeacon()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->e:Z

    return p0
.end method

.method public pauseUpload(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->h:Lcom/tencent/beacon/module/EventModule;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/beacon/module/EventModule;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->h:Lcom/tencent/beacon/module/EventModule;

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/module/EventModule;->b(Z)V

    :cond_0
    return-void
.end method

.method public report(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;
    .locals 5

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/beacon/d/b;->n()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "BeaconReport not enable report! event: %s"

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {p0, v2}, Lcom/tencent/beacon/base/util/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p0, 0x66

    invoke-static {p0}, Lcom/tencent/beacon/event/open/EventResult$a;->a(I)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 p0, 0x6a

    invoke-static {p0}, Lcom/tencent/beacon/event/open/EventResult$a;->a(I)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->newBuilder(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->build()Lcom/tencent/beacon/event/open/BeaconEvent;

    move-result-object p1

    iget-object v2, p0, Lcom/tencent/beacon/event/open/BeaconReport;->h:Lcom/tencent/beacon/module/EventModule;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/tencent/beacon/module/EventModule;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->h:Lcom/tencent/beacon/module/EventModule;

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/module/EventModule;->a(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "b_e"

    :try_start_2
    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p1

    new-instance v2, Lcom/tencent/beacon/a/a/c;

    const/4 v4, 0x6

    invoke-direct {v2, v4, p0}, Lcom/tencent/beacon/a/a/c;-><init>(ILjava/util/Map;)V

    invoke-virtual {p1, v2}, Lcom/tencent/beacon/a/a/b;->a(Lcom/tencent/beacon/a/a/c;)V

    new-instance p0, Lcom/tencent/beacon/event/open/EventResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p1, "Beacon SDK not init beaconEvent add to cache!"

    :try_start_3
    invoke-direct {p0, v3, v0, v1, p1}, Lcom/tencent/beacon/event/open/EventResult;-><init>(IJLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object p1

    const-string v2, "598"

    const-string v3, "error while report"

    invoke-virtual {p1, v2, v3, p0}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/tencent/beacon/event/open/EventResult;

    const/16 p1, 0xc7

    const-string v2, "REPORT ERROR"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tencent/beacon/event/open/EventResult;-><init>(IJLjava/lang/String;)V

    return-object p0
.end method

.method public resumeReport()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/BeaconReport;->resumeUpload()V

    return-void
.end method

.method public resumeUpload()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->h:Lcom/tencent/beacon/module/EventModule;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/beacon/module/EventModule;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->h:Lcom/tencent/beacon/module/EventModule;

    invoke-virtual {p0}, Lcom/tencent/beacon/module/EventModule;->f()V

    :cond_0
    return-void
.end method

.method public setAdditionalParams(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    .line 2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string p2, "i_c_ad"

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "i_c_ak"

    .line 4
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Lcom/tencent/beacon/a/a/c;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Lcom/tencent/beacon/a/a/c;-><init>(ILjava/util/Map;)V

    .line 6
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/a/b;->b(Lcom/tencent/beacon/a/a/c;)V

    return-void
.end method

.method public setAdditionalParams(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/beacon/event/open/BeaconReport;->setAdditionalParams(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setAndroidID(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/c/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sput-object p1, Lcom/tencent/beacon/a/c/b;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setBeaconQuicReport(Lcom/tencent/beacon/event/quic/IBeaconQuicReport;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconReport;->g:Lcom/tencent/beacon/event/quic/IBeaconQuicReport;

    return-void
.end method

.method public setChannelID(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/beacon/event/open/BeaconReport;->setChannelID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setChannelID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/beacon/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCollectAndroidID(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "setCollectAndroidID has been Deprecated"

    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setCollectImei(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "setCollectImei has been Deprecated"

    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setCollectMac(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "setCollectMac has been Deprecated"

    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setCollectModel(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "setCollectModel has been Deprecated"

    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setCollectOAID(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "setCollectOAID has been Deprecated"

    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setCollectPersonalInfo(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "setCollectPersonalInfo has been Deprecated"

    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setCollectProcessInfo(Z)V
    .locals 0

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/d/b;->e(Z)V

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/c/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setImei2(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/c/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setImmediateReport(Lcom/tencent/beacon/event/immediate/IBeaconImmediateReport;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/open/BeaconReport;->f:Lcom/tencent/beacon/event/immediate/IBeaconImmediateReport;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/c/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setLogAble(Z)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/beacon/base/util/c;->a(Z)V

    return-void
.end method

.method public setLogger(Lcom/tencent/beacon/base/util/BeaconLogger;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/beacon/base/util/c;->a(Lcom/tencent/beacon/base/util/BeaconLogger;)V

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/c/f;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setMeid(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/c/f;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/c/f;->g(Ljava/lang/String;)V

    return-void
.end method

.method public setOAID(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/c/f;->h(Ljava/lang/String;)V

    return-void
.end method

.method public setOaid(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/c/f;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "setOaid has been Deprecated, please use setOAID"

    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setOmgID(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/c/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setOpenID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "i_c_ak"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "i_c_o_i"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/tencent/beacon/a/a/c;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, Lcom/tencent/beacon/a/a/c;-><init>(ILjava/util/Map;)V

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/a/b;->b(Lcom/tencent/beacon/a/a/c;)V

    return-void
.end method

.method public setQQ(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/beacon/a/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setQimei(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/tencent/beacon/a/c/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setQimeiSdkVersion(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/beacon/a/c/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setStrictMode(Z)V
    .locals 0

    sget-object p0, Lcom/tencent/beacon/base/util/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/beacon/event/open/BeaconReport;->setUserID(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "i_c_ak"

    .line 3
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "i_c_u_i"

    .line 4
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Lcom/tencent/beacon/a/a/c;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Lcom/tencent/beacon/a/a/c;-><init>(ILjava/util/Map;)V

    .line 6
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/a/b;->b(Lcom/tencent/beacon/a/a/c;)V

    return-void
.end method

.method public setUserSampleEvents(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/beacon/d/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setWifiMacAddress(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/c/f;->i(Ljava/lang/String;)V

    return-void
.end method

.method public setWifiSSID(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/c/f;->j(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized start(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/beacon/event/open/BeaconConfig;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/tencent/beacon/event/open/BeaconConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/beacon/event/open/BeaconInitException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->e:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/c;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    aput-object p2, p3, v1

    const-string v0, "don\'t init beacon twice!! 1: %s, 2: %s"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "206"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/beacon/event/open/BeaconReport;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Context"

    invoke-static {v0, p1}, Lcom/tencent/beacon/base/util/h;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "fail to start beacon, context is null"

    invoke-static {p2, p1}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->d:Landroid/content/Context;

    const-string v3, "ApplicationContext"

    invoke-static {v3, v0}, Lcom/tencent/beacon/base/util/h;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->d:Landroid/content/Context;

    if-nez v0, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "fail to start beacon, application context is null"

    invoke-static {p2, p1}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/beacon/event/open/BeaconReport;->d:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/tencent/beacon/a/c/c;->a(Landroid/content/Context;)V

    const-string v0, "AppKey"

    invoke-static {v0, p2}, Lcom/tencent/beacon/base/util/h;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "fail to start beacon, appkey is empty"

    invoke-static {p2, p1}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/tencent/beacon/event/open/BeaconReport;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/beacon/a/c/c;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logAble: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/beacon/base/util/c;->b()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , SDKVersion: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/BeaconReport;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "beacon"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object v0

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/tencent/beacon/event/open/BeaconConfig;->isForceEnableAtta()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/tencent/beacon/a/b/h;->a(Z)V

    invoke-static {}, Lcom/tencent/beacon/a/b/i;->e()Lcom/tencent/beacon/a/b/i;

    move-result-object v0

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/tencent/beacon/event/open/BeaconConfig;->isForceEnableAtta()Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {v0, v2}, Lcom/tencent/beacon/a/b/h;->a(Z)V

    iget-object v0, p0, Lcom/tencent/beacon/event/open/BeaconReport;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    new-instance v2, Lcom/tencent/beacon/b/a;

    invoke-direct {v2}, Lcom/tencent/beacon/b/a;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-direct {p0, p3}, Lcom/tencent/beacon/event/open/BeaconReport;->c(Lcom/tencent/beacon/event/open/BeaconConfig;)V

    if-eqz p3, :cond_6

    invoke-direct {p0, p3}, Lcom/tencent/beacon/event/open/BeaconReport;->d(Lcom/tencent/beacon/event/open/BeaconConfig;)V

    invoke-virtual {p3}, Lcom/tencent/beacon/event/open/BeaconConfig;->isNeedInitQimei()Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/beacon/a/c/j;->a(Z)V

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tencent/beacon/event/open/BeaconConfig;->needReportRqdEvent()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/d/b;->d(Z)V

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tencent/beacon/event/open/BeaconConfig;->needAttaReport()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/d/b;->b(Z)V

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tencent/beacon/event/open/BeaconConfig;->isHighPerformanceMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/d/b;->a(Z)V

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tencent/beacon/event/open/BeaconConfig;->isNeedLifeCycleListener()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/d/b;->c(Z)V

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tencent/beacon/event/open/BeaconConfig;->getLongConnectionType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/d/b;->b(I)V

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tencent/beacon/event/open/BeaconConfig;->getRetryAfterQuicFailImme()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/d/b;->f(Z)V

    :cond_6
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v0

    new-instance v2, Lcom/tencent/beacon/event/open/b;

    invoke-direct {v2, p0, p3}, Lcom/tencent/beacon/event/open/b;-><init>(Lcom/tencent/beacon/event/open/BeaconReport;Lcom/tencent/beacon/event/open/BeaconConfig;)V

    invoke-virtual {v0, v2}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/tencent/beacon/event/open/BeaconReport;->e:Z

    if-eqz p3, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stopReport(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/event/open/BeaconReport;->pauseUpload(Z)V

    return-void
.end method
