.class public Lorg/apache/http/impl/client/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final e:Lorg/apache/http/client/methods/HttpUriRequest;

.field public final f:Lorg/apache/http/client/HttpClient;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:J

.field public i:J

.field public j:J

.field public final k:Lorg/apache/http/protocol/HttpContext;

.field public final l:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final m:Lorg/apache/http/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/concurrent/FutureCallback<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final n:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/concurrent/FutureCallback;Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TV;>;",
            "Lorg/apache/http/concurrent/FutureCallback<",
            "TV;>;",
            "Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/http/impl/client/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/client/a;->h:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/impl/client/a;->i:J

    iput-wide v0, p0, Lorg/apache/http/impl/client/a;->j:J

    iput-object p1, p0, Lorg/apache/http/impl/client/a;->f:Lorg/apache/http/client/HttpClient;

    iput-object p4, p0, Lorg/apache/http/impl/client/a;->l:Lorg/apache/http/client/ResponseHandler;

    iput-object p2, p0, Lorg/apache/http/impl/client/a;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p3, p0, Lorg/apache/http/impl/client/a;->k:Lorg/apache/http/protocol/HttpContext;

    iput-object p5, p0, Lorg/apache/http/impl/client/a;->m:Lorg/apache/http/concurrent/FutureCallback;

    iput-object p6, p0, Lorg/apache/http/impl/client/a;->n:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lorg/apache/http/impl/client/a;->m:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/concurrent/FutureCallback;->cancelled()V

    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/http/impl/client/a;->j:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/http/impl/client/a;->h:J

    return-wide v0
.end method

.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/client/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/a;->n:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->a()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/client/a;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/a;->n:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->d()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    iget-object v0, p0, Lorg/apache/http/impl/client/a;->f:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lorg/apache/http/impl/client/a;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lorg/apache/http/impl/client/a;->l:Lorg/apache/http/client/ResponseHandler;

    iget-object v3, p0, Lorg/apache/http/impl/client/a;->k:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/http/impl/client/a;->j:J

    iget-object v1, p0, Lorg/apache/http/impl/client/a;->n:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->e()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/http/impl/client/a;->i:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->c(J)V

    iget-object v1, p0, Lorg/apache/http/impl/client/a;->m:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lorg/apache/http/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/a;->n:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->c()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/http/impl/client/a;->i:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->c(J)V

    iget-object v1, p0, Lorg/apache/http/impl/client/a;->n:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->f()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/http/impl/client/a;->i:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->c(J)V

    iget-object p0, p0, Lorg/apache/http/impl/client/a;->n:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->a()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/apache/http/impl/client/a;->n:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->b()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/http/impl/client/a;->i:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->c(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/http/impl/client/a;->j:J

    iget-object v1, p0, Lorg/apache/http/impl/client/a;->m:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lorg/apache/http/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_1
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/client/a;->n:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->c()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/http/impl/client/a;->i:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->c(J)V

    iget-object v1, p0, Lorg/apache/http/impl/client/a;->n:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->f()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/http/impl/client/a;->i:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->c(J)V

    iget-object p0, p0, Lorg/apache/http/impl/client/a;->n:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->a()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call has been cancelled for request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/http/impl/client/a;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/http/impl/client/a;->i:J

    return-wide v0
.end method
