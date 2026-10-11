.class Lsun/font/CMap$CMapFormat10;
.super Lsun/font/CMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMapFormat10"
.end annotation


# instance fields
.field entryCount:I

.field firstCode:J

.field glyphIdArray:[C


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I[C)V
    .locals 4

    invoke-direct {p0}, Lsun/font/CMap;-><init>()V

    add-int/lit8 p2, p2, 0xc

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    int-to-long v0, p2

    iput-wide v0, p0, Lsun/font/CMap$CMapFormat10;->firstCode:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    and-int/2addr p2, p3

    iput p2, p0, Lsun/font/CMap$CMapFormat10;->entryCount:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    int-to-long p2, p2

    iget v0, p0, Lsun/font/CMap$CMapFormat10;->entryCount:I

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    cmp-long p2, p2, v0

    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p1

    iget p2, p0, Lsun/font/CMap$CMapFormat10;->entryCount:I

    new-array p2, p2, [C

    iput-object p2, p0, Lsun/font/CMap$CMapFormat10;->glyphIdArray:[C

    const/4 p2, 0x0

    :goto_0
    iget p3, p0, Lsun/font/CMap$CMapFormat10;->entryCount:I

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lsun/font/CMap$CMapFormat10;->glyphIdArray:[C

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    aput-char v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Format 10 table exceeded"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getGlyph(I)C
    .locals 4

    iget-object v0, p0, Lsun/font/CMap;->xlat:[C

    if-nez v0, :cond_2

    int-to-long v0, p1

    iget-wide v2, p0, Lsun/font/CMap$CMapFormat10;->firstCode:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    if-ltz p1, :cond_1

    iget v0, p0, Lsun/font/CMap$CMapFormat10;->entryCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lsun/font/CMap$CMapFormat10;->glyphIdArray:[C

    aget-char p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "xlat array for cmap fmt=10"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
