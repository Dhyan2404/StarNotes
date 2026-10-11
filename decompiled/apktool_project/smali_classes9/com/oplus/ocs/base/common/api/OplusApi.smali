.class public abstract Lcom/oplus/ocs/base/common/api/OplusApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/oplus/ocs/base/common/api/Api$ApiOptions;",
        "R:",
        "Lcom/oplus/ocs/base/common/api/OplusApi;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/oplus/ocs/base/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/oplus/ocs/base/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/Api<",
            "TO;>;"
        }
    .end annotation
.end field

.field private d:Lcom/oplus/ocs/base/common/api/l;

.field private e:Lcom/oplus/ocs/base/internal/ClientSettings;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/ocs/base/common/api/Api;Lcom/oplus/ocs/base/common/api/Api$ApiOptions;Lcom/oplus/ocs/base/internal/ClientSettings;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/oplus/ocs/base/common/api/Api<",
            "TO;>;TO;",
            "Lcom/oplus/ocs/base/internal/ClientSettings;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/oplus/ocs/base/common/api/OplusApi;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/Api;Lcom/oplus/ocs/base/common/api/Api$ApiOptions;Lcom/oplus/ocs/base/internal/ClientSettings;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/Api;Lcom/oplus/ocs/base/common/api/Api$ApiOptions;Lcom/oplus/ocs/base/internal/ClientSettings;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/ocs/base/common/api/Api<",
            "TO;>;TO;",
            "Lcom/oplus/ocs/base/internal/ClientSettings;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/oplus/ocs/base/common/api/OplusApi;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/Api;Lcom/oplus/ocs/base/common/api/Api$ApiOptions;Lcom/oplus/ocs/base/internal/ClientSettings;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/Api;Lcom/oplus/ocs/base/common/api/Api$ApiOptions;Lcom/oplus/ocs/base/internal/ClientSettings;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/ocs/base/common/api/Api<",
            "TO;>;TO;",
            "Lcom/oplus/ocs/base/internal/ClientSettings;",
            "Z)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    .line 5
    invoke-static {p1, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 6
    invoke-static {p2, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->b:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->c:Lcom/oplus/ocs/base/common/api/Api;

    .line 9
    iput-object p3, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->a:Lcom/oplus/ocs/base/common/api/Api$ApiOptions;

    .line 10
    iput-object p4, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->e:Lcom/oplus/ocs/base/internal/ClientSettings;

    .line 11
    iput-boolean p5, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->f:Z

    if-eqz p5, :cond_0

    .line 12
    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/l;->a(Landroid/content/Context;)Lcom/oplus/ocs/base/common/api/l;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->d:Lcom/oplus/ocs/base/common/api/l;

    .line 13
    iget-object p2, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->e:Lcom/oplus/ocs/base/internal/ClientSettings;

    invoke-virtual {p1, p0, p2}, Lcom/oplus/ocs/base/common/api/l;->a(Lcom/oplus/ocs/base/common/api/OplusApi;Lcom/oplus/ocs/base/internal/ClientSettings;)V

    return-void

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/oplus/ocs/base/common/api/Api;->isAuth()Z

    move-result p1

    if-nez p1, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getClientName()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/ocs/base/common/api/Api;->getClientBuilder()Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->b:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p5, p4, v0}, Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/oplus/ocs/base/internal/ClientSettings;Ljava/lang/Object;)Lcom/oplus/ocs/base/common/api/Api$Client;

    move-result-object p2

    .line 18
    instance-of p3, p2, Lcom/oplus/ocs/base/common/api/BaseClient;

    if-eqz p3, :cond_1

    .line 19
    check-cast p2, Lcom/oplus/ocs/base/common/api/BaseClient;

    invoke-virtual {p2}, Lcom/oplus/ocs/base/common/api/BaseClient;->getClientName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v3, p1

    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 21
    :cond_2
    new-instance p1, Lcom/oplus/ocs/base/common/api/InternalClient;

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/oplus/ocs/base/common/api/InternalClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLcom/oplus/ocs/base/IAuthenticationListener;)V

    .line 22
    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/InternalClient;->connect4Stat()Z

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/Api;Lcom/oplus/ocs/base/internal/ClientSettings;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/ocs/base/common/api/Api<",
            "TO;>;",
            "Lcom/oplus/ocs/base/internal/ClientSettings;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/oplus/ocs/base/common/api/OplusApi;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/Api;Lcom/oplus/ocs/base/common/api/Api$ApiOptions;Lcom/oplus/ocs/base/internal/ClientSettings;Z)V

    return-void
.end method

.method public static checkInternal(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/oplus/ocs/base/utils/ServiceCheck;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addOnConnectionFailedListener(Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;)Lcom/oplus/ocs/base/common/api/OplusApi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;",
            ")TR;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1, v0}, Lcom/oplus/ocs/base/common/api/OplusApi;->addOnConnectionFailedListener(Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)Lcom/oplus/ocs/base/common/api/OplusApi;

    move-result-object p0

    return-object p0
.end method

.method public addOnConnectionFailedListener(Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)Lcom/oplus/ocs/base/common/api/OplusApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;",
            "Landroid/os/Handler;",
            ")TR;"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->f:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/oplus/ocs/base/common/api/l;->a(Lcom/oplus/ocs/base/common/api/OplusApi;Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)V

    :cond_0
    return-object p0
.end method

.method public addOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;)Lcom/oplus/ocs/base/common/api/OplusApi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;",
            ")TR;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1, v0}, Lcom/oplus/ocs/base/common/api/OplusApi;->addOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)Lcom/oplus/ocs/base/common/api/OplusApi;

    move-result-object p0

    return-object p0
.end method

.method public addOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)Lcom/oplus/ocs/base/common/api/OplusApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;",
            "Landroid/os/Handler;",
            ")TR;"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->f:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->d:Lcom/oplus/ocs/base/common/api/l;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/ocs/base/common/api/l;->a(Lcom/oplus/ocs/base/common/api/OplusApi;Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;->onConnectionSucceed()V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/oplus/ocs/base/common/api/OplusApi$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/ocs/base/common/api/OplusApi$1;-><init>(Lcom/oplus/ocs/base/common/api/OplusApi;Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-object p0
.end method

.method public addThis2Cache()V
    .locals 2

    iget-boolean v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->d:Lcom/oplus/ocs/base/common/api/l;

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->e:Lcom/oplus/ocs/base/internal/ClientSettings;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/ocs/base/common/api/l;->a(Lcom/oplus/ocs/base/common/api/OplusApi;Lcom/oplus/ocs/base/internal/ClientSettings;)V

    :cond_0
    return-void
.end method

.method public checkAuthResult(Lcom/oplus/ocs/base/common/CapabilityInfo;)V
    .locals 0

    return-void
.end method

.method public checkCapability()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->d:Lcom/oplus/ocs/base/common/api/l;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/l;->a(Lcom/oplus/ocs/base/common/api/OplusApi;)V

    :cond_0
    return-void
.end method

.method public checkExist()Z
    .locals 2

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->b:Landroid/content/Context;

    const-string v1, "com.coloros.ocs.opencapabilityservice"

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/utils/ServiceCheck;->check(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->b:Landroid/content/Context;

    const-string v0, "com.oplus.ocs"

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/ServiceCheck;->check(Landroid/content/Context;Ljava/lang/String;)Z

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

.method public disconnect()V
    .locals 3

    iget-boolean v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->d:Lcom/oplus/ocs/base/common/api/l;

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->c:Lcom/oplus/ocs/base/common/api/Api;

    iget-object v1, v0, Lcom/oplus/ocs/base/common/api/l;->b:Lcom/oplus/ocs/base/common/a;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, v0, Lcom/oplus/ocs/base/common/api/l;->b:Lcom/oplus/ocs/base/common/a;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public doRegisterListener(Landroid/os/Looper;Lcom/oplus/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/oplus/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)Lcom/oplus/ocs/base/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Looper;",
            "Lcom/oplus/ocs/base/common/api/TaskListenerHolder$SuccessNotifier<",
            "TTResult;>;",
            "Lcom/oplus/ocs/base/common/api/TaskListenerHolder$FailureNotifier<",
            "TTResult;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "capability doRegisterListener"

    .line 2
    invoke-static {v0}, Lcom/oplus/ocs/base/utils/a;->a(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/oplus/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/oplus/ocs/base/task/TaskImpl;-><init>()V

    .line 4
    new-instance v1, Lcom/oplus/ocs/base/common/api/TaskListenerHolder;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/oplus/ocs/base/common/api/TaskListenerHolder;-><init>(Landroid/os/Looper;Lcom/oplus/ocs/base/task/TaskImpl;Lcom/oplus/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/oplus/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)V

    .line 5
    iget-boolean p1, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->f:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p0, v1}, Lcom/oplus/ocs/base/common/api/l;->a(Lcom/oplus/ocs/base/common/api/OplusApi;Lcom/oplus/ocs/base/common/api/TaskListenerHolder;)V

    :cond_0
    return-object v0
.end method

.method public doRegisterListener(Lcom/oplus/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/oplus/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)Lcom/oplus/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/common/api/TaskListenerHolder$SuccessNotifier<",
            "TTResult;>;",
            "Lcom/oplus/ocs/base/common/api/TaskListenerHolder$FailureNotifier<",
            "TTResult;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/ocs/base/common/api/OplusApi;->doRegisterListener(Landroid/os/Looper;Lcom/oplus/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/oplus/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)Lcom/oplus/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method

.method public getApi()Lcom/oplus/ocs/base/common/api/Api;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/ocs/base/common/api/Api<",
            "TO;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->c:Lcom/oplus/ocs/base/common/api/Api;

    return-object p0
.end method

.method public getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/l;->d(Lcom/oplus/ocs/base/common/api/OplusApi;)Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getRemoteService()Landroid/os/IBinder;
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/l;->b(Lcom/oplus/ocs/base/common/api/OplusApi;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemoteVersion()I
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/l;->c(Lcom/oplus/ocs/base/common/api/OplusApi;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasFeature(Ljava/lang/String;)Z
.end method

.method public abstract init()V
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/l;->e(Lcom/oplus/ocs/base/common/api/OplusApi;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public releaseClientKey()V
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->f:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/OplusApi;->c:Lcom/oplus/ocs/base/common/api/Api;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/l;->a(Lcom/oplus/ocs/base/common/api/Api$ClientKey;)V

    :cond_0
    return-void
.end method
