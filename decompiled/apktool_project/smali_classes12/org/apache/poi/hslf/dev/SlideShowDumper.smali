.class public final Lorg/apache/poi/hslf/dev/SlideShowDumper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x186a0

.field private static MAX_RECORD_LENGTH:I = 0x186a0


# instance fields
.field private basicEscher:Z

.field private ddfEscher:Z

.field private docstream:[B

.field private out:Ljava/io/PrintStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/io/PrintStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PowerPoint Document"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->docstream:[B

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iput-object p2, p0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Usage: SlideShowDumper [-escher|-basicescher] <filename>"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    aget-object v1, p0, v3

    :cond_1
    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v1, Lorg/apache/poi/hslf/dev/SlideShowDumper;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2, v4}, Lorg/apache/poi/hslf/dev/SlideShowDumper;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/io/PrintStream;)V

    array-length v4, p0

    if-le v4, v3, :cond_3

    aget-object p0, p0, v0

    const-string v0, "-escher"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, v3}, Lorg/apache/poi/hslf/dev/SlideShowDumper;->setDDFEscher(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Lorg/apache/poi/hslf/dev/SlideShowDumper;->setBasicEscher(Z)V

    :cond_3
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/hslf/dev/SlideShowDumper;->printDump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public printDump()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->docstream:[B

    array-length v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lorg/apache/poi/hslf/dev/SlideShowDumper;->walkTree(III)V

    return-void
.end method

.method public setBasicEscher(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->basicEscher:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->ddfEscher:Z

    return-void
.end method

.method public setDDFEscher(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->ddfEscher:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->basicEscher:Z

    return-void
.end method

.method public walkEscherBasic(III)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    const-string v4, "%1$s"

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%1$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v5, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->docstream:[B

    add-int/lit8 v6, p2, 0x2

    invoke-static {v5, v6}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v5

    int-to-long v5, v5

    iget-object v7, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->docstream:[B

    add-int/lit8 v8, p2, 0x4

    invoke-static {v7, v8}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "At position %2$d ($2$04x): type is %3$d (%3$04x), len is %4$d (%4$04x)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "%n"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v15, ""

    filled-new-array {v15, v12, v13, v14}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v9, v12}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    long-to-int v9, v5

    int-to-short v9, v9

    invoke-static {v9}, Lorg/apache/poi/hslf/record/RecordTypes;->forTypeID(I)Lorg/apache/poi/hslf/record/RecordTypes;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%2$s%n"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v12, "That\'s an Escher Record: "

    filled-new-array {v12, v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v11, v4, v9}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const-wide/32 v9, 0xf00d

    cmp-long v4, v5, v9

    if-nez v4, :cond_2

    iget-object v9, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->docstream:[B

    const-wide/16 v10, 0x0

    iget-object v12, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    add-int/lit8 v13, p2, 0x8

    const/16 v14, 0x8

    invoke-static/range {v9 .. v14}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;II)V

    iget-object v15, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->docstream:[B

    const-wide/16 v16, 0x0

    iget-object v4, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    add-int/lit8 v19, p2, 0x14

    const/16 v20, 0x8

    move-object/from16 v18, v4

    invoke-static/range {v15 .. v20}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;II)V

    iget-object v4, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    :cond_2
    iget-object v4, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    const-wide/32 v9, 0xf003

    cmp-long v4, v5, v9

    if-eqz v4, :cond_3

    const-wide/32 v9, 0xf004

    cmp-long v4, v5, v9

    if-nez v4, :cond_4

    :cond_3
    add-int/lit8 v4, v1, 0x3

    add-int/lit8 v5, p2, 0x8

    long-to-int v6, v7

    invoke-virtual {v0, v4, v5, v6}, Lorg/apache/poi/hslf/dev/SlideShowDumper;->walkEscherBasic(III)V

    :cond_4
    int-to-long v4, v2

    cmp-long v4, v7, v4

    if-gez v4, :cond_5

    long-to-int v4, v7

    add-int v5, p2, v4

    add-int/2addr v5, v3

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v5, v2}, Lorg/apache/poi/hslf/dev/SlideShowDumper;->walkEscherBasic(III)V

    :cond_5
    return-void
.end method

.method public walkEscherDDF(III)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    const-string v5, "%1$s"

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%1$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    iget-object v6, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->docstream:[B

    sget v7, Lorg/apache/poi/hslf/dev/SlideShowDumper;->MAX_RECORD_LENGTH:I

    invoke-static {v6, v2, v3, v7}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object v6

    new-instance v7, Lorg/apache/poi/hslf/record/HSLFEscherRecordFactory;

    invoke-direct {v7}, Lorg/apache/poi/hslf/record/HSLFEscherRecordFactory;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v9

    invoke-virtual {v9, v6, v8, v7}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    const/4 v10, 0x2

    invoke-static {v6, v10}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v10

    int-to-long v10, v10

    const/4 v12, 0x4

    invoke-static {v6, v12}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v9}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "At position %2$d (%2$04x): type is %3$d (%3$04x), len is %4$d (%4$04x) (%5$d) - record claims %6$d"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v15, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "%n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v16, ""

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-wide/16 v22, 0x8

    add-long v24, v12, v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v15, v4, v3, v8}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/16 v3, 0x8

    if-eq v14, v3, :cond_3

    move-object v3, v6

    move-object v8, v7

    int-to-long v6, v14

    cmp-long v6, v6, v24

    if-eqz v6, :cond_2

    iget-object v6, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "** Atom length of %2d (%3d) doesn\'t match record length of %4d%n"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v16, v3

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v17, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v15, v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v4, v7, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    :cond_2
    move-object/from16 v16, v3

    move-object/from16 v17, v8

    goto :goto_1

    :cond_3
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    :goto_1
    invoke-virtual {v9}, Lorg/apache/poi/ddf/EscherRecord;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v4, v6, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "%2$s%n"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v4, v7, v3}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    instance-of v3, v9, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v3, :cond_4

    add-int/lit8 v3, v1, 0x3

    add-int/lit8 v6, v2, 0x8

    long-to-int v7, v12

    invoke-virtual {v0, v3, v6, v7}, Lorg/apache/poi/hslf/dev/SlideShowDumper;->walkEscherDDF(III)V

    :cond_4
    const-wide/32 v6, 0xf00b

    cmp-long v3, v10, v6

    if-nez v3, :cond_5

    long-to-int v3, v12

    const/16 v6, 0x8

    add-int/lit8 v14, v3, 0x8

    goto :goto_2

    :cond_5
    const/16 v6, 0x8

    :goto_2
    const-wide/32 v18, 0xf00d

    cmp-long v3, v10, v18

    if-nez v3, :cond_7

    long-to-int v3, v12

    add-int/lit8 v14, v3, 0x8

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    const/4 v7, 0x0

    invoke-virtual {v9, v3, v7, v6}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    instance-of v3, v9, Lorg/apache/poi/ddf/EscherTextboxRecord;

    if-nez v3, :cond_6

    iget-object v3, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "** Really a msofbtClientTextbox !"

    filled-new-array {v8, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_6
    const/16 v3, 0x8

    goto :goto_3

    :cond_7
    move v3, v6

    :goto_3
    if-ne v14, v3, :cond_8

    cmp-long v3, v12, v22

    if-lez v3, :cond_8

    add-int/lit8 v3, v1, 0x3

    add-int/lit8 v4, v2, 0x8

    long-to-int v5, v12

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/poi/hslf/dev/SlideShowDumper;->walkEscherDDF(III)V

    :cond_8
    int-to-long v2, v2

    add-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    const/16 v3, 0x8

    add-int/2addr v2, v3

    move/from16 v4, p3

    int-to-long v4, v4

    sub-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v4

    sub-int/2addr v4, v3

    if-lt v4, v3, :cond_9

    invoke-virtual {v0, v1, v2, v4}, Lorg/apache/poi/hslf/dev/SlideShowDumper;->walkEscherDDF(III)V

    :cond_9
    return-void
.end method

.method public walkTree(III)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int v2, p2, p3

    if-nez v1, :cond_0

    const-string v3, "%1$s"

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%1$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move/from16 v4, p2

    :goto_1
    add-int/lit8 v5, v2, -0x8

    if-gt v4, v5, :cond_6

    iget-object v5, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->docstream:[B

    add-int/lit8 v6, v4, 0x2

    invoke-static {v5, v6}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v5

    int-to-long v5, v5

    iget-object v7, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->docstream:[B

    add-int/lit8 v8, v4, 0x4

    invoke-static {v7, v8}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v7

    iget-object v9, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->docstream:[B

    aget-byte v9, v9, v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "At position %2$d (%2$04x): type is %3$d (%3$04x), len is %4$d (%4$04x)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "%n"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move/from16 p3, v2

    const-string v2, ""

    filled-new-array {v2, v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v10, v13}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    long-to-int v10, v5

    int-to-short v10, v10

    invoke-static {v10}, Lorg/apache/poi/hslf/record/RecordTypes;->forTypeID(I)Lorg/apache/poi/hslf/record/RecordTypes;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v4, v4, 0x8

    iget-object v11, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "That\'s a %2$s%n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v2, v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v12, v13, v2}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    and-int/lit8 v2, v9, 0xf

    const-wide/16 v10, 0x138b

    cmp-long v10, v5, v10

    const-wide/16 v11, 0x0

    const/16 v13, 0xf

    if-nez v10, :cond_1

    int-to-long v9, v9

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    move v2, v13

    :cond_1
    iget-object v9, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->out:Ljava/io/PrintStream;

    invoke-virtual {v9}, Ljava/io/PrintStream;->println()V

    cmp-long v9, v5, v11

    if-eqz v9, :cond_5

    if-ne v2, v13, :cond_5

    const-wide/16 v9, 0x40b

    cmp-long v2, v5, v9

    if-eqz v2, :cond_3

    const-wide/16 v9, 0x40c

    cmp-long v2, v5, v9

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v1, 0x2

    long-to-int v5, v7

    invoke-virtual {v0, v2, v4, v5}, Lorg/apache/poi/hslf/dev/SlideShowDumper;->walkTree(III)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-boolean v2, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->ddfEscher:Z

    if-eqz v2, :cond_4

    add-int/lit8 v2, v1, 0x3

    add-int/lit8 v5, v4, 0x8

    long-to-int v6, v7

    add-int/lit8 v6, v6, -0x8

    invoke-virtual {v0, v2, v5, v6}, Lorg/apache/poi/hslf/dev/SlideShowDumper;->walkEscherDDF(III)V

    goto :goto_3

    :cond_4
    iget-boolean v2, v0, Lorg/apache/poi/hslf/dev/SlideShowDumper;->basicEscher:Z

    if-eqz v2, :cond_5

    add-int/lit8 v2, v1, 0x3

    add-int/lit8 v5, v4, 0x8

    long-to-int v6, v7

    add-int/lit8 v6, v6, -0x8

    invoke-virtual {v0, v2, v5, v6}, Lorg/apache/poi/hslf/dev/SlideShowDumper;->walkEscherBasic(III)V

    :cond_5
    :goto_3
    long-to-int v2, v7

    add-int/2addr v4, v2

    move/from16 v2, p3

    goto/16 :goto_1

    :cond_6
    return-void
.end method
