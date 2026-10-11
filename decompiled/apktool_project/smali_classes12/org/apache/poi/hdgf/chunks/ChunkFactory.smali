.class public final Lorg/apache/poi/hdgf/chunks/ChunkFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0xf4240

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static MAX_RECORD_LENGTH:I = 0xf4240

.field private static final chunkTableName:Ljava/lang/String; = "/org/apache/poi/hdgf/chunks_parse_cmds.tbl"


# instance fields
.field private final chunkCommandDefinitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hdgf/chunks/ChunkFactory;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->chunkCommandDefinitions:Ljava/util/Map;

    iput p1, p0, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->version:I

    invoke-direct {p0}, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->processChunkParseCommands()V

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private processChunkParseCommands()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lorg/apache/poi/hdgf/chunks/ChunkFactory;

    const-string v1, "/org/apache/poi/hdgf/chunks_parse_cmds.tbl"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "# \t"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "^start [0-9]+$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, "end"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, " "

    invoke-direct {v7, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "\uffff"

    invoke-virtual {v7, v9}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;

    invoke-direct {v9, v6, v8, v7}, Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    new-array v4, v5, [Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;

    iget-object v4, p0, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->chunkCommandDefinitions:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting start xxx, found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2

    :catchall_3
    move-exception p0

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find HDGF chunk definition on the classpath - /org/apache/poi/hdgf/chunks_parse_cmds.tbl"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_4
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    throw v1
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public createChunk([BI)Lorg/apache/poi/hdgf/chunks/Chunk;
    .locals 7

    iget v0, p0, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->version:I

    invoke-static {v0, p1, p2}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->createChunkHeader(I[BI)Lorg/apache/poi/hdgf/chunks/ChunkHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getLength()I

    move-result v1

    if-ltz v1, :cond_7

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getLength()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getSizeInBytes()I

    move-result v2

    add-int/2addr v1, v2

    array-length v2, p1

    if-le v1, v2, :cond_1

    sget-object v1, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getLength()I

    move-result v2

    invoke-static {v2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Header called for {} bytes, but that would take us past the end of the data!"

    invoke-interface {v1, v3, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v1, p1

    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getSizeInBytes()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->setLength(I)V

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->hasTrailer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v0, v2}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->setLength(I)V

    add-int/lit8 v1, v1, -0x8

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->hasSeparator()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->setLength(I)V

    add-int/lit8 v1, v1, -0x4

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->hasTrailer()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    array-length v2, p1

    add-int/lit8 v2, v2, -0x8

    if-gt v1, v2, :cond_2

    new-instance v2, Lorg/apache/poi/hdgf/chunks/ChunkTrailer;

    invoke-direct {v2, p1, v1}, Lorg/apache/poi/hdgf/chunks/ChunkTrailer;-><init>([BI)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-static {v5}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Header claims a length to {} there\'s then no space for the trailer in the data ({})"

    invoke-interface {v2, v6, v4, v5}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    move-object v2, v3

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->hasSeparator()Z

    move-result v4

    if-eqz v4, :cond_5

    array-length v4, p1

    add-int/lit8 v4, v4, -0x4

    if-gt v1, v4, :cond_4

    new-instance v3, Lorg/apache/poi/hdgf/chunks/ChunkSeparator;

    invoke-direct {v3, p1, v1}, Lorg/apache/poi/hdgf/chunks/ChunkSeparator;-><init>([BI)V

    goto :goto_1

    :cond_4
    sget-object v4, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v4

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v5, p1

    invoke-static {v5}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Header claims a length to {} there\'s then no space for the separator in the data ({})"

    invoke-interface {v4, v6, v1, v5}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getSizeInBytes()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getLength()I

    move-result v1

    sget v4, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->MAX_RECORD_LENGTH:I

    invoke-static {p1, p2, v1, v4}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    new-instance p2, Lorg/apache/poi/hdgf/chunks/Chunk;

    invoke-direct {p2, v0, v2, v3, p1}, Lorg/apache/poi/hdgf/chunks/Chunk;-><init>(Lorg/apache/poi/hdgf/chunks/ChunkHeader;Lorg/apache/poi/hdgf/chunks/ChunkTrailer;Lorg/apache/poi/hdgf/chunks/ChunkSeparator;[B)V

    iget-object p0, p0, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->chunkCommandDefinitions:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    new-array p0, p0, [Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;

    :cond_6
    invoke-virtual {p2, p0}, Lorg/apache/poi/hdgf/chunks/Chunk;->setCommandDefinitions([Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;)V

    invoke-virtual {p2}, Lorg/apache/poi/hdgf/chunks/Chunk;->processCommands()V

    return-object p2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Found a chunk with a negative length, which isn\'t allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hdgf/chunks/ChunkFactory;->version:I

    return p0
.end method
