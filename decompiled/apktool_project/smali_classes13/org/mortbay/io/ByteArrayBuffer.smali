.class public Lorg/mortbay/io/ByteArrayBuffer;
.super Lorg/mortbay/io/AbstractBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;
    }
.end annotation


# instance fields
.field protected _bytes:[B


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 14
    new-array v0, p1, [B

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    .line 15
    invoke-virtual {p0, v2}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 17
    invoke-static {p1}, Lorg/mortbay/io/Portable;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 18
    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 19
    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 20
    iput v1, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    .line 21
    iput-object p1, p0, Lorg/mortbay/io/AbstractBuffer;->_string:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 24
    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 25
    iget-object p2, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    array-length p2, p2

    invoke-virtual {p0, p2}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 26
    iput v1, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    .line 27
    iput-object p1, p0, Lorg/mortbay/io/AbstractBuffer;->_string:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 2
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 5
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    add-int/2addr p3, p2

    .line 6
    invoke-virtual {p0, p3}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 7
    invoke-virtual {p0, p2}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 8
    iput p4, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    return-void
.end method

.method public constructor <init>([BIIIZ)V
    .locals 1

    const/4 v0, 0x2

    .line 9
    invoke-direct {p0, v0, p5}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 10
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    add-int/2addr p3, p2

    .line 11
    invoke-virtual {p0, p3}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 12
    invoke-virtual {p0, p2}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 13
    iput p4, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    return-object p0
.end method

.method public capacity()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    array-length p0, p0

    return p0
.end method

.method public compact()V
    .locals 4

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v1

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v2, v3, v1}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "READONLY"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v2, p1, Lorg/mortbay/io/Buffer;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, p1, Lorg/mortbay/io/Buffer$CaseInsensitve;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/mortbay/io/Buffer;

    invoke-virtual {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer;->equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z

    move-result p0

    return p0

    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v4

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget v3, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_4

    instance-of v4, p1, Lorg/mortbay/io/AbstractBuffer;

    if-eqz v4, :cond_4

    check-cast p1, Lorg/mortbay/io/AbstractBuffer;

    iget p1, p1, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz p1, :cond_4

    if-eq v3, p1, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result p1

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v3

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v4

    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-le v4, p1, :cond_6

    iget-object v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v4, v4, v5

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v6

    if-eq v4, v6, :cond_5

    return v1

    :cond_5
    move v4, v5

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v2, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v2, :cond_2

    instance-of v3, p1, Lorg/mortbay/io/AbstractBuffer;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lorg/mortbay/io/AbstractBuffer;

    iget v3, v3, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v2

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v3

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v4

    const/16 v5, 0x7a

    const/16 v6, 0x61

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v4

    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-le v4, v2, :cond_a

    iget-object v4, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v4, v4, v7

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v8

    if-eq v4, v8, :cond_5

    if-gt v6, v4, :cond_3

    if-gt v4, v5, :cond_3

    add-int/lit8 v4, v4, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-byte v4, v4

    :cond_3
    if-gt v6, v8, :cond_4

    if-gt v8, v5, :cond_4

    add-int/lit8 v8, v8, -0x61

    add-int/lit8 v8, v8, 0x41

    int-to-byte v8, v8

    :cond_4
    if-eq v4, v8, :cond_5

    return v1

    :cond_5
    move v4, v7

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result p1

    :goto_1
    add-int/lit8 v7, p1, -0x1

    if-le p1, v2, :cond_a

    iget-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte p1, p1, v7

    add-int/lit8 v3, v3, -0x1

    aget-byte v8, v4, v3

    if-eq p1, v8, :cond_9

    if-gt v6, p1, :cond_7

    if-gt p1, v5, :cond_7

    add-int/lit8 p1, p1, -0x61

    add-int/lit8 p1, p1, 0x41

    int-to-byte p1, p1

    :cond_7
    if-gt v6, v8, :cond_8

    if-gt v8, v5, :cond_8

    add-int/lit8 v8, v8, -0x61

    add-int/lit8 v8, v8, 0x41

    int-to-byte v8, v8

    :cond_8
    if-eq p1, v8, :cond_9

    return v1

    :cond_9
    move p1, v7

    goto :goto_1

    :cond_a
    return v0

    :cond_b
    :goto_2
    return v1
.end method

.method public get()B
    .locals 3

    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    aget-byte p0, v0, v1

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hashGet:I

    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hashPut:I

    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    if-eq v0, v1, :cond_4

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-le v1, v0, :cond_2

    iget-object v1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v1, v1, v2

    const/16 v3, 0x61

    if-gt v3, v1, :cond_1

    const/16 v3, 0x7a

    if-gt v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x61

    add-int/lit8 v1, v1, 0x41

    int-to-byte v1, v1

    :cond_1
    iget v3, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v1

    iput v3, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    move v1, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-nez v0, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    :cond_3
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hashGet:I

    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hashPut:I

    :cond_4
    iget p0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    return p0
.end method

.method public peek(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public peek(I[BII)I
    .locals 3

    add-int v0, p1, p4

    .line 2
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result p4

    sub-int/2addr p4, p1

    if-nez p4, :cond_0

    return v2

    :cond_0
    if-gez p4, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object p0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    return p4
.end method

.method public poke(ILorg/mortbay/io/Buffer;)I
    .locals 6

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    .line 3
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    add-int v2, p1, v1

    .line 4
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p1

    .line 6
    :cond_0
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result p2

    iget-object p0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {v2, p2, p0, p1, v1}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    .line 8
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result p2

    :goto_0
    if-ge v0, v1, :cond_3

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p2, 0x1

    .line 9
    aget-byte p2, v2, p2

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/io/ByteArrayBuffer;->poke(IB)V

    add-int/lit8 v0, v0, 0x1

    move p1, v3

    move p2, v4

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v2

    :goto_1
    if-ge v0, v1, :cond_3

    .line 11
    iget-object v3, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-interface {p2, v2}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v2

    aput-byte v2, v3, p1

    add-int/lit8 v0, v0, 0x1

    move p1, v4

    move v2, v5

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method public poke(I[BII)I
    .locals 2

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    add-int v0, p1, p4

    .line 13
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 14
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->capacity()I

    move-result p4

    sub-int/2addr p4, p1

    .line 15
    :cond_0
    iget-object p0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {p2, p3, p0, p1, p4}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    return p4
.end method

.method public poke(IB)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    aput-byte p2, p0, p1

    return-void
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result v0

    if-le p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result p2

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v0

    const/4 v1, 0x0

    move v3, p2

    move v2, v1

    :cond_2
    if-ge v1, p2, :cond_5

    iget-object v2, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    if-lez v2, :cond_4

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    sub-int/2addr v3, v2

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_5
    :goto_0
    if-gez v2, :cond_6

    if-nez v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    return v1
.end method

.method public space()I
    .locals 1

    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    iget p0, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public wrap([B)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 13
    array-length p1, p1

    invoke-virtual {p0, p1}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "IMMUTABLE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "READONLY"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public wrap([BII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    .line 4
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->clear()V

    .line 5
    invoke-virtual {p0, p2}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    add-int/2addr p2, p3

    .line 6
    invoke-virtual {p0, p2}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "IMMUTABLE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "READONLY"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->clear()V

    return-void
.end method
