.class public Lorg/mortbay/io/ByteArrayEndPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/io/EndPoint;


# instance fields
.field public e:[B

.field public f:Lorg/mortbay/io/ByteArrayBuffer;

.field public g:Lorg/mortbay/io/ByteArrayBuffer;

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->e:[B

    .line 4
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([B)V

    iput-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->f:Lorg/mortbay/io/ByteArrayBuffer;

    .line 5
    new-instance p1, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {p1, p2}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->g:Lorg/mortbay/io/ByteArrayBuffer;

    return-void
.end method


# virtual methods
.method public blockReadable(J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blockWritable(J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->h:Z

    return-void
.end method

.method public fill(Lorg/mortbay/io/Buffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->h:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->f:Lorg/mortbay/io/ByteArrayBuffer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_2

    iget-boolean p0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->i:Z

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->f:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    move-result p1

    iget-object p0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->f:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {p0, p1}, Lorg/mortbay/io/AbstractBuffer;->skip(I)I

    return p1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "CLOSED"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush(Lorg/mortbay/io/Buffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->h:Z

    if-nez v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->j:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    iget-object v1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->g:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->g:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->compact()V

    .line 5
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    iget-object v1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->g:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 6
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->g:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v1

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    .line 7
    iget-object v1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->g:Lorg/mortbay/io/ByteArrayBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/mortbay/io/AbstractBuffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/AbstractBuffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 8
    iget-object v1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->g:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v1

    if-lez v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->mark()V

    .line 10
    iget-object v1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->g:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 11
    :cond_0
    iput-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->g:Lorg/mortbay/io/ByteArrayBuffer;

    .line 12
    :cond_1
    iget-object p0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->g:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {p0, p1}, Lorg/mortbay/io/AbstractBuffer;->put(Lorg/mortbay/io/Buffer;)I

    move-result p0

    .line 13
    invoke-interface {p1, p0}, Lorg/mortbay/io/Buffer;->skip(I)I

    return p0

    .line 14
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "CLOSED"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-boolean v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->h:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lorg/mortbay/io/ByteArrayEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 18
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result p1

    if-nez p1, :cond_4

    :cond_1
    if-eqz p2, :cond_2

    .line 19
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 20
    invoke-virtual {p0, p2}, Lorg/mortbay/io/ByteArrayEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    if-eqz p2, :cond_3

    .line 21
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    if-eqz p3, :cond_4

    .line 22
    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 23
    invoke-virtual {p0, p3}, Lorg/mortbay/io/ByteArrayEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    return v0

    .line 24
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "CLOSED"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public getIn()Lorg/mortbay/io/ByteArrayBuffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->f:Lorg/mortbay/io/ByteArrayBuffer;

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

.method public getOut()Lorg/mortbay/io/ByteArrayBuffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->g:Lorg/mortbay/io/ByteArrayBuffer;

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

    iget-object p0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->e:[B

    return-object p0
.end method

.method public isBlocking()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->i:Z

    xor-int/lit8 p0, p0, 0x1

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

.method public isGrowOutput()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->j:Z

    return p0
.end method

.method public isNonBlocking()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->i:Z

    return p0
.end method

.method public isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->h:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->h:Z

    iget-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->f:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->clear()V

    iget-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->g:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->clear()V

    iget-object v0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->e:[B

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/io/ByteArrayEndPoint;->f:Lorg/mortbay/io/ByteArrayBuffer;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    :cond_0
    return-void
.end method

.method public setGrowOutput(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->j:Z

    return-void
.end method

.method public setIn(Lorg/mortbay/io/ByteArrayBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->f:Lorg/mortbay/io/ByteArrayBuffer;

    return-void
.end method

.method public setNonBlocking(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->i:Z

    return-void
.end method

.method public setOut(Lorg/mortbay/io/ByteArrayBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/io/ByteArrayEndPoint;->g:Lorg/mortbay/io/ByteArrayBuffer;

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
