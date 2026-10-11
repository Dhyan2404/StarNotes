.class public Lorg/mortbay/io/bio/SocketEndPoint;
.super Lorg/mortbay/io/bio/StreamEndPoint;
.source "SourceFile"


# instance fields
.field public final g:Ljava/net/Socket;

.field public final h:Ljava/net/InetSocketAddress;

.field public final i:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/bio/StreamEndPoint;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/mortbay/io/bio/SocketEndPoint;->g:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->h:Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/mortbay/io/bio/SocketEndPoint;->i:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->e:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->f:Ljava/io/OutputStream;

    return-void
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->h:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->h:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->h:Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "0.0.0.0"

    return-object p0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->h:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->h:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->h:Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "0.0.0.0"

    return-object p0
.end method

.method public getLocalPort()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->h:Ljava/net/InetSocketAddress;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p0

    return p0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->i:Ljava/net/InetSocketAddress;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->i:Ljava/net/InetSocketAddress;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemotePort()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->i:Ljava/net/InetSocketAddress;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p0

    return p0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->g:Ljava/net/Socket;

    return-object p0
.end method

.method public isOpen()Z
    .locals 1

    invoke-super {p0}, Lorg/mortbay/io/bio/StreamEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->g:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->g:Ljava/net/Socket;

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

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/io/bio/SocketEndPoint;->g:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->shutdownOutput()V

    :cond_0
    return-void
.end method
