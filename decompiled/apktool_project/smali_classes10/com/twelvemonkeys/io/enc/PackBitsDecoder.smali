.class public final Lcom/twelvemonkeys/io/enc/PackBitsDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/io/enc/Decoder;


# instance fields
.field public final a:Z

.field public final b:[B

.field public c:I

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->b:[B

    .line 5
    iput-boolean p2, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;-><init>(IZ)V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    int-to-byte p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Unexpected end of PackBits stream"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/io/InputStream;Ljava/nio/ByteBuffer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    sub-int v3, p2, v0

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "Unexpected end of PackBits stream"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Negative length: %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->e:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->c:I

    iput-boolean v1, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->d:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_2

    iput-boolean v2, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->e:Z

    goto :goto_4

    :cond_2
    int-to-byte v0, v0

    :goto_1
    if-ltz v0, :cond_3

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-le v3, v4, :cond_3

    iput v0, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->c:I

    iput-boolean v2, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->d:Z

    goto :goto_4

    :cond_3
    if-gez v0, :cond_4

    neg-int v3, v0

    add-int/2addr v3, v2

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-le v3, v4, :cond_4

    iput v0, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->c:I

    iput-boolean v2, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->d:Z

    goto :goto_4

    :cond_4
    if-ltz v0, :cond_5

    :try_start_0
    iget-object v1, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->b:[B

    array-length v1, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v1, v0

    invoke-static {p1, p2, v1}, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->b(Ljava/io/InputStream;Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->a:Z

    if-nez v3, :cond_6

    const/16 v3, -0x80

    if-eq v0, v3, :cond_0

    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->b:[B

    array-length v4, v3

    if-ge v1, v4, :cond_7

    invoke-static {p1}, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->a(Ljava/io/InputStream;)B

    move-result v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    neg-int v0, v0

    add-int/2addr v0, v2

    :goto_3
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/twelvemonkeys/io/enc/PackBitsDecoder;->b:[B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Lcom/twelvemonkeys/io/enc/DecodeException;

    const-string p2, "Error in PackBits decompression, data seems corrupt"

    invoke-direct {p1, p2, p0}, Lcom/twelvemonkeys/io/enc/DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_8
    :goto_4
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p0

    return p0
.end method
