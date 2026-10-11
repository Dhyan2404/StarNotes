.class public Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;
.super Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;
.source "SourceFile"


# instance fields
.field private currentSplitFileCounter:I

.field private isSplitZipArchive:Z

.field private lastSplitZipFileNumber:I

.field protected randomAccessFile:Ljava/io/RandomAccessFile;

.field private singleByteArray:[B

.field protected zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->singleByteArray:[B

    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->zipFile:Ljava/io/File;

    iput-boolean p2, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->isSplitZipArchive:Z

    iput p3, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->lastSplitZipFileNumber:I

    if-eqz p2, :cond_0

    iput p3, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    return-void
.end method

.method public getNextSplitFile(I)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->lastSplitZipFileNumber:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->zipFile:Ljava/io/File;

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->zipFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x9

    if-lt p1, v0, :cond_1

    const-string v0, ".z"

    goto :goto_0

    :cond_1
    const-string v0, ".z0"

    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public openRandomAccessFileForIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->getNextSplitFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void

    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zip split file does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public prepareExtractionForFileHeader(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->isSplitZipArchive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->openRandomAccessFileForIndex(I)V

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v0

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    :cond_0
    iget-object p0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->singleByteArray:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->singleByteArray:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    return p0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p2

    if-ne p2, p3, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 5
    :cond_0
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->isSplitZipArchive:Z

    if-eqz v0, :cond_2

    .line 6
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->openRandomAccessFileForIndex(I)V

    .line 7
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->currentSplitFileCounter:I

    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 8
    :cond_1
    iget-object p0, p0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    sub-int/2addr p3, p2

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p0

    if-lez p0, :cond_2

    add-int/2addr p2, p0

    :cond_2
    return p2
.end method
