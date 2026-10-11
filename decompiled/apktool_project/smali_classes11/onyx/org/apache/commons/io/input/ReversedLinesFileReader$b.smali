.class public final Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:[B

.field public c:[B

.field public d:I

.field public final synthetic e:Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;


# direct methods
.method public constructor <init>(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;JI[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->e:Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p2, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->a:J

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 4
    array-length v1, p5

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    add-int/2addr v1, p4

    .line 5
    new-array v1, v1, [B

    iput-object v1, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->b:[B

    const-wide/16 v2, 0x1

    sub-long v2, p2, v2

    .line 6
    invoke-static {p1}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;->j(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, p2, v4

    if-lez p2, :cond_2

    .line 7
    invoke-static {p1}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;->w(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p2

    invoke-interface {p2, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 8
    invoke-static {p1}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;->w(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    invoke-static {v1, v0, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-ne p1, p4, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Count of requested bytes and actually read bytes don\'t match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-eqz p5, :cond_3

    .line 10
    array-length p1, p5

    invoke-static {p5, v0, v1, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :cond_3
    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->d:I

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->c:[B

    return-void
.end method

.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;JI[BLonyx/org/apache/commons/io/input/ReversedLinesFileReader$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;-><init>(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;JI[B)V

    return-void
.end method

.method public static synthetic a(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;)Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->f()Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget v0, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->d:I

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->b:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->c:[B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->c:[B

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->d:I

    return-void
.end method

.method public final d([BI)I
    .locals 9

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->e:Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;->H(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;)[[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v6, v5

    :goto_1
    if-ltz v4, :cond_1

    add-int v7, p2, v4

    array-length v8, v3

    sub-int/2addr v8, v5

    sub-int/2addr v7, v8

    if-ltz v7, :cond_0

    aget-byte v7, p1, v7

    aget-byte v8, v3, v4

    if-ne v7, v8, :cond_0

    move v7, v5

    goto :goto_2

    :cond_0
    move v7, v1

    :goto_2
    and-int/2addr v6, v7

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    array-length p0, v3

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final e()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->a:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->d:I

    :cond_1
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-le v2, v3, :cond_5

    if-nez v0, :cond_2

    iget-object v3, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->e:Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v3}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;->I(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->c()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->b:[B

    invoke-virtual {p0, v3, v2}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->d([BI)I

    move-result v3

    if-lez v3, :cond_4

    add-int/lit8 v5, v2, 0x1

    iget v6, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->d:I

    sub-int/2addr v6, v5

    add-int/2addr v6, v1

    if-ltz v6, :cond_3

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->b:[B

    add-int/2addr v6, v5

    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->e:Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v6}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;->M(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sub-int/2addr v2, v3

    iput v2, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->d:I

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected negative line length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v3, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->e:Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v3}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;->e0(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->c()V

    :cond_5
    :goto_1
    move-object v5, v4

    :goto_2
    if-eqz v0, :cond_6

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->c:[B

    if-eqz v0, :cond_6

    new-instance v5, Ljava/lang/String;

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->e:Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v1}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;->M(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v4, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->c:[B

    :cond_6
    return-object v5
.end method

.method public final f()Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->d:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->a:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    new-instance v4, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;

    iget-object v6, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->e:Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;

    sub-long v7, v0, v2

    invoke-static {v6}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;->j(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v9

    iget-object v10, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->c:[B

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;-><init>(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;JI[B)V

    return-object v4

    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->c:[B

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected leftover of the last block: leftOverOfThisFilePart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->c:[B

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->e:Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;->M(Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$b;->d:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
