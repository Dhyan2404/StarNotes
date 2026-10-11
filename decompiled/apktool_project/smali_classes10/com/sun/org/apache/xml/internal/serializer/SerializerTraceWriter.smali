.class final Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;
.super Ljava/io/Writer;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/serializer/WriterChain;


# instance fields
.field private buf:[B

.field private buf_length:I

.field private count:I

.field private final m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

.field private final m_writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    const/16 p1, 0x400

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->setBufferSize(I)V

    return-void
.end method

.method private flushBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    if-lez v0, :cond_2

    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v3, :cond_1

    const/16 v4, 0xc

    invoke-interface {v3, v4, v1, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    :cond_1
    iput v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    :cond_2
    return-void
.end method

.method private setBufferSize(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf:[B

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf_length:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

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

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->flushBuffer()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->flushBuffer()V

    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterChain;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xml/internal/serializer/WriterChain;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/WriterChain;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    return-object p0
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf_length:I

    if-lt v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->flushBuffer()V

    :cond_1
    const/16 v0, 0x80

    if-ge p1, v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x800

    if-ge p1, v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf:[B

    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, p1, 0x6

    add-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 7
    iput v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 p0, p1, 0x3f

    add-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf:[B

    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, p1, 0xc

    add-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v4, v0

    int-to-byte v4, v4

    .line 9
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    .line 10
    iput v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 p0, p1, 0x3f

    add-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v1, v2

    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v0

    .line 28
    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf_length:I

    if-lt v1, v2, :cond_1

    .line 29
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->flushBuffer()V

    mul-int/lit8 v2, v1, 0x2

    .line 30
    invoke-direct {p0, v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->setBufferSize(I)V

    .line 31
    :cond_1
    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf_length:I

    iget v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 32
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->flushBuffer()V

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_3

    .line 34
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf:[B

    iget v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    goto :goto_1

    :cond_3
    const/16 v4, 0x800

    if-ge v2, v4, :cond_4

    .line 35
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, v2, 0x6

    add-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v5, v6, 0x1

    .line 36
    iput v5, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v2, v2, 0x3f

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v4, v6

    goto :goto_1

    .line 37
    :cond_4
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, v2, 0xc

    add-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    add-int/2addr v7, v3

    int-to-byte v7, v7

    .line 38
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x1

    .line 39
    iput v6, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v2, v2, 0x3f

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public write([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    :cond_0
    shl-int/lit8 v0, p3, 0x1

    add-int/2addr v0, p3

    .line 13
    iget v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf_length:I

    if-lt v0, v1, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->flushBuffer()V

    mul-int/lit8 v1, v0, 0x2

    .line 15
    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->setBufferSize(I)V

    .line 16
    :cond_1
    iget v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf_length:I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_2

    .line 17
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->flushBuffer()V

    :cond_2
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_5

    .line 18
    aget-char v0, p1, p2

    const/16 v1, 0x80

    if-ge v0, v1, :cond_3

    .line 19
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf:[B

    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_1

    :cond_3
    const/16 v2, 0x800

    if-ge v0, v2, :cond_4

    .line 20
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf:[B

    iget v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, v0, 0x6

    add-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    .line 21
    iput v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v0, v0, 0x3f

    add-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    goto :goto_1

    .line 22
    :cond_4
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->buf:[B

    iget v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, v0, 0xc

    add-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    add-int/2addr v5, v1

    int-to-byte v5, v5

    .line 23
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    .line 24
    iput v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v0, v0, 0x3f

    add-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
