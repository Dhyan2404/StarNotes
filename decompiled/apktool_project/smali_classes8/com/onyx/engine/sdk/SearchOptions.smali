.class public Lcom/onyx/engine/sdk/SearchOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private abort:Z

.field private caseSensitive:Z

.field private chapterIndex:I

.field private contextLength:I

.field private endPosition:I

.field private limit:I

.field private matchWholeWord:Z

.field private paraChar:Lcom/onyx/engine/sdk/SearchParaChar;

.field private searchText:Ljava/lang/String;

.field private startPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/engine/sdk/SearchOptions;->chapterIndex:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/onyx/engine/sdk/SearchOptions;->endPosition:I

    iput v0, p0, Lcom/onyx/engine/sdk/SearchOptions;->limit:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/SearchOptions;->caseSensitive:Z

    sget-object v0, Lcom/onyx/engine/sdk/SearchParaChar;->NORMAL:Lcom/onyx/engine/sdk/SearchParaChar;

    iput-object v0, p0, Lcom/onyx/engine/sdk/SearchOptions;->paraChar:Lcom/onyx/engine/sdk/SearchParaChar;

    return-void
.end method


# virtual methods
.method public getChapterIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/SearchOptions;->chapterIndex:I

    return p0
.end method

.method public getContextLength()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/SearchOptions;->contextLength:I

    return p0
.end method

.method public getEndPosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/SearchOptions;->endPosition:I

    return p0
.end method

.method public getLimit()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/SearchOptions;->limit:I

    return p0
.end method

.method public getParaChar()Lcom/onyx/engine/sdk/SearchParaChar;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SearchOptions;->paraChar:Lcom/onyx/engine/sdk/SearchParaChar;

    return-object p0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SearchOptions;->searchText:Ljava/lang/String;

    return-object p0
.end method

.method public getStartPosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/SearchOptions;->startPosition:I

    return p0
.end method

.method public isAbort()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/SearchOptions;->abort:Z

    return p0
.end method

.method public isCaseSensitive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/SearchOptions;->caseSensitive:Z

    return p0
.end method

.method public isMatchWholeWord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/SearchOptions;->matchWholeWord:Z

    return p0
.end method

.method public setAbort(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/SearchOptions;->abort:Z

    return-void
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/SearchOptions;->caseSensitive:Z

    return-void
.end method

.method public setChapterIndex(I)Lcom/onyx/engine/sdk/SearchOptions;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/SearchOptions;->chapterIndex:I

    return-object p0
.end method

.method public setContextLength(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/SearchOptions;->contextLength:I

    return-void
.end method

.method public setEndPosition(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/SearchOptions;->endPosition:I

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/SearchOptions;->limit:I

    return-void
.end method

.method public setMatchWholeWord(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/SearchOptions;->matchWholeWord:Z

    return-void
.end method

.method public setParaChar(I)Lcom/onyx/engine/sdk/SearchOptions;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/onyx/engine/sdk/SearchParaChar;->valueOf(I)Lcom/onyx/engine/sdk/SearchParaChar;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/SearchOptions;->paraChar:Lcom/onyx/engine/sdk/SearchParaChar;

    return-object p0
.end method

.method public setParaChar(Lcom/onyx/engine/sdk/SearchParaChar;)Lcom/onyx/engine/sdk/SearchOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onyx/engine/sdk/SearchOptions;->paraChar:Lcom/onyx/engine/sdk/SearchParaChar;

    return-object p0
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SearchOptions;->searchText:Ljava/lang/String;

    return-void
.end method

.method public setStartPosition(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/SearchOptions;->startPosition:I

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchOptions{searchText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/SearchOptions;->searchText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", chapterIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/SearchOptions;->chapterIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contextLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/SearchOptions;->contextLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/SearchOptions;->startPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/SearchOptions;->endPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/SearchOptions;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", matchWholeWord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/SearchOptions;->matchWholeWord:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", caseSensitive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/SearchOptions;->caseSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", abort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/SearchOptions;->abort:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
