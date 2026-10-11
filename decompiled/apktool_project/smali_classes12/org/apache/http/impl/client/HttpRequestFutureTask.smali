.class public Lorg/apache/http/impl/client/HttpRequestFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final e:Lorg/apache/http/client/methods/HttpUriRequest;

.field public final f:Lorg/apache/http/impl/client/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/impl/client/a<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/impl/client/a<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpRequestFutureTask;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p2, p0, Lorg/apache/http/impl/client/HttpRequestFutureTask;->f:Lorg/apache/http/impl/client/a;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/HttpRequestFutureTask;->f:Lorg/apache/http/impl/client/a;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/a;->a()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/HttpRequestFutureTask;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method public endedTime()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/http/impl/client/HttpRequestFutureTask;->f:Lorg/apache/http/impl/client/a;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/a;->b()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Task is not done yet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestDuration()J
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/impl/client/HttpRequestFutureTask;->endedTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/http/impl/client/HttpRequestFutureTask;->startedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Task is not done yet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public scheduledTime()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/client/HttpRequestFutureTask;->f:Lorg/apache/http/impl/client/a;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/a;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public startedTime()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/client/HttpRequestFutureTask;->f:Lorg/apache/http/impl/client/a;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/a;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public taskDuration()J
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/impl/client/HttpRequestFutureTask;->endedTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/http/impl/client/HttpRequestFutureTask;->scheduledTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Task is not done yet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/client/HttpRequestFutureTask;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
