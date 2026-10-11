.class public Lcom/onyx/engine/sdk/LinkTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field display:Z

.field linkType:Lcom/onyx/engine/sdk/LinkType;

.field position:Lcom/onyx/engine/sdk/PinPosition;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/engine/sdk/LinkType;->NOT_LOADED:Lcom/onyx/engine/sdk/LinkType;

    iput-object v0, p0, Lcom/onyx/engine/sdk/LinkTarget;->linkType:Lcom/onyx/engine/sdk/LinkType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/LinkTarget;->display:Z

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/LinkTarget;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/LinkTarget;

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/LinkTarget;

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/engine/sdk/LinkTarget;

    invoke-direct {p0}, Lcom/onyx/engine/sdk/LinkTarget;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static parseList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/LinkTarget;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/engine/sdk/LinkTarget$1;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/LinkTarget$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const-class v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse LinkTarget list failed, json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getLinkType()Lcom/onyx/engine/sdk/LinkType;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkTarget;->linkType:Lcom/onyx/engine/sdk/LinkType;

    return-object p0
.end method

.method public getPosition()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkTarget;->position:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getPositionInt()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkTarget;->position:Lcom/onyx/engine/sdk/PinPosition;

    if-nez p0, :cond_0

    sget p0, Lcom/onyx/engine/sdk/PinPosition;->INVALID_POSITION_INT:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkTarget;->text:Ljava/lang/String;

    return-object p0
.end method

.method public isDisplay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/LinkTarget;->display:Z

    return p0
.end method

.method public isInvalid()Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkTarget;->position:Lcom/onyx/engine/sdk/PinPosition;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->isInvalid()Z

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

.method public setDisplay(Z)Lcom/onyx/engine/sdk/LinkTarget;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/LinkTarget;->display:Z

    return-object p0
.end method

.method public setLinkType(Lcom/onyx/engine/sdk/LinkType;)Lcom/onyx/engine/sdk/LinkTarget;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkTarget;->linkType:Lcom/onyx/engine/sdk/LinkType;

    return-object p0
.end method

.method public setPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/LinkTarget;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkTarget;->position:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/onyx/engine/sdk/LinkTarget;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkTarget;->text:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkTarget{linkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/LinkTarget;->linkType:Lcom/onyx/engine/sdk/LinkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/LinkTarget;->position:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/LinkTarget;->display:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkTarget;->text:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
