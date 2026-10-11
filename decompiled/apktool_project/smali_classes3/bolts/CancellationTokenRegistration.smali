.class public Lbolts/CancellationTokenRegistration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final e:Ljava/lang/Object;

.field public f:Lbolts/CancellationTokenSource;

.field public g:Ljava/lang/Runnable;

.field public h:Z


# direct methods
.method public constructor <init>(Lbolts/CancellationTokenSource;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/CancellationTokenRegistration;->e:Ljava/lang/Object;

    iput-object p1, p0, Lbolts/CancellationTokenRegistration;->f:Lbolts/CancellationTokenSource;

    iput-object p2, p0, Lbolts/CancellationTokenRegistration;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lbolts/CancellationTokenRegistration;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lbolts/CancellationTokenRegistration;->h:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbolts/CancellationTokenRegistration;->h:Z

    iget-object v1, p0, Lbolts/CancellationTokenRegistration;->f:Lbolts/CancellationTokenSource;

    invoke-virtual {v1, p0}, Lbolts/CancellationTokenSource;->g0(Lbolts/CancellationTokenRegistration;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lbolts/CancellationTokenRegistration;->f:Lbolts/CancellationTokenSource;

    iput-object v1, p0, Lbolts/CancellationTokenRegistration;->g:Ljava/lang/Runnable;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lbolts/CancellationTokenRegistration;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lbolts/CancellationTokenRegistration;->j()V

    iget-object v1, p0, Lbolts/CancellationTokenRegistration;->g:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Lbolts/CancellationTokenRegistration;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j()V
    .locals 1

    iget-boolean p0, p0, Lbolts/CancellationTokenRegistration;->h:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Object already closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
