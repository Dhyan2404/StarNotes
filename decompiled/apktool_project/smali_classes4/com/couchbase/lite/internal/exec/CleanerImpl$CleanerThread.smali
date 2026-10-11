.class final Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/exec/CleanerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CleanerThread"
.end annotation


# instance fields
.field private final runtime:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/exec/CleanerImpl;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/exec/CleanerImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->runtime:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->lambda$getUncaughtExceptionHandler$0(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$getUncaughtExceptionHandler$0(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$000()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {p0}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$400(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Cleaner thread %s-%s crashed"

    invoke-static {v0, v1, p2, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRuntimeNanos()J
    .locals 2

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->runtime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/exec/d;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/internal/exec/d;-><init>(Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;)V

    return-object v0
.end method

.method public run()V
    .locals 7

    invoke-static {}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$000()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    const-string v1, "Cleaner thread %s started"

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v0}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$100(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_5

    :try_start_0
    iget-object v2, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->getNextZombie()Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;

    move-result-object v2

    iget-object v3, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v3}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$100(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;->clean(Z)V

    iget-object v2, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->runtime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v3}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$200(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v4}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$300(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$302(Lcom/couchbase/lite/internal/exec/CleanerImpl;Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;)Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->startCleaner()V

    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$000()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    const-string v3, "Cleaner thread exiting: %s"

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v3, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v2

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v3}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$200(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_3
    iget-object v4, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v4}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$300(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$302(Lcom/couchbase/lite/internal/exec/CleanerImpl;Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;)Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->startCleaner()V

    :cond_4
    :goto_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$000()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    const-string v1, "Cleaner thread exiting: %s"

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_4

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_5
    iget-object v2, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v2}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$200(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_5
    iget-object v3, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v3}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$300(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$302(Lcom/couchbase/lite/internal/exec/CleanerImpl;Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;)Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->startCleaner()V

    :cond_7
    :goto_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$000()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    const-string v2, "Cleaner thread exiting: %s"

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_4
    return-void

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0
.end method
