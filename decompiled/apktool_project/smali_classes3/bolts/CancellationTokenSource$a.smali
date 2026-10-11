.class public Lbolts/CancellationTokenSource$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/CancellationTokenSource;->w(JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lbolts/CancellationTokenSource;


# direct methods
.method public constructor <init>(Lbolts/CancellationTokenSource;)V
    .locals 0

    iput-object p1, p0, Lbolts/CancellationTokenSource$a;->e:Lbolts/CancellationTokenSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lbolts/CancellationTokenSource$a;->e:Lbolts/CancellationTokenSource;

    invoke-static {v0}, Lbolts/CancellationTokenSource;->f(Lbolts/CancellationTokenSource;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbolts/CancellationTokenSource$a;->e:Lbolts/CancellationTokenSource;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbolts/CancellationTokenSource;->j(Lbolts/CancellationTokenSource;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lbolts/CancellationTokenSource$a;->e:Lbolts/CancellationTokenSource;

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->cancel()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
