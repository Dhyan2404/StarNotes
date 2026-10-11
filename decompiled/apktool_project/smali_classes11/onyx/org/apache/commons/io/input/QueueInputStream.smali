.class public Lonyx/org/apache/commons/io/input/QueueInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;
    }
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/input/QueueInputStream;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-direct {p0, p1, v0}, Lonyx/org/apache/commons/io/input/QueueInputStream;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/time/Duration;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/time/Duration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "blockingQueue"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/QueueInputStream;->e:Ljava/util/concurrent/BlockingQueue;

    const-string p1, "timeout"

    .line 6
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/time/Duration;->toNanos()J

    move-result-wide p1

    iput-wide p1, p0, Lonyx/org/apache/commons/io/input/QueueInputStream;->f:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/time/Duration;Lonyx/org/apache/commons/io/input/QueueInputStream$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/input/QueueInputStream;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/time/Duration;)V

    return-void
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public f()Ljava/util/concurrent/BlockingQueue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/QueueInputStream;->e:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public j()Ljava/time/Duration;
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/QueueInputStream;->f:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public newQueueOutputStream()Lonyx/org/apache/commons/io/output/QueueOutputStream;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/output/QueueOutputStream;

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/QueueInputStream;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/output/QueueOutputStream;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    return-object v0
.end method

.method public read()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/QueueInputStream;->e:Ljava/util/concurrent/BlockingQueue;

    iget-wide v1, p0, Lonyx/org/apache/commons/io/input/QueueInputStream;->f:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, p0}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    :goto_0
    return p0

    :catch_0
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
