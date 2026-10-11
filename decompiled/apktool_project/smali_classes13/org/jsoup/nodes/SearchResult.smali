.class public Lorg/jsoup/nodes/SearchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public endOffset:I

.field public endPosition:I

.field public endXPath:Ljava/lang/String;

.field public leftText:Ljava/lang/String;

.field public rightText:Ljava/lang/String;

.field public startOffset:I

.field public startPosition:I

.field public startXPath:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lorg/jsoup/nodes/SearchResult;->startPosition:I

    iput v0, p0, Lorg/jsoup/nodes/SearchResult;->startOffset:I

    iput v0, p0, Lorg/jsoup/nodes/SearchResult;->endPosition:I

    iput v0, p0, Lorg/jsoup/nodes/SearchResult;->endOffset:I

    iput-object p1, p0, Lorg/jsoup/nodes/SearchResult;->text:Ljava/lang/String;

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
    check-cast p1, Lorg/jsoup/nodes/SearchResult;

    iget v2, p0, Lorg/jsoup/nodes/SearchResult;->startPosition:I

    iget v3, p1, Lorg/jsoup/nodes/SearchResult;->startPosition:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/jsoup/nodes/SearchResult;->startOffset:I

    iget v3, p1, Lorg/jsoup/nodes/SearchResult;->startOffset:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/jsoup/nodes/SearchResult;->endPosition:I

    iget v3, p1, Lorg/jsoup/nodes/SearchResult;->endPosition:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/jsoup/nodes/SearchResult;->endOffset:I

    iget v3, p1, Lorg/jsoup/nodes/SearchResult;->endOffset:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/jsoup/nodes/SearchResult;->text:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/nodes/SearchResult;->text:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/jsoup/internal/StringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jsoup/nodes/SearchResult;->leftText:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/nodes/SearchResult;->leftText:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/jsoup/internal/StringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jsoup/nodes/SearchResult;->rightText:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/nodes/SearchResult;->rightText:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/jsoup/internal/StringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jsoup/nodes/SearchResult;->startXPath:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/nodes/SearchResult;->startXPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/jsoup/internal/StringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/jsoup/nodes/SearchResult;->endXPath:Ljava/lang/String;

    iget-object p1, p1, Lorg/jsoup/nodes/SearchResult;->endXPath:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/jsoup/internal/StringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

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

.method public getEndOffset()I
    .locals 0

    iget p0, p0, Lorg/jsoup/nodes/SearchResult;->endOffset:I

    return p0
.end method

.method public getEndPosition()I
    .locals 0

    iget p0, p0, Lorg/jsoup/nodes/SearchResult;->endPosition:I

    return p0
.end method

.method public getEndXPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/SearchResult;->endXPath:Ljava/lang/String;

    return-object p0
.end method

.method public getStartOffset()I
    .locals 0

    iget p0, p0, Lorg/jsoup/nodes/SearchResult;->startOffset:I

    return p0
.end method

.method public getStartPosition()I
    .locals 0

    iget p0, p0, Lorg/jsoup/nodes/SearchResult;->startPosition:I

    return p0
.end method

.method public getStartXPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/SearchResult;->startXPath:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 9

    iget-object v0, p0, Lorg/jsoup/nodes/SearchResult;->text:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/nodes/SearchResult;->leftText:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/nodes/SearchResult;->rightText:Ljava/lang/String;

    iget-object v3, p0, Lorg/jsoup/nodes/SearchResult;->startXPath:Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/nodes/SearchResult;->startPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lorg/jsoup/nodes/SearchResult;->startOffset:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lorg/jsoup/nodes/SearchResult;->endXPath:Ljava/lang/String;

    iget v7, p0, Lorg/jsoup/nodes/SearchResult;->endPosition:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Lorg/jsoup/nodes/SearchResult;->endOffset:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isInvalid()Z
    .locals 2

    iget v0, p0, Lorg/jsoup/nodes/SearchResult;->startPosition:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    iget p0, p0, Lorg/jsoup/nodes/SearchResult;->endPosition:I

    if-ne p0, v1, :cond_0

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

.method public setEndOffset(I)V
    .locals 0

    iput p1, p0, Lorg/jsoup/nodes/SearchResult;->endOffset:I

    return-void
.end method

.method public setEndPosition(I)V
    .locals 0

    iput p1, p0, Lorg/jsoup/nodes/SearchResult;->endPosition:I

    return-void
.end method

.method public setEndXPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/SearchResult;->endXPath:Ljava/lang/String;

    return-void
.end method

.method public setStartOffset(I)V
    .locals 0

    iput p1, p0, Lorg/jsoup/nodes/SearchResult;->startOffset:I

    return-void
.end method

.method public setStartPosition(I)V
    .locals 0

    iput p1, p0, Lorg/jsoup/nodes/SearchResult;->startPosition:I

    return-void
.end method

.method public setStartXPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/SearchResult;->startXPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jsoup/nodes/SearchResult;->leftText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/nodes/SearchResult;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/jsoup/nodes/SearchResult;->rightText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
