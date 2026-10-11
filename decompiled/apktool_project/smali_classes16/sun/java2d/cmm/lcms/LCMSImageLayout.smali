.class Lsun/java2d/cmm/lcms/LCMSImageLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;,
        Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;
    }
.end annotation


# static fields
.field public static final DOSWAP:I = 0x400

.field public static final DT_BYTE:I = 0x0

.field public static final DT_DOUBLE:I = 0x3

.field public static final DT_INT:I = 0x2

.field public static final DT_SHORT:I = 0x1

.field public static final PT_ABGR_8:I

.field public static final PT_ARGB_8:I

.field public static final PT_BGRA_8:I

.field public static final PT_BGR_8:I

.field public static final PT_GRAY_16:I

.field public static final PT_GRAY_8:I

.field public static final PT_RGBA_8:I

.field public static final PT_RGB_8:I

.field public static final SWAPFIRST:I = 0x4000


# instance fields
.field dataArray:Ljava/lang/Object;

.field private dataArrayLength:I

.field dataType:I

.field height:I

.field private imageAtOnce:Z

.field isIntPacked:Z

.field private nextPixelOffset:I

.field nextRowOffset:I

.field offset:I

.field pixelType:I

.field width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v3

    or-int/2addr v1, v3

    sput v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_RGB_8:I

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v1

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v3

    or-int/2addr v1, v3

    sput v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_GRAY_8:I

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-static {v3}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v3

    or-int/2addr v1, v3

    sput v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_GRAY_16:I

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->EXTRA_SH(I)I

    move-result v1

    invoke-static {v0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v3

    or-int/2addr v1, v3

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v3

    or-int/2addr v1, v3

    sput v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_RGBA_8:I

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->EXTRA_SH(I)I

    move-result v1

    invoke-static {v0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v3

    or-int/2addr v1, v3

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v3

    or-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x4000

    sput v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_ARGB_8:I

    invoke-static {v0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v3

    or-int/2addr v1, v3

    sput v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_BGR_8:I

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->EXTRA_SH(I)I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-static {v0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v3

    or-int/2addr v1, v3

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v3

    or-int/2addr v1, v3

    sput v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_ABGR_8:I

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->EXTRA_SH(I)I

    move-result v1

    invoke-static {v0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v0

    or-int/2addr v0, v1

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v1

    or-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x400

    or-int/lit16 v0, v0, 0x4000

    sput v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_BGRA_8:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->isIntPacked:Z

    .line 41
    iput-boolean v0, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->imageAtOnce:Z

    return-void
.end method

.method private constructor <init>(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->isIntPacked:Z

    .line 3
    iput-boolean v0, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->imageAtOnce:Z

    .line 4
    iput p2, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    .line 5
    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->width:I

    const/4 p2, 0x1

    .line 6
    iput p2, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->height:I

    .line 7
    iput p3, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextPixelOffset:I

    .line 8
    invoke-static {p3, p1}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->safeMult(II)I

    move-result p1

    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextRowOffset:I

    .line 9
    iput v0, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->offset:I

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->isIntPacked:Z

    .line 12
    iput-boolean v0, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->imageAtOnce:Z

    .line 13
    iput p3, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    .line 14
    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->width:I

    .line 15
    iput p2, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->height:I

    .line 16
    iput p4, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextPixelOffset:I

    .line 17
    invoke-static {p4, p1}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->safeMult(II)I

    move-result p1

    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextRowOffset:I

    .line 18
    iput v0, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->offset:I

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p2, p3, p4}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>(III)V

    const/4 p2, 0x0

    .line 20
    iput p2, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataType:I

    .line 21
    iput-object p1, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArray:Ljava/lang/Object;

    .line 22
    array-length p1, p1

    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArrayLength:I

    .line 23
    invoke-direct {p0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->verify()V

    return-void
.end method

.method public constructor <init>([DIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p2, p3, p4}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>(III)V

    const/4 p2, 0x3

    .line 35
    iput p2, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataType:I

    .line 36
    iput-object p1, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArray:Ljava/lang/Object;

    .line 37
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArrayLength:I

    .line 38
    invoke-direct {p0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->verify()V

    return-void
.end method

.method public constructor <init>([IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p2, p3, p4}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>(III)V

    const/4 p2, 0x2

    .line 30
    iput p2, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataType:I

    .line 31
    iput-object p1, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArray:Ljava/lang/Object;

    .line 32
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArrayLength:I

    .line 33
    invoke-direct {p0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->verify()V

    return-void
.end method

.method public constructor <init>([SIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p2, p3, p4}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>(III)V

    const/4 p2, 0x1

    .line 25
    iput p2, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataType:I

    .line 26
    iput-object p1, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArray:Ljava/lang/Object;

    .line 27
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArrayLength:I

    .line 28
    invoke-direct {p0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->verify()V

    return-void
.end method

.method public static BYTES_SH(I)I
    .locals 0

    return p0
.end method

.method public static CHANNELS_SH(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static EXTRA_SH(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static createImageLayout(Ljava/awt/image/BufferedImage;)Lsun/java2d/cmm/lcms/LCMSImageLayout;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    invoke-direct {v0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_8

    if-eq v1, v8, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    .line 3
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/awt/image/ComponentColorModel;

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, Ljava/awt/image/ComponentColorModel;

    .line 6
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getComponentSize()[I

    move-result-object v0

    .line 7
    array-length v1, v0

    :goto_0
    if-ge v7, v1, :cond_1

    aget v2, v0, v7

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    return-object v6

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p0

    invoke-static {p0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->createImageLayout(Ljava/awt/image/Raster;)Lsun/java2d/cmm/lcms/LCMSImageLayout;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v6

    .line 9
    :cond_3
    sget v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_GRAY_16:I

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    goto :goto_1

    .line 10
    :cond_4
    sget v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_GRAY_8:I

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    goto :goto_1

    .line 11
    :cond_5
    sget v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_ABGR_8:I

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    goto :goto_1

    .line 12
    :cond_6
    sget v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_BGR_8:I

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    goto :goto_1

    .line 13
    :cond_7
    sget v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_ABGR_8:I

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    .line 14
    iput-boolean v10, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->isIntPacked:Z

    goto :goto_1

    .line 15
    :cond_8
    sget v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_ARGB_8:I

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    .line 16
    iput-boolean v10, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->isIntPacked:Z

    goto :goto_1

    .line 17
    :cond_9
    sget v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->PT_ARGB_8:I

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    .line 18
    iput-boolean v10, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->isIntPacked:Z

    .line 19
    :goto_1
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->width:I

    .line 20
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->height:I

    .line 21
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v1

    if-eq v1, v10, :cond_d

    if-eq v1, v9, :cond_d

    if-eq v1, v8, :cond_d

    if-eq v1, v5, :cond_c

    if-eq v1, v4, :cond_c

    if-eq v1, v3, :cond_b

    if-eq v1, v2, :cond_a

    return-object v6

    .line 22
    :cond_a
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p0

    check-cast p0, Lsun/awt/image/ShortComponentRaster;

    .line 23
    invoke-virtual {p0}, Lsun/awt/image/ShortComponentRaster;->getScanlineStride()I

    move-result v1

    invoke-static {v9, v1}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->safeMult(II)I

    move-result v1

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextRowOffset:I

    .line 24
    invoke-virtual {p0}, Lsun/awt/image/ShortComponentRaster;->getPixelStride()I

    move-result v1

    invoke-static {v9, v1}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->safeMult(II)I

    move-result v1

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextPixelOffset:I

    .line 25
    invoke-virtual {p0, v7}, Lsun/awt/image/ShortComponentRaster;->getDataOffset(I)I

    move-result v1

    invoke-static {v9, v1}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->safeMult(II)I

    move-result v1

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->offset:I

    .line 26
    invoke-virtual {p0}, Lsun/awt/image/ShortComponentRaster;->getDataStorage()[S

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArray:Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lsun/awt/image/ShortComponentRaster;->getDataStorage()[S

    move-result-object v1

    array-length v1, v1

    mul-int/2addr v1, v9

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArrayLength:I

    .line 28
    iput v10, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataType:I

    .line 29
    iget v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextRowOffset:I

    iget v2, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->width:I

    mul-int/2addr v2, v9

    invoke-virtual {p0}, Lsun/awt/image/ShortComponentRaster;->getPixelStride()I

    move-result p0

    mul-int/2addr v2, p0

    if-ne v1, v2, :cond_e

    .line 30
    iput-boolean v10, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->imageAtOnce:Z

    goto/16 :goto_2

    .line 31
    :cond_b
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p0

    check-cast p0, Lsun/awt/image/ByteComponentRaster;

    .line 32
    invoke-virtual {p0}, Lsun/awt/image/ByteComponentRaster;->getScanlineStride()I

    move-result v1

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextRowOffset:I

    .line 33
    invoke-virtual {p0}, Lsun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result v1

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextPixelOffset:I

    .line 34
    invoke-virtual {p0}, Lsun/awt/image/ByteComponentRaster;->getDataStorage()[B

    move-result-object v1

    array-length v1, v1

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArrayLength:I

    .line 35
    invoke-virtual {p0, v7}, Lsun/awt/image/ByteComponentRaster;->getDataOffset(I)I

    move-result v1

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->offset:I

    .line 36
    invoke-virtual {p0}, Lsun/awt/image/ByteComponentRaster;->getDataStorage()[B

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArray:Ljava/lang/Object;

    .line 37
    iput v7, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataType:I

    .line 38
    iget v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextRowOffset:I

    iget v2, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->width:I

    invoke-virtual {p0}, Lsun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result p0

    mul-int/2addr v2, p0

    if-ne v1, v2, :cond_e

    .line 39
    iput-boolean v10, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->imageAtOnce:Z

    goto/16 :goto_2

    .line 40
    :cond_c
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    check-cast v1, Lsun/awt/image/ByteComponentRaster;

    .line 41
    invoke-virtual {v1}, Lsun/awt/image/ByteComponentRaster;->getScanlineStride()I

    move-result v2

    iput v2, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextRowOffset:I

    .line 42
    invoke-virtual {v1}, Lsun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result v2

    iput v2, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextPixelOffset:I

    .line 43
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result p0

    sub-int/2addr p0, v10

    .line 44
    invoke-virtual {v1, p0}, Lsun/awt/image/ByteComponentRaster;->getDataOffset(I)I

    move-result p0

    iput p0, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->offset:I

    .line 45
    invoke-virtual {v1}, Lsun/awt/image/ByteComponentRaster;->getDataStorage()[B

    move-result-object p0

    iput-object p0, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArray:Ljava/lang/Object;

    .line 46
    invoke-virtual {v1}, Lsun/awt/image/ByteComponentRaster;->getDataStorage()[B

    move-result-object p0

    array-length p0, p0

    iput p0, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArrayLength:I

    .line 47
    iput v7, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataType:I

    .line 48
    iget p0, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextRowOffset:I

    iget v2, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->width:I

    invoke-virtual {v1}, Lsun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result v1

    mul-int/2addr v2, v1

    if-ne p0, v2, :cond_e

    .line 49
    iput-boolean v10, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->imageAtOnce:Z

    goto :goto_2

    .line 50
    :cond_d
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p0

    check-cast p0, Lsun/awt/image/IntegerComponentRaster;

    .line 51
    invoke-virtual {p0}, Lsun/awt/image/IntegerComponentRaster;->getScanlineStride()I

    move-result v1

    invoke-static {v8, v1}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->safeMult(II)I

    move-result v1

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextRowOffset:I

    .line 52
    invoke-virtual {p0}, Lsun/awt/image/IntegerComponentRaster;->getPixelStride()I

    move-result v1

    invoke-static {v8, v1}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->safeMult(II)I

    move-result v1

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextPixelOffset:I

    .line 53
    invoke-virtual {p0, v7}, Lsun/awt/image/IntegerComponentRaster;->getDataOffset(I)I

    move-result v1

    invoke-static {v8, v1}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->safeMult(II)I

    move-result v1

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->offset:I

    .line 54
    invoke-virtual {p0}, Lsun/awt/image/IntegerComponentRaster;->getDataStorage()[I

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArray:Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Lsun/awt/image/IntegerComponentRaster;->getDataStorage()[I

    move-result-object v1

    array-length v1, v1

    mul-int/2addr v1, v8

    iput v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArrayLength:I

    .line 56
    iput v9, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataType:I

    .line 57
    iget v1, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextRowOffset:I

    iget v2, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->width:I

    mul-int/2addr v2, v8

    invoke-virtual {p0}, Lsun/awt/image/IntegerComponentRaster;->getPixelStride()I

    move-result p0

    mul-int/2addr v2, p0

    if-ne v1, v2, :cond_e

    .line 58
    iput-boolean v10, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->imageAtOnce:Z

    .line 59
    :cond_e
    :goto_2
    invoke-direct {v0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->verify()V

    return-object v0
.end method

.method public static createImageLayout(Ljava/awt/image/Raster;)Lsun/java2d/cmm/lcms/LCMSImageLayout;
    .locals 7

    .line 60
    new-instance v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    invoke-direct {v0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>()V

    .line 61
    instance-of v1, p0, Lsun/awt/image/ByteComponentRaster;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 62
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v1

    instance-of v1, v1, Ljava/awt/image/ComponentSampleModel;

    if-eqz v1, :cond_3

    .line 63
    move-object v1, p0

    check-cast v1, Lsun/awt/image/ByteComponentRaster;

    .line 64
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p0

    check-cast p0, Ljava/awt/image/ComponentSampleModel;

    .line 65
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v3

    invoke-static {v3}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v5

    or-int/2addr v3, v5

    iput v3, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    .line 66
    invoke-virtual {p0}, Ljava/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object v3

    .line 67
    invoke-static {v3}, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;->getBandOrder([I)Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    move-result-object v3

    .line 68
    sget-object v5, Lsun/java2d/cmm/lcms/LCMSImageLayout$1;->$SwitchMap$sun$java2d$cmm$lcms$LCMSImageLayout$BandOrder:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v5, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    return-object v2

    .line 69
    :cond_0
    iget v2, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    .line 70
    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result p0

    sub-int/2addr p0, v4

    goto :goto_0

    :cond_1
    move p0, v6

    .line 71
    :goto_0
    invoke-virtual {v1}, Lsun/awt/image/ByteComponentRaster;->getScanlineStride()I

    move-result v2

    iput v2, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextRowOffset:I

    .line 72
    invoke-virtual {v1}, Lsun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result v2

    iput v2, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextPixelOffset:I

    .line 73
    invoke-virtual {v1, p0}, Lsun/awt/image/ByteComponentRaster;->getDataOffset(I)I

    move-result p0

    iput p0, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->offset:I

    .line 74
    invoke-virtual {v1}, Lsun/awt/image/ByteComponentRaster;->getDataStorage()[B

    move-result-object p0

    iput-object p0, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArray:Ljava/lang/Object;

    .line 75
    iput v6, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataType:I

    .line 76
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getWidth()I

    move-result p0

    iput p0, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->width:I

    .line 77
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getHeight()I

    move-result p0

    iput p0, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->height:I

    .line 78
    iget p0, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextRowOffset:I

    iget v2, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->width:I

    invoke-virtual {v1}, Lsun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result v1

    mul-int/2addr v2, v1

    if-ne p0, v2, :cond_2

    .line 79
    iput-boolean v4, v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->imageAtOnce:Z

    :cond_2
    return-object v0

    :cond_3
    return-object v2
.end method

.method private static getBytesPerPixel(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x7

    shr-int/lit8 v1, p0, 0x3

    and-int/lit8 v1, v1, 0xf

    shr-int/lit8 p0, p0, 0x7

    and-int/lit8 p0, p0, 0x7

    add-int/2addr v1, p0

    mul-int/2addr v0, v1

    return v0
.end method

.method public static safeAdd(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;
        }
    .end annotation

    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    const-wide/32 p0, -0x80000000

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;

    const-string p1, "Invalid image layout"

    invoke-direct {p0, p1}, Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static safeMult(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;
        }
    .end annotation

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    const-wide/32 p0, -0x80000000

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;

    const-string p1, "Invalid image layout"

    invoke-direct {p0, p1}, Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private verify()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;
        }
    .end annotation

    iget v0, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->offset:I

    const-string v1, "Invalid image layout"

    if-ltz v0, :cond_2

    iget v2, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArrayLength:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextPixelOffset:I

    iget v2, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->getBytesPerPixel(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextRowOffset:I

    iget v2, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->height:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->safeMult(II)I

    move-result v0

    iget v2, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->nextPixelOffset:I

    iget v3, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->width:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->safeMult(II)I

    move-result v2

    invoke-static {v2, v0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->safeAdd(II)I

    move-result v0

    iget v2, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->offset:I

    invoke-static {v2, v0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->safeAdd(II)I

    move-result v0

    if-ltz v0, :cond_0

    iget p0, p0, Lsun/java2d/cmm/lcms/LCMSImageLayout;->dataArrayLength:I

    if-ge v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;

    invoke-direct {p0, v1}, Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;

    invoke-direct {p0, v1}, Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;

    invoke-direct {p0, v1}, Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
