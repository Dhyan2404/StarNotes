.class Lsun/font/CMap$CMapFormat2;
.super Lsun/font/CMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMapFormat2"
.end annotation


# instance fields
.field entryCountArray:[C

.field firstCodeArray:[C

.field glyphIndexArray:[C

.field idDeltaArray:[S

.field idRangeOffSetArray:[C

.field subHeaderKey:[C


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I[C)V
    .locals 5

    invoke-direct {p0}, Lsun/font/CMap;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [C

    iput-object v1, p0, Lsun/font/CMap$CMapFormat2;->subHeaderKey:[C

    iput-object p3, p0, Lsun/font/CMap;->xlat:[C

    add-int/lit8 p3, p2, 0x2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result p3

    add-int/lit8 p2, p2, 0x6

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p1

    const/4 p2, 0x0

    move v1, p2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lsun/font/CMap$CMapFormat2;->subHeaderKey:[C

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v4

    aput-char v4, v3, v1

    iget-object v3, p0, Lsun/font/CMap$CMapFormat2;->subHeaderKey:[C

    aget-char v3, v3, v1

    if-le v3, v2, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    shr-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [C

    iput-object v1, p0, Lsun/font/CMap$CMapFormat2;->firstCodeArray:[C

    new-array v1, v0, [C

    iput-object v1, p0, Lsun/font/CMap$CMapFormat2;->entryCountArray:[C

    new-array v1, v0, [S

    iput-object v1, p0, Lsun/font/CMap$CMapFormat2;->idDeltaArray:[S

    new-array v1, v0, [C

    iput-object v1, p0, Lsun/font/CMap$CMapFormat2;->idRangeOffSetArray:[C

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lsun/font/CMap$CMapFormat2;->firstCodeArray:[C

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v3

    aput-char v3, v2, v1

    iget-object v2, p0, Lsun/font/CMap$CMapFormat2;->entryCountArray:[C

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v3

    aput-char v3, v2, v1

    iget-object v2, p0, Lsun/font/CMap$CMapFormat2;->idDeltaArray:[S

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v1

    iget-object v2, p0, Lsun/font/CMap$CMapFormat2;->idRangeOffSetArray:[C

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit16 p3, p3, -0x206

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    new-array v0, p3, [C

    iput-object v0, p0, Lsun/font/CMap$CMapFormat2;->glyphIndexArray:[C

    :goto_2
    if-ge p2, p3, :cond_3

    iget-object v0, p0, Lsun/font/CMap$CMapFormat2;->glyphIndexArray:[C

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    aput-char v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public getGlyph(I)C
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/font/CMap;->getControlCodeGlyph(IZ)I

    move-result v0

    if-ltz v0, :cond_0

    int-to-char p0, v0

    return p0

    :cond_0
    iget-object v0, p0, Lsun/font/CMap;->xlat:[C

    if-eqz v0, :cond_1

    aget-char v0, v0, p1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    shr-int/lit8 v1, v0, 0x8

    int-to-char v1, v1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iget-object v2, p0, Lsun/font/CMap$CMapFormat2;->subHeaderKey:[C

    aget-char v2, v2, v1

    shr-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    :goto_1
    move v1, v0

    :cond_3
    iget-object v0, p0, Lsun/font/CMap$CMapFormat2;->firstCodeArray:[C

    aget-char v0, v0, v2

    if-ge v1, v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    sub-int/2addr v1, v0

    int-to-char v0, v1

    iget-object v1, p0, Lsun/font/CMap$CMapFormat2;->entryCountArray:[C

    aget-char v1, v1, v2

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lsun/font/CMap$CMapFormat2;->idRangeOffSetArray:[C

    array-length v3, v1

    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, -0x6

    aget-char v1, v1, v2

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lsun/font/CMap$CMapFormat2;->glyphIndexArray:[C

    add-int/2addr v1, v0

    aget-char v0, v3, v1

    if-eqz v0, :cond_5

    iget-object p0, p0, Lsun/font/CMap$CMapFormat2;->idDeltaArray:[S

    aget-short p0, p0, v2

    add-int/2addr v0, p0

    int-to-char p0, v0

    return p0

    :cond_5
    invoke-virtual {p0, p1}, Lsun/font/CMap;->getFormatCharGlyph(I)C

    move-result p0

    return p0
.end method
