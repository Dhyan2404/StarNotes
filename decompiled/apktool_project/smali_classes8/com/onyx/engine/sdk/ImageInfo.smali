.class public Lcom/onyx/engine/sdk/ImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private backgroundImage:Z

.field private baseUrl:Ljava/lang/String;

.field private footNote:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private link:Z

.field private nodePosition:I

.field private position:Lcom/onyx/engine/sdk/PinPosition;

.field private rect:Landroid/graphics/RectF;

.field private textAlign:Ljava/lang/String;

.field private type:Lcom/onyx/engine/sdk/ImageInfoType;

.field private url:Ljava/lang/String;

.field private xpath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/engine/sdk/ImageInfoType;->NORMAL:Lcom/onyx/engine/sdk/ImageInfoType;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ImageInfo;->type:Lcom/onyx/engine/sdk/ImageInfoType;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/ImageInfo;

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/ImageInfo;

    return-object p0
.end method

.method public static parseList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/ImageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/engine/sdk/ImageInfo$1;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/ImageInfo$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static setImagePosition(Ljava/util/List;Lcom/onyx/engine/sdk/PinPosition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/ImageInfo;",
            ">;",
            "Lcom/onyx/engine/sdk/PinPosition;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/engine/sdk/ImageInfo;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->copyChapterPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/ImageInfo;->getXpath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/engine/sdk/PinPosition;->setXpath(Ljava/lang/String;)Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/ImageInfo;->getNodePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/engine/sdk/PinPosition;->setNodePosition(I)Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/ImageInfo;->setPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/ImageInfo;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getFootNote()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->footNote:Ljava/lang/String;

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->format:Ljava/lang/String;

    return-object p0
.end method

.method public getNodePosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->nodePosition:I

    return p0
.end method

.method public getPosition()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->position:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getTextAlign()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->textAlign:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/onyx/engine/sdk/ImageInfoType;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->type:Lcom/onyx/engine/sdk/ImageInfoType;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getXpath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->xpath:Ljava/lang/String;

    return-object p0
.end method

.method public isAudioType()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->type:Lcom/onyx/engine/sdk/ImageInfoType;

    sget-object v0, Lcom/onyx/engine/sdk/ImageInfoType;->AUDIO:Lcom/onyx/engine/sdk/ImageInfoType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBackgroundImage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->backgroundImage:Z

    return p0
.end method

.method public isLink()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->link:Z

    return p0
.end method

.method public isVideoType()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->type:Lcom/onyx/engine/sdk/ImageInfoType;

    sget-object v0, Lcom/onyx/engine/sdk/ImageInfoType;->VIDEO:Lcom/onyx/engine/sdk/ImageInfoType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBackgroundImage(Z)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/ImageInfo;->backgroundImage:Z

    return-object p0
.end method

.method public setBaseUrl(Ljava/lang/String;)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ImageInfo;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setFootNote(Ljava/lang/String;)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ImageInfo;->footNote:Ljava/lang/String;

    return-object p0
.end method

.method public setFormat(Ljava/lang/String;)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ImageInfo;->format:Ljava/lang/String;

    return-object p0
.end method

.method public setLink(Z)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/ImageInfo;->link:Z

    return-object p0
.end method

.method public setNodePosition(I)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ImageInfo;->nodePosition:I

    return-object p0
.end method

.method public setPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ImageInfo;->position:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setRect(Landroid/graphics/RectF;)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ImageInfo;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public setTextAlign(Ljava/lang/String;)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ImageInfo;->textAlign:Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/onyx/engine/sdk/ImageInfoType;->valueOf(I)Lcom/onyx/engine/sdk/ImageInfoType;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/ImageInfo;->type:Lcom/onyx/engine/sdk/ImageInfoType;

    return-object p0
.end method

.method public setType(Lcom/onyx/engine/sdk/ImageInfoType;)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onyx/engine/sdk/ImageInfo;->type:Lcom/onyx/engine/sdk/ImageInfoType;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ImageInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setXpath(Ljava/lang/String;)Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ImageInfo;->xpath:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageInfo{rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/ImageInfo;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", baseUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/ImageInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ImageInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", xpath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ImageInfo;->xpath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", format=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ImageInfo;->format:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", footNote=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ImageInfo;->footNote:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", textAlign=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ImageInfo;->textAlign:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ImageInfo;->type:Lcom/onyx/engine/sdk/ImageInfoType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/ImageInfo;->position:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nodePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/ImageInfo;->nodePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/ImageInfo;->backgroundImage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/ImageInfo;->link:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
