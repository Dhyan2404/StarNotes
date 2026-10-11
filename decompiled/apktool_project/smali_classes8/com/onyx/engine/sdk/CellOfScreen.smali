.class public Lcom/onyx/engine/sdk/CellOfScreen;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bidi:Z

.field private cjk:Z

.field private firstLetter:Z

.field private fontEntry:Lcom/onyx/engine/sdk/FontEntry;

.field private halfWord:Z

.field private lang:Ljava/lang/String;

.field private lineNumber:I

.field private originWord:Ljava/lang/String;

.field private paraNumber:I

.field private position:Lcom/onyx/engine/sdk/PinPosition;

.field private punctuation:Z

.field private rect:Landroid/graphics/RectF;

.field private rt:Z

.field private textOffset:I

.field private whiteSpace:Z

.field private word:Ljava/lang/String;

.field private writingMode:Lcom/onyx/engine/sdk/WritingMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFontEntry()Lcom/onyx/engine/sdk/FontEntry;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->fontEntry:Lcom/onyx/engine/sdk/FontEntry;

    return-object p0
.end method

.method public getLang()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->lineNumber:I

    return p0
.end method

.method public getOriginWord()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->originWord:Ljava/lang/String;

    return-object p0
.end method

.method public getParaNumber()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->paraNumber:I

    return p0
.end method

.method public getPosition()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->position:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getTextLength()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->originWord:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public getTextOffset()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->textOffset:I

    return p0
.end method

.method public getWord()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->word:Ljava/lang/String;

    return-object p0
.end method

.method public getWritingMode()Lcom/onyx/engine/sdk/WritingMode;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->writingMode:Lcom/onyx/engine/sdk/WritingMode;

    return-object p0
.end method

.method public isBidi()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->bidi:Z

    return p0
.end method

.method public isCjk()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->cjk:Z

    return p0
.end method

.method public isFirstLetter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->firstLetter:Z

    return p0
.end method

.method public isHalfWord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->halfWord:Z

    return p0
.end method

.method public isPunctuation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->punctuation:Z

    return p0
.end method

.method public isRt()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->rt:Z

    return p0
.end method

.method public isWhiteSpace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->whiteSpace:Z

    return p0
.end method

.method public setBidi(Z)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->bidi:Z

    return-object p0
.end method

.method public setCjk(Z)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->cjk:Z

    return-object p0
.end method

.method public setFirstLetter(Z)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->firstLetter:Z

    return-object p0
.end method

.method public setFontEntry(Lcom/onyx/engine/sdk/FontEntry;)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->fontEntry:Lcom/onyx/engine/sdk/FontEntry;

    return-object p0
.end method

.method public setHalfWord(Z)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->halfWord:Z

    return-object p0
.end method

.method public setLang(Ljava/lang/String;)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public setLineNumber(I)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->lineNumber:I

    return-object p0
.end method

.method public setOriginWord(Ljava/lang/String;)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->originWord:Ljava/lang/String;

    return-object p0
.end method

.method public setParaNumber(I)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->paraNumber:I

    return-object p0
.end method

.method public setPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->position:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setPunctuation(Z)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->punctuation:Z

    return-object p0
.end method

.method public setRect(Landroid/graphics/RectF;)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public setRt(Z)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->rt:Z

    return-object p0
.end method

.method public setTextOffset(I)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->textOffset:I

    return-object p0
.end method

.method public setWhiteSpace(Z)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->whiteSpace:Z

    return-object p0
.end method

.method public setWord(Ljava/lang/String;)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->word:Ljava/lang/String;

    return-object p0
.end method

.method public setWritingMode(Lcom/onyx/engine/sdk/WritingMode;)Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->writingMode:Lcom/onyx/engine/sdk/WritingMode;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellOfScreen{rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", word=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", originWord=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/CellOfScreen;->originWord:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lang=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/CellOfScreen;->lang:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", writingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->writingMode:Lcom/onyx/engine/sdk/WritingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->position:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->textOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lineNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paraNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->paraNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", halfWord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->halfWord:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", whiteSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->whiteSpace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", punctuation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->punctuation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cjk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->cjk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->rt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bidi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->bidi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", firstLetter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/CellOfScreen;->firstLetter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fontEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/engine/sdk/CellOfScreen;->fontEntry:Lcom/onyx/engine/sdk/FontEntry;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
