.class Lsun/font/CMap$CMapFormat12;
.super Lsun/font/CMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMapFormat12"
.end annotation


# instance fields
.field endCharCode:[J

.field extra:I

.field highBit:I

.field numGroups:I

.field power:I

.field startCharCode:[J

.field startGlyphID:[I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I[C)V
    .locals 7

    invoke-direct {p0}, Lsun/font/CMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/font/CMap$CMapFormat12;->highBit:I

    if-nez p3, :cond_7

    add-int/lit8 p2, p2, 0xc

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    iput p2, p0, Lsun/font/CMap$CMapFormat12;->numGroups:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    int-to-long v1, p2

    iget p2, p0, Lsun/font/CMap$CMapFormat12;->numGroups:I

    int-to-long v3, p2

    const-wide/16 v5, 0xc

    mul-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_6

    new-array v1, p2, [J

    iput-object v1, p0, Lsun/font/CMap$CMapFormat12;->startCharCode:[J

    new-array v1, p2, [J

    iput-object v1, p0, Lsun/font/CMap$CMapFormat12;->endCharCode:[J

    new-array p2, p2, [I

    iput-object p2, p0, Lsun/font/CMap$CMapFormat12;->startGlyphID:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    :goto_0
    iget p2, p0, Lsun/font/CMap$CMapFormat12;->numGroups:I

    if-ge v0, p2, :cond_0

    iget-object p2, p0, Lsun/font/CMap$CMapFormat12;->startCharCode:[J

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v1

    and-int/2addr v1, p3

    int-to-long v1, v1

    aput-wide v1, p2, v0

    iget-object p2, p0, Lsun/font/CMap$CMapFormat12;->endCharCode:[J

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v1

    and-int/2addr v1, p3

    int-to-long v1, v1

    aput-wide v1, p2, v0

    iget-object p2, p0, Lsun/font/CMap$CMapFormat12;->startGlyphID:[I

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v1

    and-int/2addr v1, p3

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10000

    const/16 p3, 0x10

    if-lt p2, p1, :cond_1

    shr-int/lit8 p1, p2, 0x10

    iget v0, p0, Lsun/font/CMap$CMapFormat12;->highBit:I

    add-int/2addr v0, p3

    iput v0, p0, Lsun/font/CMap$CMapFormat12;->highBit:I

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    const/16 v0, 0x100

    if-lt p1, v0, :cond_2

    shr-int/lit8 p1, p1, 0x8

    iget v0, p0, Lsun/font/CMap$CMapFormat12;->highBit:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lsun/font/CMap$CMapFormat12;->highBit:I

    :cond_2
    const/4 v0, 0x4

    if-lt p1, p3, :cond_3

    shr-int/lit8 p1, p1, 0x4

    iget p3, p0, Lsun/font/CMap$CMapFormat12;->highBit:I

    add-int/2addr p3, v0

    iput p3, p0, Lsun/font/CMap$CMapFormat12;->highBit:I

    :cond_3
    const/4 p3, 0x2

    if-lt p1, v0, :cond_4

    shr-int/lit8 p1, p1, 0x2

    iget v0, p0, Lsun/font/CMap$CMapFormat12;->highBit:I

    add-int/2addr v0, p3

    iput v0, p0, Lsun/font/CMap$CMapFormat12;->highBit:I

    :cond_4
    const/4 v0, 0x1

    if-lt p1, p3, :cond_5

    iget p1, p0, Lsun/font/CMap$CMapFormat12;->highBit:I

    add-int/2addr p1, v0

    iput p1, p0, Lsun/font/CMap$CMapFormat12;->highBit:I

    :cond_5
    iget p1, p0, Lsun/font/CMap$CMapFormat12;->highBit:I

    shl-int p1, v0, p1

    iput p1, p0, Lsun/font/CMap$CMapFormat12;->power:I

    sub-int/2addr p2, p1

    iput p2, p0, Lsun/font/CMap$CMapFormat12;->extra:I

    return-void

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Format 12 table exceeded"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "xlat array for cmap fmt=12"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getGlyph(I)C
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/font/CMap;->getControlCodeGlyph(IZ)I

    move-result v1

    if-ltz v1, :cond_0

    int-to-char p0, v1

    return p0

    :cond_0
    iget v1, p0, Lsun/font/CMap$CMapFormat12;->power:I

    iget-object v2, p0, Lsun/font/CMap$CMapFormat12;->startCharCode:[J

    iget v3, p0, Lsun/font/CMap$CMapFormat12;->extra:I

    aget-wide v4, v2, v3

    int-to-long v6, p1

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    :goto_0
    move v0, v3

    :cond_1
    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    shr-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lsun/font/CMap$CMapFormat12;->startCharCode:[J

    add-int v3, v0, v1

    aget-wide v4, v2, v3

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lsun/font/CMap$CMapFormat12;->startCharCode:[J

    aget-wide v1, v1, v0

    cmp-long v3, v1, v6

    if-gtz v3, :cond_3

    iget-object v3, p0, Lsun/font/CMap$CMapFormat12;->endCharCode:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, v6

    if-ltz v3, :cond_3

    iget-object p0, p0, Lsun/font/CMap$CMapFormat12;->startGlyphID:[I

    aget p0, p0, v0

    int-to-long p0, p0

    sub-long/2addr v6, v1

    add-long/2addr p0, v6

    long-to-int p0, p0

    int-to-char p0, p0

    return p0

    :cond_3
    invoke-virtual {p0, p1}, Lsun/font/CMap;->getFormatCharGlyph(I)C

    move-result p0

    return p0
.end method
