.class Lsun/font/CMap$CMapFormat8;
.super Lsun/font/CMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMapFormat8"
.end annotation


# instance fields
.field endCharCode:[I

.field is32:[B

.field nGroups:I

.field startCharCode:[I

.field startGlyphID:[I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I[C)V
    .locals 4

    invoke-direct {p0}, Lsun/font/CMap;-><init>()V

    const/16 p2, 0x2000

    new-array p2, p2, [B

    iput-object p2, p0, Lsun/font/CMap$CMapFormat8;->is32:[B

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lsun/font/CMap$CMapFormat8;->is32:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    iput p2, p0, Lsun/font/CMap$CMapFormat8;->nGroups:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    int-to-long p1, p1

    iget p3, p0, Lsun/font/CMap$CMapFormat8;->nGroups:I

    int-to-long v0, p3

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    new-array p1, p3, [I

    iput-object p1, p0, Lsun/font/CMap$CMapFormat8;->startCharCode:[I

    new-array p1, p3, [I

    iput-object p1, p0, Lsun/font/CMap$CMapFormat8;->endCharCode:[I

    new-array p1, p3, [I

    iput-object p1, p0, Lsun/font/CMap$CMapFormat8;->startGlyphID:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Format 8 table exceeded"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getGlyph(I)C
    .locals 0

    iget-object p0, p0, Lsun/font/CMap;->xlat:[C

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "xlat array for cmap fmt=8"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
