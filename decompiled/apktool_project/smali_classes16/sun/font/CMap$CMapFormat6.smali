.class Lsun/font/CMap$CMapFormat6;
.super Lsun/font/CMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMapFormat6"
.end annotation


# instance fields
.field entryCount:C

.field firstCode:C

.field glyphIdArray:[C


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I[C)V
    .locals 1

    invoke-direct {p0}, Lsun/font/CMap;-><init>()V

    add-int/lit8 p2, p2, 0x6

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result p2

    iput-char p2, p0, Lsun/font/CMap$CMapFormat6;->firstCode:C

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result p2

    iput-char p2, p0, Lsun/font/CMap$CMapFormat6;->entryCount:C

    new-array p2, p2, [C

    iput-object p2, p0, Lsun/font/CMap$CMapFormat6;->glyphIdArray:[C

    const/4 p2, 0x0

    :goto_0
    iget-char p3, p0, Lsun/font/CMap$CMapFormat6;->entryCount:C

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lsun/font/CMap$CMapFormat6;->glyphIdArray:[C

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    aput-char v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getGlyph(I)C
    .locals 2

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
    iget-char v1, p0, Lsun/font/CMap$CMapFormat6;->firstCode:C

    sub-int/2addr v0, v1

    if-ltz v0, :cond_3

    iget-char v1, p0, Lsun/font/CMap$CMapFormat6;->entryCount:C

    if-lt v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lsun/font/CMap$CMapFormat6;->glyphIdArray:[C

    aget-char p0, p0, v0

    return p0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lsun/font/CMap;->getFormatCharGlyph(I)C

    move-result p0

    return p0
.end method
