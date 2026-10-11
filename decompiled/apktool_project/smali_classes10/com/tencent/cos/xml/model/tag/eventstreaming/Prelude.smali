.class final Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final LENGTH:I = 0x8

.field static final LENGTH_WITH_CRC:I = 0xc


# instance fields
.field private final headersLength:J

.field private final totalLength:I


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;->totalLength:I

    iput-wide p2, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;->headersLength:J

    return-void
.end method

.method private static computePreludeCrc(Ljava/nio/ByteBuffer;)J
    .locals 3

    const/16 v0, 0x8

    new-array v1, v0, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p0, Ljava/util/zip/CRC32;

    invoke-direct {p0}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Ljava/util/zip/Checksum;->update([BII)V

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static decode(Ljava/nio/ByteBuffer;)Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;
    .locals 10

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;->computePreludeCrc(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;->intToUnsignedLong(I)J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;->intToUnsignedLong(I)J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;->intToUnsignedLong(I)J

    move-result-wide v6

    cmp-long p0, v0, v6

    if-nez p0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long p0, v4, v0

    if-ltz p0, :cond_1

    const-wide/32 v6, 0x20000

    cmp-long p0, v4, v6

    if-gtz p0, :cond_1

    sub-long v6, v2, v4

    const-wide/16 v8, 0x10

    sub-long/2addr v6, v8

    cmp-long p0, v6, v0

    if-ltz p0, :cond_0

    const-wide/32 v0, 0x1000000

    cmp-long p0, v6, v0

    if-gtz p0, :cond_0

    new-instance p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;

    invoke-static {v2, v3}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;->toIntExact(J)I

    move-result v0

    invoke-direct {p0, v0, v4, v5}, Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;-><init>(IJ)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal payload size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal headers_length value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prelude checksum failure: expected 0x%x, computed 0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static intToUnsignedLong(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static toIntExact(J)I
    .locals 3

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long p0, v1, p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getHeadersLength()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;->headersLength:J

    return-wide v0
.end method

.method public getTotalLength()I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/Prelude;->totalLength:I

    return p0
.end method
