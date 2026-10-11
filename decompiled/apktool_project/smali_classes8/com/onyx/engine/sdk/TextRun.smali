.class public Lcom/onyx/engine/sdk/TextRun;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bidi:Z

.field private cellOfScreenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/CellOfScreen;",
            ">;"
        }
    .end annotation
.end field

.field private fontEntry:Lcom/onyx/engine/sdk/FontEntry;

.field private fontSize:F

.field private lang:Ljava/lang/String;

.field private nodePosition:I

.field private textColor:I

.field private xpath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TextRun;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/engine/sdk/TextRun$1;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/TextRun$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/engine/sdk/TextRun;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/TextRun;->getCellOfScreenList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/engine/sdk/CellOfScreen;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/TextRun;->getFontEntry()Lcom/onyx/engine/sdk/FontEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/engine/sdk/CellOfScreen;->setFontEntry(Lcom/onyx/engine/sdk/FontEntry;)Lcom/onyx/engine/sdk/CellOfScreen;

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static setTextRunPosition(Ljava/util/List;Lcom/onyx/engine/sdk/PinPosition;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TextRun;",
            ">;",
            "Lcom/onyx/engine/sdk/PinPosition;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/engine/sdk/TextRun;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/TextRun;->getCellOfScreenList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/engine/sdk/CellOfScreen;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->copyChapterPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/TextRun;->getXpath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/engine/sdk/PinPosition;->setXpath(Ljava/lang/String;)Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/TextRun;->getNodePosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/engine/sdk/PinPosition;->setNodePosition(I)Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/CellOfScreen;->getTextOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/engine/sdk/PinPosition;->setTextOffset(I)Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v2, v3}, Lcom/onyx/engine/sdk/CellOfScreen;->setPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/CellOfScreen;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/TextRun;->isBidi()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/engine/sdk/CellOfScreen;->setBidi(Z)Lcom/onyx/engine/sdk/CellOfScreen;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/TextRun;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/engine/sdk/CellOfScreen;->setLang(Ljava/lang/String;)Lcom/onyx/engine/sdk/CellOfScreen;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/TextRun;->getFontEntry()Lcom/onyx/engine/sdk/FontEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/engine/sdk/CellOfScreen;->setFontEntry(Lcom/onyx/engine/sdk/FontEntry;)Lcom/onyx/engine/sdk/CellOfScreen;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCellOfScreenList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/CellOfScreen;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/TextRun;->cellOfScreenList:Ljava/util/List;

    return-object p0
.end method

.method public getFontEntry()Lcom/onyx/engine/sdk/FontEntry;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/TextRun;->fontEntry:Lcom/onyx/engine/sdk/FontEntry;

    return-object p0
.end method

.method public getFontSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/TextRun;->fontSize:F

    return p0
.end method

.method public getLang()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/TextRun;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public getNodePosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/TextRun;->nodePosition:I

    return p0
.end method

.method public getTextColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/TextRun;->textColor:I

    return p0
.end method

.method public getXpath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/TextRun;->xpath:Ljava/lang/String;

    return-object p0
.end method

.method public isBidi()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/TextRun;->bidi:Z

    return p0
.end method

.method public setBidi(Z)Lcom/onyx/engine/sdk/TextRun;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/TextRun;->bidi:Z

    return-object p0
.end method

.method public setCellOfScreenList(Ljava/util/List;)Lcom/onyx/engine/sdk/TextRun;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/CellOfScreen;",
            ">;)",
            "Lcom/onyx/engine/sdk/TextRun;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/TextRun;->cellOfScreenList:Ljava/util/List;

    return-object p0
.end method

.method public setFontEntry(Lcom/onyx/engine/sdk/FontEntry;)Lcom/onyx/engine/sdk/TextRun;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/TextRun;->fontEntry:Lcom/onyx/engine/sdk/FontEntry;

    return-object p0
.end method

.method public setFontSize(F)Lcom/onyx/engine/sdk/TextRun;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/TextRun;->fontSize:F

    return-object p0
.end method

.method public setLang(Ljava/lang/String;)Lcom/onyx/engine/sdk/TextRun;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/TextRun;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public setNodePosition(I)Lcom/onyx/engine/sdk/TextRun;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/TextRun;->nodePosition:I

    return-object p0
.end method

.method public setTextColor(I)Lcom/onyx/engine/sdk/TextRun;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/TextRun;->textColor:I

    return-object p0
.end method

.method public setXpath(Ljava/lang/String;)Lcom/onyx/engine/sdk/TextRun;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/TextRun;->xpath:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextRun{xpath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/TextRun;->xpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lang=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/TextRun;->lang:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", nodePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/TextRun;->nodePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/TextRun;->textColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/TextRun;->fontSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/TextRun;->fontEntry:Lcom/onyx/engine/sdk/FontEntry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bidi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/TextRun;->bidi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cellOfScreenList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/engine/sdk/TextRun;->cellOfScreenList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
