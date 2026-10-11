.class public final Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# static fields
.field public static final i:J = 0x4000L

.field public static final synthetic j:Z


# instance fields
.field public final e:Lokio/Buffer;

.field public f:Z

.field public g:Z

.field public final synthetic h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->e:Lokio/Buffer;

    return-void
.end method

.method public static synthetic f(Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->g:Z

    return p0
.end method

.method public static synthetic j(Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->g:Z

    return p1
.end method

.method public static synthetic w(Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->f:Z

    return p0
.end method


# virtual methods
.method public final H(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    move-result-object v1

    invoke-virtual {v1}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-wide v2, v1, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->g:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->f:Z

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->g(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->h(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;->exitAndThrowIfTimedOut()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->c(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-wide v1, v1, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b:J

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->e:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-wide v2, v1, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b:J

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    move-result-object v0

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    :try_start_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->e(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I

    move-result v6

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->e:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move v7, p1

    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->e:Lokio/Buffer;

    invoke-virtual/range {v5 .. v10}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeData(IZLokio/Buffer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;->exitAndThrowIfTimedOut()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->f:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;

    iget-boolean v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->g:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->e:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->e:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->H(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->e(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeData(IZLokio/Buffer;J)V

    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v2

    :try_start_1
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->f:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->flush()V

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->a(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->c(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->e:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->H(Z)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    move-result-object p0

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->e:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    :goto_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->e:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->H(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
