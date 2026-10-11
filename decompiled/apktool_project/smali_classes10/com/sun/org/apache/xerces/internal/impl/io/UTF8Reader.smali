.class public Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;
.super Ljava/io/Reader;
.source "SourceFile"


# static fields
.field private static final DEBUG_READ:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected fBuffer:[B

.field private fFormatter:Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

.field protected fInputStream:Ljava/io/InputStream;

.field private fLocale:Ljava/util/Locale;

.field protected fOffset:I

.field private fSurrogate:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/16 v2, 0x800

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILcom/sun/org/apache/xerces/internal/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILcom/sun/org/apache/xerces/internal/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fSurrogate:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fFormatter:Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    .line 7
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    .line 8
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    .line 9
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fFormatter:Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    .line 10
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    const/16 v0, 0x800

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILcom/sun/org/apache/xerces/internal/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method private expectedByte(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v6, Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fFormatter:Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "ExpectedByte"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException;-><init>(Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
.end method

.method private invalidByte(III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance p3, Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fFormatter:Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "InvalidByte"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v5

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException;-><init>(Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3
.end method

.method private invalidSurrogate(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v6, Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fFormatter:Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "InvalidHighSurrogate"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException;-><init>(Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/IOException;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fFormatter:Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v1, "mark()"

    const-string v2, "UTF-8"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "OperationNotSupported"

    invoke-interface {v0, p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fSurrogate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 2
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    move v4, v3

    :goto_0
    if-ne v2, v1, :cond_1

    return v1

    :cond_1
    const/16 v5, 0x80

    if-ge v2, v5, :cond_2

    int-to-char p0, v2

    :goto_1
    move v0, p0

    goto/16 :goto_9

    :cond_2
    and-int/lit16 v6, v2, 0xe0

    const/16 v7, 0xc0

    const/4 v8, 0x2

    if-ne v6, v7, :cond_6

    and-int/lit8 v6, v2, 0x1e

    if-eqz v6, :cond_6

    .line 3
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    if-ne v4, v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    :goto_2
    if-ne v0, v1, :cond_4

    .line 4
    invoke-direct {p0, v8, v8}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_4
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v5, :cond_5

    .line 5
    invoke-direct {p0, v8, v8, v0}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_5
    shl-int/lit8 p0, v2, 0x6

    and-int/lit16 p0, p0, 0x7c0

    and-int/lit8 v0, v0, 0x3f

    :goto_3
    or-int/2addr p0, v0

    goto :goto_1

    :cond_6
    and-int/lit16 v6, v2, 0xf0

    const/16 v7, 0xe0

    const/4 v9, 0x3

    if-ne v6, v7, :cond_f

    .line 6
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    if-ne v4, v0, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    move v4, v3

    :goto_4
    if-ne v0, v1, :cond_8

    .line 7
    invoke-direct {p0, v8, v9}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_8
    and-int/lit16 v3, v0, 0xc0

    if-ne v3, v5, :cond_a

    const/16 v3, 0xed

    if-ne v2, v3, :cond_9

    const/16 v3, 0xa0

    if-ge v0, v3, :cond_a

    :cond_9
    and-int/lit8 v3, v2, 0xf

    if-nez v3, :cond_b

    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_b

    .line 8
    :cond_a
    invoke-direct {p0, v8, v9, v0}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    .line 9
    :cond_b
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    if-ne v4, v3, :cond_c

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_5

    :cond_c
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    :goto_5
    if-ne v3, v1, :cond_d

    .line 10
    invoke-direct {p0, v9, v9}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_d
    and-int/lit16 v1, v3, 0xc0

    if-eq v1, v5, :cond_e

    .line 11
    invoke-direct {p0, v9, v9, v3}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_e
    shl-int/lit8 p0, v2, 0xc

    const v1, 0xf000

    and-int/2addr p0, v1

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0xfc0

    or-int/2addr p0, v0

    and-int/lit8 v0, v3, 0x3f

    goto :goto_3

    :cond_f
    and-int/lit16 v6, v2, 0xf8

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_1b

    .line 12
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    if-ne v4, v0, :cond_10

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    move v4, v6

    :goto_6
    const/4 v6, 0x4

    if-ne v0, v1, :cond_11

    .line 13
    invoke-direct {p0, v8, v6}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_11
    and-int/lit16 v7, v0, 0xc0

    if-ne v7, v5, :cond_12

    and-int/lit8 v7, v0, 0x30

    if-nez v7, :cond_13

    and-int/lit8 v7, v2, 0x7

    if-nez v7, :cond_13

    .line 14
    :cond_12
    invoke-direct {p0, v8, v9, v0}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    .line 15
    :cond_13
    iget v7, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    if-ne v4, v7, :cond_14

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    goto :goto_7

    :cond_14
    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v10, v4, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v7, v4, 0xff

    move v4, v10

    :goto_7
    if-ne v7, v1, :cond_15

    .line 16
    invoke-direct {p0, v9, v6}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_15
    and-int/lit16 v10, v7, 0xc0

    if-eq v10, v5, :cond_16

    .line 17
    invoke-direct {p0, v9, v9, v7}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    .line 18
    :cond_16
    iget v10, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    if-ne v4, v10, :cond_17

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    goto :goto_8

    :cond_17
    iget-object v10, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    :goto_8
    if-ne v4, v1, :cond_18

    .line 19
    invoke-direct {p0, v6, v6}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_18
    and-int/lit16 v1, v4, 0xc0

    if-eq v1, v5, :cond_19

    .line 20
    invoke-direct {p0, v6, v6, v4}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_19
    shl-int/lit8 v1, v2, 0x2

    and-int/lit8 v1, v1, 0x1c

    shr-int/lit8 v2, v0, 0x4

    and-int/2addr v2, v9

    or-int/2addr v1, v2

    const/16 v2, 0x10

    if-le v1, v2, :cond_1a

    .line 21
    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidSurrogate(I)V

    :cond_1a
    sub-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x6

    and-int/lit16 v1, v1, 0x3c0

    const v2, 0xd800

    or-int/2addr v1, v2

    shl-int/2addr v0, v8

    and-int/lit8 v0, v0, 0x3c

    or-int/2addr v0, v1

    shr-int/lit8 v1, v7, 0x4

    and-int/2addr v1, v9

    or-int/2addr v0, v1

    shl-int/lit8 v1, v7, 0x6

    and-int/lit16 v1, v1, 0x3c0

    const v2, 0xdc00

    or-int/2addr v1, v2

    and-int/lit8 v2, v4, 0x3f

    or-int/2addr v1, v2

    .line 22
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fSurrogate:I

    goto :goto_9

    .line 23
    :cond_1b
    invoke-direct {p0, v3, v3, v2}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_9

    .line 24
    :cond_1c
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fSurrogate:I

    :goto_9
    return v0
.end method

.method public read([CII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 25
    iget v2, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fSurrogate:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v4, v1, 0x1

    int-to-char v2, v2

    .line 26
    aput-char v2, p1, v4

    .line 27
    iput v3, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fSurrogate:I

    add-int/lit8 v2, p3, -0x1

    goto :goto_0

    :cond_0
    move/from16 v2, p3

    move v4, v1

    .line 28
    :goto_0
    iget v5, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 29
    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    array-length v7, v5

    if-le v2, v7, :cond_1

    .line 30
    array-length v2, v5

    .line 31
    :cond_1
    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v7, v5, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v3, :cond_2

    return v3

    :cond_2
    sub-int v5, v4, v1

    add-int/2addr v5, v2

    goto :goto_1

    .line 32
    :cond_3
    iput v6, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    :goto_1
    move v2, v6

    :goto_2
    if-ge v2, v5, :cond_4

    .line 33
    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v7, v7, v2

    if-ltz v7, :cond_4

    add-int/lit8 v8, v4, 0x1

    int-to-char v7, v7

    .line 34
    aput-char v7, p1, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v8

    goto :goto_2

    :cond_4
    move v7, v5

    :goto_3
    if-ge v2, v5, :cond_2c

    .line 35
    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v9, v8, v2

    const/4 v10, 0x1

    if-ltz v9, :cond_5

    add-int/lit8 v8, v4, 0x1

    int-to-char v9, v9

    .line 36
    aput-char v9, p1, v4

    move v4, v8

    goto/16 :goto_c

    :cond_5
    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v11, v9, 0xe0

    const/16 v12, 0x80

    const/16 v13, 0xc0

    const/4 v14, 0x2

    if-ne v11, v13, :cond_b

    and-int/lit8 v11, v9, 0x1e

    if-eqz v11, :cond_b

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_6

    .line 37
    aget-byte v8, v8, v2

    and-int/lit16 v8, v8, 0xff

    goto :goto_5

    .line 38
    :cond_6
    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ne v8, v3, :cond_8

    if-le v4, v1, :cond_7

    .line 39
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v9

    aput-byte v3, v2, v6

    .line 40
    iput v10, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    :goto_4
    sub-int/2addr v4, v1

    return v4

    .line 41
    :cond_7
    invoke-direct {v0, v14, v14}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    :goto_5
    and-int/lit16 v11, v8, 0xc0

    if-eq v11, v12, :cond_a

    if-le v4, v1, :cond_9

    .line 42
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v9

    aput-byte v3, v2, v6

    int-to-byte v3, v8

    .line 43
    aput-byte v3, v2, v10

    .line 44
    iput v14, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    goto :goto_4

    .line 45
    :cond_9
    invoke-direct {v0, v14, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_a
    shl-int/lit8 v9, v9, 0x6

    and-int/lit16 v9, v9, 0x7c0

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v9

    add-int/lit8 v9, v4, 0x1

    int-to-char v8, v8

    .line 46
    aput-char v8, p1, v4

    add-int/2addr v7, v3

    :goto_6
    move v4, v9

    goto/16 :goto_c

    :cond_b
    and-int/lit16 v11, v9, 0xf0

    const/16 v13, 0xe0

    const/4 v15, 0x3

    if-ne v11, v13, :cond_18

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_c

    .line 47
    aget-byte v8, v8, v2

    and-int/lit16 v8, v8, 0xff

    goto :goto_7

    .line 48
    :cond_c
    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ne v8, v3, :cond_e

    if-le v4, v1, :cond_d

    .line 49
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v9

    aput-byte v3, v2, v6

    .line 50
    iput v10, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    goto :goto_4

    .line 51
    :cond_d
    invoke-direct {v0, v14, v15}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_e
    add-int/lit8 v7, v7, 0x1

    :goto_7
    and-int/lit16 v11, v8, 0xc0

    if-ne v11, v12, :cond_10

    const/16 v11, 0xed

    if-ne v9, v11, :cond_f

    const/16 v11, 0xa0

    if-ge v8, v11, :cond_10

    :cond_f
    and-int/lit8 v11, v9, 0xf

    if-nez v11, :cond_12

    and-int/lit8 v11, v8, 0x20

    if-nez v11, :cond_12

    :cond_10
    if-le v4, v1, :cond_11

    .line 52
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v9

    aput-byte v3, v2, v6

    int-to-byte v3, v8

    .line 53
    aput-byte v3, v2, v10

    .line 54
    iput v14, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    goto :goto_4

    .line 55
    :cond_11
    invoke-direct {v0, v14, v15, v8}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_12
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_13

    .line 56
    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v11, v11, v2

    and-int/lit16 v11, v11, 0xff

    goto :goto_8

    .line 57
    :cond_13
    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v11

    if-ne v11, v3, :cond_15

    if-le v4, v1, :cond_14

    .line 58
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v9

    aput-byte v3, v2, v6

    int-to-byte v3, v8

    .line 59
    aput-byte v3, v2, v10

    .line 60
    iput v14, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    goto/16 :goto_4

    .line 61
    :cond_14
    invoke-direct {v0, v15, v15}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_15
    add-int/lit8 v7, v7, 0x1

    :goto_8
    and-int/lit16 v13, v11, 0xc0

    if-eq v13, v12, :cond_17

    if-le v4, v1, :cond_16

    .line 62
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v9

    aput-byte v3, v2, v6

    int-to-byte v3, v8

    .line 63
    aput-byte v3, v2, v10

    int-to-byte v3, v11

    .line 64
    aput-byte v3, v2, v14

    .line 65
    iput v15, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    goto/16 :goto_4

    .line 66
    :cond_16
    invoke-direct {v0, v15, v15, v11}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_17
    shl-int/lit8 v9, v9, 0xc

    const v12, 0xf000

    and-int/2addr v9, v12

    shl-int/lit8 v8, v8, 0x6

    and-int/lit16 v8, v8, 0xfc0

    or-int/2addr v8, v9

    and-int/lit8 v9, v11, 0x3f

    or-int/2addr v8, v9

    add-int/lit8 v9, v4, 0x1

    int-to-char v8, v8

    .line 67
    aput-char v8, p1, v4

    add-int/lit8 v7, v7, -0x2

    goto/16 :goto_6

    :cond_18
    and-int/lit16 v11, v9, 0xf8

    const/16 v13, 0xf0

    if-ne v11, v13, :cond_2a

    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x4

    if-ge v2, v5, :cond_19

    .line 68
    aget-byte v8, v8, v2

    and-int/lit16 v8, v8, 0xff

    goto :goto_9

    .line 69
    :cond_19
    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ne v8, v3, :cond_1b

    if-le v4, v1, :cond_1a

    .line 70
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v9

    aput-byte v3, v2, v6

    .line 71
    iput v10, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    goto/16 :goto_4

    .line 72
    :cond_1a
    invoke-direct {v0, v14, v11}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    :goto_9
    and-int/lit16 v13, v8, 0xc0

    if-ne v13, v12, :cond_1c

    and-int/lit8 v13, v8, 0x30

    if-nez v13, :cond_1e

    and-int/lit8 v13, v9, 0x7

    if-nez v13, :cond_1e

    :cond_1c
    if-le v4, v1, :cond_1d

    .line 73
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v9

    aput-byte v3, v2, v6

    int-to-byte v3, v8

    .line 74
    aput-byte v3, v2, v10

    .line 75
    iput v14, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    goto/16 :goto_4

    .line 76
    :cond_1d
    invoke-direct {v0, v14, v11, v8}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_1f

    .line 77
    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v13, v13, v2

    and-int/lit16 v13, v13, 0xff

    goto :goto_a

    .line 78
    :cond_1f
    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v13

    if-ne v13, v3, :cond_21

    if-le v4, v1, :cond_20

    .line 79
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v9

    aput-byte v3, v2, v6

    int-to-byte v3, v8

    .line 80
    aput-byte v3, v2, v10

    .line 81
    iput v14, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    goto/16 :goto_4

    .line 82
    :cond_20
    invoke-direct {v0, v15, v11}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_21
    add-int/lit8 v7, v7, 0x1

    :goto_a
    and-int/lit16 v3, v13, 0xc0

    if-eq v3, v12, :cond_23

    if-le v4, v1, :cond_22

    .line 83
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v9

    aput-byte v3, v2, v6

    int-to-byte v3, v8

    .line 84
    aput-byte v3, v2, v10

    int-to-byte v3, v13

    .line 85
    aput-byte v3, v2, v14

    .line 86
    iput v15, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    goto/16 :goto_4

    .line 87
    :cond_22
    invoke-direct {v0, v15, v11, v13}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_23
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_24

    .line 88
    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v12, -0x1

    goto :goto_b

    .line 89
    :cond_24
    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v12, -0x1

    if-ne v3, v12, :cond_26

    if-le v4, v1, :cond_25

    .line 90
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v9

    aput-byte v3, v2, v6

    int-to-byte v3, v8

    .line 91
    aput-byte v3, v2, v10

    int-to-byte v3, v13

    .line 92
    aput-byte v3, v2, v14

    .line 93
    iput v15, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    goto/16 :goto_4

    .line 94
    :cond_25
    invoke-direct {v0, v11, v11}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_26
    add-int/lit8 v7, v7, 0x1

    :goto_b
    and-int/lit16 v12, v3, 0xc0

    const/16 v11, 0x80

    if-eq v12, v11, :cond_28

    if-le v4, v1, :cond_27

    .line 95
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v5, v9

    aput-byte v5, v2, v6

    int-to-byte v5, v8

    .line 96
    aput-byte v5, v2, v10

    int-to-byte v5, v13

    .line 97
    aput-byte v5, v2, v14

    int-to-byte v3, v3

    .line 98
    aput-byte v3, v2, v15

    const/4 v11, 0x4

    .line 99
    iput v11, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    goto/16 :goto_4

    :cond_27
    const/4 v11, 0x4

    .line 100
    invoke-direct {v0, v11, v11, v13}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_28
    shl-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x1c

    shr-int/lit8 v11, v8, 0x4

    and-int/2addr v11, v15

    or-int/2addr v9, v11

    const/16 v11, 0x10

    if-le v9, v11, :cond_29

    .line 101
    invoke-direct {v0, v9}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidSurrogate(I)V

    :cond_29
    add-int/lit8 v9, v9, -0x1

    and-int/lit8 v8, v8, 0xf

    and-int/lit8 v11, v13, 0x3f

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v9, v9, 0x6

    and-int/lit16 v9, v9, 0x3c0

    const v12, 0xd800

    or-int/2addr v9, v12

    shl-int/2addr v8, v14

    or-int/2addr v8, v9

    shr-int/lit8 v9, v11, 0x4

    or-int/2addr v8, v9

    shl-int/lit8 v9, v11, 0x6

    and-int/lit16 v9, v9, 0x3c0

    const v11, 0xdc00

    or-int/2addr v9, v11

    or-int/2addr v3, v9

    add-int/lit8 v9, v4, 0x1

    int-to-char v8, v8

    .line 102
    aput-char v8, p1, v4

    add-int/lit8 v4, v9, 0x1

    int-to-char v3, v3

    .line 103
    aput-char v3, p1, v9

    add-int/lit8 v7, v7, -0x2

    goto :goto_c

    :cond_2a
    if-le v4, v1, :cond_2b

    int-to-byte v2, v9

    .line 104
    aput-byte v2, v8, v6

    .line 105
    iput v10, v0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    goto/16 :goto_4

    .line 106
    :cond_2b
    invoke-direct {v0, v10, v10, v9}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->invalidByte(III)V

    :goto_c
    add-int/2addr v2, v10

    const/4 v3, -0x1

    goto/16 :goto_3

    :cond_2c
    return v7
.end method

.method public ready()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fOffset:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fSurrogate:I

    return-void
.end method

.method public skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->fBuffer:[B

    array-length v0, v0

    new-array v1, v0, [C

    move-wide v2, p1

    :cond_0
    int-to-long v4, v0

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    long-to-int v4, v2

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v4}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;->read([CII)I

    move-result v4

    if-lez v4, :cond_2

    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    :cond_2
    sub-long/2addr p1, v2

    return-wide p1
.end method
