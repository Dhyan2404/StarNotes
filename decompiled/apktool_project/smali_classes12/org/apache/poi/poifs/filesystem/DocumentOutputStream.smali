.class public final Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private _buffer:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

.field private _closed:Z

.field private final _document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

.field private _document_size:I

.field private final _limit:J

.field private final _property:Lorg/apache/poi/poifs/property/DocumentProperty;

.field private _stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

.field private _stream_output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->createDocument(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->getDocument(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocument;J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSDocument;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document_size:I

    .line 6
    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_closed:Z

    .line 7
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    .line 8
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->free()V

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 11
    iput-wide p2, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_limit:J

    return-void
.end method

.method private checkBufferSize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->size()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method private static createDocument(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([B)V

    invoke-interface {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot open internal directory storage, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not a Directory Node"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getDocument(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    check-cast p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open internal document storage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not a Document Node"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->replaceContents(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream_output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document_size:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/DocumentProperty;->updateSize(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->getStartBlock()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_closed:Z

    return-void
.end method

.method public size()J
    .locals 4

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document_size:I

    int-to-long v0, v0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    if-nez p0, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->size()I

    move-result p0

    int-to-long v2, p0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_closed:Z

    if-nez v0, :cond_4

    .line 3
    iget-wide v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_limit:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->size()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_limit:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "tried to write too much data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->write([BII)V

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->checkBufferSize()V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    if-nez v0, :cond_3

    .line 9
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream_output:Ljava/io/OutputStream;

    .line 11
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream_output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 12
    iget p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document_size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document_size:I

    :goto_1
    return-void

    .line 13
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "cannot perform requested operation on a closed stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
