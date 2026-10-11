.class public final Lorg/apache/poi/hdgf/streams/ChunkStream;
.super Lorg/apache/poi/hdgf/streams/Stream;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final chunkFactory:Lorg/apache/poi/hdgf/chunks/ChunkFactory;

.field private chunks:[Lorg/apache/poi/hdgf/chunks/Chunk;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hdgf/streams/ChunkStream;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hdgf/streams/ChunkStream;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hdgf/pointers/Pointer;Lorg/apache/poi/hdgf/streams/StreamStore;Lorg/apache/poi/hdgf/chunks/ChunkFactory;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hdgf/streams/Stream;-><init>(Lorg/apache/poi/hdgf/pointers/Pointer;Lorg/apache/poi/hdgf/streams/StreamStore;)V

    iput-object p3, p0, Lorg/apache/poi/hdgf/streams/ChunkStream;->chunkFactory:Lorg/apache/poi/hdgf/chunks/ChunkFactory;

    invoke-virtual {p2}, Lorg/apache/poi/hdgf/streams/StreamStore;->copyBlockHeaderToContents()V

    return-void
.end method


# virtual methods
.method public findChunks()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/streams/Stream;->getPointer()Lorg/apache/poi/hdgf/pointers/Pointer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hdgf/pointers/Pointer;->getOffset()I

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/streams/Stream;->getStore()Lorg/apache/poi/hdgf/streams/StreamStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hdgf/streams/StreamStore;->getContents()[B

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/apache/poi/hdgf/streams/ChunkStream;->chunkFactory:Lorg/apache/poi/hdgf/chunks/ChunkFactory;

    invoke-virtual {v4}, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->getVersion()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getHeaderSize(I)I

    move-result v4

    add-int v5, v3, v4

    array-length v6, v1

    if-gt v5, v6, :cond_0

    iget-object v4, p0, Lorg/apache/poi/hdgf/streams/ChunkStream;->chunkFactory:Lorg/apache/poi/hdgf/chunks/ChunkFactory;

    invoke-virtual {v4, v1, v3}, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->createChunk([BI)Lorg/apache/poi/hdgf/chunks/Chunk;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lorg/apache/poi/hdgf/chunks/Chunk;->getOnDiskSize()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    sget-object v5, Lorg/apache/poi/hdgf/streams/ChunkStream;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v5}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v5

    const-string v6, "Needed {} bytes to create the next chunk header, but only found {} bytes, ignoring rest of data"

    invoke-static {v4}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v7, v1

    sub-int/2addr v7, v3

    invoke-static {v7}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5, v6, v4, v7}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lorg/apache/poi/hdgf/streams/ChunkStream;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v4, "Failed to create chunk at {}, ignoring rest of data."

    invoke-static {v3}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-array v1, v2, [Lorg/apache/poi/hdgf/chunks/Chunk;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hdgf/chunks/Chunk;

    iput-object v0, p0, Lorg/apache/poi/hdgf/streams/ChunkStream;->chunks:[Lorg/apache/poi/hdgf/chunks/Chunk;

    return-void
.end method

.method public getChunks()[Lorg/apache/poi/hdgf/chunks/Chunk;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hdgf/streams/ChunkStream;->chunks:[Lorg/apache/poi/hdgf/chunks/Chunk;

    return-object p0
.end method
