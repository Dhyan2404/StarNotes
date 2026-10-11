.class public final Lcom/twelvemonkeys/io/enc/Base64Decoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/io/enc/Decoder;


# static fields
.field public static final b:[B

.field public static final c:[B


# instance fields
.field public a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twelvemonkeys/io/enc/Base64Decoder;->b:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/twelvemonkeys/io/enc/Base64Decoder;->c:[B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/twelvemonkeys/io/enc/Base64Decoder;->c:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v1, Lcom/twelvemonkeys/io/enc/Base64Decoder;->b:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/twelvemonkeys/io/enc/Base64Decoder;->c:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/twelvemonkeys/io/enc/Base64Decoder;->a:[B

    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_1
    return v0

    :cond_1
    add-int v2, v0, p2

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x4

    const/16 v2, 0x48

    if-ge v1, v2, :cond_2

    const/4 v2, 0x4

    invoke-virtual {p0, p1, p2, v2}, Lcom/twelvemonkeys/io/enc/Base64Decoder;->decodeAtom(Ljava/io/InputStream;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    rsub-int/lit8 v0, v0, 0x48

    invoke-virtual {p0, p1, p2, v0}, Lcom/twelvemonkeys/io/enc/Base64Decoder;->decodeAtom(Ljava/io/InputStream;Ljava/nio/ByteBuffer;I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_0

    :goto_2
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p0

    return p0
.end method

.method public decodeAtom(Ljava/io/InputStream;Ljava/nio/ByteBuffer;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    if-lt p3, v0, :cond_b

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return v2

    :cond_1
    const/16 v4, 0xa

    if-eq v1, v4, :cond_0

    const/16 v4, 0xd

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lcom/twelvemonkeys/io/enc/Base64Decoder;->a:[B

    int-to-byte v1, v1

    aput-byte v1, v4, v2

    add-int/lit8 v1, p3, -0x1

    const/4 v5, 0x1

    invoke-static {p1, v4, v5, v1}, Lcom/twelvemonkeys/io/enc/Base64Decoder;->readFully(Ljava/io/InputStream;[BII)I

    move-result p1

    if-ne p1, v3, :cond_2

    return v2

    :cond_2
    const/16 p1, 0x3d

    const/4 v1, 0x3

    if-le p3, v1, :cond_3

    iget-object v4, p0, Lcom/twelvemonkeys/io/enc/Base64Decoder;->a:[B

    aget-byte v4, v4, v1

    if-ne v4, p1, :cond_3

    move p3, v1

    :cond_3
    if-le p3, v0, :cond_4

    iget-object v4, p0, Lcom/twelvemonkeys/io/enc/Base64Decoder;->a:[B

    aget-byte v4, v4, v0

    if-ne v4, p1, :cond_4

    move p3, v0

    :cond_4
    const/4 p1, 0x4

    if-eq p3, v0, :cond_7

    if-eq p3, v1, :cond_6

    if-eq p3, p1, :cond_5

    move p0, v3

    move v4, p0

    move v7, v4

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/twelvemonkeys/io/enc/Base64Decoder;->c:[B

    iget-object v4, p0, Lcom/twelvemonkeys/io/enc/Base64Decoder;->a:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    :cond_6
    sget-object v4, Lcom/twelvemonkeys/io/enc/Base64Decoder;->c:[B

    iget-object v6, p0, Lcom/twelvemonkeys/io/enc/Base64Decoder;->a:[B

    aget-byte v6, v6, v0

    and-int/lit16 v6, v6, 0xff

    aget-byte v4, v4, v6

    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_0

    :cond_7
    move v4, v3

    :goto_0
    sget-object v6, Lcom/twelvemonkeys/io/enc/Base64Decoder;->c:[B

    iget-object p0, p0, Lcom/twelvemonkeys/io/enc/Base64Decoder;->a:[B

    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v6, v7

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    aget-byte p0, v6, p0

    move v8, v3

    move v3, p0

    move p0, v8

    :goto_1
    if-eq p3, v0, :cond_a

    if-eq p3, v1, :cond_9

    if-eq p3, p1, :cond_8

    goto :goto_2

    :cond_8
    shl-int/lit8 p3, v3, 0x2

    and-int/lit16 p3, p3, 0xfc

    ushr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v1

    or-int/2addr p3, v0

    int-to-byte p3, p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shl-int/lit8 p1, v7, 0x4

    and-int/lit16 p1, p1, 0xf0

    ushr-int/lit8 p3, p0, 0x2

    and-int/lit8 p3, p3, 0xf

    or-int/2addr p1, p3

    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shl-int/lit8 p0, p0, 0x6

    and-int/lit16 p0, p0, 0xc0

    and-int/lit8 p1, v4, 0x3f

    or-int/2addr p0, p1

    int-to-byte p0, p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_9
    shl-int/lit8 p3, v3, 0x2

    and-int/lit16 p3, p3, 0xfc

    ushr-int/lit8 v2, v7, 0x4

    and-int/2addr v1, v2

    or-int/2addr p3, v1

    int-to-byte p3, p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shl-int/lit8 p1, v7, 0x4

    and-int/lit16 p1, p1, 0xf0

    ushr-int/2addr p0, v0

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, p1

    int-to-byte p0, p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_a
    shl-int/lit8 p0, v3, 0x2

    and-int/lit16 p0, p0, 0xfc

    ushr-int/lit8 p1, v7, 0x4

    and-int/2addr p1, v1

    or-int/2addr p0, p1

    int-to-byte p0, p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_2
    return v5

    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BASE64Decoder: Not enough bytes for an atom."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
