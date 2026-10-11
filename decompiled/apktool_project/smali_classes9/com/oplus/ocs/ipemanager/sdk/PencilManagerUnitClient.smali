.class public Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;
.super Lcom/oplus/ocs/base/common/api/OplusApi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/ocs/base/common/api/OplusApi<",
        "Lcom/oplus/ocs/base/common/api/Api$ApiOptions$NoOptions;",
        "Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;",
        ">;"
    }
.end annotation


# static fields
.field public static final API:Lcom/oplus/ocs/base/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/Api<",
            "Lcom/oplus/ocs/base/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/lang/String; = "PencilManagerUnitClient"

.field public static final k:Ljava/lang/String; = "OPPO"

.field public static final l:Ljava/lang/String; = "realme"

.field public static final m:Ljava/lang/String; = "oneplus"

.field public static final n:Ljava/lang/String; = "oplus"

.field public static final o:I = 0x2710

.field public static final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/ocs/base/common/Feature;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Lcom/oplus/ocs/base/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/Api$ClientKey<",
            "Lcom/oplus/ocs/ipemanager/sdk/PencilManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder<",
            "Lcom/oplus/ocs/ipemanager/sdk/PencilManagerClient;",
            "Lcom/oplus/ocs/base/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static s:Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;


# instance fields
.field public g:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

.field public h:Z

.field public i:Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->p:Ljava/util/List;

    new-instance v0, Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/oplus/ocs/base/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->q:Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    new-instance v1, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerClientBuilder;

    invoke-direct {v1}, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerClientBuilder;-><init>()V

    sput-object v1, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->r:Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;

    new-instance v2, Lcom/oplus/ocs/base/common/api/Api;

    const-string v3, "PencilManagerClient.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/oplus/ocs/base/common/api/Api;-><init>(Ljava/lang/String;Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;Lcom/oplus/ocs/base/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->API:Lcom/oplus/ocs/base/common/api/Api;

    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->s:Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    sget-object v2, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->API:Lcom/oplus/ocs/base/common/api/Api;

    const/4 v3, 0x0

    new-instance v4, Lcom/oplus/ocs/base/internal/ClientSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2710

    sget-object v5, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->p:Ljava/util/List;

    invoke-direct {v4, v0, v1, v5}, Lcom/oplus/ocs/base/internal/ClientSettings;-><init>(Ljava/lang/String;ILjava/util/List;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oplus/ocs/base/common/api/OplusApi;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/Api;Lcom/oplus/ocs/base/common/api/Api$ApiOptions;Lcom/oplus/ocs/base/internal/ClientSettings;Z)V

    const-string p1, "PencilManagerUnitClient"

    const-string v0, "new PencilManagerUnitClient"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->checkCapability()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;

    invoke-direct {v0, p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->s:Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;
    .locals 2

    const-class v0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->s:Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/OplusApi;->addThis2Cache()V

    sget-object p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->s:Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->a(Landroid/content/Context;)V

    sget-object p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->s:Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "OPPO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "realme"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "oneplus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "oplus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public checkAuthResult(Lcom/oplus/ocs/base/common/CapabilityInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v0

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->h:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mAuthCheckFlag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PencilManagerUnitClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->h:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface$a;->a(Landroid/os/IBinder;)Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->g:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    invoke-static {}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->getInstance()Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->g:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->i:Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    const-string v1, "init"

    const-string v3, "PencilManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    const-string p1, "sdk interface is null!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;->onReleased(I)V

    :cond_1
    return-void

    :cond_2
    iput-object v0, p1, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    iput-object p0, p1, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    :try_start_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    iget-object v0, p1, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->c:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p0, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p0, p1, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    iget-object p1, p1, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->d:Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;

    invoke-interface {p0, p1}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->setISdkAidlCallback(Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "init setISdkAidlCallback error = "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public getVersion()I
    .locals 0

    const/16 p0, 0x2710

    return p0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    invoke-static {}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->getInstance()Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->release()V

    sget-object p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->s:Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->disconnect()V

    :cond_0
    return-void
.end method

.method public setPencilCallback(Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->i:Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    return-void
.end method
