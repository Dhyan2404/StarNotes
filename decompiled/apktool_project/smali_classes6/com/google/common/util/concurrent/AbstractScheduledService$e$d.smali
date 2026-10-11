.class public Lcom/google/common/util/concurrent/AbstractScheduledService$e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$d;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$d;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->k(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$d;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->l(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->isCancelled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$d;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->k(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$d;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->runOneIteration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$d;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->k(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$d;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->t:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService;->shutDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractScheduledService;->a()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$d;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$d;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->l(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$c;->cancel(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$e$d;->e:Lcom/google/common/util/concurrent/AbstractScheduledService$e;

    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$e;->k(Lcom/google/common/util/concurrent/AbstractScheduledService$e;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
