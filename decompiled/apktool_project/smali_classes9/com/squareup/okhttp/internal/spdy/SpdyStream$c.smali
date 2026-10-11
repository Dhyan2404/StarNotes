.class public final Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# static fields
.field public static final synthetic k:Z


# instance fields
.field public final e:Lokio/Buffer;

.field public final f:Lokio/Buffer;

.field public final g:J

.field public h:Z

.field public i:Z

.field public final synthetic j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;J)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->e:Lokio/Buffer;

    .line 4
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->f:Lokio/Buffer;

    .line 5
    iput-wide p2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->g:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;JLcom/squareup/okhttp/internal/spdy/SpdyStream$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;J)V

    return-void
.end method

.method public static synthetic f(Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->i:Z

    return p0
.end method

.method public static synthetic j(Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->i:Z

    return p1
.end method

.method public static synthetic w(Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->h:Z

    return p0
.end method


# virtual methods
.method public final H()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->g(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->g(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public I(Lokio/BufferedSource;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->i:Z

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->f:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->g:J

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v6

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    sget-object p1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->e:Lokio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-eqz v4, :cond_5

    sub-long/2addr p2, v2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->f:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->f:Lokio/Buffer;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->e:Lokio/Buffer;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    return-void
.end method

.method public final M()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    move-result-object v0

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->f:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->g(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->h(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;->exitAndThrowIfTimedOut()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;->exitAndThrowIfTimedOut()V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->h:Z

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->f:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->a(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->M()V

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->H()V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->f:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    monitor-exit v2

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->f:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-wide v3, p3, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->a:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->a:J

    invoke-static {p3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object p3

    iget-object p3, p3, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->t:Lcom/squareup/okhttp/internal/spdy/Settings;

    const/high16 v5, 0x10000

    invoke-virtual {p3, v5}, Lcom/squareup/okhttp/internal/spdy/Settings;->j(I)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v6, p3

    cmp-long p3, v3, v6

    if-ltz p3, :cond_1

    iget-object p3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {p3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object p3

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->e(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I

    move-result v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-wide v6, v4, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->a:J

    invoke-virtual {p3, v3, v6, v7}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->L0(IJ)V

    iget-object p3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iput-wide v0, p3, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->a:J

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {p3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object p3

    monitor-enter p3

    :try_start_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v2

    iget-wide v3, v2, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->r:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->r:J

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v2

    iget-wide v2, v2, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->r:J

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v4

    iget-object v4, v4, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->t:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Settings;->j(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v3

    iget-wide v3, v3, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->r:J

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->L0(IJ)V

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object p0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->r:J

    :cond_2
    monitor-exit p3

    return-wide p1

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    move-result-object p0

    return-object p0
.end method
