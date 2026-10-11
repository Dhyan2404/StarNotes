.class public final Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[B>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->a:Ljava/util/Deque;

    return-void
.end method

.method public static synthetic a([B)I
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->l([B)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->k()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->p([B)V

    return-void
.end method

.method public static synthetic d(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;)I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->h()I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->s(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->q(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;)V

    return-void
.end method

.method public static synthetic l([B)I
    .locals 0

    array-length p0, p0

    return p0
.end method

.method public static n(II)I
    .locals 3

    const/16 v0, 0xf

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x4

    if-ge p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x13

    if-ge p1, v2, :cond_1

    add-int/lit8 v0, p1, -0x4

    :cond_1
    :goto_0
    shl-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static t(ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit16 p0, p0, -0xff

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public g(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)[B
    .locals 3

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getOffset()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getLength()I

    move-result p1

    add-int/2addr v2, p1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->a:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->c:I

    return p0
.end method

.method public i(I)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->b:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->d:Z

    return p0
.end method

.method public m()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->o()I

    move-result v0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final o()I
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->a:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/us;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/us;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->sum()I

    move-result p0

    return p0
.end method

.method public final p([B)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->a:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->a:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->p([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->b:I

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getLength()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->c:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final s(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;
    .locals 3

    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;-><init>()V

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->a:Ljava/util/Deque;

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->a:Ljava/util/Deque;

    invoke-interface {v1, v2}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->b:I

    iput p0, v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->b:I

    iput p1, v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->c:I

    return-object v0
.end method

.method public u(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->o()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->c:I

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->n(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->t(ILjava/io/OutputStream;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->b:I

    int-to-long v2, v0

    const/4 v0, 0x2

    invoke-static {p1, v2, v3, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Ljava/io/OutputStream;JI)V

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->c:I

    add-int/lit8 v2, v0, -0x4

    if-lt v2, v1, :cond_2

    add-int/lit8 v0, v0, -0x4

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->t(ILjava/io/OutputStream;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$b;->d:Z

    return-void
.end method
