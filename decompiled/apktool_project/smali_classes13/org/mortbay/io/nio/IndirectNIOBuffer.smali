.class public Lorg/mortbay/io/nio/IndirectNIOBuffer;
.super Lorg/mortbay/io/ByteArrayBuffer;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/io/nio/NIOBuffer;


# instance fields
.field protected _buf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(IZ)V

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget-object p1, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    iget-object p1, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 6
    :goto_0
    invoke-direct {p0, p2, v0}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(IZ)V

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    iput-object p1, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 10
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 11
    iget-object p1, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/io/ByteArrayBuffer;->_bytes:[B

    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public isDirect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
