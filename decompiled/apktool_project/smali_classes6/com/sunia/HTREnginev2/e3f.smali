.class public Lcom/sunia/HTREnginev2/e3f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public final e:Ljava/util/concurrent/ExecutorService;

.field public final f:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/e3f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sunia/HTREnginev2/e3f;->p(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/e3f;->n(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V

    return-void
.end method

.method public static synthetic c(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/e3f;->o(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V

    return-void
.end method

.method public static synthetic d(Lcom/sunia/HTREnginev2/e3f;Ljava/util/concurrent/Callable;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/Future;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/e3f;->r(Ljava/util/concurrent/Callable;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sunia/HTREnginev2/e3f;->v(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/e3f;->u(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V

    return-void
.end method

.method public static synthetic g(Lcom/sunia/HTREnginev2/e3f;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sunia/HTREnginev2/e3f;->s(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/e3f;->t(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V

    return-void
.end method

.method public static synthetic i(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sunia/HTREnginev2/e3f;->x(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/e3f;->y(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V

    return-void
.end method

.method public static synthetic l(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/e3f;->w(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/concurrent/Callable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/e3f;->q(Ljava/util/concurrent/Callable;Lcom/sunia/HTREnginev2/f3f$b;)V

    return-void
.end method

.method public static synthetic n(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sunia/HTREnginev2/f3f$b;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {p1, p0}, Lcom/sunia/HTREnginev2/f3f$b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic o(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sunia/HTREnginev2/d3f;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/d3f;-><init>(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic p(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e3f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sunia/HTREnginev2/c3f;

    invoke-direct {v1, p0, p1, p5}, Lcom/sunia/HTREnginev2/c3f;-><init>(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/util/concurrent/Callable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sunia/HTREnginev2/f3f$b;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {p1, p0}, Lcom/sunia/HTREnginev2/f3f$b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic r(Ljava/util/concurrent/Callable;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sunia/HTREnginev2/v2f;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/v2f;-><init>(Ljava/util/concurrent/Callable;Lcom/sunia/HTREnginev2/f3f$b;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method private synthetic s(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e3f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sunia/HTREnginev2/u2f;

    invoke-direct {v1, p0, p1, p5}, Lcom/sunia/HTREnginev2/u2f;-><init>(Lcom/sunia/HTREnginev2/e3f;Ljava/util/concurrent/Callable;Lcom/sunia/HTREnginev2/f3f$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-interface {p1, p0}, Lcom/sunia/HTREnginev2/f3f$b;->a(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private synthetic u(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sunia/HTREnginev2/w2f;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/w2f;-><init>(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic v(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e3f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sunia/HTREnginev2/x2f;

    invoke-direct {v1, p0, p1, p7}, Lcom/sunia/HTREnginev2/x2f;-><init>(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method private synthetic w(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sunia/HTREnginev2/t2f;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/t2f;-><init>(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic x(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Lcom/sunia/HTREnginev2/f3f$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e3f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sunia/HTREnginev2/a3f;

    invoke-direct {v1, p0, p1, p7}, Lcom/sunia/HTREnginev2/a3f;-><init>(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Ljava/lang/Runnable;Lcom/sunia/HTREnginev2/f3f$b;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {p1, p0}, Lcom/sunia/HTREnginev2/f3f$b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isShutdown()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p0

    return p0
.end method

.method public isTerminated()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0

    return p0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/f3f;

    new-instance v7, Lcom/sunia/HTREnginev2/y2f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sunia/HTREnginev2/y2f;-><init>(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v7}, Lcom/sunia/HTREnginev2/f3f;-><init>(Lcom/sunia/HTREnginev2/f3f$c;)V

    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/f3f;

    new-instance v7, Lcom/sunia/HTREnginev2/s2f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sunia/HTREnginev2/s2f;-><init>(Lcom/sunia/HTREnginev2/e3f;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v7}, Lcom/sunia/HTREnginev2/f3f;-><init>(Lcom/sunia/HTREnginev2/f3f$c;)V

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/f3f;

    new-instance v9, Lcom/sunia/HTREnginev2/b3f;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/sunia/HTREnginev2/b3f;-><init>(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v9}, Lcom/sunia/HTREnginev2/f3f;-><init>(Lcom/sunia/HTREnginev2/f3f$c;)V

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/f3f;

    new-instance v9, Lcom/sunia/HTREnginev2/z2f;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/sunia/HTREnginev2/z2f;-><init>(Lcom/sunia/HTREnginev2/e3f;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v9}, Lcom/sunia/HTREnginev2/f3f;-><init>(Lcom/sunia/HTREnginev2/f3f$c;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Shutting down is not allowed."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Shutting down is not allowed."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3f;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
