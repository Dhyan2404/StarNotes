.class public final Lorg/apache/poi/hslf/blip/PNG;
.super Lorg/apache/poi/hslf/blip/Bitmap;
.source "SourceFile"


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

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/blip/PNG;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

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


# virtual methods
.method public getData()[B
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/image/ImageHeaderPNG;

    invoke-super {p0}, Lorg/apache/poi/hslf/blip/Bitmap;->getData()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/sl/image/ImageHeaderPNG;-><init>([B)V

    invoke-virtual {v0}, Lorg/apache/poi/sl/image/ImageHeaderPNG;->extractPNG()[B

    move-result-object p0

    return-object p0
.end method

.method public getSignature()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x6e00

    goto :goto_0

    :cond_0
    const/16 p0, 0x6e10

    :goto_0
    return p0
.end method

.method public getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object p0
.end method

.method public setSignature(I)V
    .locals 1

    const/16 v0, 0x6e00

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6e10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setUIDInstanceCount(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid instance/signature value for PNG"

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
