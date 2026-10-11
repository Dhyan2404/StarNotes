.class Lsun/font/CMap$CMapFormat0;
.super Lsun/font/CMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMapFormat0"
.end annotation


# instance fields
.field cmap:[B


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 1

    invoke-direct {p0}, Lsun/font/CMap;-><init>()V

    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/font/CMap$CMapFormat0;->cmap:[B

    add-int/lit8 p2, p2, 0x6

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lsun/font/CMap$CMapFormat0;->cmap:[B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getGlyph(I)C
    .locals 1

    const/16 v0, 0x100

    if-ge p1, v0, :cond_2

    const/16 v0, 0x10

    if-ge p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0xffff

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lsun/font/CMap$CMapFormat0;->cmap:[B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
