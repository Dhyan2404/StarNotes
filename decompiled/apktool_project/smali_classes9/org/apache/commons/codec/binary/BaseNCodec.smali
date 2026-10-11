.class public abstract Lorg/apache/commons/codec/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/binary/BaseNCodec$a;
    }
.end annotation


# static fields
.field protected static final DECODING_POLICY_DEFAULT:Lorg/apache/commons/codec/CodecPolicy;

.field protected static final MASK_8BITS:I = 0xff

.field public static final MIME_CHUNK_SIZE:I = 0x4c

.field protected static final PAD_DEFAULT:B = 0x3dt

.field public static final PEM_CHUNK_SIZE:I = 0x40

.field public static final e:I = -0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x2000

.field public static final h:I = 0x7ffffff7

.field public static final i:[B


# instance fields
.field protected final PAD:B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lorg/apache/commons/codec/CodecPolicy;

.field protected final lineLength:I

.field protected final pad:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/codec/CodecPolicy;->LENIENT:Lorg/apache/commons/codec/CodecPolicy;

    sput-object v0, Lorg/apache/commons/codec/binary/BaseNCodec;->DECODING_POLICY_DEFAULT:Lorg/apache/commons/codec/CodecPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/BaseNCodec;->i:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(IIII)V
    .locals 6

    const/16 v5, 0x3d

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIB)V

    return-void
.end method

.method public constructor <init>(IIIIB)V
    .locals 7

    .line 2
    sget-object v6, Lorg/apache/commons/codec/binary/BaseNCodec;->DECODING_POLICY_DEFAULT:Lorg/apache/commons/codec/CodecPolicy;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIBLorg/apache/commons/codec/CodecPolicy;)V

    return-void
.end method

.method public constructor <init>(IIIIBLorg/apache/commons/codec/CodecPolicy;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3d

    .line 4
    iput-byte v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->PAD:B

    .line 5
    iput p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->a:I

    .line 6
    iput p2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->b:I

    const/4 p1, 0x0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    div-int/2addr p3, p2

    mul-int p1, p3, p2

    :cond_1
    iput p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    .line 8
    iput p4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->c:I

    .line 9
    iput-byte p5, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    const-string p1, "codecPolicy"

    .line 10
    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p6, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->d:Lorg/apache/commons/codec/CodecPolicy;

    return-void
.end method

.method public static b(II)I
    .locals 1

    const/high16 v0, -0x80000000

    add-int/2addr p0, v0

    add-int/2addr p1, v0

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static c(I)I
    .locals 6

    if-ltz p0, :cond_1

    const v0, 0x7ffffff7

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0

    :cond_1
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to allocate array size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getChunkSeparator()[B
    .locals 1

    sget-object v0, Lorg/apache/commons/codec/binary/BaseNCodec;->i:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static h(Lorg/apache/commons/codec/binary/BaseNCodec$a;I)[B
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec$a;->c:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->b(II)I

    move-result v1

    if-gez v1, :cond_0

    move v0, p1

    :cond_0
    const v1, 0x7ffffff7

    invoke-static {v0, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->b(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->c(I)I

    move-result v0

    :cond_1
    new-array p1, v0, [B

    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec$a;->c:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec$a;->c:[B

    return-object p1
.end method

.method public static isWhiteSpace(B)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Lorg/apache/commons/codec/binary/BaseNCodec$a;)I
    .locals 0

    iget-object p0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$a;->c:[B

    if-eqz p0, :cond_0

    iget p0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$a;->d:I

    iget p1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$a;->e:I

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsAlphabetOrPad([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p1, v2

    iget-byte v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public abstract d([BIILorg/apache/commons/codec/binary/BaseNCodec$a;)V
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 7
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 10
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    new-instance p0, Lorg/apache/commons/codec/DecoderException;

    const-string p1, "Parameter supplied to Base-N decode is not a byte[] or a String"

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 0

    .line 12
    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public decode([B)[B
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/binary/BaseNCodec$a;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/BaseNCodec$a;-><init>()V

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->d([BIILorg/apache/commons/codec/binary/BaseNCodec$a;)V

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->d([BIILorg/apache/commons/codec/binary/BaseNCodec$a;)V

    .line 5
    iget p1, v0, Lorg/apache/commons/codec/binary/BaseNCodec$a;->d:I

    new-array v1, p1, [B

    .line 6
    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->g([BIILorg/apache/commons/codec/binary/BaseNCodec$a;)I

    return-object v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public abstract e([BIILorg/apache/commons/codec/binary/BaseNCodec$a;)V
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 9
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    new-instance p0, Lorg/apache/commons/codec/EncoderException;

    const-string p1, "Parameter supplied to Base-N encode is not a byte[]"

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encode([B)[B
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BII)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public encode([BII)[B
    .locals 1

    if-eqz p1, :cond_1

    .line 3
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/binary/BaseNCodec$a;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/BaseNCodec$a;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->e([BIILorg/apache/commons/codec/binary/BaseNCodec$a;)V

    const/4 p3, -0x1

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->e([BIILorg/apache/commons/codec/binary/BaseNCodec$a;)V

    .line 7
    iget p1, v0, Lorg/apache/commons/codec/binary/BaseNCodec$a;->d:I

    iget p2, v0, Lorg/apache/commons/codec/binary/BaseNCodec$a;->e:I

    sub-int/2addr p1, p2

    new-array p2, p1, [B

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p0, p2, p3, p1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->g([BIILorg/apache/commons/codec/binary/BaseNCodec$a;)I

    return-object p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$a;)[B
    .locals 2

    iget-object v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$a;->c:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [B

    iput-object p0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$a;->c:[B

    const/4 p0, 0x0

    iput p0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$a;->d:I

    iput p0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$a;->e:I

    goto :goto_0

    :cond_0
    iget p0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$a;->d:I

    add-int v1, p0, p1

    array-length v0, v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    add-int/2addr p0, p1

    invoke-static {p2, p0}, Lorg/apache/commons/codec/binary/BaseNCodec;->h(Lorg/apache/commons/codec/binary/BaseNCodec$a;I)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$a;->c:[B

    return-object p0
.end method

.method public f(Lorg/apache/commons/codec/binary/BaseNCodec$a;)Z
    .locals 0

    iget-object p0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$a;->c:[B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g([BIILorg/apache/commons/codec/binary/BaseNCodec$a;)I
    .locals 1

    iget-object v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$a;->c:[B

    if-eqz v0, :cond_1

    invoke-virtual {p0, p4}, Lorg/apache/commons/codec/binary/BaseNCodec;->a(Lorg/apache/commons/codec/binary/BaseNCodec$a;)I

    move-result p0

    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    iget-object p3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$a;->c:[B

    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$a;->e:I

    invoke-static {p3, v0, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$a;->e:I

    add-int/2addr p1, p0

    iput p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$a;->e:I

    iget p2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$a;->d:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$a;->c:[B

    :cond_0
    return p0

    :cond_1
    iget-boolean p0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$a;->f:Z

    if-eqz p0, :cond_2

    const/4 p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCodecPolicy()Lorg/apache/commons/codec/CodecPolicy;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->d:Lorg/apache/commons/codec/CodecPolicy;

    return-object p0
.end method

.method public getDefaultBufferSize()I
    .locals 0

    const/16 p0, 0x2000

    return p0
.end method

.method public getEncodedLength([B)J
    .locals 6

    array-length p1, p1

    iget v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->a:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    int-to-long v0, p1

    iget p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->b:I

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iget p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez p1, :cond_0

    int-to-long v2, p1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    int-to-long v4, p1

    div-long/2addr v2, v4

    iget p0, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->c:I

    int-to-long p0, p0

    mul-long/2addr v2, p0

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public abstract isInAlphabet(B)Z
.end method

.method public isInAlphabet(Ljava/lang/String;)Z
    .locals 1

    .line 4
    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet([BZ)Z

    move-result p0

    return p0
.end method

.method public isInAlphabet([BZ)Z
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-byte v3, p1, v2

    .line 2
    invoke-virtual {p0, v3}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_0

    iget-byte v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    if-eq v3, v4, :cond_1

    .line 3
    invoke-static {v3}, Lorg/apache/commons/codec/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isStrictDecoding()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->d:Lorg/apache/commons/codec/CodecPolicy;

    sget-object v0, Lorg/apache/commons/codec/CodecPolicy;->STRICT:Lorg/apache/commons/codec/CodecPolicy;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
