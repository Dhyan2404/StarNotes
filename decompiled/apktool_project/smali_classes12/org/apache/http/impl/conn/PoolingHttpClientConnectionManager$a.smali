.class public Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/concurrent/Future;

.field public final synthetic f:Lorg/apache/http/conn/routing/HttpRoute;

.field public final synthetic g:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;Ljava/util/concurrent/Future;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$a;->g:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    iput-object p2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$a;->e:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$a;->f:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$a;->e:Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$a;->g:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    iget-object v1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$a;->e:Ljava/util/concurrent/Future;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->leaseConnection(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$a;->f:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$a;->f:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$a;->f:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p2

    :goto_0
    iget-object p0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$a;->g:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    invoke-static {p0, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->f(Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/http/config/SocketConfig;->getSoTimeout()I

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/http/HttpConnection;->setSocketTimeout(I)V

    :cond_1
    return-object p1
.end method
