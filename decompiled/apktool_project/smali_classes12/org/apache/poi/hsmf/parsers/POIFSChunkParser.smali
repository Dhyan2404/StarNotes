.class public final Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->lambda$processChunks$0(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Integer;)Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->lambda$readMultiValue$1(Ljava/lang/Integer;)Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$processChunks$0(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;->getChunks()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$readMultiValue$1(Ljava/lang/Integer;)Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;
    .locals 1

    new-instance p0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;-><init>(Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$1;)V

    return-object p0
.end method

.method public static parse(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)[Lorg/apache/poi/hsmf/datatypes/ChunkGroup;
    .locals 7

    .line 2
    new-instance v0, Lorg/apache/poi/hsmf/datatypes/Chunks;

    invoke-direct {v0}, Lorg/apache/poi/hsmf/datatypes/Chunks;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 6
    instance-of v4, v3, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v4, :cond_0

    .line 7
    check-cast v3, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 8
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__attach_version1.0_#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    new-instance v4, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 10
    :goto_1
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "__nameid_version1.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    new-instance v4, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;

    invoke-direct {v4}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;-><init>()V

    .line 12
    :cond_2
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "__recip_version1.0_#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 13
    new-instance v4, Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hsmf/datatypes/RecipientChunks;-><init>(Ljava/lang/String;)V

    :cond_3
    if-eqz v4, :cond_0

    .line 14
    invoke-static {v3, v4}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->processChunks(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/hsmf/datatypes/ChunkGroup;)V

    .line 15
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {p0, v0}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->processChunks(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/hsmf/datatypes/ChunkGroup;)V

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/ChunkGroup;

    .line 18
    invoke-interface {v0}, Lorg/apache/poi/hsmf/datatypes/ChunkGroup;->chunksComplete()V

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    new-array p0, p0, [Lorg/apache/poi/hsmf/datatypes/ChunkGroup;

    .line 19
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hsmf/datatypes/ChunkGroup;

    return-object p0
.end method

.method public static parse(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)[Lorg/apache/poi/hsmf/datatypes/ChunkGroup;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->parse(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)[Lorg/apache/poi/hsmf/datatypes/ChunkGroup;

    move-result-object p0

    return-object p0
.end method

.method private static process(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/hsmf/datatypes/ChunkGroup;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            "Lorg/apache/poi/hsmf/datatypes/ChunkGroup;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    const-string v3, "__properties_version1.0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->readPropertiesChunk(Lorg/apache/poi/hsmf/datatypes/ChunkGroup;Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p0, v1, p2}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->readPrimitiveChunk(Lorg/apache/poi/poifs/filesystem/Entry;[ZLjava/util/Map;)Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    instance-of v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-object v3, p0

    check-cast v3, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-direct {v0, v3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2, v0}, Lorg/apache/poi/hsmf/datatypes/Chunk;->readValue(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    sget-object v3, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v3, "Error reading from part {}"

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v3, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_2
    aget-boolean p0, v1, v2

    if-nez p0, :cond_3

    invoke-interface {p1, p2}, Lorg/apache/poi/hsmf/datatypes/ChunkGroup;->record(Lorg/apache/poi/hsmf/datatypes/Chunk;)V

    :cond_3
    return-void
.end method

.method private static processChunks(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/hsmf/datatypes/ChunkGroup;)V
    .locals 4

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/Entry;

    instance-of v2, v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/hsmf/datatypes/Types;->DIRECTORY:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    invoke-virtual {v3}, Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;->asFileEnding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-static {v1, p1, v0}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->process(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/hsmf/datatypes/ChunkGroup;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/dkk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dkk;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/ekk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ekk;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/fkk;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/fkk;-><init>(Lorg/apache/poi/hsmf/datatypes/ChunkGroup;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static readMultiValue(Ljava/lang/String;Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;Ljava/util/Map;)Lorg/apache/poi/hsmf/datatypes/Chunk;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            "Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;",
            ">;)",
            "Lorg/apache/poi/hsmf/datatypes/Chunk;"
        }
    .end annotation

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    goto :goto_0

    :catch_0
    sget-object p1, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string v0, "Can\'t read multi value idx from entry {}"

    invoke-interface {p3}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/ckk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ckk;-><init>()V

    invoke-interface {p5, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;

    cmp-long p5, v3, v1

    if-nez p5, :cond_1

    new-instance p0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$1;

    sget-object p3, Lorg/apache/poi/hsmf/datatypes/Types;->BINARY:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    invoke-direct {p0, p2, p3, p1}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$1;-><init>(ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;)V

    return-object p0

    :cond_1
    sget-object p5, Lorg/apache/poi/hsmf/datatypes/Types;->BINARY:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne p4, p5, :cond_2

    new-instance p3, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    invoke-direct {p3, p0, p2, p4}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;-><init>(Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    goto :goto_2

    :cond_2
    sget-object p5, Lorg/apache/poi/hsmf/datatypes/Types;->ASCII_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-eq p4, p5, :cond_4

    sget-object p5, Lorg/apache/poi/hsmf/datatypes/Types;->UNICODE_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne p4, p5, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Unsupported multivalued prop type for entry {}"

    invoke-interface {p3}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_1
    new-instance p3, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    invoke-direct {p3, p0, p2, p4}, Lorg/apache/poi/hsmf/datatypes/StringChunk;-><init>(Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    :goto_2
    long-to-int p0, v3

    invoke-virtual {p1, p0, p3}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;->addChunk(ILorg/apache/poi/hsmf/datatypes/Chunk;)V

    return-object p3
.end method

.method private static readPrimitiveChunk(Lorg/apache/poi/poifs/filesystem/Entry;[ZLjava/util/Map;)Lorg/apache/poi/hsmf/datatypes/Chunk;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            "[Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hsmf/parsers/POIFSChunkParser$MultiChunk;",
            ">;)",
            "Lorg/apache/poi/hsmf/datatypes/Chunk;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-lt v2, v3, :cond_d

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "Olk10SideProps"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "Olk10SideProps_"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v7, 0x8

    sub-int/2addr v2, v7

    if-gt v1, v2, :cond_c

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {v6, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x10

    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    and-int/lit16 v7, v1, 0x1000

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    move v7, v3

    :goto_0
    aput-boolean v7, p1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, -0x1001

    invoke-static {v1}, Lorg/apache/poi/hsmf/datatypes/Types;->getById(I)Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-static {v1}, Lorg/apache/poi/hsmf/datatypes/Types;->createCustom(I)Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    :cond_3
    move-object v9, v7

    :goto_1
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->MESSAGE_SUBMISSION_ID:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v2, v1, :cond_4

    new-instance p0, Lorg/apache/poi/hsmf/datatypes/MessageSubmissionChunk;

    invoke-direct {p0, v5, v2, v9}, Lorg/apache/poi/hsmf/datatypes/MessageSubmissionChunk;-><init>(Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    return-object p0

    :cond_4
    sget-object v1, Lorg/apache/poi/hsmf/datatypes/Types;->BINARY:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, v1, :cond_6

    sget-object v7, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->ATTACH_DATA:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v7, v7, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v2, v7, :cond_6

    new-instance p1, Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;

    invoke-direct {p1, v5, v2, v9}, Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;-><init>(Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    instance-of p2, p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz p2, :cond_5

    check-cast p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {p1, p0}, Lorg/apache/poi/hsmf/datatypes/ByteChunkDeferred;->readValue(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V

    :cond_5
    return-object p1

    :cond_6
    aget-boolean p1, p1, v3

    if-eqz p1, :cond_7

    move v7, v2

    move-object v8, p0

    move-object v10, p2

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->readMultiValue(Ljava/lang/String;Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;Ljava/util/Map;)Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p1, Lorg/apache/poi/hsmf/datatypes/Types;->DIRECTORY:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, p1, :cond_8

    instance-of p1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz p1, :cond_8

    new-instance p1, Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

    check-cast p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-direct {p1, p0, v5, v2, v9}, Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    return-object p1

    :cond_8
    if-ne v9, v1, :cond_9

    new-instance p0, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    invoke-direct {p0, v5, v2, v9}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;-><init>(Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    return-object p0

    :cond_9
    sget-object p0, Lorg/apache/poi/hsmf/datatypes/Types;->ASCII_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-eq v9, p0, :cond_b

    sget-object p0, Lorg/apache/poi/hsmf/datatypes/Types;->UNICODE_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, p0, :cond_a

    goto :goto_2

    :cond_a
    sget-object p0, Lorg/apache/poi/hsmf/parsers/POIFSChunkParser;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "UNSUPPORTED PROP TYPE {}"

    invoke-interface {p0, p1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v4

    :cond_b
    :goto_2
    new-instance p0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    invoke-direct {p0, v5, v2, v9}, Lorg/apache/poi/hsmf/datatypes/StringChunk;-><init>(Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    return-object p0

    :catch_0
    return-object v4

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid chunk name "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_3
    return-object v4
.end method

.method private static readPropertiesChunk(Lorg/apache/poi/hsmf/datatypes/ChunkGroup;Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/hsmf/datatypes/Chunk;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/Entry;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/Entry;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/Entry;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;-><init>(Lorg/apache/poi/hsmf/datatypes/ChunkGroup;Z)V

    return-object v0

    :cond_1
    new-instance p1, Lorg/apache/poi/hsmf/datatypes/StoragePropertiesChunk;

    invoke-direct {p1, p0}, Lorg/apache/poi/hsmf/datatypes/StoragePropertiesChunk;-><init>(Lorg/apache/poi/hsmf/datatypes/ChunkGroup;)V

    return-object p1
.end method
