.class final Lsun/text/CharSequenceCodePointIterator;
.super Lsun/text/CodePointIterator;
.source "SourceFile"


# instance fields
.field private index:I

.field private text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Lsun/text/CodePointIterator;-><init>()V

    iput-object p1, p0, Lsun/text/CharSequenceCodePointIterator;->text:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public charIndex()I
    .locals 0

    iget p0, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

    return p0
.end method

.method public next()I
    .locals 3

    iget v0, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

    iget-object v1, p0, Lsun/text/CharSequenceCodePointIterator;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lsun/text/CharSequenceCodePointIterator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

    iget-object v2, p0, Lsun/text/CharSequenceCodePointIterator;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lsun/text/CharSequenceCodePointIterator;->text:Ljava/lang/CharSequence;

    iget v2, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

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

    iget v0, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lsun/text/CharSequenceCodePointIterator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lsun/text/CharSequenceCodePointIterator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

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

    iget-object v0, p0, Lsun/text/CharSequenceCodePointIterator;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

    return-void
.end method

.method public setToStart()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lsun/text/CharSequenceCodePointIterator;->index:I

    return-void
.end method
