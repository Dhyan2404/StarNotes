.class public final Lcom/squareup/okhttp/Connection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/squareup/okhttp/ConnectionPool;

.field public final b:Lcom/squareup/okhttp/Route;

.field public c:Ljava/net/Socket;

.field public d:Z

.field public e:Lcom/squareup/okhttp/internal/http/HttpConnection;

.field public f:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

.field public g:Lcom/squareup/okhttp/Protocol;

.field public h:J

.field public i:Lcom/squareup/okhttp/Handshake;

.field public j:I

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Route;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/Connection;->d:Z

    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/Connection;->g:Lcom/squareup/okhttp/Protocol;

    iput-object p1, p0, Lcom/squareup/okhttp/Connection;->a:Lcom/squareup/okhttp/ConnectionPool;

    iput-object p2, p0, Lcom/squareup/okhttp/Connection;->b:Lcom/squareup/okhttp/Route;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->a:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->k:Ljava/lang/Object;

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/okhttp/Connection;->k:Ljava/lang/Object;

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->a:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->k:Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/squareup/okhttp/Connection;->k:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->c:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public c(IIILcom/squareup/okhttp/Request;Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/squareup/okhttp/Request;",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/squareup/okhttp/Connection;->d:Z

    if-nez v0, :cond_5

    new-instance v1, Lcom/squareup/okhttp/internal/http/SocketConnector;

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->a:Lcom/squareup/okhttp/ConnectionPool;

    invoke-direct {v1, p0, v0}, Lcom/squareup/okhttp/internal/http/SocketConnector;-><init>(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/ConnectionPool;)V

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->b:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->a:Lcom/squareup/okhttp/Address;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->b:Lcom/squareup/okhttp/Route;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/squareup/okhttp/internal/http/SocketConnector;->connectTls(IIILcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Route;Ljava/util/List;Z)Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/squareup/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/squareup/okhttp/ConnectionSpec;

    invoke-interface {p5, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/squareup/okhttp/Connection;->b:Lcom/squareup/okhttp/Route;

    invoke-virtual {v1, p1, p2, p3}, Lcom/squareup/okhttp/internal/http/SocketConnector;->connectCleartext(IILcom/squareup/okhttp/Route;)Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;

    move-result-object p1

    :goto_0
    iget-object p2, p1, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->socket:Ljava/net/Socket;

    iput-object p2, p0, Lcom/squareup/okhttp/Connection;->c:Ljava/net/Socket;

    iget-object p3, p1, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->handshake:Lcom/squareup/okhttp/Handshake;

    iput-object p3, p0, Lcom/squareup/okhttp/Connection;->i:Lcom/squareup/okhttp/Handshake;

    iget-object p1, p1, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->alpnProtocol:Lcom/squareup/okhttp/Protocol;

    if-nez p1, :cond_1

    sget-object p1, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    :cond_1
    iput-object p1, p0, Lcom/squareup/okhttp/Connection;->g:Lcom/squareup/okhttp/Protocol;

    :try_start_0
    sget-object p3, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    const/4 p4, 0x1

    if-eq p1, p3, :cond_3

    sget-object p3, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/squareup/okhttp/internal/http/HttpConnection;

    iget-object p3, p0, Lcom/squareup/okhttp/Connection;->a:Lcom/squareup/okhttp/ConnectionPool;

    invoke-direct {p1, p3, p0, p2}, Lcom/squareup/okhttp/internal/http/HttpConnection;-><init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;Ljava/net/Socket;)V

    iput-object p1, p0, Lcom/squareup/okhttp/Connection;->e:Lcom/squareup/okhttp/internal/http/HttpConnection;

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance p1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;

    iget-object p2, p0, Lcom/squareup/okhttp/Connection;->b:Lcom/squareup/okhttp/Route;

    iget-object p2, p2, Lcom/squareup/okhttp/Route;->a:Lcom/squareup/okhttp/Address;

    iget-object p2, p2, Lcom/squareup/okhttp/Address;->b:Ljava/lang/String;

    iget-object p3, p0, Lcom/squareup/okhttp/Connection;->c:Ljava/net/Socket;

    invoke-direct {p1, p2, p4, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    iget-object p2, p0, Lcom/squareup/okhttp/Connection;->g:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->build()Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/Connection;->f:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->sendConnectionPreface()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput-boolean p4, p0, Lcom/squareup/okhttp/Connection;->d:Z

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {p1, p0}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_4
    new-instance p0, Lcom/squareup/okhttp/internal/http/RouteException;

    new-instance p1, Ljava/net/UnknownServiceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CLEARTEXT communication not supported: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "already connected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Lcom/squareup/okhttp/OkHttpClient;Ljava/lang/Object;Lcom/squareup/okhttp/Request;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/squareup/okhttp/Connection;->r(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->i()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/squareup/okhttp/Connection;->b:Lcom/squareup/okhttp/Route;

    iget-object p2, p2, Lcom/squareup/okhttp/Route;->a:Lcom/squareup/okhttp/Address;

    invoke-virtual {p2}, Lcom/squareup/okhttp/Address;->getConnectionSpecs()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v2

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v3

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v6

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/squareup/okhttp/Connection;->c(IIILcom/squareup/okhttp/Request;Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getConnectionPool()Lcom/squareup/okhttp/ConnectionPool;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/squareup/okhttp/ConnectionPool;->h(Lcom/squareup/okhttp/Connection;)V

    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->f()Lcom/squareup/okhttp/internal/RouteDatabase;

    move-result-object p2

    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/squareup/okhttp/internal/RouteDatabase;->connected(Lcom/squareup/okhttp/Route;)V

    :cond_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result p2

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/squareup/okhttp/Connection;->t(II)V

    return-void
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->f:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/squareup/okhttp/Connection;->h:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getIdleStartTimeNs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->a:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->k:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public g()V
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/Connection;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Connection;->j:I

    return-void
.end method

.method public getHandshake()Lcom/squareup/okhttp/Handshake;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->i:Lcom/squareup/okhttp/Handshake;

    return-object p0
.end method

.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->g:Lcom/squareup/okhttp/Protocol;

    return-object p0
.end method

.method public getRoute()Lcom/squareup/okhttp/Route;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->b:Lcom/squareup/okhttp/Route;

    return-object p0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->c:Ljava/net/Socket;

    return-object p0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->c:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/Connection;->d:Z

    return p0
.end method

.method public j()Z
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->f:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->isIdle()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public k()Z
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->e:Lcom/squareup/okhttp/internal/http/HttpConnection;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->isReadable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public l()Z
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->f:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public m(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/internal/http/Transport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->f:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/squareup/okhttp/internal/http/SpdyTransport;

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->f:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-direct {v0, p1, p0}, Lcom/squareup/okhttp/internal/http/SpdyTransport;-><init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpTransport;

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->e:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-direct {v0, p1, p0}, Lcom/squareup/okhttp/internal/http/HttpTransport;-><init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Lcom/squareup/okhttp/internal/http/HttpConnection;)V

    :goto_0
    return-object v0
.end method

.method public n()Lokio/BufferedSink;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->e:Lcom/squareup/okhttp/internal/http/HttpConnection;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->rawSink()Lokio/BufferedSink;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public o()Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->e:Lcom/squareup/okhttp/internal/http/HttpConnection;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->rawSource()Lokio/BufferedSource;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public p()I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/Connection;->j:I

    return p0
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->f:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/Connection;->h:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "spdyConnection != null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public r(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->a:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->k:Ljava/lang/Object;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/squareup/okhttp/Connection;->k:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Connection already has an owner!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public s(Lcom/squareup/okhttp/Protocol;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/squareup/okhttp/Connection;->g:Lcom/squareup/okhttp/Protocol;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "protocol == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public t(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/squareup/okhttp/Connection;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->e:Lcom/squareup/okhttp/internal/http/HttpConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->c:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->e:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpConnection;->setTimeouts(II)V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {p1, p0}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setTimeouts - not connected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->b:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->a:Lcom/squareup/okhttp/Address;

    iget-object v1, v1, Lcom/squareup/okhttp/Address;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->b:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->a:Lcom/squareup/okhttp/Address;

    iget v1, v1, Lcom/squareup/okhttp/Address;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->b:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->b:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->i:Lcom/squareup/okhttp/Handshake;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/squareup/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/squareup/okhttp/Connection;->g:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
