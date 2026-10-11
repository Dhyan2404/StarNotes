.class public final Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/POIOLE2TextExtractor;


# instance fields
.field private doCloseFilesystem:Z

.field private hdgf:Lorg/apache/poi/hdgf/HDGFDiagram;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hdgf/HDGFDiagram;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;->doCloseFilesystem:Z

    .line 3
    iput-object p1, p0, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;->hdgf:Lorg/apache/poi/hdgf/HDGFDiagram;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/apache/poi/hdgf/HDGFDiagram;

    invoke-direct {v0, p1}, Lorg/apache/poi/hdgf/HDGFDiagram;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;-><init>(Lorg/apache/poi/hdgf/HDGFDiagram;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method private findText(Lorg/apache/poi/hdgf/streams/Stream;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hdgf/streams/Stream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lorg/apache/poi/hdgf/streams/PointerContainingStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hdgf/streams/PointerContainingStream;

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/streams/PointerContainingStream;->getPointedToStreams()[Lorg/apache/poi/hdgf/streams/Stream;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-direct {p0, v4, p2}, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;->findText(Lorg/apache/poi/hdgf/streams/Stream;Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lorg/apache/poi/hdgf/streams/ChunkStream;

    if-eqz p0, :cond_2

    check-cast p1, Lorg/apache/poi/hdgf/streams/ChunkStream;

    invoke-virtual {p1}, Lorg/apache/poi/hdgf/streams/ChunkStream;->getChunks()[Lorg/apache/poi/hdgf/chunks/Chunk;

    move-result-object p0

    array-length p1, p0

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_2

    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hdgf/chunks/Chunk;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "Text"

    invoke-virtual {v2}, Lorg/apache/poi/hdgf/chunks/Chunk;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hdgf/chunks/Chunk;->getCommands()[Lorg/apache/poi/hdgf/chunks/Chunk$Command;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hdgf/chunks/Chunk;->getCommands()[Lorg/apache/poi/hdgf/chunks/Chunk$Command;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hdgf/chunks/Chunk$Command;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hdgf/chunks/Chunk$Command;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getAllText()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;->hdgf:Lorg/apache/poi/hdgf/HDGFDiagram;

    invoke-virtual {v1}, Lorg/apache/poi/hdgf/HDGFDiagram;->getTopLevelStreams()[Lorg/apache/poi/hdgf/streams/Stream;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-direct {p0, v5, v0}, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;->findText(Lorg/apache/poi/hdgf/streams/Stream;Ljava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array p0, v3, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;->getDocument()Lorg/apache/poi/hdgf/HDGFDiagram;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Lorg/apache/poi/POIDocument;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;->getDocument()Lorg/apache/poi/hdgf/HDGFDiagram;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/hdgf/HDGFDiagram;
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;->hdgf:Lorg/apache/poi/hdgf/HDGFDiagram;

    return-object p0
.end method

.method public bridge synthetic getFilesystem()Ljava/io/Closeable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;->getFilesystem()Lorg/apache/poi/hdgf/HDGFDiagram;

    move-result-object p0

    return-object p0
.end method

.method public getFilesystem()Lorg/apache/poi/hdgf/HDGFDiagram;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;->hdgf:Lorg/apache/poi/hdgf/HDGFDiagram;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;->getAllText()[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;->doCloseFilesystem:Z

    return p0
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;->doCloseFilesystem:Z

    return-void
.end method
