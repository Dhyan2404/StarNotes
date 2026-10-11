.class public final Lcom/twelvemonkeys/io/RandomAccessStream$b;
.super Lcom/twelvemonkeys/io/SeekableOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/io/RandomAccessStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final h:Lcom/twelvemonkeys/io/RandomAccessStream;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/io/RandomAccessStream;)V
    .locals 0

    invoke-direct {p0}, Lcom/twelvemonkeys/io/SeekableOutputStream;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/twelvemonkeys/io/RandomAccessStream$b;->h:Lcom/twelvemonkeys/io/RandomAccessStream;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "stream == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public closeImpl()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/RandomAccessStream$b;->h:Lcom/twelvemonkeys/io/RandomAccessStream;

    invoke-interface {p0}, Lcom/twelvemonkeys/io/Seekable;->close()V

    return-void
.end method

.method public flushBeforeImpl(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/RandomAccessStream$b;->h:Lcom/twelvemonkeys/io/RandomAccessStream;

    invoke-interface {p0, p1, p2}, Lcom/twelvemonkeys/io/Seekable;->flushBefore(J)V

    return-void
.end method

.method public isCached()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/RandomAccessStream$b;->h:Lcom/twelvemonkeys/io/RandomAccessStream;

    invoke-interface {p0}, Lcom/twelvemonkeys/io/Seekable;->isCached()Z

    move-result p0

    return p0
.end method

.method public isCachedFile()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/RandomAccessStream$b;->h:Lcom/twelvemonkeys/io/RandomAccessStream;

    invoke-interface {p0}, Lcom/twelvemonkeys/io/Seekable;->isCachedFile()Z

    move-result p0

    return p0
.end method

.method public isCachedMemory()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/RandomAccessStream$b;->h:Lcom/twelvemonkeys/io/RandomAccessStream;

    invoke-interface {p0}, Lcom/twelvemonkeys/io/Seekable;->isCachedMemory()Z

    move-result p0

    return p0
.end method

.method public seekImpl(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/RandomAccessStream$b;->h:Lcom/twelvemonkeys/io/RandomAccessStream;

    invoke-interface {p0, p1, p2}, Lcom/twelvemonkeys/io/Seekable;->seek(J)V

    return-void
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/twelvemonkeys/io/RandomAccessStream$b;->h:Lcom/twelvemonkeys/io/RandomAccessStream;

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/twelvemonkeys/io/RandomAccessStream$b;->h:Lcom/twelvemonkeys/io/RandomAccessStream;

    invoke-interface {p0, p1, p2, p3}, Ljava/io/DataOutput;->write([BII)V

    return-void
.end method
