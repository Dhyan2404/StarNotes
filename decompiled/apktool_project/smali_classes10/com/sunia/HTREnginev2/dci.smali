.class public Lcom/sunia/HTREnginev2/dci;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public e:Ljavax/imageio/stream/ImageInputStream;

.field public final f:Z

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>(Ljavax/imageio/stream/ImageInputStream;)V
    .locals 3

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sunia/HTREnginev2/dci;-><init>(Ljavax/imageio/stream/ImageInputStream;JZ)V

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/stream/ImageInputStream;J)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sunia/HTREnginev2/dci;-><init>(Ljavax/imageio/stream/ImageInputStream;JZ)V

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/stream/ImageInputStream;JZ)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "stream"

    .line 4
    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5
    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "length < 0: %f"

    invoke-static {v0, v1, v2}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/sunia/HTREnginev2/dci;->e:Ljavax/imageio/stream/ImageInputStream;

    .line 7
    iput-wide p2, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    .line 8
    iput-boolean p4, p0, Lcom/sunia/HTREnginev2/dci;->f:Z

    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/dci;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    :cond_0
    return v1
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/dci;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dci;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/dci;->e:Ljavax/imageio/stream/ImageInputStream;

    return-void
.end method

.method public final f(J)J
    .locals 5

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/dci;->f:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    cmp-long p0, v3, p1

    if-gez p0, :cond_0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public mark(I)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/dci;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/dci;->h:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not read stream position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/dci;->f:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    iput-wide v2, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/dci;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->read()I

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

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sunia/HTREnginev2/dci;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/dci;->f:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/dci;->e:Ljavax/imageio/stream/ImageInputStream;

    int-to-long v3, p3

    invoke-virtual {p0, v3, v4}, Lcom/sunia/HTREnginev2/dci;->f(J)J

    move-result-wide v3

    long-to-int p3, v3

    invoke-interface {v0, p1, p2, p3}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result p1

    .line 7
    iget-boolean p2, p0, Lcom/sunia/HTREnginev2/dci;->f:Z

    if-eqz p2, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-wide p2, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    int-to-long v0, p1

    sub-long v1, p2, v0

    :goto_0
    iput-wide v1, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    :cond_2
    return p1
.end method

.method public reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dci;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/dci;->h:J

    sub-long/2addr v0, v2

    iget-object v4, p0, Lcom/sunia/HTREnginev2/dci;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    return-void
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dci;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/dci;->f(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/dci;->g:J

    return-wide p1
.end method
