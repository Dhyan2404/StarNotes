.class Lsun/font/CMap$CMapFormat4;
.super Lsun/font/CMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMapFormat4"
.end annotation


# instance fields
.field endCount:[C

.field entrySelector:I

.field glyphIds:[C

.field idDelta:[S

.field idRangeOffset:[C

.field rangeShift:I

.field segCount:I

.field startCount:[C


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I[C)V
    .locals 4

    invoke-direct {p0}, Lsun/font/CMap;-><init>()V

    iput-object p3, p0, Lsun/font/CMap;->xlat:[C

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    add-int v1, p2, v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    sub-int v0, p1, p2

    :cond_0
    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lsun/font/CMap$CMapFormat4;->segCount:I

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result p1

    iput p1, p0, Lsun/font/CMap$CMapFormat4;->entrySelector:I

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lsun/font/CMap$CMapFormat4;->rangeShift:I

    iget p1, p0, Lsun/font/CMap$CMapFormat4;->segCount:I

    new-array p2, p1, [C

    iput-object p2, p0, Lsun/font/CMap$CMapFormat4;->startCount:[C

    new-array p2, p1, [C

    iput-object p2, p0, Lsun/font/CMap$CMapFormat4;->endCount:[C

    new-array p2, p1, [S

    iput-object p2, p0, Lsun/font/CMap$CMapFormat4;->idDelta:[S

    new-array p1, p1, [C

    iput-object p1, p0, Lsun/font/CMap$CMapFormat4;->idRangeOffset:[C

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget v1, p0, Lsun/font/CMap$CMapFormat4;->segCount:I

    if-ge p2, v1, :cond_1

    iget-object v1, p0, Lsun/font/CMap$CMapFormat4;->endCount:[C

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    aput-char v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move p2, p1

    :goto_1
    iget v1, p0, Lsun/font/CMap$CMapFormat4;->segCount:I

    if-ge p2, v1, :cond_2

    iget-object v1, p0, Lsun/font/CMap$CMapFormat4;->startCount:[C

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    aput-char v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    move p2, p1

    :goto_2
    iget v1, p0, Lsun/font/CMap$CMapFormat4;->segCount:I

    if-ge p2, v1, :cond_3

    iget-object v1, p0, Lsun/font/CMap$CMapFormat4;->idDelta:[S

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    move p2, p1

    :goto_3
    iget v1, p0, Lsun/font/CMap$CMapFormat4;->segCount:I

    if-ge p2, v1, :cond_4

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    iget-object v2, p0, Lsun/font/CMap$CMapFormat4;->idRangeOffset:[C

    shr-int/lit8 v1, v1, 0x1

    const v3, 0xffff

    and-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p3, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v1

    new-array p2, v0, [C

    iput-object p2, p0, Lsun/font/CMap$CMapFormat4;->glyphIds:[C

    :goto_4
    if-ge p1, v0, :cond_5

    iget-object p2, p0, Lsun/font/CMap$CMapFormat4;->glyphIds:[C

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    aput-char v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method


# virtual methods
.method public getGlyph(I)C
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/font/CMap;->getControlCodeGlyph(IZ)I

    move-result v1

    if-ltz v1, :cond_0

    int-to-char p0, v1

    return p0

    :cond_0
    iget-object v1, p0, Lsun/font/CMap;->xlat:[C

    if-eqz v1, :cond_1

    aget-char v1, v1, p1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    iget-object v2, p0, Lsun/font/CMap$CMapFormat4;->startCount:[C

    array-length v3, v2

    array-length v2, v2

    shr-int/2addr v2, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_3

    iget-object v6, p0, Lsun/font/CMap$CMapFormat4;->endCount:[C

    aget-char v6, v6, v2

    if-ge v6, v1, :cond_2

    add-int/lit8 v5, v2, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    add-int v2, v5, v3

    shr-int/2addr v2, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lsun/font/CMap$CMapFormat4;->startCount:[C

    aget-char v0, v0, v2

    if-lt v1, v0, :cond_5

    iget-object v3, p0, Lsun/font/CMap$CMapFormat4;->endCount:[C

    aget-char v3, v3, v2

    if-gt v1, v3, :cond_5

    iget-object v3, p0, Lsun/font/CMap$CMapFormat4;->idRangeOffset:[C

    aget-char v3, v3, v2

    if-nez v3, :cond_4

    iget-object v0, p0, Lsun/font/CMap$CMapFormat4;->idDelta:[S

    aget-short v0, v0, v2

    add-int/2addr v1, v0

    int-to-char v4, v1

    goto :goto_3

    :cond_4
    iget v4, p0, Lsun/font/CMap$CMapFormat4;->segCount:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    sub-int/2addr v1, v0

    add-int/2addr v3, v1

    iget-object v0, p0, Lsun/font/CMap$CMapFormat4;->glyphIds:[C

    aget-char v4, v0, v3

    if-eqz v4, :cond_5

    iget-object v0, p0, Lsun/font/CMap$CMapFormat4;->idDelta:[S

    aget-short v0, v0, v2

    add-int/2addr v4, v0

    int-to-char v4, v4

    :cond_5
    :goto_3
    if-nez v4, :cond_6

    invoke-virtual {p0, p1}, Lsun/font/CMap;->getFormatCharGlyph(I)C

    move-result v4

    :cond_6
    return v4
.end method
