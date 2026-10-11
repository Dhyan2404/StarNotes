.class public Lcom/samsung/android/sdk/penremote/SpenRemote;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/penremote/SpenRemote$State;,
        Lcom/samsung/android/sdk/penremote/SpenRemote$Error;,
        Lcom/samsung/android/sdk/penremote/SpenRemote$d;,
        Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionStateChangeListener;,
        Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionResultCallback;
    }
.end annotation


# static fields
.field public static final FEATURE_TYPE_AIR_MOTION:I = 0x1

.field public static final FEATURE_TYPE_BUTTON:I = 0x0

.field public static final i:Ljava/lang/String; = "SM_SDK"

.field public static final j:Ljava/lang/String; = "button"

.field public static final k:Ljava/lang/String; = "airmotion"

.field public static final l:Ljava/lang/String; = "com.samsung.android.service.aircommand"

.field public static final m:Ljava/lang/String; = "com.samsung.android.service.aircommand.remotespen.external.RemoteSpenBindingService"

.field public static final n:Ljava/lang/String; = "binderType"

.field public static final o:I = 0x2

.field public static final p:Ljava/lang/String; = "clientVersion"

.field public static final q:Ljava/lang/String; = "clientPackageName"

.field public static final r:I = 0x1000001


# instance fields
.field public a:[Z

.field public b:Z

.field public c:Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

.field public d:Z

.field public e:Landroid/os/Handler;

.field public f:Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionResultCallback;

.field public g:Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionStateChangeListener;

.field public h:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->d:Z

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->e:Landroid/os/Handler;

    .line 6
    new-instance v0, Lcom/samsung/android/sdk/penremote/SpenRemote$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/penremote/SpenRemote$a;-><init>(Lcom/samsung/android/sdk/penremote/SpenRemote;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->h:Landroid/content/ServiceConnection;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/penremote/SpenRemote$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/penremote/SpenRemote;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/penremote/SpenRemote;)Lcom/samsung/android/sdk/penremote/ISPenRemoteService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->c:Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/sdk/penremote/SpenRemote;Lcom/samsung/android/sdk/penremote/ISPenRemoteService;)Lcom/samsung/android/sdk/penremote/ISPenRemoteService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->c:Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

    return-object p1
.end method

.method public static synthetic c(Lcom/samsung/android/sdk/penremote/SpenRemote;)Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionResultCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->f:Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionResultCallback;

    return-object p0
.end method

.method public static synthetic d(Lcom/samsung/android/sdk/penremote/SpenRemote;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/penremote/SpenRemote;->j(I)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/sdk/penremote/SpenRemote;)Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->g:Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionStateChangeListener;

    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/sdk/penremote/SpenRemote;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/penremote/SpenRemote$d;->a()Lcom/samsung/android/sdk/penremote/SpenRemote;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public connect(Landroid/content/Context;Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionResultCallback;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPen Remote SDK version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/penremote/SpenRemote;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SM_SDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->isSamsungDevice()Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const-string v0, "This is not Samsung device."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/penremote/SpenRemote;->i(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/penremote/SpenRemote;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "This device does not support S Pen."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/penremote/SpenRemote;->i(I)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "This device does not support SPen Remote."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/penremote/SpenRemote;->i(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/penremote/SpenRemote;->h()V

    iget-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->a:[Z

    if-nez v0, :cond_3

    const-string p1, "This device does not support SPen Remote features."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/penremote/SpenRemote;->i(I)V

    return-void

    :cond_3
    iput-object p2, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->f:Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionResultCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/penremote/SpenRemote;->k(Landroid/content/Context;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Activity context is only allowed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/penremote/SpenRemote;->l(Landroid/content/Context;)V

    return-void
.end method

.method public final f(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.samsung.android.service.aircommand"

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "SM_SDK"

    const-string p1, "Could not find S Pen Framework"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final g(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/penremote/SpenRemote;->h()V

    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->a:[Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    if-lt p1, v1, :cond_1

    return v0

    :cond_1
    aget-boolean p0, p0, p1

    return p0
.end method

.method public getVersionCode()I
    .locals 0

    const p0, 0x1000001

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%d.%d.%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->b:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_BLE_SPEN_SPEC"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->a:[Z

    return-void

    :cond_1
    array-length v2, v1

    sub-int/2addr v2, v0

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->a:[Z

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    const-string v6, "button"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->a:[Z

    aput-boolean v0, v5, v3

    goto :goto_1

    :cond_2
    const-string v6, "airmotion"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->a:[Z

    aput-boolean v0, v5, v0

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final i(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->e:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/penremote/SpenRemote$b;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/penremote/SpenRemote$b;-><init>(Lcom/samsung/android/sdk/penremote/SpenRemote;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isConnected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->d:Z

    return p0
.end method

.method public isFeatureEnabled(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/penremote/SpenRemote;->g(I)Z

    move-result p0

    return p0
.end method

.method public final j(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->e:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/penremote/SpenRemote$c;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/penremote/SpenRemote$c;-><init>(Lcom/samsung/android/sdk/penremote/SpenRemote;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k(Landroid/content/Context;)V
    .locals 4

    const-string v0, "bind SpenRemoteService"

    const-string v1, "SM_SDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.service.aircommand"

    const-string v3, "com.samsung.android.service.aircommand.remotespen.external.RemoteSpenBindingService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "binderType"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "clientVersion"

    const v3, 0x1000001

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "clientPackageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->h:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->d:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Add com.samsung.android.sdk.penremote.BIND_SPEN_REMOTE permission"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final l(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "SM_SDK"

    const-string v1, "unbind SpenRemoteService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->c()Lcom/samsung/android/sdk/penremote/SpenUnitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->e()V

    iget-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->h:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->d:Z

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/penremote/SpenRemote;->j(I)V

    :cond_0
    return-void
.end method

.method public setConnectionStateChangeListener(Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/penremote/SpenRemote;->g:Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionStateChangeListener;

    return-void
.end method
