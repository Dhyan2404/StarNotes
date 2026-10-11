.class public Lorg/apache/commons/compress/compressors/deflate64/a$g;
.super Lorg/apache/commons/compress/compressors/deflate64/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/deflate64/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final a:J

.field public b:J

.field public final synthetic c:Lorg/apache/commons/compress/compressors/deflate64/a;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/a;J)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->c:Lorg/apache/commons/compress/compressors/deflate64/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/deflate64/a$c;-><init>(Lorg/apache/commons/compress/compressors/deflate64/a$a;)V

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/a;JLorg/apache/commons/compress/compressors/deflate64/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/deflate64/a$g;-><init>(Lorg/apache/commons/compress/compressors/deflate64/a;J)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->a:J

    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->b:J

    sub-long/2addr v0, v2

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->c:Lorg/apache/commons/compress/compressors/deflate64/a;

    invoke-static {p0}, Lorg/apache/commons/compress/compressors/deflate64/a;->w(Lorg/apache/commons/compress/compressors/deflate64/a;)Lorg/apache/commons/compress/utils/BitInputStream;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/BitInputStream;->bitsAvailable()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public b()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->b:J

    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->a:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->a:J

    iget-wide v3, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->b:J

    sub-long/2addr v1, v3

    int-to-long v3, p3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    :goto_0
    if-ge v0, p3, :cond_3

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->c:Lorg/apache/commons/compress/compressors/deflate64/a;

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/deflate64/a;->w(Lorg/apache/commons/compress/compressors/deflate64/a;)Lorg/apache/commons/compress/utils/BitInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->c:Lorg/apache/commons/compress/compressors/deflate64/a;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/deflate64/a;->H(Lorg/apache/commons/compress/compressors/deflate64/a;I)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    add-int v2, p2, v0

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->c:Lorg/apache/commons/compress/compressors/deflate64/a;

    invoke-static {v3}, Lorg/apache/commons/compress/compressors/deflate64/a;->I(Lorg/apache/commons/compress/compressors/deflate64/a;)Lorg/apache/commons/compress/compressors/deflate64/a$d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/compressors/deflate64/a$d;->a(B)B

    move-result v1

    aput-byte v1, p1, v2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->c:Lorg/apache/commons/compress/compressors/deflate64/a;

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/deflate64/a;->M(Lorg/apache/commons/compress/compressors/deflate64/a;)Ljava/io/InputStream;

    move-result-object v1

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->c:Lorg/apache/commons/compress/compressors/deflate64/a;

    invoke-static {v3}, Lorg/apache/commons/compress/compressors/deflate64/a;->I(Lorg/apache/commons/compress/compressors/deflate64/a;)Lorg/apache/commons/compress/compressors/deflate64/a$d;

    move-result-object v3

    invoke-virtual {v3, p1, v2, v1}, Lorg/apache/commons/compress/compressors/deflate64/a$d;->b([BII)V

    :goto_1
    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->b:J

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "Truncated Deflate64 Stream"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return p3
.end method

.method public d()Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->b:J

    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/a$g;->a:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    sget-object p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->STORED:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    :goto_0
    return-object p0
.end method
