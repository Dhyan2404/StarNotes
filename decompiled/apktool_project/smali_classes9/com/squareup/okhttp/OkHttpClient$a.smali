.class public final Lcom/squareup/okhttp/OkHttpClient$a;
.super Lcom/squareup/okhttp/internal/Internal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/Headers$Builder;->b(Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    return-void
.end method

.method public addLenient(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/Headers$Builder;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    return-void
.end method

.method public apply(Lcom/squareup/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/ConnectionSpec;->c(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public callEngineGetConnection(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Connection;
    .locals 0

    iget-object p0, p1, Lcom/squareup/okhttp/Call;->e:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getConnection()Lcom/squareup/okhttp/Connection;

    move-result-object p0

    return-object p0
.end method

.method public callEngineReleaseConnection(Lcom/squareup/okhttp/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p1, Lcom/squareup/okhttp/Call;->e:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseConnection()V

    return-void
.end method

.method public callEnqueue(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;Z)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/Call;->d(Lcom/squareup/okhttp/Callback;Z)V

    return-void
.end method

.method public clearOwner(Lcom/squareup/okhttp/Connection;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Connection;->a()Z

    move-result p0

    return p0
.end method

.method public closeIfOwnedBy(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/Connection;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public connectAndSetOwner(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/HttpEngine;Lcom/squareup/okhttp/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    invoke-virtual {p2, p1, p3, p4}, Lcom/squareup/okhttp/Connection;->d(Lcom/squareup/okhttp/OkHttpClient;Ljava/lang/Object;Lcom/squareup/okhttp/Request;)V

    return-void
.end method

.method public connectionRawSink(Lcom/squareup/okhttp/Connection;)Lokio/BufferedSink;
    .locals 0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Connection;->n()Lokio/BufferedSink;

    move-result-object p0

    return-object p0
.end method

.method public connectionRawSource(Lcom/squareup/okhttp/Connection;)Lokio/BufferedSource;
    .locals 0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Connection;->o()Lokio/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public connectionSetOwner(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/Connection;->r(Ljava/lang/Object;)V

    return-void
.end method

.method public internalCache(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/InternalCache;
    .locals 0

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->e()Lcom/squareup/okhttp/internal/InternalCache;

    move-result-object p0

    return-object p0
.end method

.method public isReadable(Lcom/squareup/okhttp/Connection;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Connection;->k()Z

    move-result p0

    return p0
.end method

.method public network(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/Network;
    .locals 0

    invoke-static {p1}, Lcom/squareup/okhttp/OkHttpClient;->a(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/Network;

    move-result-object p0

    return-object p0
.end method

.method public newTransport(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/internal/http/Transport;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/Connection;->m(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/internal/http/Transport;

    move-result-object p0

    return-object p0
.end method

.method public recycle(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/ConnectionPool;->e(Lcom/squareup/okhttp/Connection;)V

    return-void
.end method

.method public recycleCount(Lcom/squareup/okhttp/Connection;)I
    .locals 0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Connection;->p()I

    move-result p0

    return p0
.end method

.method public routeDatabase(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/RouteDatabase;
    .locals 0

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->f()Lcom/squareup/okhttp/internal/RouteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public setCache(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/InternalCache;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/OkHttpClient;->g(Lcom/squareup/okhttp/internal/InternalCache;)V

    return-void
.end method

.method public setNetwork(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/Network;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/squareup/okhttp/OkHttpClient;->b(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/Network;)Lcom/squareup/okhttp/internal/Network;

    return-void
.end method

.method public setOwner(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/HttpEngine;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/Connection;->r(Ljava/lang/Object;)V

    return-void
.end method

.method public setProtocol(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/Protocol;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/Connection;->s(Lcom/squareup/okhttp/Protocol;)V

    return-void
.end method
