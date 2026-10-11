.class public final Lorg/apache/poi/openxml4j/opc/ZipPackage;
.super Lorg/apache/poi/openxml4j/opc/OPCPackage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final MIMETYPE:Ljava/lang/String; = "mimetype"

.field private static final SETTINGS_XML:Ljava/lang/String; = "settings.xml"

.field private static encryptTempFilePackageParts:Z

.field private static useTempFilePackageParts:Z


# instance fields
.field private final zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->defaultPackageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;-><init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    .line 3
    :try_start_0
    new-instance v1, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    sget-object v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "Could not parse ZipPackage"

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
        }
    .end annotation

    .line 11
    invoke-direct {p0, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;-><init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    .line 12
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipFile(Ljava/io/File;)Lorg/apache/poi/openxml4j/util/ZipSecureFile;

    move-result-object v0

    .line 13
    new-instance v1, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;

    invoke-direct {v1, v0}, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-eq p2, v1, :cond_0

    .line 15
    sget-object p2, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    const-string v0, "Error in zip file {} - falling back to stream processing (i.e. ignoring zip central directory)"

    invoke-interface {p2, v0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->openZipEntrySourceStream(Ljava/io/File;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object v1

    .line 17
    :goto_0
    iput-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    return-void

    .line 18
    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t open the specified file: \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;-><init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    .line 6
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipStream(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;

    move-result-object p1

    .line 7
    :try_start_0
    new-instance p2, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;

    invoke-direct {p2, p1}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;-><init>(Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;)V

    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 8
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 9
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 0

    .line 19
    invoke-direct {p0, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;-><init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    .line 20
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    return-void
.end method

.method public static synthetic H(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/logging/log4j/message/Message;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->lambda$saveImpl$3(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->ignoreEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100()Lorg/apache/logging/log4j/Logger;
    .locals 1

    sget-object v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static encryptTempFilePackageParts()Z
    .locals 1

    sget-boolean v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->encryptTempFilePackageParts:Z

    return v0
.end method

.method public static synthetic f(Lorg/apache/poi/openxml4j/opc/ZipPackage;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->lambda$getPartsImpl$1(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized generateTempFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenXML4J"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/internal/FileHelper;->getFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static ignoreEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[trash]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic j(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->lambda$getPartsImpl$0(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getPartsImpl$0(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->ignoreEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$getPartsImpl$1(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;
    .locals 2

    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;-><init>(Lorg/apache/poi/openxml4j/opc/ZipPackage;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;)V

    return-object v0
.end method

.method private static synthetic lambda$getPartsImpl$2(Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$saveImpl$3(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/logging/log4j/message/Message;
    .locals 3

    new-instance v0, Lorg/apache/logging/log4j/message/SimpleMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save part \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->getZipItemNameFromOPCName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static openZipEntrySourceStream(Ljava/io/File;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
        }
    .end annotation

    const-string v0, "\'"

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->openZipEntrySourceStream(Ljava/io/FileInputStream;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/poi/UnsupportedFileFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    .line 3
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read the file input stream from file: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p0

    .line 5
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    throw p0

    :catch_2
    move-exception v1

    .line 7
    new-instance v2, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t open the specified file input stream from file: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static openZipEntrySourceStream(Ljava/io/FileInputStream;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
        }
    .end annotation

    .line 8
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipStream(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 9
    :try_start_1
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->openZipEntrySourceStream(Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/poi/UnsupportedFileFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 11
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Failed to read the zip entry source stream"

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catch_1
    move-exception v0

    .line 12
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 13
    throw v0

    :catch_2
    move-exception p0

    .line 14
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Could not open the file input stream"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static openZipEntrySourceStream(Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;
        }
    .end annotation

    .line 15
    :try_start_0
    new-instance v0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;-><init>(Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 16
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Could not open the specified zip entry source stream"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static setEncryptTempFilePackageParts(Z)V
    .locals 0

    sput-boolean p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->encryptTempFilePackageParts:Z

    return-void
.end method

.method public static setUseTempFilePackageParts(Z)V
    .locals 0

    sput-boolean p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->useTempFilePackageParts:Z

    return-void
.end method

.method public static useTempFilePackageParts()Z
    .locals 1

    sget-boolean v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->useTempFilePackageParts:Z

    return v0
.end method

.method public static synthetic w(Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->lambda$getPartsImpl$2(Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public closeImpl()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "The temporary file: \'{}\' cannot be deleted ! Make sure that no other application use it."

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->flush()V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/internal/FileHelper;->getDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->generateTempFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-static {v2, v3}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->save(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :try_start_1
    invoke-static {v2, v1}, Lorg/apache/poi/openxml4j/opc/internal/FileHelper;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    throw p0

    :catchall_1
    move-exception v3

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    throw v3

    :cond_4
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "Can\'t close a package not previously open with the open() method !"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    return-void
.end method

.method public createPartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    :try_start_0
    sget-boolean v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->useTempFilePackageParts:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->encryptTempFilePackageParts:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/TempFilePackagePart;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/openxml4j/opc/internal/TempFilePackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    sget-object p2, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p2, "Failed to create part {}"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "partName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "contentType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flushImpl()V
    .locals 0

    return-void
.end method

.method public getPartsImpl()Lorg/apache/poi/openxml4j/opc/PackagePartCollection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "[Content_Types].xml"

    invoke-interface {v1, v2}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    if-nez v2, :cond_2

    :try_start_0
    new-instance v2, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;

    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-interface {v3, v1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-interface {v1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/nxo;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/nxo;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/oxo;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/oxo;-><init>(Lorg/apache/poi/openxml4j/opc/ZipPackage;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lorg/apache/poi/openxml4j/opc/a;

    invoke-direct {v1}, Lorg/apache/poi/openxml4j/opc/a;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->register(Lorg/apache/poi/openxml4j/opc/PackagePartCollection;)V

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v0, "ContentTypeManager can only be created once. This must be a cyclic relation?"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    const-string v1, "mimetype"

    invoke-interface {v0, v1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    const-string v4, "settings.xml"

    invoke-interface {v3, v4}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-eqz v0, :cond_7

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/ODFNotOfficeXmlFileException;

    const-string v0, "The supplied data appears to be in ODF (Open Document) Format. Formats like these (eg ODS, ODP) are not supported, try Apache ODFToolkit"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/ODFNotOfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-nez p0, :cond_8

    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;

    const-string v0, "No valid entries or contents found, this is not a valid OOXML (Office Open XML) file"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v0, "Package should contain a content type part [M1.13]"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getZipArchive()Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    return-object p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->isClosed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removePartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "partUri"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public revertImpl()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public saveImpl(Ljava/io/OutputStream;)V
    .locals 6

    const-string v0, "application/vnd.openxmlformats-package.core-properties+xml"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties"

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    instance-of v2, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;

    if-eqz v2, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v2

    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByRelationshipType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "http://schemas.openxmlformats.org/officedocument/2006/relationships/metadata/core-properties"

    invoke-virtual {p0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByRelationshipType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v3, "Save core properties part"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addPackagePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->isContentTypeRegister(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "Save content types part"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v1, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->save(Ljava/io/OutputStream;)Z

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Save package relationships"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_RELATIONSHIPS_ROOT_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-static {v0, v1, p1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->marshallRelationshipPart(Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;)Z

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->isRelationshipPart()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v3

    new-instance v4, Lcom/sunia/HTREnginev2/mxo;

    invoke-direct {v4, v2}, Lcom/sunia/HTREnginev2/mxo;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    invoke-interface {v3, v4}, Lorg/apache/logging/log4j/LogBuilder;->log(Lorg/apache/logging/log4j/util/Supplier;)V

    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partMarshallers:Ljava/util/Map;

    iget-object v4, v1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_contentType:Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->defaultPartMarshaller:Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;

    :goto_2
    invoke-interface {v3, v1, p1}, Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;->marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The part "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed to be saved in the stream with marshaller "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Enable logging via Log4j 2 for more details."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;

    invoke-direct {p1, p0}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finish()V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to save: an error occurs while saving the package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method
