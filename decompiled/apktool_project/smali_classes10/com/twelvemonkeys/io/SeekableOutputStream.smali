.class public abstract Lcom/twelvemonkeys/io/SeekableOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/io/Seekable;


# instance fields
.field public e:J

.field public f:J

.field public g:Z

.field protected markedPositions:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->markedPositions:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final checkOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean p0, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->g:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableOutputStream;->checkOpen()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->g:Z

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableOutputStream;->closeImpl()V

    return-void
.end method

.method public abstract closeImpl()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->f:J

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/io/SeekableOutputStream;->flushBefore(J)V

    return-void
.end method

.method public final flushBefore(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->f:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableOutputStream;->getStreamPosition()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableOutputStream;->checkOpen()V

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/SeekableOutputStream;->flushBeforeImpl(J)V

    iput-wide p1, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->f:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "position > getStreamPosition()!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "position < flushedPosition!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract flushBeforeImpl(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getFlushedPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableOutputStream;->checkOpen()V

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->f:J

    return-wide v0
.end method

.method public final getStreamPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableOutputStream;->checkOpen()V

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->e:J

    return-wide v0
.end method

.method public final mark()V
    .locals 3

    iget-object v0, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->markedPositions:Ljava/util/Stack;

    iget-wide v1, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableOutputStream;->checkOpen()V

    iget-object v0, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->markedPositions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->markedPositions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->f:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/io/SeekableOutputStream;->seek(J)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Previous marked position has been discarded!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final seek(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableOutputStream;->checkOpen()V

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->f:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/SeekableOutputStream;->seekImpl(J)V

    iput-wide p1, p0, Lcom/twelvemonkeys/io/SeekableOutputStream;->e:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "position < flushedPosition!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract seekImpl(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
