.class public final Lcom/twelvemonkeys/io/enc/PackBitsEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/io/enc/Encoder;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/twelvemonkeys/io/enc/PackBitsEncoder;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;[BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p4, p3

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    add-int/lit8 v1, p4, -0x1

    :cond_0
    :goto_0
    if-gt p3, p4, :cond_9

    aget-byte v2, p2, p3

    move v3, v0

    :goto_1
    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    if-ge p3, p4, :cond_1

    aget-byte v4, p2, p3

    add-int/lit8 v5, p3, 0x1

    aget-byte v6, p2, v5

    if-ne v4, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    move p3, v5

    goto :goto_1

    :cond_1
    if-le v3, v0, :cond_2

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v3, v3, -0x1

    neg-int v3, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    :cond_2
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    const/16 v4, 0x80

    if-ge v3, v4, :cond_5

    if-ge p3, p4, :cond_3

    aget-byte v5, p2, p3

    add-int/lit8 v6, p3, 0x1

    aget-byte v6, p2, v6

    if-ne v5, v6, :cond_4

    :cond_3
    if-ge p3, v1, :cond_5

    aget-byte v5, p2, p3

    add-int/lit8 v6, p3, 0x2

    aget-byte v6, p2, v6

    if-eq v5, v6, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/twelvemonkeys/io/enc/PackBitsEncoder;->a:[B

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, p3, 0x1

    aget-byte p3, p2, p3

    aput-byte p3, v4, v3

    move v3, v5

    move p3, v6

    goto :goto_2

    :cond_5
    if-ne p3, p4, :cond_6

    if-lez v3, :cond_6

    if-ge v3, v4, :cond_6

    iget-object v5, p0, Lcom/twelvemonkeys/io/enc/PackBitsEncoder;->a:[B

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, p3, 0x1

    aget-byte p3, p2, p3

    aput-byte p3, v5, v3

    move v3, v6

    move p3, v7

    :cond_6
    if-lez v3, :cond_7

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v5, p0, Lcom/twelvemonkeys/io/enc/PackBitsEncoder;->a:[B

    invoke-virtual {p1, v5, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    :cond_7
    if-ne p3, p4, :cond_0

    if-lez v3, :cond_8

    if-lt v3, v4, :cond_0

    :cond_8
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, p3, 0x1

    aget-byte p3, p2, p3

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    move p3, v2

    goto :goto_0

    :cond_9
    return-void
.end method

.method public encode(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/twelvemonkeys/io/enc/PackBitsEncoder;->a(Ljava/io/OutputStream;[BII)V

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
