.class public final Lorg/apache/poi/hslf/dev/PPTXMLDump;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CR:Ljava/lang/String;

.field private static final HEADER_SIZE:I = 0x8

.field private static final PICTURES_ENTRY:Ljava/lang/String; = "Pictures"

.field private static final PICT_HEADER_SIZE:I = 0x19

.field private static final hexval:[B


# instance fields
.field private final docstream:[B

.field private final hexHeader:Z

.field private out:Ljava/io/Writer;

.field private final pictstream:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->CR:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->hexval:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->hexHeader:Z

    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;Z)V

    :try_start_0
    const-string p1, "PowerPoint Document"

    invoke-static {v1, p1}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->readEntry(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->docstream:[B

    const-string p1, "Pictures"

    invoke-static {v1, p1}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->readEntry(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->pictstream:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method private static dump(Ljava/io/Writer;[BIIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const-string v2, "  "

    if-ge v1, p4, :cond_0

    .line 24
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_1
    add-int v3, p2, p3

    if-ge v1, v3, :cond_2

    .line 25
    aget-byte v4, p1, v1

    .line 26
    sget-object v5, Lorg/apache/poi/hslf/dev/PPTXMLDump;->hexval:[B

    and-int/lit16 v6, v4, 0xf0

    shr-int/lit8 v6, v6, 0x4

    aget-byte v6, v5, v6

    int-to-char v6, v6

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(I)V

    and-int/lit8 v4, v4, 0xf

    shr-int/2addr v4, v0

    .line 27
    aget-byte v4, v5, v4

    int-to-char v4, v4

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    const/16 v4, 0x20

    .line 28
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v4, p2

    .line 29
    rem-int/lit8 v5, v5, 0x19

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_1

    .line 30
    sget-object v1, Lorg/apache/poi/hslf/dev/PPTXMLDump;->CR:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v1, v0

    :goto_2
    if-ge v1, p4, :cond_1

    .line 31
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_3

    if-lez p3, :cond_3

    .line 32
    sget-object p1, Lorg/apache/poi/hslf/dev/PPTXMLDump;->CR:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private getPictureType([B)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p0

    const/16 p1, 0x2160

    if-eq p0, p1, :cond_2

    const/16 p1, 0x46a0

    if-eq p0, p1, :cond_1

    const/16 p1, 0x6e00

    if-eq p0, p1, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    :cond_0
    const-string p0, "png"

    goto :goto_0

    :cond_1
    const-string p0, "jpeg"

    goto :goto_0

    :cond_2
    const-string p0, "wmf"

    :goto_0
    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Usage: PPTXMLDump (options) pptfile\nWhere options include:\n    -f     write output to <pptfile>.xml file in the current directory"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v3, p0, v1

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "-f"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lorg/apache/poi/hslf/dev/PPTXMLDump;

    invoke-direct {v5, v4}, Lorg/apache/poi/hslf/dev/PPTXMLDump;-><init>(Ljava/io/File;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dumping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/OutputStreamWriter;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v5, v4}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->dump(Ljava/io/Writer;)V

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/apache/commons/io/output/StringBuilderWriter;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Lorg/apache/commons/io/output/StringBuilderWriter;-><init>(I)V

    invoke-virtual {v5, v3}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->dump(Ljava/io/Writer;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static readEntry(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p0

    :try_start_0
    new-instance p1, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {p0, p1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p0, :cond_2

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
.end method

.method private static write(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Presentation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/poi/hslf/dev/PPTXMLDump;->CR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3
    iget-object p1, p0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->pictstream:[B

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Pictures>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v0}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->pictstream:[B

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->dumpPictures([BI)V

    .line 6
    iget-object p1, p0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</Pictures>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v0}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 7
    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<PowerPointDocument>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v0}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 8
    iget-object p1, p0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->docstream:[B

    if-eqz p1, :cond_1

    .line 9
    array-length v3, p1

    const/4 v4, 0x2

    invoke-virtual {p0, p1, v2, v3, v4}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->dump([BIII)V

    .line 10
    :cond_1
    iget-object p1, p0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</PowerPointDocument>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 11
    iget-object p0, p0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    const-string p1, "</Presentation>"

    invoke-static {p0, p1, v2}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public dump([BIII)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v7, p1

    move/from16 v1, p2

    move/from16 v8, p4

    :goto_0
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x8

    if-gt v1, v2, :cond_3

    if-gez v1, :cond_0

    goto/16 :goto_3

    .line 12
    :cond_0
    invoke-static {v7, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v9

    add-int/lit8 v1, v1, 0x2

    .line 13
    invoke-static {v7, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    .line 14
    invoke-static {v7, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v3

    long-to-int v10, v3

    add-int/lit8 v11, v1, 0x4

    .line 15
    invoke-static {v2}, Lorg/apache/poi/hslf/record/RecordTypes;->forTypeID(I)Lorg/apache/poi/hslf/record/RecordTypes;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    .line 16
    iget-object v1, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " info=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\" type=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\" size=\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\" offset=\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v11, -0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 17
    iget-object v1, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    const-string v2, " header=\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 18
    iget-object v1, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v14

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->dump(Ljava/io/Writer;[BIIIZ)V

    .line 19
    iget-object v1, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    invoke-virtual {v1, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 20
    iget-object v1, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ">"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lorg/apache/poi/hslf/dev/PPTXMLDump;->CR:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v1, 0x1

    add-int/2addr v8, v1

    const/16 v2, 0xf

    and-int/lit8 v3, v9, 0xf

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {p0, v7, v11, v10, v8}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->dump([BIII)V

    goto :goto_2

    .line 22
    :cond_2
    iget-object v1, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    array-length v2, v7

    sub-int/2addr v2, v11

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move v3, v11

    move v5, v8

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->dump(Ljava/io/Writer;[BIIIZ)V

    :goto_2
    add-int/lit8 v8, v8, -0x1

    .line 23
    iget-object v1, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    add-int v1, v11, v10

    goto/16 :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method public dumpPictures([BI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v1, 0x0

    move v2, v1

    move/from16 v1, p2

    :goto_0
    array-length v3, v7

    if-ge v2, v3, :cond_2

    array-length v3, v7

    sub-int/2addr v3, v2

    const/16 v4, 0x19

    if-ge v3, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v2, 0x19

    invoke-static {v7, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    const/4 v3, 0x4

    invoke-static {v9, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    add-int/lit8 v3, v3, -0x11

    if-gez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v4, v3, 0x19

    add-int v14, v2, v4

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<picture size=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\" type=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->getPictureType([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lorg/apache/poi/hslf/dev/PPTXMLDump;->CR:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    add-int/lit8 v6, v1, 0x1

    iget-object v1, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<header>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    iget-object v8, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    const/4 v10, 0x0

    array-length v11, v9

    const/4 v13, 0x1

    move v12, v6

    invoke-static/range {v8 .. v13}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->dump(Ljava/io/Writer;[BIIIZ)V

    iget-object v1, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</header>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    iget-object v1, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<imgdata>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    iget-object v1, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    const/4 v4, 0x0

    const/16 v2, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v9, v6

    move v6, v8

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->dump(Ljava/io/Writer;[BIIIZ)V

    iget-object v1, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</imgdata>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    add-int/lit8 v6, v9, -0x1

    iget-object v1, v0, Lorg/apache/poi/hslf/dev/PPTXMLDump;->out:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</picture>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lorg/apache/poi/hslf/dev/PPTXMLDump;->write(Ljava/io/Writer;Ljava/lang/String;I)V

    add-int/lit8 v1, v6, -0x1

    move v2, v14

    goto/16 :goto_0

    :cond_2
    return-void
.end method
