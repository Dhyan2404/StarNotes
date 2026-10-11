.class public final Lcom/squareup/okhttp/internal/spdy/SpdyStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;,
        Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;,
        Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;
    }
.end annotation


# static fields
.field public static final synthetic l:Z


# instance fields
.field public a:J

.field public b:J

.field public final c:I

.field public final d:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;

.field public final h:Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;

.field public final i:Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

.field public final j:Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

.field public k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/squareup/okhttp/internal/spdy/SpdyConnection;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/okhttp/internal/spdy/SpdyConnection;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->a:J

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->i:Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-eqz p2, :cond_1

    if-eqz p5, :cond_0

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->c:I

    iput-object p2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object p1, p2, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->u:Lcom/squareup/okhttp/internal/spdy/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->j(I)I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b:J

    new-instance p1, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;

    iget-object p2, p2, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->t:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-virtual {p2, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->j(I)I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;JLcom/squareup/okhttp/internal/spdy/SpdyStream$a;)V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->g:Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;

    new-instance p2, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;

    invoke-direct {p2, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    iput-object p2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;

    invoke-static {p1, p4}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j(Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;Z)Z

    invoke-static {p2, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->j(Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;Z)Z

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->e:Ljava/util/List;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "requestHeaders == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "connection == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->j()V

    return-void
.end method

.method public static synthetic b(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    return-object p0
.end method

.method public static synthetic c(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->k()V

    return-void
.end method

.method public static synthetic d(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    return-object p0
.end method

.method public static synthetic e(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->c:I

    return p0
.end method

.method public static synthetic f(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->i:Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    return-object p0
.end method

.method public static synthetic g(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    return-object p0
.end method

.method public static synthetic h(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->q()V

    return-void
.end method


# virtual methods
.method public close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->l(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->c:I

    invoke-virtual {v0, p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->J0(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method public closeLater(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->l(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->c:I

    invoke-virtual {v0, p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->K0(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method public getConnection()Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    return-object p0
.end method

.method public declared-synchronized getErrorCode()Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->c:I

    return p0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->e:Ljava/util/List;

    return-object p0
.end method

.method public declared-synchronized getResponseHeaders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->i:Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->i:Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;->exitAndThrowIfTimedOut()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->i:Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSink()Lokio/Sink;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSource()Lokio/Source;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->g:Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;

    return-object p0
.end method

.method public i(J)V
    .locals 2

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->b:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public isLocallyInitiated()Z
    .locals 3

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->f:Z

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->g:Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->f(Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->g:Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->w(Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->f(Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->w(Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->g:Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->f(Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->g:Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->w(Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->f(Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->w(Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->c:I

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->E0(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final k()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->w(Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->f(Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->g:Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->f(Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->f(Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->c:I

    invoke-virtual {p1, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->E0(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public m(Lokio/BufferedSource;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->g:Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->I(Lokio/BufferedSource;J)V

    return-void
.end method

.method public n()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->g:Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;->j(Lcom/squareup/okhttp/internal/spdy/SpdyStream$c;Z)Z

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->c:I

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->E0(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public o(Ljava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;",
            "Lcom/squareup/okhttp/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfHeadersAbsent()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfHeadersPresent()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->STREAM_IN_USE:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f:Ljava/util/List;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->c:I

    invoke-virtual {p1, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->E0(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized p(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final q()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method

.method public readTimeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->i:Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    return-object p0
.end method

.method public reply(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f:Ljava/util/List;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->f:Ljava/util/List;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->h:Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;->j(Lcom/squareup/okhttp/internal/spdy/SpdyStream$b;Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->c:I

    invoke-virtual {p2, v1, v0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->I0(IZLjava/util/List;)V

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->d:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->flush()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "reply already sent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "responseHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public writeTimeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->j:Lcom/squareup/okhttp/internal/spdy/SpdyStream$d;

    return-object p0
.end method
