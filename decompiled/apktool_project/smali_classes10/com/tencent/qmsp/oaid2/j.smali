.class public Lcom/tencent/qmsp/oaid2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qmsp/oaid2/j$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/tencent/qmsp/oaid2/j$a;
    .locals 5

    const-string v0, "com.huawei.hwid"

    .line 2
    invoke-static {}, Lcom/tencent/qmsp/oaid2/j;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdvertisingIdInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    new-instance v2, Lcom/tencent/qmsp/oaid2/k;

    invoke-direct {v2}, Lcom/tencent/qmsp/oaid2/k;-><init>()V

    .line 6
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v3, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-static {}, Lcom/tencent/qmsp/oaid2/j;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bind ok"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :try_start_1
    iget-boolean v3, v2, Lcom/tencent/qmsp/oaid2/k;->a:Z

    if-nez v3, :cond_0

    .line 11
    iput-boolean v0, v2, Lcom/tencent/qmsp/oaid2/k;->a:Z

    .line 12
    iget-object v0, v2, Lcom/tencent/qmsp/oaid2/k;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/m$a;->a(Landroid/os/IBinder;)Lcom/tencent/qmsp/oaid2/m;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/tencent/qmsp/oaid2/m;->m()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-interface {v0}, Lcom/tencent/qmsp/oaid2/m;->h()Z

    move-result v0

    .line 15
    new-instance v4, Lcom/tencent/qmsp/oaid2/j$a;

    invoke-direct {v4, v3, v0}, Lcom/tencent/qmsp/oaid2/j$a;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object v1, v4

    goto :goto_1

    .line 17
    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :try_start_3
    const-string v0, "bind hms service InterruptedException"

    .line 18
    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    const-string v0, "bind hms service RemoteException"

    .line 19
    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/c;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_1
    return-object v1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :cond_1
    const-string p0, "bind failed"

    .line 21
    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/c;->b(Ljava/lang/String;)V

    return-object v1

    :catch_1
    const-string p0, "HMS not found"

    .line 22
    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/c;->b(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string p0, "Cannot be called from the main thread"

    .line 23
    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/c;->b(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "AdId"

    return-object v0
.end method
