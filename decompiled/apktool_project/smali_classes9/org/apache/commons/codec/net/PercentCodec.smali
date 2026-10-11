.class public Lorg/apache/commons/codec/net/PercentCodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# static fields
.field public static final e:B = 0x25t


# instance fields
.field public final a:Ljava/util/BitSet;

.field public final b:Z

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->a:Ljava/util/BitSet;

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->c:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->d:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->b:Z

    const/16 v0, 0x25

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/net/PercentCodec;->g(B)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->a:Ljava/util/BitSet;

    const v0, 0x7fffffff

    .line 8
    iput v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->c:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->d:I

    .line 9
    iput-boolean p2, p0, Lorg/apache/commons/codec/net/PercentCodec;->b:Z

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->h([B)V

    return-void
.end method


# virtual methods
.method public final a(B)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->i(B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->f(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/codec/net/PercentCodec;->a:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final b([B)Z
    .locals 4

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-byte v2, p1, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final c([BIZ)[B
    .locals 5

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-byte v2, p1, v1

    if-eqz p3, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/commons/codec/net/PercentCodec;->a(B)Z

    move-result v3

    if-eqz v3, :cond_1

    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    int-to-byte v2, v2

    :cond_0
    shr-int/lit8 v3, v2, 0x4

    invoke-static {v3}, Lcom/sunia/HTREnginev2/izn;->b(I)C

    move-result v3

    invoke-static {v2}, Lcom/sunia/HTREnginev2/izn;->b(I)C

    move-result v2

    const/16 v4, 0x25

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    iget-boolean v3, p0, Lorg/apache/commons/codec/net/PercentCodec;->b:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/16 v2, 0x2b

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public final d([B)I
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_1

    aget-byte v1, p1, p0

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 13
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->decode([B)[B

    move-result-object p0

    return-object p0

    .line 14
    :cond_1
    new-instance p0, Lorg/apache/commons/codec/DecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Objects of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be Percent decoded"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public decode([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->d([B)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 3
    aget-byte v2, p1, v1

    const/16 v3, 0x25

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 4
    :try_start_0
    aget-byte v2, p1, v1

    invoke-static {v2}, Lcom/sunia/HTREnginev2/izn;->a(B)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    .line 5
    aget-byte v3, p1, v1

    invoke-static {v3}, Lcom/sunia/HTREnginev2/izn;->a(B)I

    move-result v3

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    int-to-byte v2, v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Lorg/apache/commons/codec/DecoderException;

    const-string v0, "Invalid percent decoding: "

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 8
    :cond_1
    iget-boolean v3, p0, Lorg/apache/commons/codec/net/PercentCodec;->b:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2

    const/16 v2, 0x20

    .line 9
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public final e([B)I
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v3, p1, v1

    invoke-virtual {p0, v3}, Lorg/apache/commons/codec/net/PercentCodec;->a(B)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->encode([B)[B

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Lorg/apache/commons/codec/EncoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Objects of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be Percent encoded"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encode([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->e([B)I

    move-result v0

    .line 2
    array-length v1, p1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 3
    iget-boolean v2, p0, Lorg/apache/commons/codec/net/PercentCodec;->b:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->b([B)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    return-object p1

    .line 4
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/codec/net/PercentCodec;->c([BIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public final f(B)Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->c:I

    if-lt p1, v0, :cond_0

    iget p0, p0, Lorg/apache/commons/codec/net/PercentCodec;->d:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g(B)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->a:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    iget v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->c:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Lorg/apache/commons/codec/net/PercentCodec;->c:I

    :cond_0
    iget v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->d:I

    if-le p1, v0, :cond_1

    iput p1, p0, Lorg/apache/commons/codec/net/PercentCodec;->d:I

    :cond_1
    return-void
.end method

.method public final h([B)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/codec/net/PercentCodec;->g(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x25

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->g(B)V

    return-void
.end method

.method public final i(B)Z
    .locals 0

    if-ltz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
