.class public Lorg/apache/commons/io/input/QueueInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final blockingQueue:Ljava/util/concurrent/BlockingQueue;
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

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/QueueInputStream;-><init>(Ljava/util/concurrent/BlockingQueue;)V

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
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "blockingQueue"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public newQueueOutputStream()Lorg/apache/commons/io/output/QueueOutputStream;
    .locals 1

    new-instance v0, Lorg/apache/commons/io/output/QueueOutputStream;

    iget-object p0, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/QueueOutputStream;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    return-object v0
.end method

.method public read()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    :goto_0
    return p0
.end method
