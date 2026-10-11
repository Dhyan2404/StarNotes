.class final Lsun/text/CharArrayCodePointIterator;
.super Lsun/text/CodePointIterator;
.source "SourceFile"


# instance fields
.field private index:I

.field private limit:I

.field private start:I

.field private text:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/text/CodePointIterator;-><init>()V

    .line 2
    iput-object p1, p0, Lsun/text/CharArrayCodePointIterator;->text:[C

    .line 3
    array-length p1, p1

    iput p1, p0, Lsun/text/CharArrayCodePointIterator;->limit:I

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lsun/text/CodePointIterator;-><init>()V

    if-ltz p2, :cond_0

    if-lt p3, p2, :cond_0

    .line 5
    array-length v0, p1

    if-gt p3, v0, :cond_0

    .line 6
    iput-object p1, p0, Lsun/text/CharArrayCodePointIterator;->text:[C

    .line 7
    iput p2, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    iput p2, p0, Lsun/text/CharArrayCodePointIterator;->start:I

    .line 8
    iput p3, p0, Lsun/text/CharArrayCodePointIterator;->limit:I

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public charIndex()I
    .locals 0

    iget p0, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    return p0
.end method

.method public next()I
    .locals 3

    iget v0, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    iget v1, p0, Lsun/text/CharArrayCodePointIterator;->limit:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lsun/text/CharArrayCodePointIterator;->text:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    aget-char v0, v1, v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    iget v2, p0, Lsun/text/CharArrayCodePointIterator;->limit:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lsun/text/CharArrayCodePointIterator;->text:[C

    aget-char v1, v2, v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

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

    iget v0, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    iget v1, p0, Lsun/text/CharArrayCodePointIterator;->start:I

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lsun/text/CharArrayCodePointIterator;->text:[C

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    aget-char v0, v1, v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    iget v2, p0, Lsun/text/CharArrayCodePointIterator;->start:I

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lsun/text/CharArrayCodePointIterator;->text:[C

    add-int/lit8 v1, v1, -0x1

    aget-char v1, v2, v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public setToLimit()V
    .locals 1

    iget v0, p0, Lsun/text/CharArrayCodePointIterator;->limit:I

    iput v0, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    return-void
.end method

.method public setToStart()V
    .locals 1

    iget v0, p0, Lsun/text/CharArrayCodePointIterator;->start:I

    iput v0, p0, Lsun/text/CharArrayCodePointIterator;->index:I

    return-void
.end method
