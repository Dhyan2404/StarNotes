.class public final Lorg/apache/http/impl/client/IdleConnectionEvictor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/IdleConnectionEvictor$b;
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/http/conn/HttpClientConnectionManager;

.field public final b:Ljava/util/concurrent/ThreadFactory;

.field public final c:Ljava/lang/Thread;

.field public final d:J

.field public final e:J

.field public volatile f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/HttpClientConnectionManager;JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    move-wide v3, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x5

    move-wide v3, v0

    :goto_0
    if-eqz p4, :cond_1

    move-object v5, p4

    goto :goto_1

    .line 8
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, v0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/apache/http/impl/client/IdleConnectionEvictor;-><init>(Lorg/apache/http/conn/HttpClientConnectionManager;Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/HttpClientConnectionManager;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    .line 7
    invoke-direct/range {v0 .. v8}, Lorg/apache/http/impl/client/IdleConnectionEvictor;-><init>(Lorg/apache/http/conn/HttpClientConnectionManager;Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/HttpClientConnectionManager;Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection manager"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/HttpClientConnectionManager;

    iput-object v0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->a:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Lorg/apache/http/impl/client/IdleConnectionEvictor$b;

    invoke-direct {p2}, Lorg/apache/http/impl/client/IdleConnectionEvictor$b;-><init>()V

    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->b:Ljava/util/concurrent/ThreadFactory;

    if-eqz p5, :cond_1

    .line 4
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    :cond_1
    iput-wide p3, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->d:J

    if-eqz p8, :cond_2

    .line 5
    invoke-virtual {p8, p6, p7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p6

    :cond_2
    iput-wide p6, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->e:J

    .line 6
    new-instance p3, Lorg/apache/http/impl/client/IdleConnectionEvictor$a;

    invoke-direct {p3, p0, p1}, Lorg/apache/http/impl/client/IdleConnectionEvictor$a;-><init>(Lorg/apache/http/impl/client/IdleConnectionEvictor;Lorg/apache/http/conn/HttpClientConnectionManager;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->c:Ljava/lang/Thread;

    return-void
.end method

.method public static synthetic a(Lorg/apache/http/impl/client/IdleConnectionEvictor;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->d:J

    return-wide v0
.end method

.method public static synthetic b(Lorg/apache/http/impl/client/IdleConnectionEvictor;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->e:J

    return-wide v0
.end method

.method public static synthetic c(Lorg/apache/http/impl/client/IdleConnectionEvictor;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->f:Ljava/lang/Exception;

    return-object p1
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->c:Ljava/lang/Thread;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/Thread;->join(J)V

    return-void
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->c:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    return p0
.end method

.method public shutdown()V
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->c:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->c:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
