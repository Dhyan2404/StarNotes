.class public Lorg/mortbay/io/nio/ChannelEndPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/io/EndPoint;


# instance fields
.field protected final _channel:Ljava/nio/channels/ByteChannel;

.field protected final _gather2:[Ljava/nio/ByteBuffer;

.field protected final _local:Ljava/net/InetSocketAddress;

.field protected final _remote:Ljava/net/InetSocketAddress;

.field protected final _socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ByteChannel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, p1, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    iput-object p1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    :goto_0
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    :cond_0
    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    return-void
.end method

.method public fill(Lorg/mortbay/io/Buffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    instance-of v1, v0, Lorg/mortbay/io/nio/NIOBuffer;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mortbay/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/mortbay/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    monitor-enter v0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v3, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-gez v3, :cond_0

    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-interface {p1, p0}, Lorg/mortbay/io/Buffer;->setPutIndex(I)V

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/mortbay/io/Buffer;->setPutIndex(I)V

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not Implemented"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush(Lorg/mortbay/io/Buffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lorg/mortbay/io/nio/NIOBuffer;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lorg/mortbay/io/nio/NIOBuffer;

    .line 5
    invoke-interface {v0}, Lorg/mortbay/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6
    monitor-enter v0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {p0, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_0

    .line 10
    :try_start_1
    invoke-interface {p1, p0}, Lorg/mortbay/io/Buffer;->skip(I)I

    .line 11
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 13
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 14
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw p0

    :catchall_1
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 17
    :cond_1
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v0

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 19
    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {p0, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-lez p0, :cond_2

    .line 20
    invoke-interface {p1, p0}, Lorg/mortbay/io/Buffer;->skip(I)I

    :cond_2
    :goto_0
    return p0

    .line 21
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not Implemented"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 24
    :goto_1
    iget-object v2, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v2, v2, Ljava/nio/channels/GatheringByteChannel;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-eqz v2, :cond_8

    instance-of v2, p1, Lorg/mortbay/io/nio/NIOBuffer;

    if-eqz v2, :cond_8

    if-eqz p2, :cond_8

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-eqz v2, :cond_8

    instance-of v2, p2, Lorg/mortbay/io/nio/NIOBuffer;

    if-eqz v2, :cond_8

    .line 25
    check-cast v1, Lorg/mortbay/io/nio/NIOBuffer;

    .line 26
    invoke-interface {v1}, Lorg/mortbay/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 27
    check-cast v0, Lorg/mortbay/io/nio/NIOBuffer;

    .line 28
    invoke-interface {v0}, Lorg/mortbay/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 31
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 32
    :try_start_2
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 34
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 36
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    aput-object p3, v1, v3

    const/4 v2, 0x1

    .line 37
    aput-object v0, v1, v2

    .line 38
    iget-object v2, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    check-cast v2, Ljava/nio/channels/GatheringByteChannel;

    invoke-interface {v2, v1}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 39
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 40
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    sub-int v2, v1, v2

    .line 41
    invoke-interface {p2, v2}, Lorg/mortbay/io/Buffer;->skip(I)I

    goto :goto_2

    :cond_2
    if-lez v1, :cond_3

    .line 42
    invoke-interface {p1, v1}, Lorg/mortbay/io/Buffer;->skip(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :cond_3
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 44
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 45
    :cond_4
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 46
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result p1

    invoke-interface {p2, p1}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 47
    :cond_5
    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 50
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 51
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 53
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    .line 54
    :try_start_6
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_6

    .line 55
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 56
    :cond_6
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result p1

    if-nez p1, :cond_7

    .line 57
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result p1

    invoke-interface {p2, p1}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 58
    :cond_7
    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 61
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v1

    :catchall_1
    move-exception p1

    .line 62
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :catchall_2
    move-exception p1

    .line 63
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    :catchall_3
    move-exception p1

    .line 64
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1

    :cond_8
    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    .line 65
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-le v0, v1, :cond_9

    .line 66
    invoke-interface {p1, p2}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 67
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->clear()V

    :cond_9
    if-eqz p3, :cond_a

    .line 68
    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_a

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-le v0, v1, :cond_a

    .line 69
    invoke-interface {p1, p3}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 70
    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->clear()V

    :cond_a
    if-eqz p1, :cond_b

    .line 71
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 72
    invoke-virtual {p0, p1}, Lorg/mortbay/io/nio/ChannelEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v3

    :cond_b
    if-eqz p1, :cond_c

    .line 73
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    if-eqz p2, :cond_d

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 74
    invoke-virtual {p0, p2}, Lorg/mortbay/io/nio/ChannelEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_d
    move v1, v3

    if-eqz p1, :cond_e

    .line 75
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result p1

    if-nez p1, :cond_10

    :cond_e
    if-eqz p2, :cond_f

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result p1

    if-nez p1, :cond_10

    :cond_f
    if-eqz p3, :cond_10

    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->length()I

    move-result p1

    if-lez p1, :cond_10

    .line 76
    invoke-virtual {p0, p3}, Lorg/mortbay/io/nio/ChannelEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result p0

    add-int/2addr v1, p0

    :cond_10
    :goto_3
    return v1
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

.method public getChannel()Ljava/nio/channels/ByteChannel;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    return-object p0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "0.0.0.0"

    return-object p0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "0.0.0.0"

    return-object p0
.end method

.method public getLocalPort()I
    .locals 1

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p0

    return p0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemotePort()I
    .locals 1

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    const/4 v0, -0x1

    if-nez p0, :cond_1

    return v0

    :cond_1
    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    return-object p0
.end method

.method public isBlocking()Z
    .locals 1

    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, p0, Ljava/nio/channels/SelectableChannel;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/nio/channels/SelectableChannel;

    invoke-virtual {p0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result p0

    return p0

    :cond_0
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

.method public isOpen()Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result p0

    return p0
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, p0, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/Socket;->shutdownOutput()V

    :cond_0
    return-void
.end method
