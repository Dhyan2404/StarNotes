.class public Lnet/lingala/zip4j/model/FileHeader;
.super Lnet/lingala/zip4j/model/AbstractFileHeader;
.source "SourceFile"


# instance fields
.field private diskNumberStart:I

.field private externalFileAttributes:[B

.field private fileComment:Ljava/lang/String;

.field private fileCommentLength:I

.field private internalFileAttributes:[B

.field private offsetLocalHeader:J

.field private versionMadeBy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/model/FileHeader;->fileCommentLength:I

    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    return-void
.end method

.method private determineOffsetOfLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)J
    .locals 0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {p0, p0}, Lnet/lingala/zip4j/model/FileHeader;->determineOffsetOfLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)J

    move-result-wide v2

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/model/FileHeader;->determineOffsetOfLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getDiskNumberStart()I
    .locals 0

    iget p0, p0, Lnet/lingala/zip4j/model/FileHeader;->diskNumberStart:I

    return p0
.end method

.method public getExternalFileAttributes()[B
    .locals 0

    iget-object p0, p0, Lnet/lingala/zip4j/model/FileHeader;->externalFileAttributes:[B

    return-object p0
.end method

.method public getFileComment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/lingala/zip4j/model/FileHeader;->fileComment:Ljava/lang/String;

    return-object p0
.end method

.method public getFileCommentLength()I
    .locals 0

    iget p0, p0, Lnet/lingala/zip4j/model/FileHeader;->fileCommentLength:I

    return p0
.end method

.method public getInternalFileAttributes()[B
    .locals 0

    iget-object p0, p0, Lnet/lingala/zip4j/model/FileHeader;->internalFileAttributes:[B

    return-object p0
.end method

.method public getOffsetLocalHeader()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->offsetLocalHeader:J

    return-wide v0
.end method

.method public getVersionMadeBy()I
    .locals 0

    iget p0, p0, Lnet/lingala/zip4j/model/FileHeader;->versionMadeBy:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0}, Lnet/lingala/zip4j/model/FileHeader;->determineOffsetOfLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setDiskNumberStart(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->diskNumberStart:I

    return-void
.end method

.method public setExternalFileAttributes([B)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->externalFileAttributes:[B

    return-void
.end method

.method public setFileComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->fileComment:Ljava/lang/String;

    return-void
.end method

.method public setFileCommentLength(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->fileCommentLength:I

    return-void
.end method

.method public setInternalFileAttributes([B)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->internalFileAttributes:[B

    return-void
.end method

.method public setOffsetLocalHeader(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/FileHeader;->offsetLocalHeader:J

    return-void
.end method

.method public setVersionMadeBy(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->versionMadeBy:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
