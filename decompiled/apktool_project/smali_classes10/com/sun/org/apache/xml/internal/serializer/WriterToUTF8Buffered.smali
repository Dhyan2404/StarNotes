.class final Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;
.super Ljava/io/Writer;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/serializer/WriterChain;


# static fields
.field private static final BYTES_MAX:I = 0x4000

.field private static final CHARS_MAX:I = 0x1555


# instance fields
.field private count:I

.field private final m_inputChars:[C

.field private final m_os:Ljava/io/OutputStream;

.field private final m_outputBytes:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    const/16 p1, 0x4003

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    const/16 p1, 0x1557

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->flushBuffer()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->flushBuffer()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    :cond_0
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    return-object p0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 0

    const/4 p0, 0x0

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
    iget v0, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    const/16 v1, 0x4000

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->flushBuffer()V

    :cond_0
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x800

    if-ge p1, v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, p1, 0x6

    add-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 5
    iput v2, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 p0, p1, 0x3f

    add-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    goto :goto_0

    :cond_2
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

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

    .line 7
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    .line 8
    iput v3, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 p0, p1, 0x3f

    add-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v1, v2

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, p1, 0x12

    add-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v4, v0

    int-to-byte v4, v4

    .line 10
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v4, v0

    int-to-byte v4, v4

    .line 11
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 12
    iput v2, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 p0, p1, 0x3f

    add-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    .line 37
    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    const/16 v3, 0x4000

    rsub-int v2, v2, 0x4000

    const v4, 0xdbff

    const v5, 0xd800

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt v1, v2, :cond_3

    .line 38
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->flushBuffer()V

    if-le v1, v3, :cond_3

    .line 39
    div-int/lit16 v1, v0, 0x1555

    if-le v1, v8, :cond_0

    move v6, v1

    :cond_0
    move v1, v7

    :goto_0
    if-gt v8, v6, :cond_2

    int-to-long v2, v0

    int-to-long v9, v8

    mul-long/2addr v2, v9

    int-to-long v9, v6

    .line 40
    div-long/2addr v2, v9

    long-to-int v2, v2

    add-int/2addr v2, v7

    .line 41
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    invoke-virtual {p1, v1, v2, v3, v7}, Ljava/lang/String;->getChars(II[CI)V

    sub-int v1, v2, v1

    .line 42
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    add-int/lit8 v9, v1, -0x1

    aget-char v9, v3, v9

    if-lt v9, v5, :cond_1

    if-gt v9, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, -0x1

    .line 43
    :cond_1
    invoke-virtual {p0, v3, v7, v1}, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->write([CII)V

    add-int/lit8 v8, v8, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    return-void

    .line 44
    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    invoke-virtual {p1, v7, v0, v1, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 45
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    .line 46
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    .line 47
    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    :goto_1
    const/16 v3, 0x80

    if-ge v7, v0, :cond_4

    .line 48
    aget-char v9, p1, v7

    if-ge v9, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    int-to-byte v9, v9

    .line 49
    aput-byte v9, v1, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v3

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v7, v0, :cond_8

    .line 50
    aget-char v9, p1, v7

    if-ge v9, v3, :cond_5

    add-int/lit8 v10, v2, 0x1

    int-to-byte v9, v9

    .line 51
    aput-byte v9, v1, v2

    :goto_3
    move v2, v10

    goto :goto_4

    :cond_5
    const/16 v10, 0x800

    if-ge v9, v10, :cond_6

    add-int/lit8 v10, v2, 0x1

    shr-int/lit8 v11, v9, 0x6

    add-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    .line 52
    aput-byte v11, v1, v2

    add-int/lit8 v2, v10, 0x1

    and-int/lit8 v9, v9, 0x3f

    add-int/2addr v9, v3

    int-to-byte v9, v9

    .line 53
    aput-byte v9, v1, v10

    goto :goto_4

    :cond_6
    if-lt v9, v5, :cond_7

    if-gt v9, v4, :cond_7

    add-int/lit8 v7, v7, 0x1

    .line 54
    aget-char v10, p1, v7

    add-int/lit8 v11, v2, 0x1

    add-int/lit8 v12, v9, 0x40

    shr-int/lit8 v13, v12, 0x8

    and-int/lit16 v13, v13, 0xf0

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    .line 55
    aput-byte v13, v1, v2

    add-int/lit8 v2, v11, 0x1

    shr-int/2addr v12, v6

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v3

    int-to-byte v12, v12

    .line 56
    aput-byte v12, v1, v11

    add-int/lit8 v11, v2, 0x1

    shr-int/lit8 v12, v10, 0x6

    and-int/lit8 v12, v12, 0xf

    shl-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0x30

    add-int/2addr v12, v9

    or-int/lit16 v9, v12, 0x80

    int-to-byte v9, v9

    .line 57
    aput-byte v9, v1, v2

    add-int/lit8 v2, v11, 0x1

    and-int/lit8 v9, v10, 0x3f

    or-int/2addr v9, v3

    int-to-byte v9, v9

    .line 58
    aput-byte v9, v1, v11

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v2, 0x1

    shr-int/lit8 v11, v9, 0xc

    add-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    .line 59
    aput-byte v11, v1, v2

    add-int/lit8 v2, v10, 0x1

    shr-int/lit8 v11, v9, 0x6

    and-int/lit8 v11, v11, 0x3f

    add-int/2addr v11, v3

    int-to-byte v11, v11

    .line 60
    aput-byte v11, v1, v10

    add-int/lit8 v10, v2, 0x1

    and-int/lit8 v9, v9, 0x3f

    add-int/2addr v9, v3

    int-to-byte v9, v9

    .line 61
    aput-byte v9, v1, v2

    goto :goto_3

    :goto_4
    add-int/2addr v7, v8

    goto :goto_2

    .line 62
    :cond_8
    iput v2, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    return-void
.end method

.method public write([CII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/lit8 v0, p3, 0x3

    .line 13
    iget v1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    const/16 v2, 0x4000

    rsub-int v1, v1, 0x4000

    const v3, 0xdbff

    const v4, 0xd800

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v0, v1, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->flushBuffer()V

    if-le v0, v2, :cond_4

    .line 15
    div-int/lit16 v0, p3, 0x1555

    if-le v0, v6, :cond_0

    move v5, v0

    :cond_0
    move v0, p2

    :goto_0
    if-gt v6, v5, :cond_3

    int-to-long v1, p3

    int-to-long v7, v6

    mul-long/2addr v1, v7

    int-to-long v7, v5

    .line 16
    div-long/2addr v1, v7

    long-to-int v1, v1

    add-int/2addr v1, p2

    add-int/lit8 v2, v1, -0x1

    .line 17
    aget-char v2, p1, v2

    if-lt v2, v4, :cond_2

    if-gt v2, v3, :cond_2

    add-int v2, p2, p3

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :cond_2
    :goto_1
    sub-int v2, v1, v0

    .line 18
    invoke-virtual {p0, p1, v0, v2}, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->write([CII)V

    add-int/lit8 v6, v6, 0x1

    move v0, v1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    add-int/2addr p3, p2

    .line 19
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    .line 20
    iget v1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    :goto_2
    const/16 v2, 0x80

    if-ge p2, p3, :cond_5

    .line 21
    aget-char v7, p1, p2

    if-ge v7, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    int-to-byte v7, v7

    .line 22
    aput-byte v7, v0, v1

    add-int/lit8 p2, p2, 0x1

    move v1, v2

    goto :goto_2

    :cond_5
    :goto_3
    if-ge p2, p3, :cond_9

    .line 23
    aget-char v7, p1, p2

    if-ge v7, v2, :cond_6

    add-int/lit8 v8, v1, 0x1

    int-to-byte v7, v7

    .line 24
    aput-byte v7, v0, v1

    :goto_4
    move v1, v8

    goto :goto_5

    :cond_6
    const/16 v8, 0x800

    if-ge v7, v8, :cond_7

    add-int/lit8 v8, v1, 0x1

    shr-int/lit8 v9, v7, 0x6

    add-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    .line 25
    aput-byte v9, v0, v1

    add-int/lit8 v1, v8, 0x1

    and-int/lit8 v7, v7, 0x3f

    add-int/2addr v7, v2

    int-to-byte v7, v7

    .line 26
    aput-byte v7, v0, v8

    goto :goto_5

    :cond_7
    if-lt v7, v4, :cond_8

    if-gt v7, v3, :cond_8

    add-int/lit8 p2, p2, 0x1

    .line 27
    aget-char v8, p1, p2

    add-int/lit8 v9, v1, 0x1

    add-int/lit8 v10, v7, 0x40

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xf0

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    .line 28
    aput-byte v11, v0, v1

    add-int/lit8 v1, v9, 0x1

    shr-int/2addr v10, v5

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v10, v2

    int-to-byte v10, v10

    .line 29
    aput-byte v10, v0, v9

    add-int/lit8 v9, v1, 0x1

    shr-int/lit8 v10, v8, 0x6

    and-int/lit8 v10, v10, 0xf

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x30

    add-int/2addr v10, v7

    or-int/lit16 v7, v10, 0x80

    int-to-byte v7, v7

    .line 30
    aput-byte v7, v0, v1

    add-int/lit8 v1, v9, 0x1

    and-int/lit8 v7, v8, 0x3f

    or-int/2addr v7, v2

    int-to-byte v7, v7

    .line 31
    aput-byte v7, v0, v9

    goto :goto_5

    :cond_8
    add-int/lit8 v8, v1, 0x1

    shr-int/lit8 v9, v7, 0xc

    add-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    .line 32
    aput-byte v9, v0, v1

    add-int/lit8 v1, v8, 0x1

    shr-int/lit8 v9, v7, 0x6

    and-int/lit8 v9, v9, 0x3f

    add-int/2addr v9, v2

    int-to-byte v9, v9

    .line 33
    aput-byte v9, v0, v8

    add-int/lit8 v8, v1, 0x1

    and-int/lit8 v7, v7, 0x3f

    add-int/2addr v7, v2

    int-to-byte v7, v7

    .line 34
    aput-byte v7, v0, v1

    goto :goto_4

    :goto_5
    add-int/2addr p2, v6

    goto :goto_3

    .line 35
    :cond_9
    iput v1, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->count:I

    return-void
.end method
