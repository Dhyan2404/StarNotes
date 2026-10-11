.class public final Lorg/apache/poi/hslf/blip/JPEG;
.super Lorg/apache/poi/hslf/blip/Bitmap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;
    }
.end annotation


# instance fields
.field private colorSpace:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;


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

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/blip/JPEG;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/blip/Bitmap;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    .line 3
    sget-object p1, Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;->rgb:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    iput-object p1, p0, Lorg/apache/poi/hslf/blip/JPEG;->colorSpace:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    return-void
.end method


# virtual methods
.method public getColorSpace()Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/blip/JPEG;->colorSpace:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    return-object p0
.end method

.method public getSignature()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/blip/JPEG;->colorSpace:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    sget-object v1, Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;->rgb:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result p0

    if-ne p0, v2, :cond_0

    const/16 p0, 0x46a0

    goto :goto_0

    :cond_0
    const/16 p0, 0x46b0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUIDInstanceCount()I

    move-result p0

    if-ne p0, v2, :cond_2

    const/16 p0, 0x6e20

    goto :goto_0

    :cond_2
    const/16 p0, 0x6e30

    :goto_0
    return p0
.end method

.method public getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object p0
.end method

.method public setColorSpace(Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/blip/JPEG;->colorSpace:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    return-void
.end method

.method public setSignature(I)V
    .locals 3

    const/16 v0, 0x46a0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x46b0

    const/4 v2, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6e20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6e30

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setUIDInstanceCount(I)V

    sget-object p1, Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;->cymk:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    iput-object p1, p0, Lorg/apache/poi/hslf/blip/JPEG;->colorSpace:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid instance/signature value for JPEG"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setUIDInstanceCount(I)V

    sget-object p1, Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;->cymk:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    iput-object p1, p0, Lorg/apache/poi/hslf/blip/JPEG;->colorSpace:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setUIDInstanceCount(I)V

    sget-object p1, Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;->rgb:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    iput-object p1, p0, Lorg/apache/poi/hslf/blip/JPEG;->colorSpace:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setUIDInstanceCount(I)V

    sget-object p1, Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;->rgb:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    iput-object p1, p0, Lorg/apache/poi/hslf/blip/JPEG;->colorSpace:Lorg/apache/poi/hslf/blip/JPEG$ColorSpace;

    :goto_0
    return-void
.end method
