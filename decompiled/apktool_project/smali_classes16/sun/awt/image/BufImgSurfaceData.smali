.class public Lsun/awt/image/BufImgSurfaceData;
.super Lsun/java2d/SurfaceData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/awt/image/BufImgSurfaceData$ICMColorData;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x5

.field private static final DCM_4444_ALPHA_MASK:I = 0xf000

.field private static final DCM_4444_BLUE_MASK:I = 0xf

.field private static final DCM_4444_GREEN_MASK:I = 0xf0

.field private static final DCM_4444_RED_MASK:I = 0xf00

.field private static final DCM_555X_BLUE_MASK:I = 0x3e

.field private static final DCM_555X_GREEN_MASK:I = 0x7c0

.field private static final DCM_555X_RED_MASK:I = 0xf800

.field private static final DCM_ARGBBM_ALPHA_MASK:I = 0x1000000

.field private static final DCM_ARGBBM_BLUE_MASK:I = 0xff

.field private static final DCM_ARGBBM_GREEN_MASK:I = 0xff00

.field private static final DCM_ARGBBM_RED_MASK:I = 0xff0000

.field private static final DCM_RGBX_BLUE_MASK:I = 0xff00

.field private static final DCM_RGBX_GREEN_MASK:I = 0xff0000

.field private static final DCM_RGBX_RED_MASK:I = -0x1000000

.field private static loopcache:[Lsun/java2d/loops/RenderLoops;

.field private static typecache:[Lsun/java2d/loops/SurfaceType;


# instance fields
.field bufImg:Ljava/awt/image/BufferedImage;

.field solidloops:Lsun/java2d/loops/RenderLoops;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Ljava/awt/image/IndexColorModel;

    const-class v1, Lsun/awt/image/BufImgSurfaceData$ICMColorData;

    invoke-static {v0, v1}, Lsun/awt/image/BufImgSurfaceData;->initIDs(Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v0, 0x5

    new-array v1, v0, [Lsun/java2d/loops/RenderLoops;

    sput-object v1, Lsun/awt/image/BufImgSurfaceData;->loopcache:[Lsun/java2d/loops/RenderLoops;

    new-array v0, v0, [Lsun/java2d/loops/SurfaceType;

    sput-object v0, Lsun/awt/image/BufImgSurfaceData;->typecache:[Lsun/java2d/loops/SurfaceType;

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/DataBuffer;Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lsun/awt/image/SunWritableRaster;->stealTrackable(Ljava/awt/image/DataBuffer;)Lsun/java2d/StateTrackableDelegate;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, p3, v0}, Lsun/java2d/SurfaceData;-><init>(Lsun/java2d/StateTrackableDelegate;Lsun/java2d/loops/SurfaceType;Ljava/awt/image/ColorModel;)V

    .line 4
    iput-object p2, p0, Lsun/awt/image/BufImgSurfaceData;->bufImg:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public constructor <init>(Lsun/java2d/loops/SurfaceType;Ljava/awt/image/ColorModel;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lsun/java2d/SurfaceData;-><init>(Lsun/java2d/loops/SurfaceType;Ljava/awt/image/ColorModel;)V

    return-void
.end method

.method public static synthetic access$000(J)V
    .locals 0

    invoke-static {p0, p1}, Lsun/awt/image/BufImgSurfaceData;->freeNativeICMData(J)V

    return-void
.end method

.method public static createData(Ljava/awt/image/BufferedImage;)Lsun/java2d/SurfaceData;
    .locals 9

    if-eqz p0, :cond_10

    .line 1
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    .line 3
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v3

    .line 5
    instance-of v4, v1, Lsun/awt/image/IntegerComponentRaster;

    if-eqz v4, :cond_a

    .line 6
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result v4

    if-ne v4, v7, :cond_a

    move-object v4, v1

    check-cast v4, Lsun/awt/image/IntegerComponentRaster;

    .line 7
    invoke-virtual {v4}, Lsun/awt/image/IntegerComponentRaster;->getPixelStride()I

    move-result v4

    if-ne v4, v7, :cond_a

    .line 8
    sget-object v1, Lsun/java2d/loops/SurfaceType;->AnyInt:Lsun/java2d/loops/SurfaceType;

    .line 9
    instance-of v4, v0, Ljava/awt/image/DirectColorModel;

    if-eqz v4, :cond_9

    .line 10
    check-cast v0, Ljava/awt/image/DirectColorModel;

    .line 11
    invoke-virtual {v0}, Ljava/awt/image/DirectColorModel;->getAlphaMask()I

    move-result v1

    .line 12
    invoke-virtual {v0}, Ljava/awt/image/DirectColorModel;->getRedMask()I

    move-result v4

    .line 13
    invoke-virtual {v0}, Ljava/awt/image/DirectColorModel;->getGreenMask()I

    move-result v5

    .line 14
    invoke-virtual {v0}, Ljava/awt/image/DirectColorModel;->getBlueMask()I

    move-result v0

    const v7, 0xff00

    const/high16 v8, 0xff0000

    if-ne v3, v6, :cond_7

    if-nez v1, :cond_7

    const/high16 v6, -0x1000000

    if-ne v4, v6, :cond_7

    if-ne v5, v8, :cond_7

    if-ne v0, v7, :cond_7

    .line 15
    sget-object v1, Lsun/java2d/loops/SurfaceType;->IntRgbx:Lsun/java2d/loops/SurfaceType;

    goto/16 :goto_2

    .line 16
    :pswitch_0
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v1

    if-eq v1, v7, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v6, :cond_0

    .line 17
    sget-object v0, Lsun/java2d/loops/SurfaceType;->ByteIndexed:Lsun/java2d/loops/SurfaceType;

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string v0, "Unrecognized transparency"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_1
    sget-object v0, Lsun/java2d/loops/SurfaceType;->ByteIndexedBm:Lsun/java2d/loops/SurfaceType;

    goto :goto_0

    .line 20
    :cond_2
    check-cast v0, Ljava/awt/image/IndexColorModel;

    invoke-static {v0}, Lsun/java2d/SurfaceData;->isOpaqueGray(Ljava/awt/image/IndexColorModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    sget-object v0, Lsun/java2d/loops/SurfaceType;->Index8Gray:Lsun/java2d/loops/SurfaceType;

    goto :goto_0

    .line 22
    :cond_3
    sget-object v0, Lsun/java2d/loops/SurfaceType;->ByteIndexedOpaque:Lsun/java2d/loops/SurfaceType;

    .line 23
    :goto_0
    invoke-static {p0, v0, v3}, Lsun/awt/image/BufImgSurfaceData;->createDataBC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;I)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    .line 24
    :pswitch_1
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v3}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v0

    if-eq v0, v7, :cond_6

    if-eq v0, v4, :cond_5

    if-ne v0, v2, :cond_4

    .line 26
    sget-object v0, Lsun/java2d/loops/SurfaceType;->ByteBinary4Bit:Lsun/java2d/loops/SurfaceType;

    goto :goto_1

    .line 27
    :cond_4
    new-instance p0, Ljava/lang/InternalError;

    const-string v0, "Unrecognized pixel size"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_5
    sget-object v0, Lsun/java2d/loops/SurfaceType;->ByteBinary2Bit:Lsun/java2d/loops/SurfaceType;

    goto :goto_1

    .line 29
    :cond_6
    sget-object v0, Lsun/java2d/loops/SurfaceType;->ByteBinary1Bit:Lsun/java2d/loops/SurfaceType;

    .line 30
    :goto_1
    invoke-static {p0, v0}, Lsun/awt/image/BufImgSurfaceData;->createDataBP(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    .line 31
    :pswitch_2
    sget-object v0, Lsun/java2d/loops/SurfaceType;->UshortGray:Lsun/java2d/loops/SurfaceType;

    invoke-static {p0, v0, v5}, Lsun/awt/image/BufImgSurfaceData;->createDataSC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;Ljava/awt/image/IndexColorModel;)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    .line 32
    :pswitch_3
    sget-object v0, Lsun/java2d/loops/SurfaceType;->ByteGray:Lsun/java2d/loops/SurfaceType;

    invoke-static {p0, v0, v3}, Lsun/awt/image/BufImgSurfaceData;->createDataBC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;I)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    .line 33
    :pswitch_4
    sget-object v0, Lsun/java2d/loops/SurfaceType;->Ushort555Rgb:Lsun/java2d/loops/SurfaceType;

    invoke-static {p0, v0, v5}, Lsun/awt/image/BufImgSurfaceData;->createDataSC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;Ljava/awt/image/IndexColorModel;)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    .line 34
    :pswitch_5
    sget-object v0, Lsun/java2d/loops/SurfaceType;->Ushort565Rgb:Lsun/java2d/loops/SurfaceType;

    invoke-static {p0, v0, v5}, Lsun/awt/image/BufImgSurfaceData;->createDataSC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;Ljava/awt/image/IndexColorModel;)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    .line 35
    :pswitch_6
    sget-object v0, Lsun/java2d/loops/SurfaceType;->FourByteAbgrPre:Lsun/java2d/loops/SurfaceType;

    invoke-static {p0, v0, v6}, Lsun/awt/image/BufImgSurfaceData;->createDataBC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;I)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    .line 36
    :pswitch_7
    sget-object v0, Lsun/java2d/loops/SurfaceType;->FourByteAbgr:Lsun/java2d/loops/SurfaceType;

    invoke-static {p0, v0, v6}, Lsun/awt/image/BufImgSurfaceData;->createDataBC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;I)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    .line 37
    :pswitch_8
    sget-object v0, Lsun/java2d/loops/SurfaceType;->ThreeByteBgr:Lsun/java2d/loops/SurfaceType;

    invoke-static {p0, v0, v4}, Lsun/awt/image/BufImgSurfaceData;->createDataBC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;I)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    .line 38
    :pswitch_9
    sget-object v0, Lsun/java2d/loops/SurfaceType;->IntBgr:Lsun/java2d/loops/SurfaceType;

    invoke-static {p0, v0}, Lsun/awt/image/BufImgSurfaceData;->createDataIC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    .line 39
    :pswitch_a
    sget-object v0, Lsun/java2d/loops/SurfaceType;->IntArgbPre:Lsun/java2d/loops/SurfaceType;

    invoke-static {p0, v0}, Lsun/awt/image/BufImgSurfaceData;->createDataIC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    .line 40
    :pswitch_b
    sget-object v0, Lsun/java2d/loops/SurfaceType;->IntArgb:Lsun/java2d/loops/SurfaceType;

    invoke-static {p0, v0}, Lsun/awt/image/BufImgSurfaceData;->createDataIC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    .line 41
    :pswitch_c
    sget-object v0, Lsun/java2d/loops/SurfaceType;->IntRgb:Lsun/java2d/loops/SurfaceType;

    invoke-static {p0, v0}, Lsun/awt/image/BufImgSurfaceData;->createDataIC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    :cond_7
    if-ne v3, v2, :cond_8

    const/high16 v2, 0x1000000

    if-ne v1, v2, :cond_8

    if-ne v4, v8, :cond_8

    if-ne v5, v7, :cond_8

    const/16 v1, 0xff

    if-ne v0, v1, :cond_8

    .line 42
    sget-object v1, Lsun/java2d/loops/SurfaceType;->IntArgbBm:Lsun/java2d/loops/SurfaceType;

    goto :goto_2

    .line 43
    :cond_8
    sget-object v1, Lsun/java2d/loops/SurfaceType;->AnyDcm:Lsun/java2d/loops/SurfaceType;

    .line 44
    :cond_9
    :goto_2
    invoke-static {p0, v1}, Lsun/awt/image/BufImgSurfaceData;->createDataIC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto/16 :goto_6

    .line 45
    :cond_a
    instance-of v4, v1, Lsun/awt/image/ShortComponentRaster;

    if-eqz v4, :cond_f

    .line 46
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result v4

    if-ne v4, v7, :cond_f

    move-object v4, v1

    check-cast v4, Lsun/awt/image/ShortComponentRaster;

    .line 47
    invoke-virtual {v4}, Lsun/awt/image/ShortComponentRaster;->getPixelStride()I

    move-result v4

    if-ne v4, v7, :cond_f

    .line 48
    sget-object v1, Lsun/java2d/loops/SurfaceType;->AnyShort:Lsun/java2d/loops/SurfaceType;

    .line 49
    instance-of v4, v0, Ljava/awt/image/DirectColorModel;

    if-eqz v4, :cond_c

    .line 50
    check-cast v0, Ljava/awt/image/DirectColorModel;

    .line 51
    invoke-virtual {v0}, Ljava/awt/image/DirectColorModel;->getAlphaMask()I

    move-result v4

    .line 52
    invoke-virtual {v0}, Ljava/awt/image/DirectColorModel;->getRedMask()I

    move-result v7

    .line 53
    invoke-virtual {v0}, Ljava/awt/image/DirectColorModel;->getGreenMask()I

    move-result v8

    .line 54
    invoke-virtual {v0}, Ljava/awt/image/DirectColorModel;->getBlueMask()I

    move-result v0

    if-ne v3, v6, :cond_b

    if-nez v4, :cond_b

    const v6, 0xf800

    if-ne v7, v6, :cond_b

    const/16 v6, 0x7c0

    if-ne v8, v6, :cond_b

    const/16 v6, 0x3e

    if-ne v0, v6, :cond_b

    .line 55
    sget-object v0, Lsun/java2d/loops/SurfaceType;->Ushort555Rgbx:Lsun/java2d/loops/SurfaceType;

    :goto_3
    move-object v1, v0

    goto :goto_5

    :cond_b
    if-ne v3, v2, :cond_e

    const v2, 0xf000

    if-ne v4, v2, :cond_e

    const/16 v2, 0xf00

    if-ne v7, v2, :cond_e

    const/16 v2, 0xf0

    if-ne v8, v2, :cond_e

    const/16 v2, 0xf

    if-ne v0, v2, :cond_e

    .line 56
    sget-object v0, Lsun/java2d/loops/SurfaceType;->Ushort4444Argb:Lsun/java2d/loops/SurfaceType;

    goto :goto_3

    .line 57
    :cond_c
    instance-of v2, v0, Ljava/awt/image/IndexColorModel;

    if-eqz v2, :cond_e

    .line 58
    check-cast v0, Ljava/awt/image/IndexColorModel;

    .line 59
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_e

    .line 60
    invoke-static {v0}, Lsun/java2d/SurfaceData;->isOpaqueGray(Ljava/awt/image/IndexColorModel;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 61
    sget-object v1, Lsun/java2d/loops/SurfaceType;->Index12Gray:Lsun/java2d/loops/SurfaceType;

    goto :goto_4

    .line 62
    :cond_d
    sget-object v1, Lsun/java2d/loops/SurfaceType;->UshortIndexed:Lsun/java2d/loops/SurfaceType;

    :goto_4
    move-object v5, v0

    .line 63
    :cond_e
    :goto_5
    invoke-static {p0, v1, v5}, Lsun/awt/image/BufImgSurfaceData;->createDataSC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;Ljava/awt/image/IndexColorModel;)Lsun/java2d/SurfaceData;

    move-result-object p0

    goto :goto_6

    .line 64
    :cond_f
    new-instance v0, Lsun/awt/image/BufImgSurfaceData;

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v1

    sget-object v2, Lsun/java2d/loops/SurfaceType;->Custom:Lsun/java2d/loops/SurfaceType;

    invoke-direct {v0, v1, p0, v2}, Lsun/awt/image/BufImgSurfaceData;-><init>(Ljava/awt/image/DataBuffer;Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)V

    move-object p0, v0

    .line 65
    :goto_6
    move-object v0, p0

    check-cast v0, Lsun/awt/image/BufImgSurfaceData;

    invoke-virtual {v0}, Lsun/awt/image/BufImgSurfaceData;->initSolidLoops()V

    return-object p0

    .line 66
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "BufferedImage cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createData(Ljava/awt/image/Raster;Ljava/awt/image/ColorModel;)Lsun/java2d/SurfaceData;
    .locals 0

    .line 67
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "SurfaceData not implemented for Raster/CM"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createDataBC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;I)Lsun/java2d/SurfaceData;
    .locals 11

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    check-cast v0, Lsun/awt/image/ByteComponentRaster;

    new-instance v10, Lsun/awt/image/BufImgSurfaceData;

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v1

    invoke-direct {v10, v1, p0, p1}, Lsun/awt/image/BufImgSurfaceData;-><init>(Ljava/awt/image/DataBuffer;Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)V

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    instance-of p1, p0, Ljava/awt/image/IndexColorModel;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/awt/image/IndexColorModel;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v9, p0

    invoke-virtual {v0}, Lsun/awt/image/ByteComponentRaster;->getDataStorage()[B

    move-result-object v2

    invoke-virtual {v0, p2}, Lsun/awt/image/ByteComponentRaster;->getDataOffset(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Lsun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result v7

    invoke-virtual {v0}, Lsun/awt/image/ByteComponentRaster;->getScanlineStride()I

    move-result v8

    move-object v1, v10

    invoke-virtual/range {v1 .. v9}, Lsun/awt/image/BufImgSurfaceData;->initRaster(Ljava/lang/Object;IIIIIILjava/awt/image/IndexColorModel;)V

    return-object v10
.end method

.method public static createDataBP(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/SurfaceData;
    .locals 11

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    check-cast v0, Lsun/awt/image/BytePackedRaster;

    new-instance v10, Lsun/awt/image/BufImgSurfaceData;

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v1

    invoke-direct {v10, v1, p0, p1}, Lsun/awt/image/BufImgSurfaceData;-><init>(Ljava/awt/image/DataBuffer;Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)V

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    instance-of p1, p0, Ljava/awt/image/IndexColorModel;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/awt/image/IndexColorModel;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v9, p0

    invoke-virtual {v0}, Lsun/awt/image/BytePackedRaster;->getDataStorage()[B

    move-result-object v2

    invoke-virtual {v0}, Lsun/awt/image/BytePackedRaster;->getDataBitOffset()I

    move-result p0

    div-int/lit8 v3, p0, 0x8

    invoke-virtual {v0}, Lsun/awt/image/BytePackedRaster;->getDataBitOffset()I

    move-result p0

    and-int/lit8 v4, p0, 0x7

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0}, Lsun/awt/image/BytePackedRaster;->getScanlineStride()I

    move-result v8

    move-object v1, v10

    invoke-virtual/range {v1 .. v9}, Lsun/awt/image/BufImgSurfaceData;->initRaster(Ljava/lang/Object;IIIIIILjava/awt/image/IndexColorModel;)V

    return-object v10
.end method

.method public static createDataIC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/SurfaceData;
    .locals 11

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    check-cast v0, Lsun/awt/image/IntegerComponentRaster;

    new-instance v10, Lsun/awt/image/BufImgSurfaceData;

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v1

    invoke-direct {v10, v1, p0, p1}, Lsun/awt/image/BufImgSurfaceData;-><init>(Ljava/awt/image/DataBuffer;Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)V

    invoke-virtual {v0}, Lsun/awt/image/IntegerComponentRaster;->getDataStorage()[I

    move-result-object v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lsun/awt/image/IntegerComponentRaster;->getDataOffset(I)I

    move-result p0

    mul-int/lit8 v3, p0, 0x4

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Lsun/awt/image/IntegerComponentRaster;->getPixelStride()I

    move-result p0

    mul-int/lit8 v7, p0, 0x4

    invoke-virtual {v0}, Lsun/awt/image/IntegerComponentRaster;->getScanlineStride()I

    move-result p0

    mul-int/lit8 v8, p0, 0x4

    const/4 v9, 0x0

    move-object v1, v10

    invoke-virtual/range {v1 .. v9}, Lsun/awt/image/BufImgSurfaceData;->initRaster(Ljava/lang/Object;IIIIIILjava/awt/image/IndexColorModel;)V

    return-object v10
.end method

.method public static createDataSC(Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;Ljava/awt/image/IndexColorModel;)Lsun/java2d/SurfaceData;
    .locals 11

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    check-cast v0, Lsun/awt/image/ShortComponentRaster;

    new-instance v10, Lsun/awt/image/BufImgSurfaceData;

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v1

    invoke-direct {v10, v1, p0, p1}, Lsun/awt/image/BufImgSurfaceData;-><init>(Ljava/awt/image/DataBuffer;Ljava/awt/image/BufferedImage;Lsun/java2d/loops/SurfaceType;)V

    invoke-virtual {v0}, Lsun/awt/image/ShortComponentRaster;->getDataStorage()[S

    move-result-object v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lsun/awt/image/ShortComponentRaster;->getDataOffset(I)I

    move-result p0

    mul-int/lit8 v3, p0, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Lsun/awt/image/ShortComponentRaster;->getPixelStride()I

    move-result p0

    mul-int/lit8 v7, p0, 0x2

    invoke-virtual {v0}, Lsun/awt/image/ShortComponentRaster;->getScanlineStride()I

    move-result p0

    mul-int/lit8 v8, p0, 0x2

    move-object v1, v10

    move-object v9, p2

    invoke-virtual/range {v1 .. v9}, Lsun/awt/image/BufImgSurfaceData;->initRaster(Ljava/lang/Object;IIIIIILjava/awt/image/IndexColorModel;)V

    return-object v10
.end method

.method private static freeNativeICMData(J)V
    .locals 0

    return-void
.end method

.method public static declared-synchronized getSolidLoops(Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/RenderLoops;
    .locals 6

    const-class v0, Lsun/awt/image/BufImgSurfaceData;

    monitor-enter v0

    const/4 v1, 0x4

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    :try_start_0
    sget-object v3, Lsun/awt/image/BufImgSurfaceData;->typecache:[Lsun/java2d/loops/SurfaceType;

    aget-object v3, v3, v2

    if-ne v3, p0, :cond_0

    sget-object p0, Lsun/awt/image/BufImgSurfaceData;->loopcache:[Lsun/java2d/loops/RenderLoops;

    aget-object p0, p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_1
    sget-object v2, Lsun/java2d/loops/SurfaceType;->OpaqueColor:Lsun/java2d/loops/SurfaceType;

    sget-object v3, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    invoke-static {v2, v3, p0}, Lsun/java2d/SurfaceData;->makeRenderLoops(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/RenderLoops;

    move-result-object v2

    sget-object v3, Lsun/awt/image/BufImgSurfaceData;->loopcache:[Lsun/java2d/loops/RenderLoops;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v3, Lsun/awt/image/BufImgSurfaceData;->typecache:[Lsun/java2d/loops/SurfaceType;

    invoke-static {v3, v5, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v3, Lsun/awt/image/BufImgSurfaceData;->loopcache:[Lsun/java2d/loops/RenderLoops;

    aput-object v2, v3, v1

    sget-object v3, Lsun/awt/image/BufImgSurfaceData;->typecache:[Lsun/java2d/loops/SurfaceType;

    aput-object p0, v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initIDs(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public checkCustomComposite()V
    .locals 0

    return-void
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 2

    new-instance v0, Ljava/awt/Rectangle;

    iget-object v1, p0, Lsun/awt/image/BufImgSurfaceData;->bufImg:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    iget-object p0, p0, Lsun/awt/image/BufImgSurfaceData;->bufImg:Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Ljava/awt/Rectangle;-><init>(II)V

    return-object v0
.end method

.method public getDestination()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lsun/awt/image/BufImgSurfaceData;->bufImg:Ljava/awt/image/BufferedImage;

    return-object p0
.end method

.method public declared-synchronized getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRaster(IIII)Ljava/awt/image/Raster;
    .locals 0

    iget-object p0, p0, Lsun/awt/image/BufImgSurfaceData;->bufImg:Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public getRenderLoops(Lsun/java2d/SunGraphics2D;)Lsun/java2d/loops/RenderLoops;
    .locals 2

    iget v0, p1, Lsun/java2d/SunGraphics2D;->paintState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget v0, p1, Lsun/java2d/SunGraphics2D;->compositeState:I

    if-gtz v0, :cond_0

    iget-object p0, p0, Lsun/awt/image/BufImgSurfaceData;->solidloops:Lsun/java2d/loops/RenderLoops;

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lsun/java2d/SurfaceData;->getRenderLoops(Lsun/java2d/SunGraphics2D;)Lsun/java2d/loops/RenderLoops;

    move-result-object p0

    return-object p0
.end method

.method public getReplacement()Lsun/java2d/SurfaceData;
    .locals 0

    iget-object p0, p0, Lsun/awt/image/BufImgSurfaceData;->bufImg:Ljava/awt/image/BufferedImage;

    invoke-static {p0}, Lsun/java2d/SurfaceData;->restoreContents(Ljava/awt/Image;)Lsun/java2d/SurfaceData;

    move-result-object p0

    return-object p0
.end method

.method public native initRaster(Ljava/lang/Object;IIIIIILjava/awt/image/IndexColorModel;)V
.end method

.method public initSolidLoops()V
    .locals 1

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    invoke-static {v0}, Lsun/awt/image/BufImgSurfaceData;->getSolidLoops(Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/RenderLoops;

    move-result-object v0

    iput-object v0, p0, Lsun/awt/image/BufImgSurfaceData;->solidloops:Lsun/java2d/loops/RenderLoops;

    return-void
.end method
