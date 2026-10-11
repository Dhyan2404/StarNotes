.class public Lcom/tencent/beacon/module/StrategyModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/module/BeaconModule;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Lcom/tencent/beacon/d/a;

.field private c:Lcom/tencent/beacon/d/i;

.field private d:Lcom/tencent/beacon/d/b;

.field private e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/beacon/module/StrategyModule;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/module/StrategyModule;->e:Z

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/module/StrategyModule;->d:Lcom/tencent/beacon/d/b;

    invoke-static {}, Lcom/tencent/beacon/d/a;->a()Lcom/tencent/beacon/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/module/StrategyModule;->b:Lcom/tencent/beacon/d/a;

    invoke-static {}, Lcom/tencent/beacon/d/h;->d()Lcom/tencent/beacon/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/module/StrategyModule;->b:Lcom/tencent/beacon/d/a;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/d/h;->a(Lcom/tencent/beacon/d/d;)V

    new-instance v0, Lcom/tencent/beacon/d/i;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/d/i;-><init>(Lcom/tencent/beacon/module/StrategyModule;)V

    iput-object v0, p0, Lcom/tencent/beacon/module/StrategyModule;->c:Lcom/tencent/beacon/d/i;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/beacon/module/StrategyModule;)Lcom/tencent/beacon/d/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/module/StrategyModule;->c:Lcom/tencent/beacon/d/i;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/beacon/module/StrategyModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/module/StrategyModule;->d()V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/module/StrategyModule;->c:Lcom/tencent/beacon/d/i;

    invoke-virtual {v0}, Lcom/tencent/beacon/d/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/module/StrategyModule;->c:Lcom/tencent/beacon/d/i;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lcom/tencent/beacon/d/a;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/tencent/beacon/module/StrategyModule;->b:Lcom/tencent/beacon/d/a;

    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[module] strategy module > TRUE"

    .line 2
    invoke-static {v1, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/beacon/module/StrategyModule;->c:Lcom/tencent/beacon/d/i;

    invoke-virtual {v0}, Lcom/tencent/beacon/d/i;->b()V

    .line 4
    invoke-direct {p0}, Lcom/tencent/beacon/module/StrategyModule;->d()V

    .line 5
    new-instance v0, Lcom/tencent/beacon/module/StrategyModule$1;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/module/StrategyModule$1;-><init>(Lcom/tencent/beacon/module/StrategyModule;)V

    invoke-static {p1, v0}, Lcom/tencent/beacon/base/net/b/e;->a(Landroid/content/Context;Lcom/tencent/beacon/base/net/b/e$a;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 6
    sget-object v0, Lcom/tencent/beacon/module/StrategyModule;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/beacon/module/StrategyModule;->e:Z

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()Lcom/tencent/beacon/d/b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/beacon/module/StrategyModule;->d:Lcom/tencent/beacon/d/b;

    return-object p0
.end method

.method public c()Z
    .locals 1

    sget-object v0, Lcom/tencent/beacon/module/StrategyModule;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/tencent/beacon/module/StrategyModule;->e:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
