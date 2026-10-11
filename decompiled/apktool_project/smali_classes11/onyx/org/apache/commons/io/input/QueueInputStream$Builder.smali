.class public Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/QueueInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/QueueInputStream;",
        "Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/time/Duration;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;->l:Ljava/util/concurrent/BlockingQueue;

    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;->m:Ljava/time/Duration;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/QueueInputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/QueueInputStream;
    .locals 3

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/input/QueueInputStream;

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;->l:Ljava/util/concurrent/BlockingQueue;

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;->m:Ljava/time/Duration;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lonyx/org/apache/commons/io/input/QueueInputStream;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/time/Duration;Lonyx/org/apache/commons/io/input/QueueInputStream$a;)V

    return-object v0
.end method

.method public setBlockingQueue(Ljava/util/concurrent/BlockingQueue;)Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_0
    iput-object p1, p0, Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;->l:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public setTimeout(Ljava/time/Duration;)Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    :goto_1
    iput-object p1, p0, Lonyx/org/apache/commons/io/input/QueueInputStream$Builder;->m:Ljava/time/Duration;

    return-object p0
.end method
