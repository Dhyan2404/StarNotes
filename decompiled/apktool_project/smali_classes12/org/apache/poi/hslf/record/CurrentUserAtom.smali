.class public Lorg/apache/poi/hslf/record/CurrentUserAtom;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final atomHeader:[B

.field private static final encHeaderToken:[B

.field private static final headerToken:[B


# instance fields
.field private _contents:[B

.field private currentEditOffset:J

.field private docFinalVersion:I

.field private docMajorNo:B

.field private docMinorNo:B

.field private isEncrypted:Z

.field private lastEditUser:Ljava/lang/String;

.field private releaseVersion:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/hslf/record/CurrentUserAtom;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->LOG:Lorg/apache/logging/log4j/Logger;

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/hslf/record/CurrentUserAtom;->atomHeader:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/poi/hslf/record/CurrentUserAtom;->headerToken:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->encHeaderToken:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0xat
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x5ft
        -0x40t
        -0x6ft
        -0x1dt
    .end array-data

    :array_2
    .array-data 1
        -0x21t
        -0x3ct
        -0x2ft
        -0xdt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    const/16 v1, 0x3f4

    .line 3
    iput v1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->docFinalVersion:I

    const/4 v1, 0x3

    .line 4
    iput-byte v1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->docMajorNo:B

    .line 5
    iput-byte v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->docMinorNo:B

    const-wide/16 v1, 0x8

    .line 6
    iput-wide v1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->releaseVersion:J

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->currentEditOffset:J

    const-string v1, "Apache POI"

    .line 8
    iput-object v1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->lastEditUser:Ljava/lang/String;

    .line 9
    iput-boolean v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->isEncrypted:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Current User"

    .line 11
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 12
    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v2

    const/high16 v3, 0x20000

    if-gt v2, v3, :cond_6

    .line 13
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    .line 14
    :try_start_0
    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v1

    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 16
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    array-length v0, v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_4

    const-string v0, "PP40"

    .line 17
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 18
    iget-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 19
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result p1

    add-int/2addr p1, v2

    .line 20
    iget-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    array-length v0, v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 21
    new-instance p0, Lorg/apache/poi/hslf/exceptions/OldPowerPointFormatException;

    const-string p1, "Based on the Current User stream, you seem to have supplied a PowerPoint95 file, which isn\'t supported"

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/OldPowerPointFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_3
    new-instance p1, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Current User stream must be at least 28 bytes long, but was only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_4
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/CurrentUserAtom;->init()V

    return-void

    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_5

    .line 25
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    .line 26
    :cond_6
    new-instance p0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The Current User stream is implausably long. It\'s normally 28-200 bytes long, but was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init()V
    .locals 13

    sget-object v0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->encHeaderToken:[B

    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->isEncrypted:Z

    iget-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->currentEditOffset:J

    iget-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->docFinalVersion:I

    iget-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    const/16 v1, 0x18

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->docMajorNo:B

    const/16 v1, 0x19

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->docMinorNo:B

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x200

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-lez v2, :cond_1

    sget-object v2, Lorg/apache/poi/hslf/record/CurrentUserAtom;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v5, "Invalid username length {} found, treating as if there was no username set"

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/util/Unbox;->box(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v0, v3

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    array-length v5, v2

    long-to-int v6, v0

    add-int/lit8 v7, v6, 0x1c

    add-int/lit8 v8, v7, 0x4

    if-lt v5, v8, :cond_2

    invoke-static {v2, v7}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->releaseVersion:J

    goto :goto_1

    :cond_2
    iput-wide v3, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->releaseVersion:J

    :goto_1
    iget-object v2, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    array-length v3, v2

    int-to-long v3, v3

    int-to-long v9, v8

    const-wide/16 v11, 0x2

    mul-long/2addr v0, v11

    add-long/2addr v9, v0

    cmp-long v0, v3, v9

    if-ltz v0, :cond_3

    invoke-static {v2, v8, v6}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->lastEditUser:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/16 v0, 0x1c

    invoke-static {v2, v0, v6}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUnicode([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->lastEditUser:Ljava/lang/String;

    :goto_2
    return-void
.end method


# virtual methods
.method public getCurrentEditOffset()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->currentEditOffset:J

    return-wide v0
.end method

.method public getDocFinalVersion()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->docFinalVersion:I

    return p0
.end method

.method public getDocMajorNo()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->docMajorNo:B

    return p0
.end method

.method public getDocMinorNo()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->docMinorNo:B

    return p0
.end method

.method public getLastEditUsername()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->lastEditUser:Ljava/lang/String;

    return-object p0
.end method

.method public getReleaseVersion()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->releaseVersion:J

    return-wide v0
.end method

.method public isEncrypted()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->isEncrypted:Z

    return p0
.end method

.method public setCurrentEditOffset(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->currentEditOffset:J

    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->isEncrypted:Z

    return-void
.end method

.method public setLastEditUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->lastEditUser:Ljava/lang/String;

    return-void
.end method

.method public setReleaseVersion(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->releaseVersion:J

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->lastEditUser:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x20

    int-to-long v0, v0

    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    sget-object v1, Lorg/apache/poi/hslf/record/CurrentUserAtom;->atomHeader:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->lastEditUser:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    add-int/2addr v0, v1

    iget-object v4, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    invoke-static {v4, v3, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    const/16 v4, 0x8

    const/16 v5, 0x14

    invoke-static {v0, v4, v5}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-boolean v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->isEncrypted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->encHeaderToken:[B

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->headerToken:[B

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    const/16 v6, 0xc

    invoke-static {v0, v2, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    iget-wide v6, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->currentEditOffset:J

    long-to-int v4, v6

    const/16 v6, 0x10

    invoke-static {v0, v6, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->lastEditUser:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v6, v0

    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result v0

    invoke-static {v6, v7, v0}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iget-object v4, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->lastEditUser:Ljava/lang/String;

    invoke-static {v4, v0, v2}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;[BI)V

    iget-object v4, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    array-length v6, v0

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-object v4, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    iget v5, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->docFinalVersion:I

    int-to-short v5, v5

    const/16 v6, 0x16

    invoke-static {v4, v6, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-object v4, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    iget-byte v5, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->docMajorNo:B

    aput-byte v5, v4, v1

    const/16 v1, 0x19

    iget-byte v5, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->docMinorNo:B

    aput-byte v5, v4, v1

    const/16 v1, 0x1a

    aput-byte v2, v4, v1

    const/16 v1, 0x1b

    aput-byte v2, v4, v1

    array-length v1, v0

    const/16 v5, 0x1c

    invoke-static {v0, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    array-length v4, v0

    add-int/2addr v4, v5

    iget-wide v6, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->releaseVersion:J

    long-to-int v6, v6

    invoke-static {v1, v4, v6}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object v1, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->lastEditUser:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v6, v1

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result v1

    invoke-static {v6, v7, v1}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v1

    iget-object v4, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->lastEditUser:Ljava/lang/String;

    invoke-static {v4, v1, v2}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;[BI)V

    iget-object v4, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    array-length v0, v0

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    array-length v3, v1

    invoke-static {v1, v2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/CurrentUserAtom;->_contents:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeToFS(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/CurrentUserAtom;->writeOut(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v1, "Current User"

    invoke-virtual {p1, p0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createOrUpdateDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_7
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method
