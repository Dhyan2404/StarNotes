.class public Lonyx/org/apache/commons/io/input/buffer/PeekableInputStream;
.super Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public peek([B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sourceBuffer"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lonyx/org/apache/commons/io/input/buffer/PeekableInputStream;->peek([BII)Z

    move-result p0

    return p0
.end method

.method public peek([BII)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sourceBuffer"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    array-length v0, p1

    iget v1, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->bufferSize:I

    if-gt v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;->getCurrentNumberOfBytes()I

    move-result v0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->fillBuffer()V

    .line 7
    :cond_0
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;->peek([BII)Z

    move-result p0

    return p0

    .line 8
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Peek request size of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes exceeds buffer size of "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->bufferSize:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
