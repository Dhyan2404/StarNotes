.class final Lsun/text/CharacterIteratorCodePointIterator;
.super Lsun/text/CodePointIterator;
.source "SourceFile"


# instance fields
.field private iter:Ljava/text/CharacterIterator;


# direct methods
.method public constructor <init>(Ljava/text/CharacterIterator;)V
    .locals 0

    invoke-direct {p0}, Lsun/text/CodePointIterator;-><init>()V

    iput-object p1, p0, Lsun/text/CharacterIteratorCodePointIterator;->iter:Ljava/text/CharacterIterator;

    return-void
.end method


# virtual methods
.method public charIndex()I
    .locals 0

    iget-object p0, p0, Lsun/text/CharacterIteratorCodePointIterator;->iter:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p0

    return p0
.end method

.method public next()I
    .locals 4

    iget-object v0, p0, Lsun/text/CharacterIteratorCodePointIterator;->iter:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lsun/text/CharacterIteratorCodePointIterator;->iter:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v2, v1, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lsun/text/CharacterIteratorCodePointIterator;->iter:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public prev()I
    .locals 3

    iget-object v0, p0, Lsun/text/CharacterIteratorCodePointIterator;->iter:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->previous()C

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/text/CharacterIteratorCodePointIterator;->iter:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->previous()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lsun/text/CharacterIteratorCodePointIterator;->iter:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    :cond_1
    return v0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public setToLimit()V
    .locals 1

    iget-object p0, p0, Lsun/text/CharacterIteratorCodePointIterator;->iter:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    return-void
.end method

.method public setToStart()V
    .locals 1

    iget-object p0, p0, Lsun/text/CharacterIteratorCodePointIterator;->iter:Ljava/text/CharacterIterator;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    return-void
.end method
