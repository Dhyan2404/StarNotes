.class public Lorg/apache/http/impl/io/ContentLengthOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final e:Lorg/apache/http/io/SessionOutputBuffer;

.field public final f:J

.field public g:J

.field public h:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;J)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-string v0, "Session output buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/io/SessionOutputBuffer;

    iput-object p1, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->e:Lorg/apache/http/io/SessionOutputBuffer;

    const-string p1, "Content length"

    invoke-static {p2, p3, p1}, Lorg/apache/http/util/Args;->notNegative(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->f:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->h:Z

    iget-object p0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->e:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {p0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->e:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {p0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->h:Z

    if-nez v0, :cond_1

    .line 8
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->g:J

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->f:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 9
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->e:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionOutputBuffer;->write(I)V

    .line 10
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->g:J

    :cond_0
    return-void

    .line 11
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attempted write to closed stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ContentLengthOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->h:Z

    if-nez v0, :cond_2

    .line 2
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->g:J

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->f:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    sub-long/2addr v2, v0

    int-to-long v0, p3

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    long-to-int p3, v2

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->e:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    .line 4
    iget-wide p1, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->g:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->g:J

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attempted write to closed stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
