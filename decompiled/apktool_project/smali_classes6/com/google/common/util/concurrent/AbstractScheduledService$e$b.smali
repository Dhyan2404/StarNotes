.class public Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$e;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->k(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->startUp()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService;->scheduler()Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-static {v2}, Lcom/google/common/util/concurrent/AbstractScheduledService;->b(Lcom/google/common/util/concurrent/AbstractScheduledService;)Lcom/google/common/util/concurrent/AbstractService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-static {v3}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->n(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-static {v4}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->o(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;->a(Lcom/google/common/util/concurrent/AbstractService;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->m(Lcom/google/common/util/concurrent/AbstractScheduledService$e;Lcom/google/common/util/concurrent/AbstractScheduledService$c;)Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->l(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->l(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->cancel(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->k(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$b;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->k(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
