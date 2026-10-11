.class public final Lcom/twelvemonkeys/io/SubStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public e:J

.field public f:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p2, p0, Lcom/twelvemonkeys/io/SubStream;->e:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/twelvemonkeys/io/SubStream;->e:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Lcom/twelvemonkeys/io/SubStream;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/io/SubStream;->skip(J)J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(J)J
    .locals 2

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SubStream;->e:J

    cmp-long p0, v0, p1

    if-gez p0, :cond_0

    const-wide/16 p0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public mark(I)V
    .locals 0

    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    iput p1, p0, Lcom/twelvemonkeys/io/SubStream;->f:I

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/twelvemonkeys/io/SubStream;->e:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/twelvemonkeys/io/SubStream;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result p0

    return p0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/twelvemonkeys/io/SubStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-wide v0, p0, Lcom/twelvemonkeys/io/SubStream;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    int-to-long v0, p3

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/io/SubStream;->f(J)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-wide p2, p0, Lcom/twelvemonkeys/io/SubStream;->e:J

    int-to-long v0, p1

    sub-long v2, p2, v0

    :goto_0
    iput-wide v2, p0, Lcom/twelvemonkeys/io/SubStream;->e:J

    return p1
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SubStream;->e:J

    iget v2, p0, Lcom/twelvemonkeys/io/SubStream;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twelvemonkeys/io/SubStream;->e:J

    return-void
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/SubStream;->f(J)J

    move-result-wide p1

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SubStream;->e:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/twelvemonkeys/io/SubStream;->e:J

    return-wide p1
.end method
