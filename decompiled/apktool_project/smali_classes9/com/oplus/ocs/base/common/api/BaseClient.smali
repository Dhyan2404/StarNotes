.class public abstract Lcom/oplus/ocs/base/common/api/BaseClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/ocs/base/common/api/Api$Client;
.implements Lcom/oplus/ocs/base/common/api/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IBinder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oplus/ocs/base/common/api/Api$Client;",
        "Lcom/oplus/ocs/base/common/api/k;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "BaseClient"


# instance fields
.field volatile b:I

.field c:Lcom/oplus/ocs/base/common/CapabilityInfo;

.field d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/oplus/ocs/base/common/api/TaskListenerHolder;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/oplus/ocs/base/common/api/j;

.field f:Lcom/oplus/ocs/base/common/api/i;

.field g:Lcom/oplus/ocs/base/common/api/d;

.field h:Lcom/oplus/ocs/base/common/api/e;

.field private i:Landroid/content/Context;

.field private j:Landroid/os/Looper;

.field private k:Lcom/oplus/ocs/base/common/api/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->b:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->d:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->g:Lcom/oplus/ocs/base/common/api/d;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->i:Landroid/content/Context;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->j:Landroid/os/Looper;

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/c;->a(Lcom/oplus/ocs/base/common/api/BaseClient;)Lcom/oplus/ocs/base/common/api/c;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->k:Lcom/oplus/ocs/base/common/api/c;

    invoke-static {}, Lcom/oplus/ocs/base/common/api/b;->a()Lcom/oplus/ocs/base/common/api/b;

    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->i:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/BaseClient;->getClientName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->k:Lcom/oplus/ocs/base/common/api/c;

    invoke-static {p1, p2, v0, p0}, Lcom/oplus/ocs/base/common/api/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/ocs/base/common/api/c;Lcom/oplus/ocs/base/common/api/k;)Lcom/oplus/ocs/base/common/api/e;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->h:Lcom/oplus/ocs/base/common/api/e;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Looper must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/BaseClient;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/oplus/ocs/base/common/api/TaskListenerHolder;Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/BaseClient;->connect()V

    :cond_0
    return-void
.end method

.method public static b(I)Lcom/oplus/ocs/base/common/CapabilityInfo;
    .locals 7

    new-instance v6, Lcom/oplus/ocs/base/common/AuthResult;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    new-array v5, v0, [B

    move-object v0, v6

    move v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/oplus/ocs/base/common/AuthResult;-><init>(Ljava/lang/String;III[B)V

    new-instance p0, Lcom/oplus/ocs/base/common/CapabilityInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/oplus/ocs/base/common/CapabilityInfo;-><init>(Ljava/util/List;ILcom/oplus/ocs/base/common/AuthResult;)V

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 15
    sget-object v0, Lcom/oplus/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string v1, "handleAuthenticateFailure"

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->g:Lcom/oplus/ocs/base/common/api/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/common/api/BaseClient;->a(Landroid/os/Handler;)V

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x65

    .line 19
    iput v1, v0, Landroid/os/Message;->what:I

    .line 20
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 21
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->g:Lcom/oplus/ocs/base/common/api/d;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->g:Lcom/oplus/ocs/base/common/api/d;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/oplus/ocs/base/common/api/d;

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->j:Landroid/os/Looper;

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->k:Lcom/oplus/ocs/base/common/api/c;

    invoke-direct {p1, v0, v1}, Lcom/oplus/ocs/base/common/api/d;-><init>(Landroid/os/Looper;Lcom/oplus/ocs/base/common/api/c;)V

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->g:Lcom/oplus/ocs/base/common/api/d;

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/oplus/ocs/base/common/api/d;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->k:Lcom/oplus/ocs/base/common/api/c;

    invoke-direct {v0, p1, v1}, Lcom/oplus/ocs/base/common/api/d;-><init>(Landroid/os/Looper;Lcom/oplus/ocs/base/common/api/c;)V

    iput-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->g:Lcom/oplus/ocs/base/common/api/d;

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq p0, p1, :cond_2

    .line 7
    sget-object p0, Lcom/oplus/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string p1, "the new handler looper is not the same as the old one."

    invoke-static {p0, p1}, Lcom/oplus/ocs/base/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/oplus/ocs/base/common/api/TaskListenerHolder;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    .line 13
    invoke-virtual {p1, p0}, Lcom/oplus/ocs/base/common/api/TaskListenerHolder;->setErrorCode(I)V

    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/ocs/base/common/api/TaskListenerHolder;->setErrorCode(I)V

    :cond_1
    return-void
.end method

.method public addQueue(Lcom/oplus/ocs/base/common/api/TaskListenerHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/common/api/TaskListenerHolder<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/BaseClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/common/api/BaseClient;->a(Lcom/oplus/ocs/base/common/api/TaskListenerHolder;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->b:I

    const/16 v1, 0xd

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/oplus/ocs/base/common/api/BaseClient;->a(Lcom/oplus/ocs/base/common/api/TaskListenerHolder;Z)V

    return-void

    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/oplus/ocs/base/common/api/BaseClient;->a(Lcom/oplus/ocs/base/common/api/TaskListenerHolder;Z)V

    return-void
.end method

.method public connect()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->h:Lcom/oplus/ocs/base/common/api/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/ocs/base/common/api/e;->a()Z

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/BaseClient;->b(I)Lcom/oplus/ocs/base/common/CapabilityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/common/api/BaseClient;->a(I)V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->e:Lcom/oplus/ocs/base/common/api/j;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/j;->a()V

    :cond_1
    return-void
.end method

.method public disconnect()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->h:Lcom/oplus/ocs/base/common/api/e;

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/e;->c()V

    return-void
.end method

.method public getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;
    .locals 0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object p0

    return-object p0
.end method

.method public abstract getClientName()Ljava/lang/String;
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->j:Landroid/os/Looper;

    return-object p0
.end method

.method public getMinApkVersion()I
    .locals 0

    invoke-direct {p0}, Lcom/oplus/ocs/base/common/api/BaseClient;->a()V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getVersion()I

    move-result p0

    return p0
.end method

.method public getRemoteService()Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oplus/ocs/base/common/api/BaseClient;->a()V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public isConnected()Z
    .locals 1

    iget p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isConnecting()Z
    .locals 1

    iget p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->b:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStateChange(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->b:I

    return-void
.end method

.method public setOnCapabilityAuthListener(Lcom/oplus/ocs/base/common/api/i;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->f:Lcom/oplus/ocs/base/common/api/i;

    return-void
.end method

.method public setOnClearListener(Lcom/oplus/ocs/base/common/api/j;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->e:Lcom/oplus/ocs/base/common/api/j;

    return-void
.end method

.method public setOnConnectionFailedListener(Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    new-instance p2, Lcom/oplus/ocs/base/common/ConnectionResult;

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result p0

    invoke-direct {p2, p0}, Lcom/oplus/ocs/base/common/ConnectionResult;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;->onConnectionFailed(Lcom/oplus/ocs/base/common/ConnectionResult;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/oplus/ocs/base/common/api/BaseClient;->a(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->g:Lcom/oplus/ocs/base/common/api/d;

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/d;->b:Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;

    :cond_1
    return-void
.end method

.method public setOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->c:Lcom/oplus/ocs/base/common/CapabilityInfo;

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;->onConnectionSucceed()V

    return-void

    :cond_0
    new-instance v0, Lcom/oplus/ocs/base/common/api/BaseClient$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/ocs/base/common/api/BaseClient$1;-><init>(Lcom/oplus/ocs/base/common/api/BaseClient;Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/oplus/ocs/base/common/api/BaseClient;->a(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient;->g:Lcom/oplus/ocs/base/common/api/d;

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/d;->a:Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;

    :cond_2
    return-void
.end method
