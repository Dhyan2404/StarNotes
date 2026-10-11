.class public Lcom/oplus/ocs/ipemanager/sdk/PencilManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;
    }
.end annotation


# static fields
.field public static final RELEASE_CODE_SERVICE_DISCONNECTED:I = -0x1

.field public static final RELEASE_CODE_SUCCESS:I = 0x0

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final VERSION_CODE_ERROR:I = -0x1

.field public static e:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;


# instance fields
.field public a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

.field public b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

.field public c:Landroid/os/IBinder$DeathRecipient;

.field public final d:Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-direct {v0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;-><init>()V

    sput-object v0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->e:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$a;

    invoke-direct {v0, p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$a;-><init>(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)V

    iput-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->c:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$b;

    invoke-direct {v0, p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$b;-><init>(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)V

    iput-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->d:Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    return-object v0
.end method

.method public static synthetic b(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;
    .locals 0

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    return-object p0
.end method

.method public static getInstance()Lcom/oplus/ocs/ipemanager/sdk/PencilManager;
    .locals 1

    sget-object v0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->e:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    return-object v0
.end method


# virtual methods
.method public getPencilConnectState()I
    .locals 2

    const-string v0, "PencilManager"

    const-string v1, "getPencilConnectState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->getPencilConnectState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getSupportFeatures()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/ipemanager/sdk/IpeFeature;",
            ">;"
        }
    .end annotation

    const-string v0, "getSupportFeatures"

    const-string v1, "PencilManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    if-nez p0, :cond_0

    const-string p0, "getSupportFeatures error, interface is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->getSupportFeatures()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getSupportFeatures error = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportSdkVersion()I
    .locals 3

    const-string v0, "getSupportSdkVersion"

    const-string v1, "PencilManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string p0, "getSupportSdkVersion error, interface is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->getSuportSdkVersion()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "getSupportSdkVersion error = "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getVibrationSwitchState()Z
    .locals 2

    const-string v0, "PencilManager"

    const-string v1, "getVibrationSwitchState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->getVibrationSwitchState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public isDemoModeEnable()Z
    .locals 3

    const-string v0, "isDemoModeEnable"

    const-string v1, "PencilManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "isDemoModeEnable error, interface is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->isDemoModeEnable()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "isDemoModeEnable error = "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isFunctionFeedbackEnable()Z
    .locals 3

    const-string v0, "isFunctionFeedbackEnable"

    const-string v1, "PencilManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "isFunctionFeedbackEnable error, interface is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->isFunctionVibrationEnable()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "isFunctionFeedbackEnable error = "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public release()V
    .locals 4

    const-string v0, "release "

    const-string v1, "PencilManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->d:Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;

    invoke-interface {v0, v3}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->unsetISdkAidlCallback(Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;)V

    iget-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->c:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "release, error = "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;->onReleased(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    :cond_1
    return-void
.end method

.method public setVibrationType(Lcom/oplus/ocs/ipemanager/sdk/Vibration;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVibrationType "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PencilManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    invoke-interface {p0, v0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->setVibrationType(I)V

    :goto_0
    return-void

    :cond_2
    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    invoke-interface {p0, v2}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->setVibrationType(I)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    invoke-interface {p0, v0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->setVibrationType(I)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->setVibrationType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "setVibrationType, error = "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startFeedBackVibration()V
    .locals 1

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->startFeedBackVibration()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "startFeedBackVibration, error = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PencilManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public startVibration(Lcom/oplus/ocs/ipemanager/sdk/Vibration;)V
    .locals 3

    const-string v0, "PencilManager"

    if-nez p1, :cond_0

    const-string p0, "startVibration error, type is null!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    if-nez v1, :cond_1

    const-string p0, "mInterface is null!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startVibration "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->startVibration(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "startVibration, error = "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopFeedBackVibration()V
    .locals 1

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->stopFeedBackVibration()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "stopFeedBackVibration, error = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PencilManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
