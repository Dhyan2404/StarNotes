.class Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final andTable:[I


# instance fields
.field bitsToGet:I

.field dstData:[B

.field dstIndex:I

.field nextBits:I

.field nextData:I

.field srcData:[B

.field srcIndex:I

.field stringTable:[[B

.field tableIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x7ff

    const/16 v1, 0xfff

    const/16 v2, 0x1ff

    const/16 v3, 0x3ff

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->andTable:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->dstIndex:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->bitsToGet:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->nextData:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->nextBits:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->dstIndex:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->dstData:[B

    array-length v3, v2

    if-le v1, v3, :cond_0

    array-length v1, v2

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->dstData:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->dstData:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public addStringToTable([B)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->stringTable:[[B

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->tableIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->tableIndex:I

    aput-object p1, v0, v1

    const/16 p1, 0x1ff

    if-ne v2, p1, :cond_0

    const/16 p1, 0xa

    .line 10
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->bitsToGet:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x3ff

    if-ne v2, p1, :cond_1

    const/16 p1, 0xb

    .line 11
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->bitsToGet:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x7ff

    if-ne v2, p1, :cond_2

    const/16 p1, 0xc

    .line 12
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->bitsToGet:I

    :cond_2
    :goto_0
    return-void
.end method

.method public addStringToTable([BB)V
    .locals 3

    .line 1
    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    .line 2
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    aput-byte p2, v1, v0

    .line 5
    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->stringTable:[[B

    iget p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->tableIndex:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->tableIndex:I

    aput-object v1, p1, p2

    const/16 p1, 0x1ff

    if-ne v0, p1, :cond_0

    const/16 p1, 0xa

    .line 6
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->bitsToGet:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x3ff

    if-ne v0, p1, :cond_1

    const/16 p1, 0xb

    .line 7
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->bitsToGet:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x7ff

    if-ne v0, p1, :cond_2

    const/16 p1, 0xc

    .line 8
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->bitsToGet:I

    :cond_2
    :goto_0
    return-void
.end method

.method public composeString([BB)[B
    .locals 2

    array-length p0, p1

    add-int/lit8 v0, p0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p2, v0, p0

    return-object v0
.end method

.method public decode([BIIII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_1

    aget-byte v1, p1, v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "TIFF 5.0-style LZW compression is not supported!"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->srcData:[B

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->srcIndex:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->nextData:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->nextBits:I

    const/16 p1, 0x2000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->dstData:[B

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->dstIndex:I

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->initializeStringTable()V

    move p1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->getNextCode()I

    move-result v1

    const/16 v3, 0x101

    if-eq v1, v3, :cond_5

    const/16 v4, 0x100

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->initializeStringTable()V

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->getNextCode()I

    move-result p1

    if-ne p1, v3, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->stringTable:[[B

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->writeString([B)V

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->tableIndex:I

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->stringTable:[[B

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->writeString([B)V

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->stringTable:[[B

    aget-object p1, v4, p1

    aget-byte v3, v3, v0

    invoke-virtual {p0, p1, v3}, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->addStringToTable([BB)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->stringTable:[[B

    aget-object p1, v3, p1

    aget-byte v3, p1, v0

    invoke-virtual {p0, p1, v3}, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->composeString([BB)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->writeString([B)V

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->addStringToTable([B)V

    :goto_2
    move p1, v1

    goto :goto_1

    :cond_5
    :goto_3
    const/4 p1, 0x2

    if-ne p2, p1, :cond_7

    move p1, v0

    :goto_4
    if-ge p1, p5, :cond_7

    mul-int p2, p1, p4

    add-int/2addr p2, v2

    mul-int/2addr p2, p3

    move v1, p3

    :goto_5
    mul-int v3, p4, p3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->dstData:[B

    aget-byte v4, v3, p2

    sub-int v5, p2, p3

    aget-byte v5, v3, v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, p2

    add-int/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->dstIndex:I

    new-array p2, p1, [B

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->dstData:[B

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public getNextCode()I
    .locals 6

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->nextData:I

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->srcData:[B

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->srcIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->srcIndex:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->nextData:I

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->nextBits:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->nextBits:I

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->bitsToGet:I

    if-ge v2, v4, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->srcIndex:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->nextData:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->nextBits:I

    :cond_0
    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->nextData:I

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->nextBits:I

    sub-int v2, v1, v4

    shr-int/2addr v0, v2

    sget-object v2, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->andTable:[I

    add-int/lit8 v3, v4, -0x9

    aget v2, v2, v3

    and-int/2addr v0, v2

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->nextBits:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/16 p0, 0x101

    return p0
.end method

.method public initializeStringTable()V
    .locals 4

    const/16 v0, 0x1000

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->stringTable:[[B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->stringTable:[[B

    const/4 v3, 0x1

    new-array v3, v3, [B

    aput-object v3, v2, v1

    int-to-byte v2, v1

    aput-byte v2, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x102

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->tableIndex:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->bitsToGet:I

    return-void
.end method

.method public writeString([B)V
    .locals 4

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->dstData:[B

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->dstIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFLZWUtil;->dstIndex:I

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
