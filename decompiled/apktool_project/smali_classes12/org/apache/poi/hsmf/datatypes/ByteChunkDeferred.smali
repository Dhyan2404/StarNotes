.class public Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;
.super Lorg/apache/poi/hsmf/datatypes/ByteChunk;
.source "SourceFile"


# instance fields
.field private node:Lorg/apache/poi/poifs/filesystem/DocumentNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;-><init>(Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    return-void
.end method

.method private createDocumentInputStream()Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;->node:Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;->node:Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getValue()[B
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;->node:Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->getValue()[B

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;->createDocumentInputStream()Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;->node:Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getSize()I

    move-result p0

    invoke-static {v0, p0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public readValue(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;->node:Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->readValue(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method public readValue(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;->node:Lorg/apache/poi/poifs/filesystem/DocumentNode;

    return-void
.end method

.method public setValue([B)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;->node:Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-super {p0, p1}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->setValue([B)V

    return-void
.end method

.method public writeValue(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;->node:Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->writeValue(Ljava/io/OutputStream;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;->createDocumentInputStream()Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_2

    :try_start_2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
.end method
