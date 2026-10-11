.class public Lonyx/org/apache/commons/io/output/QueueOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/output/QueueOutputStream;-><init>(Ljava/util/concurrent/BlockingQueue;)V

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

    .line 2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-string v0, "blockingQueue"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/QueueOutputStream;->e:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public newQueueInputStream()Lonyx/org/apache/commons/io/input/QueueInputStream;
    .locals 1

    invoke-static {}, Lonyx/org/apache/commons/io/input/QueueInputStream;->builder()Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;

    move-result-object v0

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/QueueOutputStream;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;->setBlockingQueue(Ljava/util/concurrent/BlockingQueue;)Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/QueueInputStream;

    move-result-object p0

    return-object p0
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lonyx/org/apache/commons/io/output/QueueOutputStream;->e:Ljava/util/concurrent/BlockingQueue;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method
