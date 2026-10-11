.class public Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field protected final buffer:Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;

.field protected final bufferSize:I

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x2000

    .line 1
    invoke-direct {p0, p1, v0}, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const-string v0, "inputStream"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    if-lez p2, :cond_0

    .line 3
    new-instance p1, Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-direct {p1, p2}, Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;-><init>(I)V

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;

    .line 4
    iput p2, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->bufferSize:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->e:Z

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal bufferSize: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->e:Z

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;->clear()V

    return-void
.end method

.method public fillBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;->getSpace()I

    move-result v0

    invoke-static {v0}, Lonyx/org/apache/commons/io/IOUtils;->byteArray(I)[B

    move-result-object v1

    :cond_1
    :goto_0
    if-lez v0, :cond_3

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->e:Z

    return-void

    :cond_2
    if-lez v2, :cond_1

    iget-object v4, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v4, v1, v3, v2}, Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;->add([BII)V

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public haveBytes(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;->getCurrentNumberOfBytes()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->fillBuffer()V

    :cond_0
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;->hasBytes()Z

    move-result p0

    return p0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->haveBytes(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;->read()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "targetBuffer"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_3

    if-ltz p3, :cond_2

    .line 4
    invoke-virtual {p0, p3}, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->haveBytes(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 5
    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;->getCurrentNumberOfBytes()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 6
    iget-object v2, p0, Lonyx/org/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v2}, Lonyx/org/apache/commons/io/input/buffer/CircularByteBuffer;->read()B

    move-result v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p3

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offset must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
