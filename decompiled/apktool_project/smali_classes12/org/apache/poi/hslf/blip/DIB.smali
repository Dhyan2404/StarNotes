.class public final Lorg/apache/poi/hslf/blip/DIB;
.super Lorg/apache/poi/hslf/blip/Bitmap;
.source "SourceFile"


# static fields
.field private static final HEADER_SIZE:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.3"
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    new-instance v1, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherBSERecord;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/blip/DIB;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/blip/Bitmap;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    return-void
.end method

.method public static addBMPHeader([B)[B
    .locals 8

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/16 v2, 0x4d42

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/16 v2, 0x14

    invoke-static {p0, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    array-length v4, p0

    add-int/2addr v4, v0

    sub-int v2, v4, v2

    const/4 v5, 0x2

    invoke-static {v1, v5, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/4 v4, 0x6

    invoke-static {v1, v4, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/16 v4, 0xa

    invoke-static {v1, v4, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    int-to-long v4, v0

    array-length v2, p0

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result v2

    invoke-static {v4, v5, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v2

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    invoke-static {p0, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public formatImageForSlideshow([B)[B
    .locals 3

    array-length v0, p1

    const/16 v1, 0xe

    sub-int/2addr v0, v1

    array-length v2, p1

    invoke-static {p1, v1, v0, v2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/blip/Bitmap;->formatImageForSlideshow([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getData()[B
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hslf/blip/Bitmap;->getData()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hslf/blip/DIB;->addBMPHeader([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getSignature()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x7a80

    goto :goto_0

    :cond_0
    const/16 p0, 0x7a90

    :goto_0
    return p0
.end method

.method public getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->DIB:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object p0
.end method

.method public setSignature(I)V
    .locals 1

    const/16 v0, 0x7a80

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7a90

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setUIDInstanceCount(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid instance/signature value for DIB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setUIDInstanceCount(I)V

    :goto_0
    return-void
.end method
