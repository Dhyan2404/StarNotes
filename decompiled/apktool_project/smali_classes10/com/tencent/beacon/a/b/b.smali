.class public abstract Lcom/tencent/beacon/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/a/b/b$a;
    }
.end annotation


# static fields
.field protected static volatile a:Lcom/tencent/beacon/a/b/b;


# instance fields
.field protected b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/beacon/a/b/b;->b:I

    iput-boolean v0, p0, Lcom/tencent/beacon/a/b/b;->c:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/beacon/a/b/b;
    .locals 2

    const-class v0, Lcom/tencent/beacon/a/b/b;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/beacon/a/b/b;->a:Lcom/tencent/beacon/a/b/b;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/tencent/beacon/a/b/l;

    invoke-direct {v1}, Lcom/tencent/beacon/a/b/l;-><init>()V

    sput-object v1, Lcom/tencent/beacon/a/b/b;->a:Lcom/tencent/beacon/a/b/b;

    .line 4
    :cond_0
    sget-object v1, Lcom/tencent/beacon/a/b/b;->a:Lcom/tencent/beacon/a/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p0    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/tencent/beacon/a/b/b;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/tencent/beacon/a/b/b;->a:Lcom/tencent/beacon/a/b/b;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/tencent/beacon/a/b/l;

    invoke-direct {v1, p0}, Lcom/tencent/beacon/a/b/l;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lcom/tencent/beacon/a/b/b;->a:Lcom/tencent/beacon/a/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic a(Lcom/tencent/beacon/a/b/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/beacon/a/b/b;->c:Z

    return p1
.end method

.method public static b()Lcom/tencent/beacon/a/b/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/beacon/a/b/b$a;->a:Lcom/tencent/beacon/a/b/b;

    return-object v0
.end method


# virtual methods
.method public abstract a(I)Landroid/os/Handler;
.end method

.method public abstract a(IJI)V
.end method

.method public abstract a(IJJLjava/lang/Runnable;)V
    .param p6    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(IZI)V
.end method

.method public abstract a(JI)V
.end method

.method public abstract a(JLjava/lang/Runnable;)V
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/lang/Runnable;)V
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(ZI)V
.end method

.method public declared-synchronized b(I)V
    .locals 3

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/beacon/a/b/b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    invoke-virtual {p0, v0, v0}, Lcom/tencent/beacon/a/b/b;->a(ZI)V

    int-to-long v1, p1

    .line 4
    new-instance p1, Lcom/tencent/beacon/a/b/a;

    invoke-direct {p1, p0}, Lcom/tencent/beacon/a/b/a;-><init>(Lcom/tencent/beacon/a/b/b;)V

    invoke-virtual {p0, v1, v2, p1}, Lcom/tencent/beacon/a/b/b;->a(JLjava/lang/Runnable;)V

    .line 5
    iput-boolean v0, p0, Lcom/tencent/beacon/a/b/b;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
