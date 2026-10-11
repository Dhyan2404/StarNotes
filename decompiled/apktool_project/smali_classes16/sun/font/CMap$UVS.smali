.class Lsun/font/CMap$UVS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UVS"
.end annotation


# static fields
.field static final VS_NOGLYPH:I


# instance fields
.field glyphID:[[C

.field numSelectors:I

.field numUVSMapping:[I

.field selector:[I

.field unicodeValue:[[I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p2, 0x6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lsun/font/CMap$UVS;->numSelectors:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v2, v0

    iget v0, p0, Lsun/font/CMap$UVS;->numSelectors:I

    int-to-long v4, v0

    const-wide/16 v6, 0xb

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    const-string v3, "Variations exceed buffer"

    if-ltz v2, :cond_4

    new-array v2, v0, [I

    iput-object v2, p0, Lsun/font/CMap$UVS;->selector:[I

    new-array v2, v0, [I

    iput-object v2, p0, Lsun/font/CMap$UVS;->numUVSMapping:[I

    new-array v2, v0, [[I

    iput-object v2, p0, Lsun/font/CMap$UVS;->unicodeValue:[[I

    new-array v0, v0, [[C

    iput-object v0, p0, Lsun/font/CMap$UVS;->glyphID:[[C

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v4, p0, Lsun/font/CMap$UVS;->numSelectors:I

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, p2, 0xa

    mul-int/lit8 v5, v2, 0xb

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v5, p0, Lsun/font/CMap$UVS;->selector:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    aput v6, v5, v2

    iget-object v5, p0, Lsun/font/CMap$UVS;->selector:[I

    aget v6, v5, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    aput v6, v5, v2

    iget-object v5, p0, Lsun/font/CMap$UVS;->selector:[I

    aget v6, v5, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    aput v6, v5, v2

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lsun/font/CMap$UVS;->numUVSMapping:[I

    aput v0, v4, v2

    goto :goto_2

    :cond_0
    if-lez v4, :cond_2

    add-int/2addr v4, p2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lsun/font/CMap$UVS;->numUVSMapping:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    and-int/2addr v5, v1

    aput v5, v4, v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lsun/font/CMap$UVS;->numUVSMapping:[I

    aget v6, v6, v2

    int-to-long v7, v6

    const-wide/16 v9, 0x5

    mul-long/2addr v7, v9

    cmp-long v4, v4, v7

    if-ltz v4, :cond_1

    iget-object v4, p0, Lsun/font/CMap$UVS;->unicodeValue:[[I

    new-array v5, v6, [I

    aput-object v5, v4, v2

    iget-object v4, p0, Lsun/font/CMap$UVS;->glyphID:[[C

    new-array v5, v6, [C

    aput-object v5, v4, v2

    move v4, v0

    :goto_1
    iget-object v5, p0, Lsun/font/CMap$UVS;->numUVSMapping:[I

    aget v5, v5, v2

    if-ge v4, v5, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    iget-object v6, p0, Lsun/font/CMap$UVS;->unicodeValue:[[I

    aget-object v6, v6, v2

    aput v5, v6, v4

    iget-object v5, p0, Lsun/font/CMap$UVS;->glyphID:[[C

    aget-object v5, v5, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v6

    aput-char v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Lsun/font/CMap$UVS;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/font/CMap$UVS;->getGlyph(II)I

    move-result p0

    return p0
.end method

.method private getGlyph(II)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lsun/font/CMap$UVS;->numSelectors:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lsun/font/CMap$UVS;->selector:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-ne v1, v3, :cond_2

    return v0

    :cond_2
    iget-object p2, p0, Lsun/font/CMap$UVS;->numUVSMapping:[I

    aget p2, p2, v1

    if-lez p2, :cond_3

    iget-object p2, p0, Lsun/font/CMap$UVS;->unicodeValue:[[I

    aget-object p2, p2, v1

    invoke-static {p2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_3

    iget-object p0, p0, Lsun/font/CMap$UVS;->glyphID:[[C

    aget-object p0, p0, v1

    aget-char p0, p0, p1

    return p0

    :cond_3
    return v0
.end method
