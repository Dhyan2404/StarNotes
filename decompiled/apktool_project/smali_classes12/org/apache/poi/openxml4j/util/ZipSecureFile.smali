.class public Lorg/apache/poi/openxml4j/util/ZipSecureFile;
.super Lorg/apache/commons/compress/archivers/zip/ZipFile;
.source "SourceFile"


# static fields
.field static final DEFAULT_MAX_ENTRY_SIZE:J = 0xffffffffL

.field static final DEFAULT_MAX_TEXT_SIZE:J = 0xa00000L

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field static MAX_ENTRY_SIZE:J

.field private static MAX_TEXT_SIZE:J

.field static MIN_INFLATE_RATIO:D


# instance fields
.field private final fileName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->LOG:Lorg/apache/logging/log4j/Logger;

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    sput-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MIN_INFLATE_RATIO:D

    const-wide v0, 0xffffffffL

    sput-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_ENTRY_SIZE:J

    const-wide/32 v0, 0xa00000

    sput-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_TEXT_SIZE:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->fileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->fileName:Ljava/lang/String;

    return-void
.end method

.method public static getMaxEntrySize()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_ENTRY_SIZE:J

    return-wide v0
.end method

.method public static getMaxTextSize()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_TEXT_SIZE:J

    return-wide v0
.end method

.method public static getMinInflateRatio()D
    .locals 2

    sget-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MIN_INFLATE_RATIO:D

    return-wide v0
.end method

.method public static setMaxEntrySize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sget-object v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting max entry size greater than 4Gb can be risky; set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_0
    sput-wide p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_ENTRY_SIZE:J

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Max entry size must be greater than or equal to zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setMaxTextSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0xa00000

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sget-object v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting max text size greater than 10485760 can be risky; set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_0
    sput-wide p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_TEXT_SIZE:J

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Max text size must be greater than or equal to zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setMinInflateRatio(D)V
    .locals 0

    sput-wide p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MIN_INFLATE_RATIO:D

    return-void
.end method


# virtual methods
.method public bridge synthetic getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;

    invoke-super {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->setEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->fileName:Ljava/lang/String;

    return-object p0
.end method
