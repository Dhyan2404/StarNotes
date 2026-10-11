.class public Lcom/sunia/HTREnginev2/k20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ManagedHttpClientConnection;
.implements Lorg/apache/http/protocol/HttpContext;


# instance fields
.field public volatile e:Lcom/sunia/HTREnginev2/j20;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/j20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k20;->e:Lcom/sunia/HTREnginev2/j20;

    return-void
.end method

.method public static I(Lorg/apache/http/HttpClientConnection;)Lcom/sunia/HTREnginev2/j20;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/k20;->M(Lorg/apache/http/HttpClientConnection;)Lcom/sunia/HTREnginev2/k20;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->H()Lcom/sunia/HTREnginev2/j20;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw p0
.end method

.method public static M(Lorg/apache/http/HttpClientConnection;)Lcom/sunia/HTREnginev2/k20;
    .locals 3

    const-class v0, Lcom/sunia/HTREnginev2/k20;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/k20;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected connection proxy class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f0(Lcom/sunia/HTREnginev2/j20;)Lorg/apache/http/HttpClientConnection;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/k20;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/k20;-><init>(Lcom/sunia/HTREnginev2/j20;)V

    return-object v0
.end method

.method public static j(Lorg/apache/http/HttpClientConnection;)Lcom/sunia/HTREnginev2/j20;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/k20;->M(Lorg/apache/http/HttpClientConnection;)Lcom/sunia/HTREnginev2/k20;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->f()Lcom/sunia/HTREnginev2/j20;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public H()Lcom/sunia/HTREnginev2/j20;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k20;->e:Lcom/sunia/HTREnginev2/j20;

    return-object p0
.end method

.method public bind(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k20;->e:Lcom/sunia/HTREnginev2/j20;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j20;->a()V

    :cond_0
    return-void
.end method

.method public e0()Lorg/apache/http/conn/ManagedHttpClientConnection;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->w()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw p0
.end method

.method public f()Lcom/sunia/HTREnginev2/j20;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k20;->e:Lcom/sunia/HTREnginev2/j20;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sunia/HTREnginev2/k20;->e:Lcom/sunia/HTREnginev2/j20;

    return-object v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpClientConnection;->flush()V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {p0, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpInetConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public getLocalPort()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpInetConnection;->getLocalPort()I

    move-result p0

    return p0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public getRemotePort()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpInetConnection;->getRemotePort()I

    move-result p0

    return p0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    return-object p0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public getSocketTimeout()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpConnection;->getSocketTimeout()I

    move-result p0

    return p0
.end method

.method public isOpen()Z
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k20;->e:Lcom/sunia/HTREnginev2/j20;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j20;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isResponseAvailable(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/http/HttpClientConnection;->isResponseAvailable(I)Z

    move-result p0

    return p0
.end method

.method public isStale()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->w()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpConnection;->isStale()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/http/HttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {p0, p1}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/http/HttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    return-void
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/http/HttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->e0()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/http/HttpConnection;->setSocketTimeout(I)V

    return-void
.end method

.method public shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k20;->e:Lcom/sunia/HTREnginev2/j20;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j20;->d()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPoolProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k20;->w()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "detached"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public w()Lorg/apache/http/conn/ManagedHttpClientConnection;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k20;->e:Lcom/sunia/HTREnginev2/j20;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/conn/ManagedHttpClientConnection;

    return-object p0
.end method
