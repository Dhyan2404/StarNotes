.class public Lorg/mortbay/jetty/HttpGenerator;
.super Lorg/mortbay/jetty/AbstractGenerator;
.source "SourceFile"


# static fields
.field public static j:[B

.field public static k:[B

.field public static l:[B

.field public static m:[B

.field public static n:[B

.field public static o:[B

.field public static p:[B

.field public static q:[B

.field public static r:I


# instance fields
.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->j:[B

    const-string v0, "Content-Length: 0\r\n"

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->k:[B

    const-string v0, "Connection: keep-alive\r\n"

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->l:[B

    const-string v0, "Connection: close\r\n"

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->m:[B

    const-string v0, "Connection: "

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->n:[B

    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->o:[B

    const-string v0, "Transfer-Encoding: chunked\r\n"

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->p:[B

    const-string v0, "Server: Jetty(6.0.x)\r\n"

    invoke-static {v0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpGenerator;->q:[B

    const/16 v0, 0xc

    sput v0, Lorg/mortbay/jetty/HttpGenerator;->r:I

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/mortbay/io/Buffers;Lorg/mortbay/io/EndPoint;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/AbstractGenerator;-><init>(Lorg/mortbay/io/Buffers;Lorg/mortbay/io/EndPoint;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpGenerator;->f:Z

    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpGenerator;->h:Z

    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    return-void
.end method

.method public static setServerVersion(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Server: Jetty("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ")\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    sput-object p0, Lorg/mortbay/jetty/HttpGenerator;->q:[B

    return-void
.end method


# virtual methods
.method public addContent(Lorg/mortbay/io/Buffer;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    if-nez v0, :cond_c

    .line 2
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    if-nez v0, :cond_b

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iput-boolean p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    .line 4
    iget-object p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result p2

    if-gtz p2, :cond_2

    :cond_1
    iget-boolean p2, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    if-eqz p2, :cond_6

    .line 5
    :cond_2
    iget-object p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {p2}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 6
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpGenerator;->flush()J

    .line 7
    iget-object p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result p2

    if-gtz p2, :cond_4

    :cond_3
    iget-boolean p2, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    if-nez p2, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FULL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_5
    new-instance p0, Lorg/mortbay/jetty/EofException;

    invoke-direct {p0}, Lorg/mortbay/jetty/EofException;-><init>()V

    throw p0

    .line 10
    :cond_6
    :goto_0
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    .line 11
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result p2

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    .line 12
    iget-boolean p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 13
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    .line 14
    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    goto :goto_1

    .line 15
    :cond_7
    iget-object p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez p2, :cond_8

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result p1

    if-lez p1, :cond_8

    iget-boolean p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpGenerator;->f:Z

    goto :goto_1

    .line 17
    :cond_8
    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez p1, :cond_9

    .line 18
    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iget p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentBufferSize:I

    invoke-interface {p1, p2}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    .line 19
    :cond_9
    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {p1, p2}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    move-result p1

    .line 20
    iget-object p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {p2, p1}, Lorg/mortbay/io/Buffer;->skip(I)I

    .line 21
    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result p1

    if-nez p1, :cond_a

    .line 22
    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    :cond_a
    :goto_1
    return-void

    :cond_b
    :goto_2
    const-string p0, "Ignoring extra content {}"

    .line 23
    invoke-static {p0, p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    return-void

    .line 25
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NO CONTENT"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addContent(B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    if-nez v0, :cond_b

    .line 27
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    if-eqz v0, :cond_5

    .line 29
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpGenerator;->flush()J

    .line 30
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    if-nez v0, :cond_4

    goto :goto_0

    .line 31
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FULL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_5
    :goto_0
    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    .line 33
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    if-eqz v0, :cond_6

    return v1

    .line 34
    :cond_6
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_7

    .line 35
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iget v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentBufferSize:I

    invoke-interface {v0, v2}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    .line 36
    :cond_7
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, p1}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 37
    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->space()I

    move-result p1

    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    const-wide/16 v4, -0x2

    cmp-long p0, v2, v4

    if-nez p0, :cond_8

    sget p0, Lorg/mortbay/jetty/HttpGenerator;->r:I

    goto :goto_1

    :cond_8
    move p0, v1

    :goto_1
    if-gt p1, p0, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1

    .line 38
    :cond_a
    :goto_2
    new-instance p0, Ljava/lang/Byte;

    invoke-direct {p0, p1}, Ljava/lang/Byte;-><init>(B)V

    const-string p1, "Ignoring extra content {}"

    invoke-static {p1, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 39
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NO CONTENT"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public complete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractGenerator;->complete()V

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iput v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->h:Z

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpGenerator;->flush()J

    return-void
.end method

.method public completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-nez v1, :cond_2

    iget v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/mortbay/jetty/EofException;

    invoke-direct {v0}, Lorg/mortbay/jetty/EofException;-><init>()V

    throw v0

    :cond_2
    :goto_0
    iget-boolean v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "last?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    or-int v1, v1, p2

    iput-boolean v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    if-nez v1, :cond_5

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iget v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_headerBufferSize:I

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v1

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    :cond_5
    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    const/16 v2, 0x9

    const/4 v6, 0x5

    const-wide/16 v7, 0x0

    const/16 v10, 0x64

    const/16 v11, 0x20

    const/4 v12, 0x2

    const-wide/16 v13, -0x1

    const/16 v15, 0x30

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_9

    iput-boolean v4, v0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    iget v5, v0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    const-string v4, "utf-8"

    if-ne v5, v2, :cond_6

    iput-wide v7, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v1}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v11}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_uri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    const/4 v1, 0x3

    iput v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    iput-boolean v9, v0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    return-void

    :cond_6
    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v1}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v11}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_uri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v11}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    if-ne v2, v3, :cond_7

    sget-object v2, Lorg/mortbay/jetty/HttpVersions;->HTTP_1_0_BUFFER:Lorg/mortbay/io/Buffer;

    goto :goto_2

    :cond_7
    sget-object v2, Lorg/mortbay/jetty/HttpVersions;->HTTP_1_1_BUFFER:Lorg/mortbay/io/Buffer;

    :goto_2
    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_9
    iget v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    if-ne v1, v2, :cond_a

    iput-boolean v9, v0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    iput-wide v13, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    iput v12, v0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    return-void

    :cond_a
    if-ne v1, v3, :cond_b

    iput-boolean v9, v0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    :cond_b
    iget v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    invoke-static {v1}, Lorg/mortbay/jetty/HttpStatus;->getResponseLine(I)Lorg/mortbay/io/Buffer;

    move-result-object v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_reason:Lorg/mortbay/io/Buffer;

    if-nez v1, :cond_c

    iget v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    invoke-static {v1}, Lorg/mortbay/jetty/AbstractGenerator;->getReasonBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v1

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_reason:Lorg/mortbay/io/Buffer;

    :cond_c
    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpVersions;->HTTP_1_1_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v11}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    div-int/2addr v2, v10

    add-int/2addr v2, v15

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    rem-int/2addr v2, v10

    div-int/2addr v2, v3

    add-int/2addr v2, v15

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    rem-int/2addr v2, v3

    add-int/2addr v2, v15

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v11}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_reason:Lorg/mortbay/io/Buffer;

    if-nez v1, :cond_d

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    div-int/2addr v2, v10

    add-int/2addr v2, v15

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    rem-int/2addr v2, v10

    div-int/2addr v2, v3

    add-int/2addr v2, v15

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    rem-int/2addr v2, v3

    add-int/2addr v2, v15

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put(B)V

    goto :goto_3

    :cond_d
    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v1}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    :goto_3
    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    goto :goto_4

    :cond_e
    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_reason:Lorg/mortbay/io/Buffer;

    if-nez v2, :cond_f

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v1}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    goto :goto_4

    :cond_f
    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v1

    sget-object v4, Lorg/mortbay/jetty/HttpVersions;->HTTP_1_1_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    add-int/2addr v4, v6

    const/4 v5, 0x0

    invoke-interface {v2, v1, v5, v4}, Lorg/mortbay/io/Buffer;->put([BII)I

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_reason:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    :goto_4
    iget v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_11

    if-lt v1, v10, :cond_11

    iput-boolean v9, v0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->clear()V

    :cond_10
    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    iput v12, v0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    return-void

    :cond_11
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_12

    const/16 v2, 0x130

    if-ne v1, v2, :cond_8

    :cond_12
    iput-boolean v9, v0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->clear()V

    :cond_13
    :goto_5
    const/16 v2, 0xb

    const/4 v4, -0x1

    const/16 v5, 0x2c

    if-eqz p1, :cond_30

    invoke-virtual/range {p1 .. p1}, Lorg/mortbay/jetty/HttpFields;->getFields()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v20, v18

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v10, v25

    check-cast v10, Lorg/mortbay/jetty/HttpFields$Field;

    invoke-virtual {v10}, Lorg/mortbay/jetty/HttpFields$Field;->getNameOrdinal()I

    move-result v12

    if-eq v12, v9, :cond_1b

    if-eq v12, v6, :cond_1a

    const/16 v11, 0xc

    if-eq v12, v11, :cond_17

    const/16 v11, 0x10

    if-eq v12, v11, :cond_15

    if-eq v12, v15, :cond_14

    iget-object v11, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-virtual {v10, v11}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_a

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/AbstractGenerator;->getSendServerVersion()Z

    move-result v11

    if-eqz v11, :cond_20

    iget-object v11, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-virtual {v10, v11}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    move/from16 v22, v9

    goto/16 :goto_a

    :cond_15
    sget-object v11, Lorg/mortbay/jetty/MimeTypes;->MULTIPART_BYTERANGES_BUFFER:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v10}, Lorg/mortbay/jetty/HttpFields$Field;->getValueBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/mortbay/io/BufferUtil;->isPrefix(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)Z

    move-result v11

    if-eqz v11, :cond_16

    const-wide/16 v11, -0x4

    iput-wide v11, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    :cond_16
    iget-object v11, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-virtual {v10, v11}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    move/from16 v21, v9

    goto :goto_a

    :cond_17
    invoke-virtual {v10}, Lorg/mortbay/jetty/HttpFields$Field;->getLongValue()J

    move-result-wide v11

    iput-wide v11, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    iget-wide v7, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    cmp-long v18, v11, v7

    if-ltz v18, :cond_19

    iget-boolean v15, v0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    if-eqz v15, :cond_18

    cmp-long v7, v11, v7

    if-eqz v7, :cond_18

    goto :goto_7

    :cond_18
    move-object v7, v10

    goto :goto_8

    :cond_19
    :goto_7
    const/4 v7, 0x0

    :goto_8
    iget-object v8, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-virtual {v10, v8}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    move-object/from16 v18, v7

    goto :goto_a

    :cond_1a
    iget v7, v0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    if-ne v7, v2, :cond_20

    move-object/from16 v20, v10

    goto :goto_a

    :cond_1b
    iget-object v7, v0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-eqz v7, :cond_1c

    iget-object v7, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-virtual {v10, v7}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    :cond_1c
    invoke-virtual {v10}, Lorg/mortbay/jetty/HttpFields$Field;->getValueOrdinal()I

    move-result v7

    const-wide/16 v11, -0x3

    if-eq v7, v4, :cond_24

    if-eq v7, v9, :cond_21

    if-eq v7, v6, :cond_1e

    if-nez v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_9

    :cond_1d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_9
    invoke-virtual {v10}, Lorg/mortbay/jetty/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :cond_1e
    iget v7, v0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    if-ne v7, v3, :cond_20

    iget-object v7, v0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-nez v7, :cond_1f

    const/4 v7, 0x0

    iput-boolean v7, v0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    :cond_1f
    move/from16 v23, v9

    :cond_20
    :goto_a
    const/4 v10, 0x0

    goto/16 :goto_10

    :cond_21
    iget-object v7, v0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-nez v7, :cond_22

    iput-boolean v9, v0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    :cond_22
    iget-boolean v8, v0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    if-eqz v8, :cond_23

    if-nez v7, :cond_23

    iget-wide v7, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    cmp-long v7, v7, v11

    if-nez v7, :cond_23

    iput-wide v13, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    :cond_23
    move/from16 v24, v9

    goto :goto_a

    :cond_24
    new-instance v7, Lorg/mortbay/util/QuotedStringTokenizer;

    invoke-virtual {v10}, Lorg/mortbay/jetty/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v10, ","

    invoke-direct {v7, v8, v10}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v7}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-virtual {v7}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v10, v8}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v10

    if-eqz v10, :cond_2d

    invoke-virtual {v10}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v10

    if-eq v10, v9, :cond_29

    if-eq v10, v6, :cond_26

    if-nez v1, :cond_25

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_c

    :cond_25
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_c
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 p1, v7

    const/4 v10, 0x0

    goto :goto_f

    :cond_26
    iget v8, v0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    if-ne v8, v3, :cond_28

    iget-object v8, v0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    const/4 v10, 0x0

    if-nez v8, :cond_27

    iput-boolean v10, v0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    :cond_27
    move-object/from16 p1, v7

    move/from16 v23, v9

    goto :goto_f

    :cond_28
    const/4 v10, 0x0

    move-object/from16 p1, v7

    goto :goto_f

    :cond_29
    const/4 v10, 0x0

    iget-object v8, v0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-nez v8, :cond_2a

    iput-boolean v9, v0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    :cond_2a
    iget-boolean v15, v0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    if-eqz v15, :cond_2b

    if-nez v8, :cond_2b

    move-object/from16 p1, v7

    iget-wide v6, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    cmp-long v6, v6, v11

    if-nez v6, :cond_2c

    iput-wide v13, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    goto :goto_d

    :cond_2b
    move-object/from16 p1, v7

    :cond_2c
    :goto_d
    move/from16 v24, v9

    move/from16 v23, v10

    goto :goto_f

    :cond_2d
    move-object/from16 p1, v7

    const/4 v10, 0x0

    if-nez v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_e

    :cond_2e
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_e
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_f
    move-object/from16 v7, p1

    const/4 v6, 0x5

    goto :goto_b

    :goto_10
    const/4 v6, 0x5

    const-wide/16 v7, 0x0

    const/16 v10, 0x64

    const/16 v11, 0x20

    const/4 v12, 0x2

    const/16 v15, 0x30

    goto/16 :goto_6

    :cond_2f
    const/4 v10, 0x0

    move-object/from16 v19, v1

    move-object/from16 v1, v20

    goto :goto_11

    :cond_30
    const/4 v10, 0x0

    move/from16 v21, v10

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    const/4 v1, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_11
    iget-wide v6, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    long-to-int v6, v6

    const/4 v7, -0x3

    const-wide/16 v11, -0x2

    if-eq v6, v7, :cond_34

    if-eq v6, v4, :cond_32

    if-eqz v6, :cond_31

    goto/16 :goto_15

    :cond_31
    if-nez v18, :cond_3b

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-nez v2, :cond_3b

    iget v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    const/16 v4, 0xc8

    if-lt v2, v4, :cond_3b

    const/16 v4, 0xcc

    if-eq v2, v4, :cond_3b

    const/16 v4, 0x130

    if-eq v2, v4, :cond_3b

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v4, Lorg/mortbay/jetty/HttpGenerator;->k:[B

    invoke-interface {v2, v4}, Lorg/mortbay/io/Buffer;->put([B)I

    goto/16 :goto_15

    :cond_32
    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-nez v2, :cond_33

    move v2, v9

    goto :goto_12

    :cond_33
    move v2, v10

    :goto_12
    iput-boolean v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    goto/16 :goto_15

    :cond_34
    iget-wide v6, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    const-wide/16 v26, 0x0

    cmp-long v4, v6, v26

    if-nez v4, :cond_36

    iget-object v4, v0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-nez v4, :cond_36

    iget v4, v0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    const/16 v8, 0xc8

    if-lt v4, v8, :cond_35

    const/16 v8, 0xcc

    if-eq v4, v8, :cond_35

    const/16 v8, 0x130

    if-ne v4, v8, :cond_36

    :cond_35
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    goto :goto_15

    :cond_36
    const-wide/16 v15, 0x0

    iget-boolean v4, v0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    if-eqz v4, :cond_38

    iput-wide v6, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    if-nez v18, :cond_3b

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-eqz v2, :cond_37

    if-nez v21, :cond_37

    cmp-long v2, v6, v15

    if-lez v2, :cond_3b

    :cond_37
    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v4, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v4}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    const/16 v4, 0x3a

    invoke-interface {v2, v4}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    const/16 v4, 0x20

    invoke-interface {v2, v4}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget-wide v6, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    invoke-static {v2, v6, v7}, Lorg/mortbay/io/BufferUtil;->putDecLong(Lorg/mortbay/io/Buffer;J)V

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v4, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v2, v4}, Lorg/mortbay/io/Buffer;->put([B)I

    goto :goto_15

    :cond_38
    iget-boolean v4, v0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    if-nez v4, :cond_3a

    iget v4, v0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    if-ge v4, v2, :cond_39

    goto :goto_13

    :cond_39
    move-wide v6, v11

    goto :goto_14

    :cond_3a
    :goto_13
    move-wide v6, v13

    :goto_14
    iput-wide v6, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-eqz v2, :cond_3b

    cmp-long v2, v6, v13

    if-nez v2, :cond_3b

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    iput-boolean v9, v0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    :cond_3b
    :goto_15
    iget-wide v6, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    cmp-long v2, v6, v11

    if-nez v2, :cond_3e

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpFields$Field;->getValueOrdinal()I

    move-result v2

    const/4 v4, 0x2

    if-eq v4, v2, :cond_3d

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "chunked"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    goto :goto_16

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BAD TE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpGenerator;->p:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    :cond_3e
    :goto_16
    iget-wide v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    cmp-long v1, v1, v13

    if-nez v1, :cond_3f

    iput-boolean v9, v0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    move v4, v10

    goto :goto_17

    :cond_3f
    move/from16 v4, v23

    :goto_17
    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-nez v1, :cond_43

    iget-boolean v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    if-eqz v1, :cond_41

    if-nez v24, :cond_40

    iget v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    if-le v1, v3, :cond_41

    :cond_40
    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpGenerator;->m:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    if-eqz v19, :cond_43

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->setPutIndex(I)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v5}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpGenerator;->o:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    goto :goto_18

    :cond_41
    if-eqz v4, :cond_42

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpGenerator;->l:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    if-eqz v19, :cond_43

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->setPutIndex(I)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v5}, Lorg/mortbay/io/Buffer;->put(B)V

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpGenerator;->o:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    goto :goto_18

    :cond_42
    if-eqz v19, :cond_43

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpGenerator;->n:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpGenerator;->o:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    :cond_43
    :goto_18
    if-nez v22, :cond_44

    iget v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_44

    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/AbstractGenerator;->getSendServerVersion()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpGenerator;->q:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    :cond_44
    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    const/4 v1, 0x2

    iput v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    return-void
.end method

.method public final e()V
    .locals 8

    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v2}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    move-result v0

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v0}, Lorg/mortbay/io/Buffer;->skip(I)I

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    :cond_0
    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    const-wide/16 v4, -0x2

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-lez v0, :cond_7

    iput-boolean v3, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    iget-object v5, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v5}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v5

    sget v6, Lorg/mortbay/jetty/HttpGenerator;->r:I

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v5}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v6

    sub-int/2addr v6, v4

    sget-object v7, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v5, v6, v7, v2, v4}, Lorg/mortbay/io/Buffer;->poke(I[BII)I

    iget-object v5, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v5}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v5, v6}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    iget-object v5, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-static {v5, v0}, Lorg/mortbay/io/BufferUtil;->prependHexInt(Lorg/mortbay/io/Buffer;I)V

    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v0, v5, v7, v2, v4}, Lorg/mortbay/io/Buffer;->poke(I[BII)I

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v0, v5}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    goto :goto_2

    :cond_2
    iget-boolean v5, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v5}, Lorg/mortbay/io/Buffer;->length()I

    move-result v5

    if-gtz v5, :cond_3

    iget-object v5, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v6, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v5, v6}, Lorg/mortbay/io/Buffer;->put([B)I

    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "EOC"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    iget-object v5, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-static {v5, v0}, Lorg/mortbay/io/BufferUtil;->putHexInt(Lorg/mortbay/io/Buffer;I)V

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v5, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v0, v5}, Lorg/mortbay/io/Buffer;->put([B)I

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    if-lt v0, v4, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    sget-object v5, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v0, v5}, Lorg/mortbay/io/Buffer;->put([B)I

    goto :goto_3

    :cond_6
    iput-boolean v3, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    :cond_7
    :goto_3
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->h:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_8
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    if-lt v0, v4, :cond_9

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    sget-object v4, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v0, v4}, Lorg/mortbay/io/Buffer;->put([B)I

    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    if-lt v0, v4, :cond_a

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    sget-object v4, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v0, v4}, Lorg/mortbay/io/Buffer;->put([B)I

    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    :cond_a
    :goto_4
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->h:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    sget-object v4, Lorg/mortbay/jetty/HttpGenerator;->j:[B

    array-length v5, v4

    if-lt v0, v5, :cond_c

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v4}, Lorg/mortbay/io/Buffer;->put([B)I

    iput-boolean v3, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    :cond_b
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->h:Z

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    sget-object v4, Lorg/mortbay/jetty/HttpGenerator;->j:[B

    array-length v5, v4

    if-lt v0, v5, :cond_e

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v4}, Lorg/mortbay/io/Buffer;->put([B)I

    iput-boolean v3, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    :cond_d
    iput-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->h:Z

    :cond_e
    :goto_5
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_f

    iput-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    :cond_f
    return-void
.end method

.method public flush()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpGenerator;->e()V

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    sget-object v2, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    invoke-interface {v0, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    :cond_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    if-nez v2, :cond_1

    sget-object v2, Lorg/mortbay/jetty/HttpGenerator;->j:[B

    invoke-interface {v0, v2}, Lorg/mortbay/io/Buffer;->put([B)I

    :cond_1
    iput-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    iput-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->h:Z

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    const/4 v3, 0x4

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x2

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    or-int/2addr v2, v4

    iget-boolean v4, p0, Lorg/mortbay/jetty/HttpGenerator;->f:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    or-int/2addr v2, v4

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_1
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget-object v5, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v3, v5, v4}, Lorg/mortbay/io/EndPoint;->flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I

    move-result v2

    goto/16 :goto_5

    :pswitch_2
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget-object v5, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v3, v5, v4}, Lorg/mortbay/io/EndPoint;->flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I

    move-result v2

    goto/16 :goto_5

    :pswitch_3
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v3}, Lorg/mortbay/io/EndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v2

    goto/16 :goto_5

    :pswitch_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_5
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v3}, Lorg/mortbay/io/EndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v2

    goto/16 :goto_5

    :pswitch_6
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v3}, Lorg/mortbay/io/EndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v2

    goto/16 :goto_5

    :pswitch_7
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->clear()V

    :cond_6
    iput-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->f:Z

    iput-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    const/4 v5, 0x3

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->clear()V

    iget-wide v6, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    const-wide/16 v8, -0x2

    cmp-long v2, v6, v8

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    sget v6, Lorg/mortbay/jetty/HttpGenerator;->r:I

    invoke-interface {v2, v6}, Lorg/mortbay/io/Buffer;->setPutIndex(I)V

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    sget v6, Lorg/mortbay/jetty/HttpGenerator;->r:I

    invoke-interface {v2, v6}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    iget-object v6, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->space()I

    move-result v6

    if-ge v2, v6, :cond_7

    iget v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-eq v2, v5, :cond_7

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->clear()V

    iput-object v4, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    goto :goto_6

    :cond_7
    iget-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lorg/mortbay/jetty/HttpGenerator;->h:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    iget v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-ne v1, v5, :cond_9

    iput v3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    :cond_9
    iget v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-ne v1, v3, :cond_b

    iget-boolean v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_b

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {p0}, Lorg/mortbay/io/EndPoint;->shutdownOutput()V

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpGenerator;->e()V

    :goto_4
    const/4 v2, -0x1

    :goto_5
    if-lez v2, :cond_b

    add-int/2addr v0, v2

    goto/16 :goto_0

    :cond_b
    :goto_6
    int-to-long v0, v0

    return-wide v0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "State==HEADER"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    instance-of v0, p0, Lorg/mortbay/jetty/EofException;

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    new-instance v0, Lorg/mortbay/jetty/EofException;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_7
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBytesBuffered()I
    .locals 3

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public isBufferFull()Z
    .locals 4

    invoke-super {p0}, Lorg/mortbay/jetty/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->f:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->space()I

    move-result p0

    sget v0, Lorg/mortbay/jetty/HttpGenerator;->r:I

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public prepareUncheckedAddContent()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    if-nez v0, :cond_a

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    if-eqz v1, :cond_6

    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpGenerator;->flush()J

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "FULL"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iget v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentBufferSize:I

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    :cond_7
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    if-eqz v0, :cond_8

    const p0, 0x7fffffff

    return p0

    :cond_8
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    iget-wide v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    const-wide/16 v3, -0x2

    cmp-long p0, v1, v3

    if-nez p0, :cond_9

    sget p0, Lorg/mortbay/jetty/HttpGenerator;->r:I

    goto :goto_1

    :cond_9
    const/4 p0, 0x0

    :goto_1
    sub-int/2addr v0, p0

    return v0

    :cond_a
    :goto_2
    return v1
.end method

.method public reset(Z)V
    .locals 1

    invoke-super {p0, p1}, Lorg/mortbay/jetty/AbstractGenerator;->reset(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpGenerator;->f:Z

    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpGenerator;->g:Z

    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpGenerator;->h:Z

    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_uri:Ljava/lang/String;

    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    return-void
.end method

.method public sendResponse(Lorg/mortbay/io/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpGenerator;->f:Z

    const/4 v0, 0x3

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HttpGenerator s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    const-string v2, "null"

    const-string v3, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
