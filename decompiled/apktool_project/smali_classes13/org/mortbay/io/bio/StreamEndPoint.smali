.class public Lorg/mortbay/io/bio/StreamEndPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/io/EndPoint;


# instance fields
.field public e:Ljava/io/InputStream;

.field public f:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mortbay/io/bio/StreamEndPoint;->e:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/mortbay/io/bio/StreamEndPoint;->f:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public blockReadable(J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public blockWritable(J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->e:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/mortbay/io/bio/StreamEndPoint;->f:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    iput-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->f:Ljava/io/OutputStream;

    return-void
.end method

.method public fill(Lorg/mortbay/io/Buffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->e:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "FULL"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->e:Ljava/io/InputStream;

    invoke-interface {p1, p0, v0}, Lorg/mortbay/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result p0

    return p0
.end method

.method public flush(Lorg/mortbay/io/Buffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->f:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object p0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->f:Ljava/io/OutputStream;

    invoke-interface {p1, p0}, Lorg/mortbay/io/Buffer;->writeTo(Ljava/io/OutputStream;)V

    .line 4
    :cond_1
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    return v0
.end method

.method public flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lorg/mortbay/io/bio/StreamEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result p1

    if-ge p1, v0, :cond_1

    return p1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    if-eqz p2, :cond_4

    .line 7
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 8
    invoke-virtual {p0, p2}, Lorg/mortbay/io/bio/StreamEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result p2

    if-gez p2, :cond_3

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    return p1

    :cond_3
    add-int/2addr p1, p2

    if-ge p2, v0, :cond_4

    return p1

    :cond_4
    if-eqz p3, :cond_7

    .line 9
    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->length()I

    move-result p2

    if-lez p2, :cond_7

    .line 10
    invoke-virtual {p0, p3}, Lorg/mortbay/io/bio/StreamEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result p0

    if-gez p0, :cond_6

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    move p1, p0

    :goto_1
    return p1

    :cond_6
    add-int/2addr p1, p0

    :cond_7
    return p1
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object p0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->f:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->e:Ljava/io/InputStream;

    return-object p0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalPort()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->f:Ljava/io/OutputStream;

    return-object p0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemotePort()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isBlocking()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isBufferingInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBufferingOutput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBufferred()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isClosed()Z
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/io/bio/StreamEndPoint;->isOpen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isOpen()Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->e:Ljava/io/InputStream;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/io/bio/StreamEndPoint;->e:Ljava/io/InputStream;

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/io/bio/StreamEndPoint;->f:Ljava/io/OutputStream;

    return-void
.end method

.method public shutdownOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
