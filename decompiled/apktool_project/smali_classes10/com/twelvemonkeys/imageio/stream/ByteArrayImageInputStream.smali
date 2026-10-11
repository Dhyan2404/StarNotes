.class public final Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;
.super Ljavax/imageio/stream/ImageInputStreamImpl;
.source "SourceFile"


# instance fields
.field public final e:[B

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;-><init>()V

    const-string v0, "data"

    .line 3
    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;->e:[B

    .line 4
    array-length v0, p1

    const-string v1, "offset"

    const/4 v2, 0x0

    invoke-static {v2, v0, p2, v1}, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;->e0(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;->f:I

    .line 5
    array-length p1, p1

    sub-int/2addr p1, p2

    const-string p2, "length"

    invoke-static {v2, p1, p3, p2}, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;->e0(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;->g:I

    return-void
.end method

.method public static e0(IIILjava/lang/String;)I
    .locals 2

    if-lt p2, p0, :cond_0

    if-gt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p3, p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s out of range [%d, %d]: %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public isCached()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCachedMemory()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public length()J
    .locals 2

    iget p0, p0, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;->g:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget v2, p0, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;->g:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v2, 0x0

    .line 2
    iput v2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    .line 3
    iget-object v2, p0, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;->e:[B

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    iput-wide v3, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    long-to-int v0, v0

    iget p0, p0, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;->f:I

    add-int/2addr v0, p0

    aget-byte p0, v2, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget v2, p0, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;->g:I

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    int-to-long v2, v2

    sub-long/2addr v2, v0

    int-to-long v0, p3

    .line 5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    .line 7
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;->e:[B

    iget-wide v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    long-to-int v1, v1

    iget v2, p0, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;->f:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return p3
.end method
