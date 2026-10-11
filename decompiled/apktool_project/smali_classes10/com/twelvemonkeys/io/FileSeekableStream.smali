.class public final Lcom/twelvemonkeys/io/FileSeekableStream;
.super Lcom/twelvemonkeys/io/SeekableInputStream;
.source "SourceFile"


# instance fields
.field public final h:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/io/FileSeekableStream;-><init>(Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/twelvemonkeys/io/FileSeekableStream;->h:Ljava/io/RandomAccessFile;

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

    iget-object v0, p0, Lcom/twelvemonkeys/io/FileSeekableStream;->h:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    :goto_0
    return p0
.end method

.method public closeImpl()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/FileSeekableStream;->h:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public flushBeforeImpl(J)V
    .locals 0

    return-void
.end method

.method public isCached()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCachedFile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCachedMemory()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->checkOpen()V

    .line 2
    iget-object v0, p0, Lcom/twelvemonkeys/io/FileSeekableStream;->h:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    iget-wide v1, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->checkOpen()V

    .line 5
    iget-object v0, p0, Lcom/twelvemonkeys/io/FileSeekableStream;->h:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    .line 6
    iget-wide p2, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    :cond_0
    return p1
.end method

.method public seekImpl(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/FileSeekableStream;->h:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method
