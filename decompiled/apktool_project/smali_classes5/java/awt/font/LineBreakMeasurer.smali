.class public final Ljava/awt/font/LineBreakMeasurer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private breakIter:Ljava/text/BreakIterator;

.field private charIter:Ljava/awt/font/CharArrayIterator;

.field private limit:I

.field private measurer:Ljava/awt/font/TextMeasurer;

.field private pos:I

.field private start:I


# direct methods
.method public constructor <init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Ljava/awt/font/LineBreakMeasurer;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/text/BreakIterator;Ljava/awt/font/FontRenderContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;Ljava/text/BreakIterator;Ljava/awt/font/FontRenderContext;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 4
    iput-object p2, p0, Ljava/awt/font/LineBreakMeasurer;->breakIter:Ljava/text/BreakIterator;

    .line 5
    new-instance p2, Ljava/awt/font/TextMeasurer;

    invoke-direct {p2, p1, p3}, Ljava/awt/font/TextMeasurer;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    iput-object p2, p0, Ljava/awt/font/LineBreakMeasurer;->measurer:Ljava/awt/font/TextMeasurer;

    .line 6
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p2

    iput p2, p0, Ljava/awt/font/LineBreakMeasurer;->limit:I

    .line 7
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result p1

    iput p1, p0, Ljava/awt/font/LineBreakMeasurer;->start:I

    iput p1, p0, Ljava/awt/font/LineBreakMeasurer;->pos:I

    .line 8
    new-instance p1, Ljava/awt/font/CharArrayIterator;

    iget-object p2, p0, Ljava/awt/font/LineBreakMeasurer;->measurer:Ljava/awt/font/TextMeasurer;

    invoke-virtual {p2}, Ljava/awt/font/TextMeasurer;->getChars()[C

    move-result-object p2

    iget p3, p0, Ljava/awt/font/LineBreakMeasurer;->start:I

    invoke-direct {p1, p2, p3}, Ljava/awt/font/CharArrayIterator;-><init>([CI)V

    iput-object p1, p0, Ljava/awt/font/LineBreakMeasurer;->charIter:Ljava/awt/font/CharArrayIterator;

    .line 9
    iget-object p0, p0, Ljava/awt/font/LineBreakMeasurer;->breakIter:Ljava/text/BreakIterator;

    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Text must contain at least one character."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public deleteChar(Ljava/text/AttributedCharacterIterator;I)V
    .locals 1

    iget-object v0, p0, Ljava/awt/font/LineBreakMeasurer;->measurer:Ljava/awt/font/TextMeasurer;

    invoke-virtual {v0, p1, p2}, Ljava/awt/font/TextMeasurer;->deleteChar(Ljava/text/AttributedCharacterIterator;I)V

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p2

    iput p2, p0, Ljava/awt/font/LineBreakMeasurer;->limit:I

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result p1

    iput p1, p0, Ljava/awt/font/LineBreakMeasurer;->start:I

    iput p1, p0, Ljava/awt/font/LineBreakMeasurer;->pos:I

    iget-object p1, p0, Ljava/awt/font/LineBreakMeasurer;->charIter:Ljava/awt/font/CharArrayIterator;

    iget-object p2, p0, Ljava/awt/font/LineBreakMeasurer;->measurer:Ljava/awt/font/TextMeasurer;

    invoke-virtual {p2}, Ljava/awt/font/TextMeasurer;->getChars()[C

    move-result-object p2

    iget v0, p0, Ljava/awt/font/LineBreakMeasurer;->start:I

    invoke-virtual {p1, p2, v0}, Ljava/awt/font/CharArrayIterator;->reset([CI)V

    iget-object p1, p0, Ljava/awt/font/LineBreakMeasurer;->breakIter:Ljava/text/BreakIterator;

    iget-object p0, p0, Ljava/awt/font/LineBreakMeasurer;->charIter:Ljava/awt/font/CharArrayIterator;

    invoke-virtual {p1, p0}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Ljava/awt/font/LineBreakMeasurer;->pos:I

    return p0
.end method

.method public insertChar(Ljava/text/AttributedCharacterIterator;I)V
    .locals 1

    iget-object v0, p0, Ljava/awt/font/LineBreakMeasurer;->measurer:Ljava/awt/font/TextMeasurer;

    invoke-virtual {v0, p1, p2}, Ljava/awt/font/TextMeasurer;->insertChar(Ljava/text/AttributedCharacterIterator;I)V

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p2

    iput p2, p0, Ljava/awt/font/LineBreakMeasurer;->limit:I

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result p2

    iput p2, p0, Ljava/awt/font/LineBreakMeasurer;->start:I

    iput p2, p0, Ljava/awt/font/LineBreakMeasurer;->pos:I

    iget-object p2, p0, Ljava/awt/font/LineBreakMeasurer;->charIter:Ljava/awt/font/CharArrayIterator;

    iget-object v0, p0, Ljava/awt/font/LineBreakMeasurer;->measurer:Ljava/awt/font/TextMeasurer;

    invoke-virtual {v0}, Ljava/awt/font/TextMeasurer;->getChars()[C

    move-result-object v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Ljava/awt/font/CharArrayIterator;->reset([CI)V

    iget-object p1, p0, Ljava/awt/font/LineBreakMeasurer;->breakIter:Ljava/text/BreakIterator;

    iget-object p0, p0, Ljava/awt/font/LineBreakMeasurer;->charIter:Ljava/awt/font/CharArrayIterator;

    invoke-virtual {p1, p0}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method public nextLayout(F)Ljava/awt/font/TextLayout;
    .locals 2

    .line 1
    iget v0, p0, Ljava/awt/font/LineBreakMeasurer;->limit:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object p0

    return-object p0
.end method

.method public nextLayout(FIZ)Ljava/awt/font/TextLayout;
    .locals 3

    .line 2
    iget v0, p0, Ljava/awt/font/LineBreakMeasurer;->pos:I

    iget v1, p0, Ljava/awt/font/LineBreakMeasurer;->limit:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/font/LineBreakMeasurer;->nextOffset(FIZ)I

    move-result p1

    .line 4
    iget p2, p0, Ljava/awt/font/LineBreakMeasurer;->pos:I

    if-ne p1, p2, :cond_0

    return-object v2

    .line 5
    :cond_0
    iget-object p3, p0, Ljava/awt/font/LineBreakMeasurer;->measurer:Ljava/awt/font/TextMeasurer;

    invoke-virtual {p3, p2, p1}, Ljava/awt/font/TextMeasurer;->getLayout(II)Ljava/awt/font/TextLayout;

    move-result-object p2

    .line 6
    iput p1, p0, Ljava/awt/font/LineBreakMeasurer;->pos:I

    return-object p2

    :cond_1
    return-object v2
.end method

.method public nextOffset(F)I
    .locals 2

    .line 1
    iget v0, p0, Ljava/awt/font/LineBreakMeasurer;->limit:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljava/awt/font/LineBreakMeasurer;->nextOffset(FIZ)I

    move-result p0

    return p0
.end method

.method public nextOffset(FIZ)I
    .locals 3

    .line 2
    iget v0, p0, Ljava/awt/font/LineBreakMeasurer;->pos:I

    .line 3
    iget v1, p0, Ljava/awt/font/LineBreakMeasurer;->limit:I

    if-ge v0, v1, :cond_5

    if-le p2, v0, :cond_4

    .line 4
    iget-object v1, p0, Ljava/awt/font/LineBreakMeasurer;->measurer:Ljava/awt/font/TextMeasurer;

    .line 5
    invoke-virtual {v1, v0, p1}, Ljava/awt/font/TextMeasurer;->getLineBreakIndex(IF)I

    move-result p1

    .line 6
    iget v0, p0, Ljava/awt/font/LineBreakMeasurer;->limit:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Ljava/awt/font/LineBreakMeasurer;->measurer:Ljava/awt/font/TextMeasurer;

    invoke-virtual {v0}, Ljava/awt/font/TextMeasurer;->getChars()[C

    move-result-object v0

    iget v1, p0, Ljava/awt/font/LineBreakMeasurer;->start:I

    sub-int v1, p1, v1

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/awt/font/LineBreakMeasurer;->breakIter:Ljava/text/BreakIterator;

    .line 8
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    iget v1, p0, Ljava/awt/font/LineBreakMeasurer;->limit:I

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Ljava/awt/font/LineBreakMeasurer;->measurer:Ljava/awt/font/TextMeasurer;

    .line 9
    invoke-virtual {v1}, Ljava/awt/font/TextMeasurer;->getChars()[C

    move-result-object v1

    iget v2, p0, Ljava/awt/font/LineBreakMeasurer;->limit:I

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 10
    iget v1, p0, Ljava/awt/font/LineBreakMeasurer;->limit:I

    if-ne v0, v1, :cond_2

    .line 11
    iget-object v0, p0, Ljava/awt/font/LineBreakMeasurer;->breakIter:Ljava/text/BreakIterator;

    invoke-virtual {v0}, Ljava/text/BreakIterator;->last()I

    .line 12
    iget-object v0, p0, Ljava/awt/font/LineBreakMeasurer;->breakIter:Ljava/text/BreakIterator;

    invoke-virtual {v0}, Ljava/text/BreakIterator;->previous()I

    move-result v0

    goto :goto_0

    .line 13
    :cond_2
    iget-object v1, p0, Ljava/awt/font/LineBreakMeasurer;->breakIter:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 14
    :goto_0
    iget p0, p0, Ljava/awt/font/LineBreakMeasurer;->pos:I

    if-gt v0, p0, :cond_5

    if-eqz p3, :cond_3

    move v0, p0

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 16
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offsetLimit must be after current position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    if-le v0, p2, :cond_6

    goto :goto_2

    :cond_6
    move p2, v0

    :goto_2
    return p2
.end method

.method public setPosition(I)V
    .locals 1

    iget v0, p0, Ljava/awt/font/LineBreakMeasurer;->start:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/awt/font/LineBreakMeasurer;->limit:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Ljava/awt/font/LineBreakMeasurer;->pos:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "position is out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
