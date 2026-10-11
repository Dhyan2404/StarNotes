.class public final Lsun/font/FontRunIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DONE:I = -0x1

.field static final LEAD_LIMIT:I = 0xdc00

.field static final LEAD_START:I = 0xd800

.field static final LEAD_SURROGATE_SHIFT:I = 0xa

.field static final SURROGATE_OFFSET:I = -0x35fdc00

.field static final SURROGATE_START:I = 0x10000

.field static final TAIL_LIMIT:I = 0xe000

.field static final TAIL_START:I = 0xdc00


# instance fields
.field font:Lsun/font/CompositeFont;

.field limit:I

.field mapper:Lsun/font/CompositeGlyphMapper;

.field pos:I

.field slot:I

.field start:I

.field text:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lsun/font/FontRunIterator;->slot:I

    return-void
.end method


# virtual methods
.method public getFont()Lsun/font/PhysicalFont;
    .locals 2

    iget v0, p0, Lsun/font/FontRunIterator;->slot:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lsun/font/FontRunIterator;->font:Lsun/font/CompositeFont;

    invoke-virtual {p0, v0}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getGlyphMask()I
    .locals 0

    iget p0, p0, Lsun/font/FontRunIterator;->slot:I

    shl-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public getPos()I
    .locals 0

    iget p0, p0, Lsun/font/FontRunIterator;->pos:I

    return p0
.end method

.method public init(Lsun/font/CompositeFont;[CII)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    if-lt p4, p3, :cond_0

    array-length v0, p2

    if-gt p4, v0, :cond_0

    iput-object p1, p0, Lsun/font/FontRunIterator;->font:Lsun/font/CompositeFont;

    iput-object p2, p0, Lsun/font/FontRunIterator;->text:[C

    iput p3, p0, Lsun/font/FontRunIterator;->start:I

    iput p4, p0, Lsun/font/FontRunIterator;->limit:I

    invoke-virtual {p1}, Lsun/font/CompositeFont;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p1

    check-cast p1, Lsun/font/CompositeGlyphMapper;

    iput-object p1, p0, Lsun/font/FontRunIterator;->mapper:Lsun/font/CompositeGlyphMapper;

    const/4 p1, -0x1

    iput p1, p0, Lsun/font/FontRunIterator;->slot:I

    iput p3, p0, Lsun/font/FontRunIterator;->pos:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public next()Z
    .locals 2

    const/4 v0, 0x0

    .line 7
    iget v1, p0, Lsun/font/FontRunIterator;->limit:I

    invoke-virtual {p0, v0, v1}, Lsun/font/FontRunIterator;->next(II)Z

    move-result p0

    return p0
.end method

.method public next(II)Z
    .locals 3

    .line 1
    iget p1, p0, Lsun/font/FontRunIterator;->pos:I

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lsun/font/FontRunIterator;->nextCodePoint(I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lsun/font/FontRunIterator;->mapper:Lsun/font/CompositeGlyphMapper;

    invoke-virtual {v0, p1}, Lsun/font/CompositeGlyphMapper;->charToGlyph(I)I

    move-result p1

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    ushr-int/lit8 v1, p1, 0x18

    .line 4
    iput v1, p0, Lsun/font/FontRunIterator;->slot:I

    .line 5
    :goto_0
    invoke-virtual {p0, p2}, Lsun/font/FontRunIterator;->nextCodePoint(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lsun/font/FontRunIterator;->mapper:Lsun/font/CompositeGlyphMapper;

    invoke-virtual {v2, v1}, Lsun/font/CompositeGlyphMapper;->charToGlyph(I)I

    move-result v2

    and-int/2addr v2, v0

    if-ne v2, p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Lsun/font/FontRunIterator;->pushback(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public nextCodePoint()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/font/FontRunIterator;->limit:I

    invoke-virtual {p0, v0}, Lsun/font/FontRunIterator;->nextCodePoint(I)I

    move-result p0

    return p0
.end method

.method public nextCodePoint(I)I
    .locals 4

    .line 2
    iget v0, p0, Lsun/font/FontRunIterator;->pos:I

    if-lt v0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    iget-object v1, p0, Lsun/font/FontRunIterator;->text:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lsun/font/FontRunIterator;->pos:I

    aget-char v0, v1, v0

    const v3, 0xd800

    if-lt v0, v3, :cond_1

    const v3, 0xdc00

    if-ge v0, v3, :cond_1

    if-ge v2, p1, :cond_1

    .line 4
    aget-char p1, v1, v2

    if-lt p1, v3, :cond_1

    const v1, 0xe000

    if-ge p1, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 5
    iput v2, p0, Lsun/font/FontRunIterator;->pos:I

    shl-int/lit8 p0, v0, 0xa

    add-int/2addr p0, p1

    const p1, -0x35fdc00

    add-int v0, p0, p1

    :cond_1
    return v0
.end method

.method public pushback(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_0

    iget p1, p0, Lsun/font/FontRunIterator;->pos:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lsun/font/FontRunIterator;->pos:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lsun/font/FontRunIterator;->pos:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lsun/font/FontRunIterator;->pos:I

    :cond_1
    :goto_0
    return-void
.end method
