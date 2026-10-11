.class public Lcom/onyx/engine/sdk/SearchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private endNodePosition:I

.field private endOffset:I

.field private endPosition:Lcom/onyx/engine/sdk/PinPosition;

.field private endXPath:Ljava/lang/String;

.field private leftText:Ljava/lang/String;

.field private rightText:Ljava/lang/String;

.field private startNodePosition:I

.field private startOffset:I

.field private startPosition:Lcom/onyx/engine/sdk/PinPosition;

.field private startXPath:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/engine/sdk/SearchResult;

    iget-object v2, p0, Lcom/onyx/engine/sdk/SearchResult;->startPosition:Lcom/onyx/engine/sdk/PinPosition;

    iget-object v3, p1, Lcom/onyx/engine/sdk/SearchResult;->startPosition:Lcom/onyx/engine/sdk/PinPosition;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/SearchResult;->endPosition:Lcom/onyx/engine/sdk/PinPosition;

    iget-object v3, p1, Lcom/onyx/engine/sdk/SearchResult;->endPosition:Lcom/onyx/engine/sdk/PinPosition;

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/SearchResult;->startNodePosition:I

    iget v3, p1, Lcom/onyx/engine/sdk/SearchResult;->startNodePosition:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/SearchResult;->endNodePosition:I

    iget v3, p1, Lcom/onyx/engine/sdk/SearchResult;->endNodePosition:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/SearchResult;->startOffset:I

    iget v3, p1, Lcom/onyx/engine/sdk/SearchResult;->startOffset:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/SearchResult;->endOffset:I

    iget v3, p1, Lcom/onyx/engine/sdk/SearchResult;->endOffset:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/SearchResult;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/SearchResult;->text:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/SearchResult;->leftText:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/SearchResult;->leftText:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/SearchResult;->rightText:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/SearchResult;->rightText:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/SearchResult;->startXPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/SearchResult;->startXPath:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/onyx/engine/sdk/SearchResult;->endXPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/onyx/engine/sdk/SearchResult;->endXPath:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getEndNodePosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/SearchResult;->endNodePosition:I

    return p0
.end method

.method public getEndOffset()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/SearchResult;->endOffset:I

    return p0
.end method

.method public getEndPosition()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SearchResult;->endPosition:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getEndXPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SearchResult;->endXPath:Ljava/lang/String;

    return-object p0
.end method

.method public getLeftText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SearchResult;->leftText:Ljava/lang/String;

    return-object p0
.end method

.method public getRightText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SearchResult;->rightText:Ljava/lang/String;

    return-object p0
.end method

.method public getStartNodePosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/SearchResult;->startNodePosition:I

    return p0
.end method

.method public getStartOffset()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/SearchResult;->startOffset:I

    return p0
.end method

.method public getStartPosition()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SearchResult;->startPosition:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getStartXPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SearchResult;->startXPath:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SearchResult;->text:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 9

    iget-object v0, p0, Lcom/onyx/engine/sdk/SearchResult;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/engine/sdk/SearchResult;->leftText:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/engine/sdk/SearchResult;->rightText:Ljava/lang/String;

    iget-object v3, p0, Lcom/onyx/engine/sdk/SearchResult;->startXPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/onyx/engine/sdk/SearchResult;->endXPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/onyx/engine/sdk/SearchResult;->startPosition:Lcom/onyx/engine/sdk/PinPosition;

    iget-object v6, p0, Lcom/onyx/engine/sdk/SearchResult;->endPosition:Lcom/onyx/engine/sdk/PinPosition;

    iget v7, p0, Lcom/onyx/engine/sdk/SearchResult;->startOffset:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Lcom/onyx/engine/sdk/SearchResult;->endOffset:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setEndNodePosition(I)Lcom/onyx/engine/sdk/SearchResult;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/SearchResult;->endNodePosition:I

    return-object p0
.end method

.method public setEndOffset(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/SearchResult;->endOffset:I

    return-void
.end method

.method public setEndPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/SearchResult;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SearchResult;->endPosition:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setEndXPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SearchResult;->endXPath:Ljava/lang/String;

    return-void
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SearchResult;->leftText:Ljava/lang/String;

    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SearchResult;->rightText:Ljava/lang/String;

    return-void
.end method

.method public setStartNodePosition(I)Lcom/onyx/engine/sdk/SearchResult;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/SearchResult;->startNodePosition:I

    return-object p0
.end method

.method public setStartOffset(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/SearchResult;->startOffset:I

    return-void
.end method

.method public setStartPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/SearchResult;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SearchResult;->startPosition:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setStartXPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SearchResult;->startXPath:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SearchResult;->text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchResult{text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/SearchResult;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", leftText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/SearchResult;->leftText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rightText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/SearchResult;->rightText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startXPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/SearchResult;->startXPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", endXPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/SearchResult;->endXPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", startPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/SearchResult;->startPosition:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/SearchResult;->endPosition:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startNodePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/SearchResult;->startNodePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endNodePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/SearchResult;->endNodePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/SearchResult;->startOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/engine/sdk/SearchResult;->endOffset:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
