.class public Lcom/sunia/HTREnginev2/y5m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/scheme/SchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lorg/apache/http/conn/scheme/SocketFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y5m;->a:Lorg/apache/http/conn/scheme/SocketFactory;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y5m;->a:Lorg/apache/http/conn/scheme/SocketFactory;

    return-object p0
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/http/conn/ConnectTimeoutException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    move-object v4, p2

    move v5, p3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y5m;->a:Lorg/apache/http/conn/scheme/SocketFactory;

    move-object v1, p1

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y5m;->a:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {p0}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    instance-of v0, p1, Lcom/sunia/HTREnginev2/y5m;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y5m;->a:Lorg/apache/http/conn/scheme/SocketFactory;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/sunia/HTREnginev2/y5m;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/y5m;->a:Lorg/apache/http/conn/scheme/SocketFactory;

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y5m;->a:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y5m;->a:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {p0, p1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result p0

    return p0
.end method
