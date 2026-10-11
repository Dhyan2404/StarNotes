.class public final Lorg/apache/poi/hdgf/dev/VSDDumper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final tabs:Ljava/lang/String; = "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"


# instance fields
.field private final hdgf:Lorg/apache/poi/hdgf/HDGFDiagram;

.field private final ps:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;Lorg/apache/poi/hdgf/HDGFDiagram;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->ps:Ljava/io/PrintStream;

    iput-object p2, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->hdgf:Lorg/apache/poi/hdgf/HDGFDiagram;

    return-void
.end method

.method private dumpChunk(Lorg/apache/poi/hdgf/chunks/Chunk;I)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/hdgf/chunks/Chunk;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lorg/apache/poi/hdgf/chunks/Chunk;->_getContents()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v2, v0

    const-string v0, "Length is"

    invoke-direct {p0, v0, v2, v3, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;JI)V

    invoke-virtual {p1}, Lorg/apache/poi/hdgf/chunks/Chunk;->getOnDiskSize()I

    move-result v0

    int-to-long v2, v0

    const-string v0, "OD Size is"

    invoke-direct {p0, v0, v2, v3, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;JI)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hdgf/chunks/Chunk;->getTrailer()Lorg/apache/poi/hdgf/chunks/ChunkTrailer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hdgf/chunks/Chunk;->getSeparator()Lorg/apache/poi/hdgf/chunks/ChunkSeparator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "T / S is"

    invoke-direct {p0, v2, v0, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lorg/apache/poi/hdgf/chunks/Chunk;->getCommands()[Lorg/apache/poi/hdgf/chunks/Chunk$Command;

    move-result-object p1

    array-length v0, p1

    int-to-long v2, v0

    const-string v0, "Nbr of commands"

    invoke-direct {p0, v0, v2, v3, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;JI)V

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/apache/poi/hdgf/chunks/Chunk$Command;->getDefinition()Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/poi/hdgf/chunks/Chunk$Command;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpStream(Lorg/apache/poi/hdgf/streams/Stream;I)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/hdgf/streams/Stream;->getPointer()Lorg/apache/poi/hdgf/pointers/Pointer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->getOffset()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "Stream at"

    invoke-direct {p0, v3, v1, v2, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;JI)V

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->getType()I

    move-result v1

    int-to-long v1, v1

    add-int/lit8 p2, p2, 0x1

    const-string v3, "Type is"

    invoke-direct {p0, v3, v1, v2, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;JI)V

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->getFormat()S

    move-result v1

    int-to-long v1, v1

    const-string v3, "Format is"

    invoke-direct {p0, v3, v1, v2, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;JI)V

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->getLength()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "Length is"

    invoke-direct {p0, v3, v1, v2, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;JI)V

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->destinationCompressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hdgf/streams/Stream;->_getContentsLength()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "DC.Length is"

    invoke-direct {p0, v3, v1, v2, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;JI)V

    :cond_0
    const-string v1, "Compressed is"

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->destinationCompressed()Z

    move-result v0

    invoke-direct {p0, v1, v0, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;ZI)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stream is"

    invoke-direct {p0, v1, v0, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lorg/apache/poi/hdgf/streams/Stream;->_getStore()Lorg/apache/poi/hdgf/streams/StreamStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/streams/StreamStore;->_getContents()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "[]"

    :goto_0
    const-string v1, "First few bytes are"

    invoke-direct {p0, v1, v0, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;Ljava/lang/String;I)V

    instance-of v0, p1, Lorg/apache/poi/hdgf/streams/PointerContainingStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hdgf/streams/PointerContainingStream;

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/streams/PointerContainingStream;->getPointedToStreams()[Lorg/apache/poi/hdgf/streams/Stream;

    move-result-object v0

    array-length v2, v0

    int-to-long v2, v2

    const-string v4, "Nbr of children"

    invoke-direct {p0, v4, v2, v3, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;JI)V

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-direct {p0, v4, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpStream(Lorg/apache/poi/hdgf/streams/Stream;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/hdgf/streams/ChunkStream;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/poi/hdgf/streams/ChunkStream;

    invoke-virtual {p1}, Lorg/apache/poi/hdgf/streams/ChunkStream;->getChunks()[Lorg/apache/poi/hdgf/chunks/Chunk;

    move-result-object p1

    array-length v0, p1

    int-to-long v2, v0

    const-string v0, "Nbr of chunks"

    invoke-direct {p0, v0, v2, v3, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;JI)V

    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpChunk(Lorg/apache/poi/hdgf/chunks/Chunk;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private dumpVal(Ljava/lang/String;JI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->ps:Ljava/io/PrintStream;

    const-string v1, "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 2
    iget-object p4, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->ps:Ljava/io/PrintStream;

    invoke-virtual {p4, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->ps:Ljava/io/PrintStream;

    const/16 p4, 0x9

    invoke-virtual {p1, p4}, Ljava/io/PrintStream;->print(C)V

    .line 4
    iget-object p1, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->ps:Ljava/io/PrintStream;

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintStream;->print(J)V

    .line 5
    iget-object p1, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->ps:Ljava/io/PrintStream;

    const-string p4, " (0x"

    invoke-virtual {p1, p4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->ps:Ljava/io/PrintStream;

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->ps:Ljava/io/PrintStream;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpVal(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 9
    iget-object v0, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->ps:Ljava/io/PrintStream;

    const-string v1, "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 10
    iget-object p3, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->ps:Ljava/io/PrintStream;

    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->ps:Ljava/io/PrintStream;

    const/16 p3, 0x9

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->print(C)V

    .line 12
    iget-object p0, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->ps:Ljava/io/PrintStream;

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpVal(Ljava/lang/String;ZI)V
    .locals 0

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Use:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  VSDDumper <filename>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v1, Lorg/apache/poi/hdgf/HDGFDiagram;

    invoke-direct {v1, v0}, Lorg/apache/poi/hdgf/HDGFDiagram;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opened "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v2

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/poi/hdgf/dev/VSDDumper;

    invoke-direct {p0, v3, v1}, Lorg/apache/poi/hdgf/dev/VSDDumper;-><init>(Ljava/io/PrintStream;Lorg/apache/poi/hdgf/HDGFDiagram;)V

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lorg/apache/poi/POIDocument;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

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
    invoke-virtual {v1}, Lorg/apache/poi/POIDocument;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method


# virtual methods
.method public dumpFile()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->hdgf:Lorg/apache/poi/hdgf/HDGFDiagram;

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/HDGFDiagram;->getDocumentSize()J

    move-result-wide v0

    const-string v2, "Claimed document size"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpVal(Ljava/lang/String;JI)V

    iget-object v0, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->ps:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    iget-object v0, p0, Lorg/apache/poi/hdgf/dev/VSDDumper;->hdgf:Lorg/apache/poi/hdgf/HDGFDiagram;

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/HDGFDiagram;->getTrailerStream()Lorg/apache/poi/hdgf/streams/TrailerStream;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lorg/apache/poi/hdgf/dev/VSDDumper;->dumpStream(Lorg/apache/poi/hdgf/streams/Stream;I)V

    return-void
.end method
