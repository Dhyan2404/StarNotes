.class public final Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicLong;

.field public final b:Ljava/util/concurrent/atomic/AtomicLong;

.field public final c:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

.field public final d:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

.field public final e:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

.field public final f:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->b:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-direct {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->c:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    new-instance v0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-direct {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->d:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    new-instance v0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-direct {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->e:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    new-instance v0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-direct {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->f:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public b()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->d:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    return-object p0
.end method

.method public c()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->e:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    return-object p0
.end method

.method public d()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public e()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->c:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    return-object p0
.end method

.method public f()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->f:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    return-object p0
.end method

.method public getActiveConnectionCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFailedConnectionAverageDuration()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->d:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFailedConnectionCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->d:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestAverageDuration()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->e:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->e:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public getScheduledConnectionCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSuccessfulConnectionAverageDuration()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->c:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSuccessfulConnectionCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->c:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTaskAverageDuration()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->f:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTaskCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->f:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[activeConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scheduledConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", successfulConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->c:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failedConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->d:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->e:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->f:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
