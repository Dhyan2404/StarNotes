.class Lcom/oplus/ocs/base/common/api/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/ocs/base/common/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/base/common/api/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/ServiceConnection;

.field private d:Lcom/oplus/ocs/base/IAuthenticationListener;

.field private e:Lcom/oplus/ocs/base/common/api/InternalClient;

.field private f:Lcom/coloros/ocs/base/IAuthenticationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/InternalClient;Lcom/oplus/ocs/base/IAuthenticationListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/oplus/ocs/base/common/api/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/f;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/f;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/f;->e:Lcom/oplus/ocs/base/common/api/InternalClient;

    iput-object p3, p0, Lcom/oplus/ocs/base/common/api/f;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    new-instance p1, Lcom/oplus/ocs/base/common/api/f$1;

    invoke-direct {p1, p0}, Lcom/oplus/ocs/base/common/api/f$1;-><init>(Lcom/oplus/ocs/base/common/api/f;)V

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/f;->f:Lcom/coloros/ocs/base/IAuthenticationListener;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/ocs/base/common/api/f;)Lcom/oplus/ocs/base/IAuthenticationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/f;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/oplus/ocs/base/common/api/f;)Lcom/oplus/ocs/base/common/api/InternalClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/f;->e:Lcom/oplus/ocs/base/common/api/InternalClient;

    return-object p0
.end method

.method public static synthetic c(Lcom/oplus/ocs/base/common/api/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/oplus/ocs/base/common/api/f;)Landroid/content/ServiceConnection;
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/f;->c:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 7

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/f;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Lcom/oplus/ocs/base/common/api/f$a;

    invoke-direct {v1, p0, v0}, Lcom/oplus/ocs/base/common/api/f$a;-><init>(Lcom/oplus/ocs/base/common/api/f;B)V

    iput-object v1, p0, Lcom/oplus/ocs/base/common/api/f;->c:Landroid/content/ServiceConnection;

    .line 4
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/f;->b:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/ocs/base/common/api/f;->f:Lcom/coloros/ocs/base/IAuthenticationListener;

    .line 6
    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/f;->e:Lcom/oplus/ocs/base/common/api/InternalClient;

    const-string v4, "com.coloros.opencapabilityservice"

    const-string v5, "com.coloros.ocs.opencapabilityservice"

    const-string v6, "com.coloros.ocs.opencapabilityservice.service.ColorOcsService"

    invoke-virtual {v3, v4, v5, v6}, Lcom/oplus/ocs/base/common/api/InternalClient;->getServiceIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 7
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "internal_binder"

    .line 8
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v2, "internal_bundle"

    .line 9
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/oplus/ocs/base/common/api/f;->c:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/f;->a:Ljava/lang/String;

    const-string v2, "connect state - "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/ocs/base/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 12
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/f;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 13
    invoke-interface {v1, v2}, Lcom/oplus/ocs/base/IAuthenticationListener;->onFail(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/f;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    if-eqz v1, :cond_2

    const/16 v2, 0x3f1

    .line 15
    invoke-interface {v1, v2}, Lcom/oplus/ocs/base/IAuthenticationListener;->onFail(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 16
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/f;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "in bind get an exception %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/ocs/base/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 6

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/f;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/oplus/ocs/base/common/api/f$a;

    invoke-direct {v1, p0, v0}, Lcom/oplus/ocs/base/common/api/f$a;-><init>(Lcom/oplus/ocs/base/common/api/f;B)V

    iput-object v1, p0, Lcom/oplus/ocs/base/common/api/f;->c:Landroid/content/ServiceConnection;

    .line 4
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/f;->b:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/ocs/base/common/api/f;->e:Lcom/oplus/ocs/base/common/api/InternalClient;

    const-string v3, "com.coloros.opencapabilityservice"

    const-string v4, "com.coloros.ocs.opencapabilityservice"

    const-string v5, "com.coloros.ocs.opencapabilityservice.service.ColorOcsService"

    invoke-virtual {v2, v3, v4, v5}, Lcom/oplus/ocs/base/common/api/InternalClient;->getServiceIntent4Stat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/f;->c:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/f;->a:Ljava/lang/String;

    const-string v2, "connect stat state - "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/ocs/base/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/f;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    .line 8
    invoke-interface {v1, v2}, Lcom/oplus/ocs/base/IAuthenticationListener;->onFail(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/f;->d:Lcom/oplus/ocs/base/IAuthenticationListener;

    if-eqz v1, :cond_1

    const/16 v2, 0x3f1

    .line 10
    invoke-interface {v1, v2}, Lcom/oplus/ocs/base/IAuthenticationListener;->onFail(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/f;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "in bind get an exception %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/ocs/base/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public final c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/f;->c:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/f;->a:Ljava/lang/String;

    const-string v0, "mServiceConnectionImpl is null"

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/f;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "in unbind get an exception %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method
