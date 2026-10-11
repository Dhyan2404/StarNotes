.class public Lcom/onyx/engine/sdk/CompatiblePosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;,
        Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;
    }
.end annotation


# instance fields
.field private end:Lcom/onyx/engine/sdk/PinPosition;

.field private endXpathV2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pageStart:Lcom/onyx/engine/sdk/PinPosition;

.field private positionType:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

.field private positionVersion:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

.field private start:Lcom/onyx/engine/sdk/PinPosition;

.field private startXpathV2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private success:Z

.field private text:Ljava/lang/String;

.field private v2PositionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;->ANNOTATION:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    iput-object v0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->positionType:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    sget-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;->V31_TO_V32:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    iput-object v0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->positionVersion:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->v2PositionList:Ljava/util/List;

    return-void
.end method

.method public static parseList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/CompatiblePosition;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/engine/sdk/CompatiblePosition$1;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/CompatiblePosition$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const-class v0, Lcom/onyx/engine/sdk/CompatiblePosition;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse CompatiblePosition list failed, json: "

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
.method public addV2Position(I)Lcom/onyx/engine/sdk/CompatiblePosition;
    .locals 1

    iget-object v0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->v2PositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getEnd()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->end:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getEndXpathV2()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->endXpathV2:Ljava/util/List;

    return-object p0
.end method

.method public getPageStart()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->pageStart:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getPositionType()Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->positionType:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    return-object p0
.end method

.method public getPositionVersion()Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->positionVersion:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    return-object p0
.end method

.method public getStart()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->start:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getStartXpathV2()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->startXpathV2:Ljava/util/List;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getV2PositionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->v2PositionList:Ljava/util/List;

    return-object p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->success:Z

    return p0
.end method

.method public setEnd(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/CompatiblePosition;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->end:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setEndXpathV2(Ljava/lang/String;)Lcom/onyx/engine/sdk/CompatiblePosition;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/onyx/engine/sdk/Utils;->toIntXpath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->endXpathV2:Ljava/util/List;

    return-object p0
.end method

.method public setEndXpathV2(Ljava/util/List;)Lcom/onyx/engine/sdk/CompatiblePosition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/onyx/engine/sdk/CompatiblePosition;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->endXpathV2:Ljava/util/List;

    return-object p0
.end method

.method public setPageStart(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/CompatiblePosition;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->pageStart:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setPositionType(Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;)Lcom/onyx/engine/sdk/CompatiblePosition;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->positionType:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    return-object p0
.end method

.method public setPositionVersion(Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;)Lcom/onyx/engine/sdk/CompatiblePosition;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->positionVersion:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    return-object p0
.end method

.method public setStart(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/CompatiblePosition;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->start:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setStartXpathV2(Ljava/lang/String;)Lcom/onyx/engine/sdk/CompatiblePosition;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/onyx/engine/sdk/Utils;->toIntXpath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->startXpathV2:Ljava/util/List;

    return-object p0
.end method

.method public setStartXpathV2(Ljava/util/List;)Lcom/onyx/engine/sdk/CompatiblePosition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/onyx/engine/sdk/CompatiblePosition;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->startXpathV2:Ljava/util/List;

    return-object p0
.end method

.method public setSuccess(Z)Lcom/onyx/engine/sdk/CompatiblePosition;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->success:Z

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/onyx/engine/sdk/CompatiblePosition;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setV2PositionList(Ljava/util/List;)Lcom/onyx/engine/sdk/CompatiblePosition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/onyx/engine/sdk/CompatiblePosition;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/CompatiblePosition;->v2PositionList:Ljava/util/List;

    return-object p0
.end method
