.class public Lcom/twelvemonkeys/io/enc/Base64Encoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/io/enc/Encoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    const/4 v0, 0x3

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x1

    const/16 v2, 0x3d

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    sget-object v4, Lcom/twelvemonkeys/io/enc/Base64Decoder;->b:[B

    ushr-int/lit8 v5, p0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v4, v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x30

    ushr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    add-int/2addr p0, v5

    aget-byte p0, v4, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p0, v2, 0x2

    and-int/lit8 p0, p0, 0x3c

    ushr-int/lit8 v1, v3, 0x6

    and-int/2addr v0, v1

    add-int/2addr p0, v0

    aget-byte p0, v4, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 p0, v3, 0x3f

    aget-byte p0, v4, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    sget-object v3, Lcom/twelvemonkeys/io/enc/Base64Decoder;->b:[B

    ushr-int/lit8 v4, p0, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v3, v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x30

    ushr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0xf

    add-int/2addr p0, v4

    aget-byte p0, v3, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p0, v0, 0x2

    and-int/lit8 p0, p0, 0x3c

    add-int/lit8 p0, p0, 0x0

    aget-byte p0, v3, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    sget-object v0, Lcom/twelvemonkeys/io/enc/Base64Decoder;->b:[B

    ushr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x30

    add-int/lit8 p0, p0, 0x0

    aget-byte p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method
