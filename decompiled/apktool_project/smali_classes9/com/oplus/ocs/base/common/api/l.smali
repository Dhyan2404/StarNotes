.class Lcom/oplus/ocs/base/common/api/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/oplus/ocs/base/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field static c:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/ocs/base/common/api/Api$ClientKey;",
            "Lcom/oplus/ocs/base/common/api/OplusApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/String; = "l"

.field private static volatile f:Lcom/oplus/ocs/base/common/api/l;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/oplus/ocs/base/common/a;

.field private e:Landroid/os/Looper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/l;->a:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/l;->a:Landroid/content/Context;

    :goto_0
    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/l;->e:Landroid/os/Looper;

    new-instance p1, Lcom/oplus/ocs/base/common/a;

    iget-object p2, p0, Lcom/oplus/ocs/base/common/api/l;->e:Landroid/os/Looper;

    invoke-direct {p1, p2, p0}, Lcom/oplus/ocs/base/common/a;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/l;->b:Lcom/oplus/ocs/base/common/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/oplus/ocs/base/common/api/l;
    .locals 4

    .line 1
    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->f:Lcom/oplus/ocs/base/common/api/l;

    if-nez v0, :cond_2

    .line 2
    const-class v0, Lcom/oplus/ocs/base/common/api/l;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/oplus/ocs/base/common/api/l;->f:Lcom/oplus/ocs/base/common/api/l;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OplusApiManager"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 6
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Lcom/oplus/ocs/base/common/api/l;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/oplus/ocs/base/common/api/l;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lcom/oplus/ocs/base/common/api/l;->f:Lcom/oplus/ocs/base/common/api/l;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/oplus/ocs/base/common/api/l;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oplus/ocs/base/common/api/l;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lcom/oplus/ocs/base/common/api/l;->f:Lcom/oplus/ocs/base/common/api/l;

    .line 9
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_2
    :goto_1
    sget-object p0, Lcom/oplus/ocs/base/common/api/l;->f:Lcom/oplus/ocs/base/common/api/l;

    return-object p0
.end method

.method public static a(Lcom/oplus/ocs/base/common/api/Api$ClientKey;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/oplus/ocs/base/common/api/OplusApi;)V
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->getCapabilityInfo(Lcom/oplus/ocs/base/common/api/Api;)Lcom/oplus/ocs/base/common/CapabilityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/common/api/OplusApi;->checkAuthResult(Lcom/oplus/ocs/base/common/CapabilityInfo;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/oplus/ocs/base/common/api/OplusApi;Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "oplusApi not be null"

    .line 35
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/OplusApiClient;

    if-eqz p0, :cond_0

    .line 38
    invoke-interface {p0, p1, p2}, Lcom/oplus/ocs/base/common/api/OplusApiClient;->setOnConnectionFailedListener(Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/oplus/ocs/base/common/api/OplusApi;Lcom/oplus/ocs/base/common/api/TaskListenerHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/common/api/OplusApi;",
            "Lcom/oplus/ocs/base/common/api/TaskListenerHolder<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addQueue "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oplusApi not be null"

    .line 40
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/OplusApiClient;

    if-eqz p0, :cond_0

    .line 43
    invoke-interface {p0, p1}, Lcom/oplus/ocs/base/common/api/OplusApiClient;->addQueue(Lcom/oplus/ocs/base/common/api/TaskListenerHolder;)V

    :cond_0
    return-void
.end method

.method public static b(Lcom/oplus/ocs/base/common/api/OplusApi;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "oplusApi not be null"

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/OplusApiClient;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/OplusApiClient;->getRemoteService()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lcom/oplus/ocs/base/common/api/OplusApi;)I
    .locals 2

    const-string v0, "oplusApi not be null"

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/OplusApiClient;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/OplusApiClient;->getRemoteVersion()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lcom/oplus/ocs/base/common/api/OplusApi;)Lcom/oplus/ocs/base/common/AuthResult;
    .locals 2

    const-string v0, "oplusApi not be null"

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/OplusApiClient;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/OplusApiClient;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Lcom/oplus/ocs/base/common/api/OplusApi;)Z
    .locals 2

    const-string v0, "oplusApi not be null"

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/OplusApiClient;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/OplusApiClient;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/oplus/ocs/base/common/api/Api;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/l;->b:Lcom/oplus/ocs/base/common/a;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/l;->b:Lcom/oplus/ocs/base/common/a;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/oplus/ocs/base/common/api/OplusApi;Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "oplusApi not be null"

    .line 27
    invoke-static {p1, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/ocs/base/common/api/OplusApiClient;

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/OplusApi;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 32
    :goto_0
    new-instance p3, Lcom/oplus/ocs/base/common/api/l$4;

    invoke-direct {p3, p0, p1, p2}, Lcom/oplus/ocs/base/common/api/l$4;-><init>(Lcom/oplus/ocs/base/common/api/l;Landroid/os/Looper;Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;)V

    const/4 p0, 0x0

    .line 33
    invoke-virtual {p3, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 34
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/oplus/ocs/base/common/api/OplusApiClient;->setOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/oplus/ocs/base/common/api/OplusApi;Lcom/oplus/ocs/base/internal/ClientSettings;)V
    .locals 4

    const-string v0, "oplusApi not be null"

    .line 15
    invoke-static {p1, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clientsettings not be null"

    .line 16
    invoke-static {p2, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/oplus/ocs/base/common/api/m;

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/l;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object v2

    .line 19
    iget-object v3, p1, Lcom/oplus/ocs/base/common/api/OplusApi;->a:Lcom/oplus/ocs/base/common/api/Api$ApiOptions;

    .line 20
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/oplus/ocs/base/common/api/m;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/Api;Lcom/oplus/ocs/base/common/api/Api$ApiOptions;Lcom/oplus/ocs/base/internal/ClientSettings;)V

    .line 21
    new-instance p2, Lcom/oplus/ocs/base/common/api/l$1;

    invoke-direct {p2, p0, p1}, Lcom/oplus/ocs/base/common/api/l$1;-><init>(Lcom/oplus/ocs/base/common/api/l;Lcom/oplus/ocs/base/common/api/OplusApi;)V

    invoke-interface {v0, p2}, Lcom/oplus/ocs/base/common/api/OplusApiClient;->setOnClearListener(Lcom/oplus/ocs/base/common/api/j;)V

    .line 22
    new-instance p2, Lcom/oplus/ocs/base/common/api/l$2;

    invoke-direct {p2, p0, p1}, Lcom/oplus/ocs/base/common/api/l$2;-><init>(Lcom/oplus/ocs/base/common/api/l;Lcom/oplus/ocs/base/common/api/OplusApi;)V

    invoke-interface {v0, p2}, Lcom/oplus/ocs/base/common/api/OplusApiClient;->setOnCapabilityAuthListener(Lcom/oplus/ocs/base/common/api/i;)V

    .line 23
    sget-object p2, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p1}, Lcom/oplus/ocs/base/common/api/OplusApi;->getApi()Lcom/oplus/ocs/base/common/api/Api;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/common/api/l;->a(Lcom/oplus/ocs/base/common/api/Api;)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    sget-object p0, Lcom/oplus/ocs/base/common/api/l;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handle message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/ocs/base/common/api/Api;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/ocs/base/common/api/OplusApiClient;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/oplus/ocs/base/common/api/OplusApiClient;->disconnect()V

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/l;->a(Lcom/oplus/ocs/base/common/api/Api$ClientKey;)V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/ocs/base/common/api/Api;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/api/OplusApiClient;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/OplusApiClient;->connect()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
