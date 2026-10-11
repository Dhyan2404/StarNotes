.class public Lnet/lingala/zip4j/model/LocalFileHeader;
.super Lnet/lingala/zip4j/model/AbstractFileHeader;
.source "SourceFile"


# instance fields
.field private extraField:[B

.field private offsetStartOfData:J

.field private writeCompressedSizeInZip64ExtraRecord:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;-><init>()V

    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    return-void
.end method


# virtual methods
.method public getExtraField()[B
    .locals 0

    iget-object p0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraField:[B

    return-object p0
.end method

.method public getOffsetStartOfData()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->offsetStartOfData:J

    return-wide v0
.end method

.method public isWriteCompressedSizeInZip64ExtraRecord()Z
    .locals 0

    iget-boolean p0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->writeCompressedSizeInZip64ExtraRecord:Z

    return p0
.end method

.method public setExtraField([B)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraField:[B

    return-void
.end method

.method public setOffsetStartOfData(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->offsetStartOfData:J

    return-void
.end method

.method public setWriteCompressedSizeInZip64ExtraRecord(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->writeCompressedSizeInZip64ExtraRecord:Z

    return-void
.end method
