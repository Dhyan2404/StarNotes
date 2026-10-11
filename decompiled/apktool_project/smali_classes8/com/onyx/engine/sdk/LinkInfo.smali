.class public Lcom/onyx/engine/sdk/LinkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private anchor:Ljava/lang/String;

.field private basePath:Ljava/lang/String;

.field private href:Ljava/lang/String;

.field private nodePosition:I
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field private position:Lcom/onyx/engine/sdk/PinPosition;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field private protocol:Lcom/onyx/engine/sdk/Protocol;

.field private rect:Landroid/graphics/RectF;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field private target:Lcom/onyx/engine/sdk/LinkTarget;

.field private text:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field private writingMode:Lcom/onyx/engine/sdk/WritingMode;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field private xpath:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/engine/sdk/Protocol;->UNKNOWN:Lcom/onyx/engine/sdk/Protocol;

    iput-object v0, p0, Lcom/onyx/engine/sdk/LinkInfo;->protocol:Lcom/onyx/engine/sdk/Protocol;

    return-void
.end method

.method public static parseList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/LinkInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/engine/sdk/LinkInfo$1;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/LinkInfo$1;-><init>()V

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

.method public static setLinkPosition(Ljava/util/List;Lcom/onyx/engine/sdk/PinPosition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/LinkInfo;",
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

    check-cast v0, Lcom/onyx/engine/sdk/LinkInfo;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->copyChapterPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/LinkInfo;->getXpath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/engine/sdk/PinPosition;->setXpath(Ljava/lang/String;)Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/LinkInfo;->getNodePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/engine/sdk/PinPosition;->setNodePosition(I)Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/LinkInfo;->setPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/LinkInfo;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAnchor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkInfo;->anchor:Ljava/lang/String;

    return-object p0
.end method

.method public getBasePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkInfo;->basePath:Ljava/lang/String;

    return-object p0
.end method

.method public getHref()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkInfo;->href:Ljava/lang/String;

    return-object p0
.end method

.method public getNodePosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/LinkInfo;->nodePosition:I

    return p0
.end method

.method public getPosition()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkInfo;->position:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getProtocol()Lcom/onyx/engine/sdk/Protocol;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkInfo;->protocol:Lcom/onyx/engine/sdk/Protocol;

    return-object p0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkInfo;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getTarget()Lcom/onyx/engine/sdk/LinkTarget;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkInfo;->target:Lcom/onyx/engine/sdk/LinkTarget;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkInfo;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getWritingMode()Lcom/onyx/engine/sdk/WritingMode;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkInfo;->writingMode:Lcom/onyx/engine/sdk/WritingMode;

    return-object p0
.end method

.method public getXpath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkInfo;->xpath:Ljava/lang/String;

    return-object p0
.end method

.method public isInvalidTarget()Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/LinkInfo;->target:Lcom/onyx/engine/sdk/LinkTarget;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/LinkTarget;->isInvalid()Z

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

.method public setAnchor(Ljava/lang/String;)Lcom/onyx/engine/sdk/LinkInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkInfo;->anchor:Ljava/lang/String;

    return-object p0
.end method

.method public setBasePath(Ljava/lang/String;)Lcom/onyx/engine/sdk/LinkInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkInfo;->basePath:Ljava/lang/String;

    return-object p0
.end method

.method public setHref(Ljava/lang/String;)Lcom/onyx/engine/sdk/LinkInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkInfo;->href:Ljava/lang/String;

    return-object p0
.end method

.method public setNodePosition(I)Lcom/onyx/engine/sdk/LinkInfo;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/LinkInfo;->nodePosition:I

    return-object p0
.end method

.method public setPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/LinkInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkInfo;->position:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setProtocol(I)Lcom/onyx/engine/sdk/LinkInfo;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/onyx/engine/sdk/Protocol;->valueOf(I)Lcom/onyx/engine/sdk/Protocol;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkInfo;->protocol:Lcom/onyx/engine/sdk/Protocol;

    return-object p0
.end method

.method public setProtocol(Lcom/onyx/engine/sdk/Protocol;)Lcom/onyx/engine/sdk/LinkInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkInfo;->protocol:Lcom/onyx/engine/sdk/Protocol;

    return-object p0
.end method

.method public setRect(Landroid/graphics/RectF;)Lcom/onyx/engine/sdk/LinkInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkInfo;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public setTarget(Lcom/onyx/engine/sdk/LinkTarget;)Lcom/onyx/engine/sdk/LinkInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkInfo;->target:Lcom/onyx/engine/sdk/LinkTarget;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/onyx/engine/sdk/LinkInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkInfo;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setWritingMode(Lcom/onyx/engine/sdk/WritingMode;)Lcom/onyx/engine/sdk/LinkInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkInfo;->writingMode:Lcom/onyx/engine/sdk/WritingMode;

    return-object p0
.end method

.method public setXpath(Ljava/lang/String;)Lcom/onyx/engine/sdk/LinkInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/LinkInfo;->xpath:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkInfo{rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/LinkInfo;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", href=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/LinkInfo;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", anchor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/LinkInfo;->anchor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", basePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/LinkInfo;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/LinkInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", xpath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/LinkInfo;->xpath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", writingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/LinkInfo;->writingMode:Lcom/onyx/engine/sdk/WritingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/LinkInfo;->target:Lcom/onyx/engine/sdk/LinkTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/LinkInfo;->position:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nodePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/engine/sdk/LinkInfo;->nodePosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
