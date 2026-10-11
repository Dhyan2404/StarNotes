.class public Lcom/tencent/qmsp/oaid2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qmsp/oaid2/p$b;
    }
.end annotation


# static fields
.field public static e:Ljava/lang/String; = "LXOP"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/tencent/qmsp/oaid2/n;

.field public c:Landroid/content/ServiceConnection;

.field public d:Lcom/tencent/qmsp/oaid2/p$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qmsp/oaid2/p$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qmsp/oaid2/p;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/qmsp/oaid2/p;->d:Lcom/tencent/qmsp/oaid2/p$b;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/p;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qmsp/oaid2/p;->d:Lcom/tencent/qmsp/oaid2/p$b;

    new-instance p1, Lcom/tencent/qmsp/oaid2/p$a;

    invoke-direct {p1, p0}, Lcom/tencent/qmsp/oaid2/p$a;-><init>(Lcom/tencent/qmsp/oaid2/p;)V

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/p;->c:Landroid/content/ServiceConnection;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.zui.deviceidservice"

    const-string v0, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/tencent/qmsp/oaid2/p;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/p;->c:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bindService Successful!"

    invoke-virtual {p0, p1}, Lcom/tencent/qmsp/oaid2/p;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/p;->d:Lcom/tencent/qmsp/oaid2/p$b;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/tencent/qmsp/oaid2/p$b;->a(Lcom/tencent/qmsp/oaid2/p;)V

    :cond_1
    const-string p1, "bindService Failed!!!"

    invoke-virtual {p0, p1}, Lcom/tencent/qmsp/oaid2/p;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Context can not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/tencent/qmsp/oaid2/p;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qmsp/oaid2/p;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/p;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/p;->b:Lcom/tencent/qmsp/oaid2/n;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/tencent/qmsp/oaid2/n;->b()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "getOAID error, RemoteException!"

    .line 6
    invoke-virtual {p0, v1}, Lcom/tencent/qmsp/oaid2/p;->a(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string v0, "Context is null."

    .line 8
    invoke-virtual {p0, v0}, Lcom/tencent/qmsp/oaid2/p;->a(Ljava/lang/String;)V

    .line 9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null, must be new OpenDeviceId first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/tencent/qmsp/oaid2/p;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/tencent/qmsp/oaid2/p;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qmsp/oaid2/p;->b:Lcom/tencent/qmsp/oaid2/n;

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v1, "Device support opendeviceid"

    .line 3
    invoke-virtual {p0, v1}, Lcom/tencent/qmsp/oaid2/p;->b(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/tencent/qmsp/oaid2/p;->b:Lcom/tencent/qmsp/oaid2/n;

    invoke-interface {v1}, Lcom/tencent/qmsp/oaid2/n;->c()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string v1, "isSupport error, RemoteException!"

    .line 5
    invoke-virtual {p0, v1}, Lcom/tencent/qmsp/oaid2/p;->a(Ljava/lang/String;)V

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/p;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liufeng, getAAID package\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qmsp/oaid2/p;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qmsp/oaid2/p;->b:Lcom/tencent/qmsp/oaid2/n;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/tencent/qmsp/oaid2/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v0, "getAAID error, RemoteException!"

    invoke-virtual {p0, v0}, Lcom/tencent/qmsp/oaid2/p;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "input package is null!"

    invoke-virtual {p0, v0}, Lcom/tencent/qmsp/oaid2/p;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_3
    const-string v0, "Context is null."

    invoke-virtual {p0, v0}, Lcom/tencent/qmsp/oaid2/p;->b(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null, must be new OpenDeviceId first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/p;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qmsp/oaid2/p;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v0, "unBind Service successful"

    invoke-virtual {p0, v0}, Lcom/tencent/qmsp/oaid2/p;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "unBind Service exception"

    invoke-virtual {p0, v0}, Lcom/tencent/qmsp/oaid2/p;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qmsp/oaid2/p;->b:Lcom/tencent/qmsp/oaid2/n;

    return-void
.end method
