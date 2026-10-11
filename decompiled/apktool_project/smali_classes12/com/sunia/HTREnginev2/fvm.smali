.class public Lcom/sunia/HTREnginev2/fvm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lorg/apache/http/conn/scheme/SchemeSocketFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeSocketFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fvm;->a:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/http/conn/scheme/SchemeSocketFactory;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fvm;->a:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    return-object p0
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/http/conn/ConnectTimeoutException;
        }
    .end annotation

    if-nez p4, :cond_1

    if-lez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v0, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_2

    goto :goto_1

    :cond_2
    const/4 p5, 0x0

    :goto_1
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object p4, v0

    :goto_2
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    new-instance p5, Ljava/net/InetSocketAddress;

    invoke-direct {p5, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fvm;->a:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-interface {p0, p1, p5, p4, p6}, Lorg/apache/http/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fvm;->a:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-interface {p0, v0}, Lorg/apache/http/conn/scheme/SchemeSocketFactory;->createSocket(Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;

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
    instance-of v0, p1, Lcom/sunia/HTREnginev2/fvm;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fvm;->a:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/sunia/HTREnginev2/fvm;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/fvm;->a:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fvm;->a:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

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

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fvm;->a:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-interface {p0, p1}, Lorg/apache/http/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result p0

    return p0
.end method
