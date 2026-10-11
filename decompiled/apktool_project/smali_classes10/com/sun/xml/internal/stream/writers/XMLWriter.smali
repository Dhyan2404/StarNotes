.class public Lcom/sun/xml/internal/stream/writers/XMLWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final THRESHHOLD_LENGTH:I = 0x1000


# instance fields
.field private buffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

.field private size:I

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/sun/xml/internal/stream/writers/XMLWriter;-><init>(Ljava/io/Writer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 3
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    const/16 v1, 0x3000

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->buffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    .line 4
    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    .line 5
    iput p2, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->size:I

    return-void
.end method

.method private conditionalWrite()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->buffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    iget v1, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->size:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writeBufferedData()V

    :cond_0
    return-void
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeBufferedData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->buffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v3, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v1, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/Writer;->write([CII)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->buffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->clear()V

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

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/writers/XMLWriter;->flush()V

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/xml/internal/stream/writers/XMLWriter;->ensureOpen()V

    invoke-direct {p0}, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writeBufferedData()V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->buffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->clear()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->size:I

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    .line 2
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->buffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->clear()V

    const/16 p1, 0x1000

    .line 3
    iput p1, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->size:I

    return-void
.end method

.method public setWriter(Ljava/io/Writer;I)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    .line 5
    iput p2, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->size:I

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/writers/XMLWriter;->ensureOpen()V

    .line 2
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->buffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(C)V

    .line 3
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/writers/XMLWriter;->conditionalWrite()V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->size:I

    if-le v0, v1, :cond_0

    .line 13
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writeBufferedData()V

    .line 14
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->buffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/writers/XMLWriter;->conditionalWrite()V

    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/xml/internal/stream/writers/XMLWriter;->write([CII)V

    return-void
.end method

.method public write([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/xml/internal/stream/writers/XMLWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/writers/XMLWriter;->ensureOpen()V

    .line 6
    iget v0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->size:I

    if-le p3, v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writeBufferedData()V

    .line 8
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLWriter;->buffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append([CII)V

    .line 10
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/writers/XMLWriter;->conditionalWrite()V

    :goto_0
    return-void
.end method
