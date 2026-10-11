.class abstract Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFCompressor;
.source "SourceFile"


# static fields
.field protected static final BLACK:I = 0x1

.field protected static final WHITE:I

.field protected static final byteTable:[B

.field protected static final horz:[[I

.field protected static final horzMode:[I

.field protected static final makeupCodes:[[I

.field protected static final makeupCodesBlack:[I

.field protected static final makeupCodesWhite:[I

.field protected static final pass:[[I

.field protected static final passMode:[I

.field protected static final termCodes:[[I

.field protected static final termCodesBlack:[I

.field protected static final termCodesWhite:[I

.field protected static final vert:[[I

.field protected static final vertMode:[I


# instance fields
.field protected bits:I

.field protected inverseFill:Z

.field protected ndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->byteTable:[B

    const/16 v0, 0x40

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->termCodesBlack:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->termCodesWhite:[I

    const/16 v2, 0x3c

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    sput-object v3, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->makeupCodesBlack:[I

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    sput-object v2, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->makeupCodesWhite:[I

    const v4, 0x10000004

    filled-new-array {v4}, [I

    move-result-object v4

    sput-object v4, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->passMode:[I

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_5

    sput-object v5, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->vertMode:[I

    const v6, 0x20000003

    filled-new-array {v6}, [I

    move-result-object v6

    sput-object v6, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->horzMode:[I

    const/4 v7, 0x2

    new-array v8, v7, [[I

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v1, v8, v0

    sput-object v8, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->termCodes:[[I

    new-array v1, v7, [[I

    aput-object v2, v1, v9

    aput-object v3, v1, v0

    sput-object v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->makeupCodes:[[I

    new-array v1, v7, [[I

    aput-object v4, v1, v9

    aput-object v4, v1, v0

    sput-object v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->pass:[[I

    new-array v1, v7, [[I

    aput-object v5, v1, v9

    aput-object v5, v1, v0

    sput-object v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->vert:[[I

    new-array v1, v7, [[I

    aput-object v6, v1, v9

    aput-object v6, v1, v0

    sput-object v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->horz:[[I

    return-void

    nop

    :array_0
    .array-data 1
        0x8t
        0x7t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 4
        0xdc0000a
        0x40000003    # 2.0000007f
        -0x3ffffffe    # -2.0000005f
        -0x7ffffffe
        0x60000003
        0x30000004
        0x20000004
        0x18000005
        0x14000006
        0x10000006
        0x8000007
        0xa000007
        0xe000007
        0x4000008
        0x7000008
        0xc000009
        0x5c0000a
        0x600000a
        0x200000a
        0xce0000b
        0xd00000b
        0xd80000b
        0x6e0000b
        0x500000b
        0x2e0000b
        0x300000b
        0xca0000c
        0xcb0000c
        0xcc0000c
        0xcd0000c
        0x680000c
        0x690000c
        0x6a0000c
        0x6b0000c
        0xd20000c
        0xd30000c
        0xd40000c
        0xd50000c
        0xd60000c
        0xd70000c
        0x6c0000c
        0x6d0000c
        0xda0000c
        0xdb0000c
        0x540000c
        0x550000c
        0x560000c
        0x570000c
        0x640000c
        0x650000c
        0x520000c
        0x530000c
        0x240000c
        0x370000c
        0x380000c
        0x270000c
        0x280000c
        0x580000c
        0x590000c
        0x2b0000c
        0x2c0000c
        0x5a0000c
        0x660000c
        0x670000c
    .end array-data

    :array_2
    .array-data 4
        0x35000008
        0x1c000006
        0x70000004
        -0x7ffffffc
        -0x4ffffffc
        -0x3ffffffc    # -2.000001f
        -0x1ffffffc
        -0xffffffc
        -0x67fffffb
        -0x5ffffffb
        0x38000005
        0x40000005    # 2.0000012f
        0x20000006
        0xc000006
        -0x2ffffffa
        -0x2bfffffa
        -0x57fffffa
        -0x53fffffa
        0x4e000007    # 5.3687136E8f
        0x18000007
        0x10000007
        0x2e000007
        0x6000007
        0x8000007
        0x50000007    # 8.5899418E9f
        0x56000007
        0x26000007
        0x48000007
        0x30000007
        0x2000008
        0x3000008
        0x1a000008
        0x1b000008
        0x12000008
        0x13000008
        0x14000008
        0x15000008
        0x16000008
        0x17000008
        0x28000008
        0x29000008
        0x2a000008
        0x2b000008
        0x2c000008
        0x2d000008
        0x4000008
        0x5000008
        0xa000008
        0xb000008
        0x52000008
        0x53000008
        0x54000008
        0x55000008
        0x24000008
        0x25000008
        0x58000008
        0x59000008
        0x5a000008
        0x5b000008
        0x4a000008    # 2097154.0f
        0x4b000008    # 8388616.0f
        0x32000008
        0x33000008
        0x34000008
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3c0000a
        0xc80000c
        0xc90000c
        0x5b0000c
        0x330000c
        0x340000c
        0x350000c
        0x360000d
        0x368000d
        0x250000d
        0x258000d
        0x260000d
        0x268000d
        0x390000d
        0x398000d
        0x3a0000d
        0x3a8000d
        0x3b0000d
        0x3b8000d
        0x290000d
        0x298000d
        0x2a0000d
        0x2a8000d
        0x2d0000d
        0x2d8000d
        0x320000d
        0x328000d
        0x100000b
        0x180000b
        0x1a0000b
        0x120000c
        0x130000c
        0x140000c
        0x150000c
        0x160000c
        0x170000c
        0x1c0000c
        0x1d0000c
        0x1e0000c
        0x1f0000c
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        -0x27fffffb
        -0x6ffffffb
        0x5c000006
        0x6e000007
        0x36000008
        0x37000008
        0x64000008
        0x65000008
        0x68000008
        0x67000008
        0x66000009
        0x66800009
        0x69000009
        0x69800009
        0x6a000009
        0x6a800009
        0x6b000009
        0x6b800009
        0x6c000009
        0x6c800009
        0x6d000009
        0x6d800009
        0x4c000009    # 3.3554468E7f
        0x4c800009    # 6.7108936E7f
        0x4d000009    # 1.34217872E8f
        0x60000006
        0x4d800009    # 2.68435744E8f
        0x100000b
        0x180000b
        0x1a0000b
        0x120000c
        0x130000c
        0x140000c
        0x150000c
        0x160000c
        0x170000c
        0x1c0000c
        0x1d0000c
        0x1e0000c
        0x1f0000c
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x6000007
        0xc000006
        0x60000003
        -0x7fffffff
        0x40000003    # 2.0000007f
        0x8000006
        0x4000007
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;-><init>(Ljava/lang/String;IZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->inverseFill:Z

    return-void
.end method


# virtual methods
.method public add1DBits([BIII)I
    .locals 9

    ushr-int/lit8 v0, p3, 0x6

    and-int/lit8 p3, p3, 0x3f

    const/4 v1, 0x7

    const v2, 0xffff

    const/high16 v3, -0x80000

    move v4, p2

    if-eqz v0, :cond_2

    :goto_0
    const/16 v5, 0x28

    if-le v0, v5, :cond_1

    sget-object v6, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->makeupCodes:[[I

    aget-object v6, v6, p4

    aget v5, v6, v5

    iget v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    and-int v7, v5, v3

    iget v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    ushr-int/2addr v7, v8

    or-int/2addr v6, v7

    iput v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    and-int/2addr v5, v2

    add-int/2addr v8, v5

    iput v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    :goto_1
    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    if-le v5, v1, :cond_0

    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    ushr-int/lit8 v8, v7, 0x18

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    shl-int/lit8 v4, v7, 0x8

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    add-int/lit8 v5, v5, -0x8

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x28

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->makeupCodes:[[I

    aget-object v5, v5, p4

    aget v0, v5, v0

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    and-int v6, v0, v3

    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    ushr-int/2addr v6, v7

    or-int/2addr v5, v6

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    and-int/2addr v0, v2

    add-int/2addr v7, v0

    iput v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    :goto_2
    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    if-le v0, v1, :cond_2

    add-int/lit8 v5, v4, 0x1

    iget v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    ushr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    shl-int/lit8 v4, v6, 0x8

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    move v4, v5

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->termCodes:[[I

    aget-object p4, v0, p4

    aget p3, p4, p3

    iget p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    and-int v0, p3, v3

    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    ushr-int/2addr v0, v3

    or-int/2addr p4, v0

    iput p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    and-int/2addr p3, v2

    add-int/2addr v3, p3

    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    :goto_3
    iget p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    if-le p3, v1, :cond_3

    add-int/lit8 p4, v4, 0x1

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    ushr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v4

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    add-int/lit8 p3, p3, -0x8

    iput p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    move v4, p4

    goto :goto_3

    :cond_3
    sub-int/2addr v4, p2

    return v4
.end method

.method public add2DBits([BI[[II)I
    .locals 3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    aget p3, p3, p4

    iget p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    const/high16 v0, -0x80000

    and-int/2addr v0, p3

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    ushr-int/2addr v0, v1

    or-int/2addr p4, v0

    iput p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    const p4, 0xffff

    and-int/2addr p3, p4

    add-int/2addr v1, p3

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    move p3, p2

    :goto_0
    iget p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    const/4 v0, 0x7

    if-le p4, v0, :cond_0

    add-int/lit8 v0, p3, 0x1

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    ushr-int/lit8 v2, v1, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, p3

    shl-int/lit8 p3, v1, 0x8

    iput p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    add-int/lit8 p4, p4, -0x8

    iput p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    move p3, v0

    goto :goto_0

    :cond_0
    sub-int/2addr p3, p2

    return p3
.end method

.method public addEOFB([BI)I
    .locals 5

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    const v2, 0x100100

    ushr-int/2addr v2, v1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    add-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    move v0, p2

    :goto_0
    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    if-lez v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    ushr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    shl-int/lit8 v0, v3, 0x8

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    move v0, v2

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p2

    return v0
.end method

.method public addEOL(ZZZ[BI)I
    .locals 2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    rsub-int/lit8 v0, p2, 0x4

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, p2, 0xc

    :goto_0
    add-int/2addr p2, v0

    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    :cond_1
    const/high16 p2, 0x100000

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    iget p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    ushr-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    add-int/lit8 p3, p3, 0xc

    iput p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    if-eqz p3, :cond_3

    const/high16 p2, 0x180000

    :cond_3
    iget p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    ushr-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    add-int/lit8 p3, p3, 0xd

    iput p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    :goto_1
    move p1, p5

    :goto_2
    iget p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    const/4 p3, 0x7

    if-le p2, p3, :cond_4

    add-int/lit8 p3, p1, 0x1

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    ushr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p4, p1

    shl-int/lit8 p1, v0, 0x8

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    add-int/lit8 p2, p2, -0x8

    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    move p1, p3

    goto :goto_2

    :cond_4
    sub-int/2addr p1, p5

    return p1
.end method

.method public encode1D([BIII[BI)I
    .locals 5

    add-int/2addr p4, p3

    ushr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, p3, 0x7

    rsub-int/lit8 v1, v1, 0x7

    ushr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p5, p6, v2, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->add1DBits([BIII)I

    move-result v0

    add-int/2addr v0, p6

    move v2, v1

    goto :goto_0

    :cond_0
    move v0, p6

    :goto_0
    if-ge p3, p4, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->nextState([BIII)I

    move-result v3

    sub-int/2addr v3, p3

    invoke-virtual {p0, p5, v0, v3, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->add1DBits([BIII)I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr p3, v3

    xor-int/2addr v2, v1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p6

    return v0
.end method

.method public initBitBuf()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->ndex:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->bits:I

    return-void
.end method

.method public nextState([BIII)I
    .locals 4

    if-nez p1, :cond_0

    return p4

    :cond_0
    ushr-int/lit8 p0, p3, 0x3

    add-int/2addr p0, p2

    array-length v0, p1

    if-lt p0, v0, :cond_1

    return p4

    :cond_1
    ushr-int/lit8 v0, p4, 0x3

    add-int/2addr v0, p2

    array-length v1, p1

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    and-int/lit8 p3, p3, 0x7

    aget-byte v1, p1, p0

    const/16 v2, 0x80

    ushr-int/2addr v2, p3

    and-int/2addr v2, v1

    const/16 v3, 0xff

    if-eqz v2, :cond_4

    not-int v1, v1

    ushr-int p3, v3, p3

    and-int/2addr p3, v1

    :goto_0
    if-ge p0, v0, :cond_8

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p0, 0x1

    aget-byte p3, p1, p0

    not-int p3, p3

    and-int/2addr p3, v3

    goto :goto_0

    :cond_4
    ushr-int p3, v3, p3

    and-int/2addr p3, v1

    if-eqz p3, :cond_6

    sub-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0x8

    sget-object p1, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->byteTable:[B

    aget-byte p1, p1, p3

    add-int/2addr p0, p1

    if-ge p0, p4, :cond_5

    move p4, p0

    :cond_5
    return p4

    :cond_6
    if-ge p0, v0, :cond_8

    add-int/lit8 p0, p0, 0x1

    aget-byte p3, p1, p0

    and-int/2addr p3, v3

    if-eqz p3, :cond_6

    sub-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0x8

    sget-object p1, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->byteTable:[B

    aget-byte p1, p1, p3

    add-int/2addr p0, p1

    if-ge p0, p4, :cond_7

    move p4, p0

    :cond_7
    return p4

    :cond_8
    :goto_1
    sub-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0x8

    sget-object p1, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->byteTable:[B

    aget-byte p1, p1, p3

    add-int/2addr p0, p1

    if-ge p0, p4, :cond_9

    move p4, p0

    :cond_9
    return p4
.end method

.method public setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V

    instance-of v0, p1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v0, 0x10a

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxCompressor;->inverseFill:Z

    :cond_1
    return-void
.end method
