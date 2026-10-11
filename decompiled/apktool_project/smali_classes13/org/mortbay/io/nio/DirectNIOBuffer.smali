.class public Lorg/mortbay/io/nio/DirectNIOBuffer;
.super Lorg/mortbay/io/AbstractBuffer;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/io/nio/NIOBuffer;


# instance fields
.field protected _buf:Ljava/nio/ByteBuffer;

.field public g:Ljava/nio/channels/ReadableByteChannel;

.field public h:Ljava/io/InputStream;

.field public i:Ljava/nio/channels/WritableByteChannel;

.field public j:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 12
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 14
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-virtual {p0, p1}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 17
    iput v1, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 5
    :goto_0
    invoke-direct {p0, p2, v0}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 9
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    return-void

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public array()[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public capacity()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    return p0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public isDirect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public peek(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    return p0
.end method

.method public peek(I[BII)I
    .locals 3

    add-int v0, p1, p4

    .line 2
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result p4

    sub-int/2addr p4, p1

    if-nez p4, :cond_0

    return v2

    :cond_0
    if-gez p4, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return p4

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw p1
.end method

.method public poke(ILorg/mortbay/io/Buffer;)I
    .locals 3

    .line 7
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/mortbay/io/nio/DirectNIOBuffer;->poke(I[BII)I

    move-result p0

    return p0

    .line 10
    :cond_0
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lorg/mortbay/io/nio/DirectNIOBuffer;

    if-eqz v1, :cond_3

    .line 12
    check-cast v0, Lorg/mortbay/io/nio/DirectNIOBuffer;

    iget-object v0, v0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 13
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_1

    .line 14
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    .line 15
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    iget-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    .line 17
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-le v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    .line 18
    :goto_0
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 20
    iget-object p2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 23
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return p1

    :catchall_0
    move-exception p1

    .line 24
    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 25
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw p1

    .line 27
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/mortbay/io/AbstractBuffer;->poke(ILorg/mortbay/io/Buffer;)I

    move-result p0

    return p0

    .line 28
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "READONLY"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public poke(I[BII)I
    .locals 2

    .line 29
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_5

    if-ltz p1, :cond_4

    add-int v0, p1, p4

    .line 30
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 31
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result p4

    sub-int/2addr p4, p1

    if-ltz p4, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "index>capacity(): "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ">"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 33
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    iget-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-le p4, p1, :cond_2

    move p4, p1

    :cond_2
    if-lez p4, :cond_3

    .line 35
    iget-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_3
    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return p4

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw p1

    .line 37
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "index<0: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "<0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "READONLY"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public poke(IB)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 3
    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "index>capacity(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "index<0: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "<0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "READONLY"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->g:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->h:Ljava/io/InputStream;

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->g:Ljava/nio/channels/ReadableByteChannel;

    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->h:Ljava/io/InputStream;

    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->space()I

    move-result v0

    if-le p2, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->space()I

    move-result p2

    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v0

    const/4 v1, 0x0

    move v3, p2

    move v2, v1

    move v4, v2

    move v5, v4

    :cond_4
    const/4 v6, 0x0

    if-ge v2, p2, :cond_9

    :try_start_0
    iget-object v5, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v5, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    add-int v7, v0, v3

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v5, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->g:Ljava/nio/channels/ReadableByteChannel;

    iget-object v7, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-interface {v5, v7}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-gez v5, :cond_5

    iput-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->g:Ljava/nio/channels/ReadableByteChannel;

    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->h:Ljava/io/InputStream;

    goto :goto_2

    :cond_5
    if-lez v5, :cond_6

    add-int/2addr v0, v5

    add-int/2addr v2, v5

    sub-int/2addr v3, v5

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    move v4, v1

    goto :goto_0

    :cond_6
    add-int/lit8 v7, v4, 0x1

    const/4 v8, 0x1

    if-le v4, v8, :cond_7

    goto :goto_2

    :cond_7
    move v4, v7

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v7, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    iput-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->g:Ljava/nio/channels/ReadableByteChannel;

    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->h:Ljava/io/InputStream;

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->g:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    iput-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->g:Ljava/nio/channels/ReadableByteChannel;

    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->h:Ljava/io/InputStream;

    :cond_8
    iget-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw p2

    :cond_9
    :goto_2
    if-gez v5, :cond_b

    if-nez v2, :cond_b

    iget-object p2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->g:Ljava/nio/channels/ReadableByteChannel;

    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result p2

    if-nez p2, :cond_a

    iput-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->g:Ljava/nio/channels/ReadableByteChannel;

    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->h:Ljava/io/InputStream;

    :cond_a
    iget-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 p0, -0x1

    return p0

    :cond_b
    iget-object p2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->g:Ljava/nio/channels/ReadableByteChannel;

    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result p2

    if-nez p2, :cond_c

    iput-object v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->g:Ljava/nio/channels/ReadableByteChannel;

    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->h:Ljava/io/InputStream;

    :cond_c
    iget-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return v2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->i:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->i:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->j:Ljava/io/OutputStream;

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->i:Ljava/nio/channels/WritableByteChannel;

    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->j:Ljava/io/OutputStream;

    :cond_1
    iget-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    monitor-enter p1

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->hasContent()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->i:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v3}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->i:Ljava/nio/channels/WritableByteChannel;

    iget-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_2

    :cond_2
    if-lez v3, :cond_3

    invoke-virtual {p0, v3}, Lorg/mortbay/io/AbstractBuffer;->skip(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-le v1, v4, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    :goto_2
    :try_start_1
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->i:Ljava/nio/channels/WritableByteChannel;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_6

    iput-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->i:Ljava/nio/channels/WritableByteChannel;

    iput-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->j:Ljava/io/OutputStream;

    :cond_6
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_2
    iput-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->i:Ljava/nio/channels/WritableByteChannel;

    iput-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->j:Ljava/io/OutputStream;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    :try_start_3
    iget-object v3, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->i:Ljava/nio/channels/WritableByteChannel;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_7

    iput-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->i:Ljava/nio/channels/WritableByteChannel;

    iput-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->j:Ljava/io/OutputStream;

    :cond_7
    iget-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v1

    :goto_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
