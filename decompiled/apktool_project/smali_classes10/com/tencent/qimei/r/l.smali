.class public Lcom/tencent/qimei/r/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/sdk/IQimeiSDK;
.implements Lcom/tencent/qimei/y/b;
.implements Lcom/tencent/qimei/y/c;
.implements Lcom/tencent/qimei/j/c;
.implements Lcom/tencent/qimei/aa/g;
.implements Lcom/tencent/qimei/r/f$b;


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qimei/r/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/String;


# instance fields
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qimei/sdk/IAsyncQimeiListener;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/tencent/qimei/sdk/debug/IDebugger;

.field public final f:Ljava/lang/String;

.field public g:Landroid/content/Context;

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/r/l;->a:Ljava/util/Map;

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_1

    :cond_0
    const-class v0, Lcom/tencent/qimei/sdk/QimeiSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    sput-object v0, Lcom/tencent/qimei/r/l;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qimei/r/l;->c:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/r/l;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qimei/r/l;->g:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qimei/r/l;->h:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qimei/r/l;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qimei/r/l;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    new-instance v0, Lcom/tencent/qimei/s/a;

    invoke-direct {v0, p1}, Lcom/tencent/qimei/s/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/r/l;->e:Lcom/tencent/qimei/sdk/debug/IDebugger;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/qimei/r/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/r/l;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/r/l;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/qimei/r/l;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/r/l;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/tencent/qimei/r/l;Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/qimei/r/l;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/qimei/r/l;->g:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic c(Lcom/tencent/qimei/r/l;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/qimei/r/l;->k()V

    return-void
.end method

.method public static synthetic d(Lcom/tencent/qimei/r/l;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/qimei/r/l;->o()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/qimei/r/l;->getQimei()Lcom/tencent/qimei/sdk/Qimei;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/sdk/Qimei;->getQimei36()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/tencent/qimei/r/l;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/r/l;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/tencent/qimei/r/l;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qimei/r/l;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/qimei/r/l;->i:Ljava/lang/String;

    return-object p0
.end method

.method public c()Landroid/content/Context;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/r/l;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDK_INIT"

    const-string v2, "Context has been destroyed!!"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/r/l;->g:Landroid/content/Context;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/tencent/qimei/r/l;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qimei/r/l;->j:Ljava/lang/String;

    return-object p0
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qimei/r/l;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qimei/r/l;->getQimei()Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/tencent/qimei/r/l;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qimei/sdk/IAsyncQimeiListener;

    invoke-interface {v3, v1}, Lcom/tencent/qimei/sdk/IAsyncQimeiListener;->onQimeiDispatch(Lcom/tencent/qimei/sdk/Qimei;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/tencent/qimei/r/l;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/qimei/r/l;->getQimei()Lcom/tencent/qimei/sdk/Qimei;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBeaconTicket()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/tencent/qimei/r/l;->m()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/b/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_1
    invoke-static {p0}, Lcom/tencent/qimei/r/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/b;

    move-result-object p0

    iget-wide v2, p0, Lcom/tencent/qimei/r/b;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/qimei/r/b;->e:J

    :cond_2
    iget-object v0, p0, Lcom/tencent/qimei/r/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/tencent/qimei/r/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qimei/r/b;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    const-string v2, "tt"

    invoke-virtual {v0, v2}, Lcom/tencent/qimei/l/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qimei/r/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/qimei/r/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qimei/r/b;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/qimei/r/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qimei/r/b;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public getDebugger()Lcom/tencent/qimei/sdk/debug/IDebugger;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qimei/r/l;->e:Lcom/tencent/qimei/sdk/debug/IDebugger;

    return-object p0
.end method

.method public getQimei()Lcom/tencent/qimei/sdk/Qimei;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/r/l;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/b/a;->d(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getQimei(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
    .locals 2

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qimei/r/l;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/r/g;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qimei/r/g;-><init>(Lcom/tencent/qimei/r/l;Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/d/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.2.18.3"

    return-object p0
.end method

.method public getStrategy()Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p0

    iget-object p0, p0, Lcom/tencent/qimei/aa/a;->c:Lcom/tencent/qimei/ac/b;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/qimei/r/l;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDK_INIT"

    const-string v2, "getToken fail, sdk not init!"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/r/n;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/n;

    move-result-object p0

    const-string v0, "1"

    iput-object v0, p0, Lcom/tencent/qimei/r/n;->f:Ljava/lang/String;

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/r/n;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/r/n;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/tencent/qimei/p/b;->a()Lcom/tencent/qimei/p/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/p/b;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i()V
    .locals 1

    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/e/c;->v()V

    invoke-virtual {p0}, Lcom/tencent/qimei/r/l;->o()V

    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;)Z
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-boolean v0, v1, Lcom/tencent/qimei/r/l;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    const-string v0, "SDK_INIT"

    const-string v5, "\n\n\n\n_____________________________________\n< Welcome to QmSDK! Your AppKey is: %s SDK_VERSION is: %s>\n -------------------------------------\n        \\   ^__^\n         \\  (oo)\\_______\n            (__)\\       )\\/\\\n                ||----w |\n                ||     || \n\n\n\n"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "1.2.18.3"

    aput-object v8, v7, v4

    invoke-static {v0, v5, v7}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    iput-object v0, v1, Lcom/tencent/qimei/r/l;->g:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qimei/r/l;->l()Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, v1, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    aput-object v2, v0, v9

    const-string v2, "SDK_INIT"

    const-string v3, "appkey:%s parameter exception"

    invoke-static {v2, v3, v0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return v9

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/qimei/x/b;->a()Lcom/tencent/qimei/x/b;

    move-result-object v0

    const-string v5, "SdkInfo"

    invoke-virtual {v0, v5, v1}, Lcom/tencent/qimei/x/b;->a(Ljava/lang/String;Lcom/tencent/qimei/z/a;)V

    iget-object v0, v1, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qimei/x/b;->a()Lcom/tencent/qimei/x/b;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BizInfo"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1}, Lcom/tencent/qimei/x/b;->a(Ljava/lang/String;Lcom/tencent/qimei/z/a;)V

    invoke-static {}, Lcom/tencent/qimei/q/i;->b()Lcom/tencent/qimei/q/i;

    move-result-object v0

    iget-object v5, v1, Lcom/tencent/qimei/r/l;->g:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/tencent/qimei/q/i;->a(Landroid/content/Context;)V

    sget-object v5, Lcom/tencent/qimei/u/b$a;->a:Lcom/tencent/qimei/u/b;

    iget-object v7, v1, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    iget-object v8, v1, Lcom/tencent/qimei/r/l;->g:Landroid/content/Context;

    sget-object v10, Lcom/tencent/qimei/r/l;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/qimei/ac/b;->m:Ljava/lang/String;

    iget-boolean v11, v5, Lcom/tencent/qimei/u/b;->a:Z

    if-eqz v11, :cond_2

    goto/16 :goto_5

    :cond_2
    if-nez v8, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    :cond_4
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v12, v9

    :cond_5
    const-string v0, "qimei"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sput-boolean v4, Lcom/tencent/qimei/uin/U;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    add-int/2addr v12, v4

    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v0, :cond_7

    if-lt v12, v6, :cond_5

    goto :goto_1

    :cond_6
    :try_start_5
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sput-boolean v4, Lcom/tencent/qimei/uin/U;->a:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_1
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_8

    :try_start_7
    invoke-static {v8, v11}, Lcom/tencent/qimei/uin/U;->n(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v0, v4

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v8, v0

    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    move v0, v9

    :goto_2
    iput-boolean v0, v5, Lcom/tencent/qimei/u/b;->a:Z

    if-nez v0, :cond_b

    invoke-static {}, Lcom/tencent/qimei/q/i;->b()Lcom/tencent/qimei/q/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/q/i;->a()Lcom/tencent/qimei/q/c;

    move-result-object v8

    iget-object v11, v8, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v12, "p1"

    const-string v13, "1005"

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "p2"

    invoke-static {v7}, Lcom/tencent/qimei/o/d;->a(Ljava/lang/String;)Lcom/tencent/qimei/o/d;

    move-result-object v12

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const-string v14, "a1"

    invoke-static {}, Lcom/tencent/qimei/y/d;->b()Lcom/tencent/qimei/y/d;

    move-result-object v15

    invoke-virtual {v15}, Lcom/tencent/qimei/y/d;->c()Landroid/content/Context;

    move-result-object v15

    if-nez v15, :cond_9

    const-string v15, ""

    goto :goto_3

    :cond_9
    const-class v16, Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    const-string v9, "primaryCpuAbi"

    invoke-static {v4, v15, v9}, Lcom/tencent/qimei/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    :goto_3
    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "a2"

    invoke-static {}, Lcom/tencent/qimei/y/d;->b()Lcom/tencent/qimei/y/d;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/qimei/y/d;->c()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_a

    const-string v9, ""

    goto :goto_4

    :cond_a
    const-class v14, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    const-string v15, "nativeLibraryDir"

    invoke-static {v14, v9, v15}, Lcom/tencent/qimei/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :goto_4
    invoke-interface {v13, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v9, "a3"

    invoke-interface {v13, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v9, "a4"

    invoke-interface {v13, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/tencent/qimei/o/d;->c()Ljava/lang/String;

    move-result-object v4

    const-string v9, "a5"

    invoke-interface {v13, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v9, "a6"

    invoke-interface {v13, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v9, "a7"

    invoke-interface {v13, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v13}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v9, v8, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "v2"

    const-string v9, "/report"

    invoke-virtual {v0, v8, v4, v7, v9}, Lcom/tencent/qimei/q/i;->b(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    new-array v0, v6, [Ljava/lang/Object;

    iget-boolean v4, v5, Lcom/tencent/qimei/u/b;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const/4 v4, 0x1

    aput-object v10, v0, v4

    const-string v4, "SDK_INIT \uff5c LOCAL_ENC"

    const-string v5, " initialization is complete (%b),fileName is %s "

    invoke-static {v4, v5, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    iget-object v0, v1, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    iget-object v4, v1, Lcom/tencent/qimei/r/l;->g:Landroid/content/Context;

    sget-object v5, Lcom/tencent/qimei/r/l;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/tencent/qimei/l/g;->e:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/qimei/l/g;->d:Landroid/content/Context;

    sget-object v0, Lcom/tencent/qimei/l/c$a;->a:Lcom/tencent/qimei/l/c;

    iput-object v4, v0, Lcom/tencent/qimei/l/c;->b:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v0

    new-instance v4, Lcom/tencent/qimei/r/h;

    invoke-direct {v4, v1}, Lcom/tencent/qimei/r/h;-><init>(Lcom/tencent/qimei/r/l;)V

    invoke-virtual {v0, v4}, Lcom/tencent/qimei/d/a;->a(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/o/d;->a(Ljava/lang/String;)Lcom/tencent/qimei/o/d;

    move-result-object v0

    new-instance v4, Lcom/tencent/qimei/r/i;

    invoke-direct {v4, v1}, Lcom/tencent/qimei/r/i;-><init>(Lcom/tencent/qimei/r/l;)V

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v5

    new-instance v6, Lcom/tencent/qimei/o/a;

    invoke-direct {v6, v0, v4}, Lcom/tencent/qimei/o/a;-><init>(Lcom/tencent/qimei/o/d;Lcom/tencent/qimei/e/d;)V

    invoke-virtual {v5, v6}, Lcom/tencent/qimei/d/a;->a(Ljava/lang/Runnable;)V

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const-string v4, "SDK_INIT"

    const-string v5, "\n\n\n\n\t\t\t\t ----- initialization finished! From appkey:%s ----- \n\n\n\n\t\t\t\t"

    invoke-static {v4, v5, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/tencent/qimei/r/l;->h:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    iput-wide v5, v1, Lcom/tencent/qimei/r/l;->k:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit p0

    return v4

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isQimeiValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public j()V
    .locals 0

    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/e/c;->v()V

    return-void
.end method

.method public final k()V
    .locals 1

    new-instance v0, Lcom/tencent/qimei/r/j;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/r/j;-><init>(Lcom/tencent/qimei/r/l;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qimei/r/l;->getQimei(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    return-void
.end method

.method public final declared-synchronized l()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/tencent/qimei/r/l;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qimei/r/l;->l()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qimei/r/l;->h:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "SDK_INIT"

    const-string v3, "appkey:%s uninitialized"

    invoke-static {v2, v3, v1}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()V
    .locals 1

    new-instance v0, Lcom/tencent/qimei/r/k;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/r/k;-><init>(Lcom/tencent/qimei/r/l;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qimei/r/l;->getQimei(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    return-void
.end method

.method public final o()V
    .locals 13

    iget-object v0, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/qimei/aa/a;->c:Lcom/tencent/qimei/ac/b;

    invoke-virtual {v1}, Lcom/tencent/qimei/ac/b;->k()Z

    move-result v1

    const-string v2, "SDK_INIT \uff5c QM"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "force update Qm"

    invoke-static {v2, v1, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move v0, v3

    goto :goto_2

    :cond_0
    invoke-static {v0}, Lcom/tencent/qimei/b/a;->d(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_2

    :cond_2
    :goto_1
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "QM is null,need update Qm"

    invoke-static {v2, v1, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_3

    goto/16 :goto_a

    :cond_3
    iget-object v0, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    const-string v1, "q_s_t"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/l/g;->c(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v5, 0x18

    invoke-static {v0, v1, v5, v6}, Lcom/tencent/qimei/b/a;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "more than 24 hours since last QM request"

    invoke-static {v2, v5, v1}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qimei/r/l;->g:Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    new-instance v9, Lcom/tencent/qimei/w/a;

    invoke-direct {v9}, Lcom/tencent/qimei/w/a;-><init>()V

    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v10

    iget-object v10, v10, Lcom/tencent/qimei/aa/a;->c:Lcom/tencent/qimei/ac/b;

    invoke-virtual {v10}, Lcom/tencent/qimei/ac/b;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xe

    if-ne v11, v12, :cond_5

    const/4 v11, 0x2

    :try_start_0
    invoke-virtual {v10, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/tencent/qimei/w/a;->a:I

    const/4 v11, 0x3

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/tencent/qimei/w/a;->b:I

    const/4 v11, 0x6

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/tencent/qimei/w/a;->c:I

    const/16 v11, 0x9

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v9, Lcom/tencent/qimei/w/a;->d:I

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v9, Lcom/tencent/qimei/w/a;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    new-instance v9, Lcom/tencent/qimei/w/a;

    invoke-direct {v9}, Lcom/tencent/qimei/w/a;-><init>()V

    :cond_5
    :goto_3
    iget v6, v9, Lcom/tencent/qimei/w/a;->a:I

    if-ne v5, v6, :cond_6

    iget v6, v9, Lcom/tencent/qimei/w/a;->b:I

    if-ge v7, v6, :cond_7

    :cond_6
    iget v6, v9, Lcom/tencent/qimei/w/a;->c:I

    if-ne v5, v6, :cond_f

    iget v5, v9, Lcom/tencent/qimei/w/a;->d:I

    if-gt v7, v5, :cond_f

    :cond_7
    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/qimei/aa/a;->c:Lcom/tencent/qimei/ac/b;

    iget-boolean v6, v5, Lcom/tencent/qimei/ac/b;->g:Z

    if-eqz v6, :cond_8

    iget-boolean v6, v5, Lcom/tencent/qimei/ac/b;->j:Z

    if-eqz v6, :cond_8

    sget-object v6, Lcom/tencent/qimei/ab/a$a;->B:Lcom/tencent/qimei/k/b;

    iget-object v5, v5, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v3

    goto :goto_4

    :cond_8
    move v5, v4

    :goto_4
    if-nez v5, :cond_a

    :cond_9
    :goto_5
    move v1, v4

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_b

    goto :goto_5

    :cond_b
    const-string v6, "activity"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_c

    goto :goto_5

    :cond_c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_d

    iget-object v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v7, v6

    move v8, v4

    :goto_6
    if-ge v8, v7, :cond_d

    aget-object v10, v6, v8

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    move v1, v3

    goto :goto_7

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :goto_7
    xor-int/2addr v1, v3

    goto :goto_8

    :cond_f
    move v1, v4

    :goto_8
    if-eqz v1, :cond_12

    iget v5, v9, Lcom/tencent/qimei/w/a;->a:I

    iget v6, v9, Lcom/tencent/qimei/w/a;->c:I

    if-le v5, v6, :cond_10

    mul-int/lit8 v5, v5, 0x3c

    iget v7, v9, Lcom/tencent/qimei/w/a;->b:I

    add-int/2addr v5, v7

    rsub-int v5, v5, 0x5a0

    mul-int/lit8 v6, v6, 0x3c

    iget v7, v9, Lcom/tencent/qimei/w/a;->d:I

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    goto :goto_9

    :cond_10
    if-ge v5, v6, :cond_11

    mul-int/lit8 v6, v6, 0x3c

    iget v7, v9, Lcom/tencent/qimei/w/a;->d:I

    add-int/2addr v6, v7

    mul-int/lit8 v5, v5, 0x3c

    iget v7, v9, Lcom/tencent/qimei/w/a;->b:I

    add-int/2addr v5, v7

    sub-int/2addr v6, v5

    goto :goto_9

    :cond_11
    iget v5, v9, Lcom/tencent/qimei/w/a;->d:I

    iget v6, v9, Lcom/tencent/qimei/w/a;->b:I

    sub-int v6, v5, v6

    :goto_9
    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    new-instance v7, Ljava/util/Random;

    int-to-long v10, v5

    invoke-direct {v7, v10, v11}, Ljava/util/Random;-><init>(J)V

    iget v5, v9, Lcom/tencent/qimei/w/a;->e:I

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v7, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    invoke-static {v0}, Lcom/tencent/qimei/r/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/b;

    move-result-object v0

    iput v6, v0, Lcom/tencent/qimei/r/b;->f:I

    :cond_12
    if-nez v1, :cond_13

    goto :goto_a

    :cond_13
    move v3, v4

    :goto_a
    if-eqz v3, :cond_14

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/tencent/qimei/r/f;->a(Ljava/lang/String;Lcom/tencent/qimei/r/f$b;)Lcom/tencent/qimei/r/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/qimei/d/a;->a(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_14
    iget-object v0, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/r/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/b;

    move-result-object v0

    iget v0, v0, Lcom/tencent/qimei/r/b;->f:I

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v1

    int-to-long v3, v0

    iget-object v5, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {v5, p0}, Lcom/tencent/qimei/r/f;->a(Ljava/lang/String;Lcom/tencent/qimei/r/f$b;)Lcom/tencent/qimei/r/f;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/tencent/qimei/d/a;->a(JLjava/lang/Runnable;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "staggered %d,update QM(appKey: %s)"

    invoke-static {v2, v0, p0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_b
    return-void

    :cond_15
    iget-object v0, p0, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "no need to update QM(appKey: %s)"

    invoke-static {v2, v1, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/qimei/r/l;->f()V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/tencent/qimei/e/a;->a:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setChannelID(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/r/l;->i:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized setLogAble(Z)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/tencent/qimei/n/a;->a(Z)V

    invoke-static {p1}, Lcom/tencent/qimei/n/a;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLogObserver(Lcom/tencent/qimei/log/IObservableLog;)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 0

    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/tencent/qimei/n/a;->c:Lcom/tencent/qimei/log/IObservableLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSdkName(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qimei/r/l;->h:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tencent/qimei/r/l;->j:Ljava/lang/String;

    :cond_0
    return-object p0
.end method
