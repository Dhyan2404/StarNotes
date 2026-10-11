.class public Ljava/awt/image/BufferedImage;
.super Ljava/awt/Image;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/WritableRenderedImage;
.implements Ljava/awt/Transparency;
.implements Lcom/trans/android/ImageBridge;
.implements Ljava/io/Closeable;


# static fields
.field public static final DCM_555_BLU_MASK:I = 0x1f

.field public static final DCM_555_GRN_MASK:I = 0x3e0

.field public static final DCM_555_RED_MASK:I = 0x7c00

.field public static final DCM_565_BLU_MASK:I = 0x1f

.field public static final DCM_565_GRN_MASK:I = 0x7e0

.field public static final DCM_565_RED_MASK:I = 0xf800

.field public static final DCM_ALPHA_MASK:I = -0x1000000

.field public static final DCM_BGR_BLU_MASK:I = 0xff0000

.field public static final DCM_BGR_GRN_MASK:I = 0xff00

.field public static final DCM_BGR_RED_MASK:I = 0xff

.field public static final DCM_BLUE_MASK:I = 0xff

.field public static final DCM_GREEN_MASK:I = 0xff00

.field public static final DCM_RED_MASK:I = 0xff0000

.field public static final TYPE_3BYTE_BGR:I = 0x5

.field public static final TYPE_4BYTE_ABGR:I = 0x6

.field public static final TYPE_4BYTE_ABGR_PRE:I = 0x7

.field public static final TYPE_BYTE_BINARY:I = 0xc

.field public static final TYPE_BYTE_GRAY:I = 0xa

.field public static final TYPE_BYTE_INDEXED:I = 0xd

.field public static final TYPE_CUSTOM:I = 0x0

.field public static final TYPE_INT_ARGB:I = 0x2

.field public static final TYPE_INT_ARGB_PRE:I = 0x3

.field public static final TYPE_INT_BGR:I = 0x4

.field public static final TYPE_INT_RGB:I = 0x1

.field public static final TYPE_USHORT_555_RGB:I = 0x9

.field public static final TYPE_USHORT_565_RGB:I = 0x8

.field public static final TYPE_USHORT_GRAY:I = 0xb


# instance fields
.field private colorModel:Ljava/awt/image/ColorModel;

.field private imageType:I

.field private osis:Lsun/awt/image/OffScreenImageSource;

.field private properties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private raster:Ljava/awt/image/WritableRaster;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Ljava/awt/image/ColorModel;->loadLibraries()V

    invoke-static {}, Ljava/awt/image/BufferedImage;->initIDs()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v8, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/awt/Image;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Ljava/awt/image/BufferedImage;->imageType:I

    const/16 v4, 0x3eb

    const/16 v5, 0x1f

    const/16 v6, 0x10

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/16 v10, 0x3e8

    const/4 v11, 0x1

    const/16 v12, 0x8

    packed-switch v8, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown image type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v4, 0x100

    new-array v15, v4, [I

    move v5, v1

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_2

    move v7, v1

    :goto_1
    if-ge v7, v4, :cond_1

    move v9, v1

    :goto_2
    if-ge v9, v4, :cond_0

    add-int/lit8 v10, v6, 0x1

    shl-int/lit8 v12, v5, 0x10

    shl-int/lit8 v13, v7, 0x8

    or-int/2addr v12, v13

    or-int/2addr v12, v9

    .line 4
    aput v12, v15, v6

    add-int/lit8 v9, v9, 0x33

    move v6, v10

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x33

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x33

    goto :goto_0

    :cond_2
    rsub-int v5, v6, 0x100

    .line 5
    div-int v5, v4, v5

    mul-int/lit8 v7, v5, 0x3

    :goto_3
    if-ge v6, v4, :cond_3

    shl-int/lit8 v9, v7, 0x10

    shl-int/lit8 v10, v7, 0x8

    or-int/2addr v9, v10

    or-int/2addr v9, v7

    .line 6
    aput v9, v15, v6

    add-int/2addr v7, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 7
    :cond_3
    new-instance v4, Ljava/awt/image/IndexColorModel;

    const/16 v13, 0x8

    const/16 v14, 0x100

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-object v12, v4

    invoke-direct/range {v12 .. v19}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    iput-object v4, v0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    const/4 v4, 0x0

    .line 8
    invoke-static {v1, v2, v3, v11, v4}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    goto/16 :goto_4

    :pswitch_1
    new-array v14, v9, [B

    .line 9
    fill-array-data v14, :array_0

    .line 10
    new-instance v1, Ljava/awt/image/IndexColorModel;

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object v9, v1

    move-object v12, v14

    move-object v13, v14

    invoke-direct/range {v9 .. v14}, Ljava/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 11
    invoke-static/range {v1 .. v6}, Ljava/awt/image/Raster;->createPackedRaster(IIIIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    goto/16 :goto_4

    .line 12
    :pswitch_2
    invoke-static {v4}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v10

    .line 13
    filled-new-array {v6}, [I

    move-result-object v11

    .line 14
    new-instance v1, Ljava/awt/image/ComponentColorModel;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    goto/16 :goto_4

    .line 16
    :pswitch_3
    invoke-static {v4}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v10

    .line 17
    filled-new-array {v12}, [I

    move-result-object v11

    .line 18
    new-instance v1, Ljava/awt/image/ComponentColorModel;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    goto/16 :goto_4

    .line 20
    :pswitch_4
    new-instance v1, Ljava/awt/image/DirectColorModel;

    const/16 v4, 0x7c00

    const/16 v6, 0x3e0

    const/16 v7, 0xf

    invoke-direct {v1, v7, v4, v6, v5}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    goto/16 :goto_4

    .line 22
    :pswitch_5
    new-instance v1, Ljava/awt/image/DirectColorModel;

    const v4, 0xf800

    const/16 v7, 0x7e0

    invoke-direct {v1, v6, v4, v7, v5}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    goto/16 :goto_4

    .line 24
    :pswitch_6
    invoke-static {v10}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v10

    .line 25
    filled-new-array {v12, v12, v12, v12}, [I

    move-result-object v4

    .line 26
    filled-new-array {v7, v9, v11, v1}, [I

    move-result-object v6

    .line 27
    new-instance v1, Ljava/awt/image/ComponentColorModel;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object v9, v1

    move-object v11, v4

    invoke-direct/range {v9 .. v15}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    const/4 v1, 0x0

    mul-int/lit8 v4, v2, 0x4

    const/4 v5, 0x4

    const/4 v7, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 28
    invoke-static/range {v1 .. v7}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    goto/16 :goto_4

    .line 29
    :pswitch_7
    invoke-static {v10}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v10

    .line 30
    filled-new-array {v12, v12, v12, v12}, [I

    move-result-object v4

    .line 31
    filled-new-array {v7, v9, v11, v1}, [I

    move-result-object v6

    .line 32
    new-instance v1, Ljava/awt/image/ComponentColorModel;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object v9, v1

    move-object v11, v4

    invoke-direct/range {v9 .. v15}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    const/4 v1, 0x0

    mul-int/lit8 v4, v2, 0x4

    const/4 v5, 0x4

    const/4 v7, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 33
    invoke-static/range {v1 .. v7}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    goto/16 :goto_4

    .line 34
    :pswitch_8
    invoke-static {v10}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v10

    .line 35
    filled-new-array {v12, v12, v12}, [I

    move-result-object v4

    .line 36
    filled-new-array {v9, v11, v1}, [I

    move-result-object v6

    .line 37
    new-instance v1, Ljava/awt/image/ComponentColorModel;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v9, v1

    move-object v11, v4

    invoke-direct/range {v9 .. v15}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    const/4 v1, 0x0

    mul-int/lit8 v4, v2, 0x3

    const/4 v5, 0x3

    const/4 v7, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 38
    invoke-static/range {v1 .. v7}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    goto :goto_4

    .line 39
    :pswitch_9
    new-instance v1, Ljava/awt/image/DirectColorModel;

    const v4, 0xff00

    const/high16 v5, 0xff0000

    const/16 v6, 0x18

    const/16 v7, 0xff

    invoke-direct {v1, v6, v7, v4, v5}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    .line 40
    invoke-virtual {v1, v2, v3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    goto :goto_4

    .line 41
    :pswitch_a
    new-instance v1, Ljava/awt/image/DirectColorModel;

    .line 42
    invoke-static {v10}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v10

    const/16 v11, 0x20

    const/high16 v12, 0xff0000

    const v13, 0xff00

    const/16 v14, 0xff

    const/high16 v15, -0x1000000

    const/16 v16, 0x1

    const/16 v17, 0x3

    move-object v9, v1

    invoke-direct/range {v9 .. v17}, Ljava/awt/image/DirectColorModel;-><init>(Ljava/awt/color/ColorSpace;IIIIIZI)V

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    goto :goto_4

    .line 44
    :pswitch_b
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    .line 45
    invoke-virtual {v1, v2, v3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    goto :goto_4

    .line 46
    :pswitch_c
    new-instance v1, Ljava/awt/image/DirectColorModel;

    const/16 v10, 0x18

    const/high16 v11, 0xff0000

    const v12, 0xff00

    const/16 v13, 0xff

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Ljava/awt/image/DirectColorModel;-><init>(IIIII)V

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    .line 47
    invoke-virtual {v1, v2, v3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    .line 48
    :goto_4
    iput v8, v0, Ljava/awt/image/BufferedImage;->imageType:I

    return-void

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

    :array_0
    .array-data 1
        0x0t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(IIILjava/awt/image/IndexColorModel;)V
    .locals 9

    .line 49
    invoke-direct {p0}, Ljava/awt/Image;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Ljava/awt/image/BufferedImage;->imageType:I

    .line 51
    invoke-virtual {p4}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This image types do not have premultiplied alpha."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 v1, 0xc

    const/4 v2, 0x1

    if-eq p3, v1, :cond_3

    const/16 v1, 0xd

    if-ne p3, v1, :cond_2

    const/4 v1, 0x0

    .line 53
    invoke-static {v0, p1, p2, v2, v1}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    goto :goto_3

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid image type ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ").  Image type must be either TYPE_BYTE_BINARY or  TYPE_BYTE_INDEXED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_3
    invoke-virtual {p4}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_4

    :goto_1
    move v7, v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    if-gt v0, v2, :cond_5

    move v7, v1

    goto :goto_2

    :cond_5
    const/16 v1, 0x10

    if-gt v0, v1, :cond_7

    goto :goto_1

    :goto_2
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move v4, p1

    move v5, p2

    .line 56
    invoke-static/range {v3 .. v8}, Ljava/awt/image/Raster;->createPackedRaster(IIIIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    .line 57
    :goto_3
    iget-object p1, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p4, p1}, Ljava/awt/image/IndexColorModel;->isCompatibleRaster(Ljava/awt/image/Raster;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 58
    iput-object p4, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    .line 59
    iput p3, p0, Ljava/awt/image/BufferedImage;->imageType:I

    return-void

    .line 60
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incompatible image type and IndexColorModel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Color map for TYPE_BYTE_BINARY must have no more than 16 entries"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/ColorModel;",
            "Ljava/awt/image/WritableRaster;",
            "Z",
            "Ljava/util/Hashtable<",
            "**>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/awt/Image;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Ljava/awt/image/BufferedImage;->imageType:I

    .line 64
    invoke-virtual {p1, p2}, Ljava/awt/image/ColorModel;->isCompatibleRaster(Ljava/awt/image/Raster;)Z

    move-result v1

    const-string v2, "Raster "

    if-eqz v1, :cond_1a

    .line 65
    iget v1, p2, Ljava/awt/image/Raster;->minX:I

    if-nez v1, :cond_19

    iget v1, p2, Ljava/awt/image/Raster;->minY:I

    if-nez v1, :cond_19

    .line 66
    iput-object p1, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    .line 67
    iput-object p2, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    if-eqz p4, :cond_1

    .line 68
    invoke-virtual {p4}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Ljava/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    .line 70
    invoke-virtual {p4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 71
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, p0, Ljava/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p2}, Ljava/awt/image/Raster;->getNumBands()I

    move-result p4

    .line 74
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v1

    .line 75
    invoke-static {p1, p2}, Ljava/awt/image/BufferedImage;->isStandard(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;)Z

    move-result v2

    .line 76
    invoke-virtual {p0, p3}, Ljava/awt/image/BufferedImage;->coerceData(Z)V

    .line 77
    invoke-virtual {p2}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p3

    .line 78
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eq v3, v5, :cond_6

    if-ne v3, v4, :cond_4

    if-eqz v2, :cond_4

    .line 80
    instance-of v1, p1, Ljava/awt/image/ComponentColorModel;

    if-eqz v1, :cond_4

    .line 81
    instance-of v1, p3, Ljava/awt/image/ComponentSampleModel;

    if-eqz v1, :cond_2

    check-cast p3, Ljava/awt/image/ComponentSampleModel;

    .line 82
    invoke-virtual {p3}, Ljava/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result p3

    if-eq p3, p4, :cond_2

    .line 83
    iput v0, p0, Ljava/awt/image/BufferedImage;->imageType:I

    goto :goto_1

    .line 84
    :cond_2
    instance-of p3, p2, Lsun/awt/image/ByteComponentRaster;

    if-eqz p3, :cond_3

    .line 85
    invoke-virtual {p2}, Ljava/awt/image/Raster;->getNumBands()I

    move-result p3

    if-ne p3, v7, :cond_3

    .line 86
    invoke-virtual {p1, v0}, Ljava/awt/image/ColorModel;->getComponentSize(I)I

    move-result p3

    if-ne p3, v6, :cond_3

    move-object p3, p2

    check-cast p3, Lsun/awt/image/ByteComponentRaster;

    .line 87
    invoke-virtual {p3}, Lsun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result p3

    if-ne p3, v7, :cond_3

    const/16 p1, 0xa

    .line 88
    iput p1, p0, Ljava/awt/image/BufferedImage;->imageType:I

    goto :goto_1

    .line 89
    :cond_3
    instance-of p3, p2, Lsun/awt/image/ShortComponentRaster;

    if-eqz p3, :cond_5

    .line 90
    invoke-virtual {p2}, Ljava/awt/image/Raster;->getNumBands()I

    move-result p3

    if-ne p3, v7, :cond_5

    .line 91
    invoke-virtual {p1, v0}, Ljava/awt/image/ColorModel;->getComponentSize(I)I

    move-result p1

    const/16 p3, 0x10

    if-ne p1, p3, :cond_5

    check-cast p2, Lsun/awt/image/ShortComponentRaster;

    .line 92
    invoke-virtual {p2}, Lsun/awt/image/ShortComponentRaster;->getPixelStride()I

    move-result p1

    if-ne p1, v7, :cond_5

    const/16 p1, 0xb

    .line 93
    iput p1, p0, Ljava/awt/image/BufferedImage;->imageType:I

    goto :goto_1

    .line 94
    :cond_4
    iput v0, p0, Ljava/awt/image/BufferedImage;->imageType:I

    :cond_5
    :goto_1
    return-void

    .line 95
    :cond_6
    instance-of p3, p2, Lsun/awt/image/IntegerComponentRaster;

    const/4 v3, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz p3, :cond_c

    if-eq p4, v9, :cond_7

    if-ne p4, v8, :cond_c

    .line 96
    :cond_7
    check-cast p2, Lsun/awt/image/IntegerComponentRaster;

    .line 97
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result p3

    .line 98
    invoke-virtual {p2}, Lsun/awt/image/IntegerComponentRaster;->getPixelStride()I

    move-result p2

    if-ne p2, v7, :cond_18

    if-eqz v2, :cond_18

    instance-of p2, p1, Ljava/awt/image/DirectColorModel;

    if-eqz p2, :cond_18

    const/16 p2, 0x20

    if-eq p3, p2, :cond_8

    const/16 p2, 0x18

    if-ne p3, p2, :cond_18

    .line 99
    :cond_8
    check-cast p1, Ljava/awt/image/DirectColorModel;

    .line 100
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getRedMask()I

    move-result p2

    .line 101
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getGreenMask()I

    move-result p3

    .line 102
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getBlueMask()I

    move-result p4

    const v0, 0xff00

    const/16 v2, 0xff

    const/high16 v4, 0xff0000

    if-ne p2, v4, :cond_b

    if-ne p3, v0, :cond_b

    if-ne p4, v2, :cond_b

    .line 103
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getAlphaMask()I

    move-result p2

    const/high16 p3, -0x1000000

    if-ne p2, p3, :cond_a

    if-eqz v1, :cond_9

    move v3, v9

    .line 104
    :cond_9
    iput v3, p0, Ljava/awt/image/BufferedImage;->imageType:I

    goto/16 :goto_4

    .line 105
    :cond_a
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result p1

    if-nez p1, :cond_18

    .line 106
    iput v7, p0, Ljava/awt/image/BufferedImage;->imageType:I

    goto/16 :goto_4

    :cond_b
    if-ne p2, v2, :cond_18

    if-ne p3, v0, :cond_18

    if-ne p4, v4, :cond_18

    .line 107
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result p1

    if-nez p1, :cond_18

    .line 108
    iput v8, p0, Ljava/awt/image/BufferedImage;->imageType:I

    goto/16 :goto_4

    .line 109
    :cond_c
    instance-of p3, p1, Ljava/awt/image/IndexColorModel;

    if-eqz p3, :cond_f

    if-ne p4, v7, :cond_f

    if-eqz v2, :cond_f

    .line 110
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result p3

    if-eqz p3, :cond_d

    if-nez v1, :cond_f

    .line 111
    :cond_d
    check-cast p1, Ljava/awt/image/IndexColorModel;

    .line 112
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result p1

    .line 113
    instance-of p3, p2, Lsun/awt/image/BytePackedRaster;

    if-eqz p3, :cond_e

    const/16 p1, 0xc

    .line 114
    iput p1, p0, Ljava/awt/image/BufferedImage;->imageType:I

    goto/16 :goto_4

    .line 115
    :cond_e
    instance-of p3, p2, Lsun/awt/image/ByteComponentRaster;

    if-eqz p3, :cond_18

    .line 116
    check-cast p2, Lsun/awt/image/ByteComponentRaster;

    .line 117
    invoke-virtual {p2}, Lsun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result p2

    if-ne p2, v7, :cond_18

    if-gt p1, v6, :cond_18

    const/16 p1, 0xd

    .line 118
    iput p1, p0, Ljava/awt/image/BufferedImage;->imageType:I

    goto/16 :goto_4

    .line 119
    :cond_f
    instance-of p3, p2, Lsun/awt/image/ShortComponentRaster;

    if-eqz p3, :cond_11

    instance-of p3, p1, Ljava/awt/image/DirectColorModel;

    if-eqz p3, :cond_11

    if-eqz v2, :cond_11

    if-ne p4, v9, :cond_11

    .line 120
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result p3

    if-nez p3, :cond_11

    .line 121
    check-cast p1, Ljava/awt/image/DirectColorModel;

    .line 122
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getRedMask()I

    move-result p2

    const p3, 0xf800

    const/16 p4, 0x1f

    if-ne p2, p3, :cond_10

    .line 123
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getGreenMask()I

    move-result p2

    const/16 p3, 0x7e0

    if-ne p2, p3, :cond_18

    .line 124
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getBlueMask()I

    move-result p1

    if-ne p1, p4, :cond_18

    .line 125
    iput v6, p0, Ljava/awt/image/BufferedImage;->imageType:I

    goto/16 :goto_4

    .line 126
    :cond_10
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getRedMask()I

    move-result p2

    const/16 p3, 0x7c00

    if-ne p2, p3, :cond_18

    .line 127
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getGreenMask()I

    move-result p2

    const/16 p3, 0x3e0

    if-ne p2, p3, :cond_18

    .line 128
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getBlueMask()I

    move-result p1

    if-ne p1, p4, :cond_18

    const/16 p1, 0x9

    .line 129
    iput p1, p0, Ljava/awt/image/BufferedImage;->imageType:I

    goto/16 :goto_4

    .line 130
    :cond_11
    instance-of p3, p2, Lsun/awt/image/ByteComponentRaster;

    if-eqz p3, :cond_18

    instance-of p3, p1, Ljava/awt/image/ComponentColorModel;

    if-eqz p3, :cond_18

    if-eqz v2, :cond_18

    .line 131
    invoke-virtual {p2}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p3

    instance-of p3, p3, Ljava/awt/image/PixelInterleavedSampleModel;

    if-eqz p3, :cond_18

    if-eq p4, v9, :cond_12

    if-ne p4, v8, :cond_18

    .line 132
    :cond_12
    check-cast p1, Ljava/awt/image/ComponentColorModel;

    .line 133
    invoke-virtual {p2}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p3

    check-cast p3, Ljava/awt/image/PixelInterleavedSampleModel;

    .line 134
    check-cast p2, Lsun/awt/image/ByteComponentRaster;

    .line 135
    invoke-virtual {p3}, Ljava/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object p3

    .line 136
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v2

    if-ne v2, p4, :cond_17

    .line 137
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getComponentSize()[I

    move-result-object v2

    move v8, v0

    :goto_2
    if-ge v8, p4, :cond_14

    .line 138
    aget v10, v2, v8

    if-eq v10, v6, :cond_13

    move v2, v0

    goto :goto_3

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_14
    move v2, v7

    :goto_3
    if-eqz v2, :cond_18

    .line 139
    invoke-virtual {p2}, Lsun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result p2

    if-ne p2, p4, :cond_18

    aget p2, p3, v0

    add-int/lit8 v0, p4, -0x1

    if-ne p2, v0, :cond_18

    aget p2, p3, v7

    add-int/lit8 v0, p4, -0x2

    if-ne p2, v0, :cond_18

    aget p2, p3, v3

    add-int/lit8 v0, p4, -0x3

    if-ne p2, v0, :cond_18

    if-ne p4, v9, :cond_15

    .line 140
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result p2

    if-nez p2, :cond_15

    .line 141
    iput v5, p0, Ljava/awt/image/BufferedImage;->imageType:I

    goto :goto_4

    .line 142
    :cond_15
    aget p2, p3, v9

    if-nez p2, :cond_18

    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result p1

    if-eqz p1, :cond_18

    if-eqz v1, :cond_16

    const/4 v4, 0x7

    .line 143
    :cond_16
    iput v4, p0, Ljava/awt/image/BufferedImage;->imageType:I

    goto :goto_4

    .line 144
    :cond_17
    new-instance p0, Ljava/awt/image/RasterFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Number of components in ColorModel ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") does not match # in  Raster ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_4
    return-void

    .line 146
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " has minX or minY not equal to zero: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p2, Ljava/awt/image/Raster;->minX:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Ljava/awt/image/Raster;->minY:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is incompatible with ColorModel "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method

.method private static isStandard(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v1, Ljava/awt/image/BufferedImage$1;

    invoke-direct {v1, p0, p1, v0}, Ljava/awt/image/BufferedImage$1;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addTileObserver(Ljava/awt/image/TileObserver;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    iput-object v0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    return-void
.end method

.method public coerceData(Z)V
    .locals 2

    iget-object v0, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    iget-object v1, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v0, v1, p1}, Ljava/awt/image/ColorModel;->coerceData(Ljava/awt/image/WritableRaster;Z)Ljava/awt/image/ColorModel;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    :cond_0
    return-void
.end method

.method public copyData(Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 12

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getData()Ljava/awt/image/Raster;

    move-result-object p0

    check-cast p0, Ljava/awt/image/WritableRaster;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v8

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v9

    const/4 v0, 0x0

    move-object v5, v0

    move v10, v9

    :goto_0
    add-int v0, v9, v7

    if-ge v10, v0, :cond_1

    iget-object v0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    const/4 v4, 0x1

    move v1, v8

    move v2, v10

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, p1

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public createGraphics()Ljava/awt/Graphics2D;
    .locals 1

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/awt/GraphicsEnvironment;->createGraphics(Ljava/awt/image/BufferedImage;)Ljava/awt/Graphics2D;

    move-result-object p0

    return-object p0
.end method

.method public getAlphaRaster()Ljava/awt/image/WritableRaster;
    .locals 1

    iget-object v0, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v0, p0}, Ljava/awt/image/ColorModel;->getAlphaRaster(Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public getColorModel()Ljava/awt/image/ColorModel;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    return-object p0
.end method

.method public getData()Ljava/awt/image/Raster;
    .locals 13

    .line 1
    iget-object v0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    .line 2
    iget-object v1, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v7

    .line 3
    iget-object v1, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v8

    .line 4
    iget-object v1, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v9

    .line 5
    iget-object v1, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    .line 6
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v1

    new-instance v2, Ljava/awt/Point;

    iget-object v3, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    .line 7
    invoke-virtual {v3}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v3

    iget-object v4, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    .line 8
    invoke-virtual {v4}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/awt/Point;-><init>(II)V

    .line 9
    invoke-static {v1, v2}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v10

    const/4 v1, 0x0

    move-object v6, v1

    move v11, v9

    :goto_0
    add-int v1, v9, v7

    if-ge v11, v1, :cond_0

    .line 10
    iget-object v1, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    const/4 v5, 0x1

    move v2, v8

    move v3, v11

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v1, v10

    move-object v6, v12

    .line 11
    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method public getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;
    .locals 12

    .line 12
    iget-object v0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v0

    .line 13
    iget v1, p1, Ljava/awt/Rectangle;->width:I

    iget v2, p1, Ljava/awt/Rectangle;->height:I

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/SampleModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Ljava/awt/Rectangle;->getLocation()Ljava/awt/Point;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    .line 16
    iget v8, p1, Ljava/awt/Rectangle;->width:I

    .line 17
    iget v9, p1, Ljava/awt/Rectangle;->height:I

    .line 18
    iget v10, p1, Ljava/awt/Rectangle;->x:I

    .line 19
    iget p1, p1, Ljava/awt/Rectangle;->y:I

    const/4 v1, 0x0

    move v11, p1

    :goto_0
    move-object v6, v1

    add-int v1, p1, v9

    if-ge v11, v1, :cond_0

    .line 20
    iget-object v1, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    const/4 v5, 0x1

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v6, 0x1

    move-object v2, v0

    move v3, v10

    move v4, v11

    move v5, v8

    move-object v7, v1

    .line 21
    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getGraphics()Ljava/awt/Graphics;
    .locals 0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getHeight()I

    move-result p0

    return p0
.end method

.method public getHeight(Ljava/awt/image/ImageObserver;)I
    .locals 0

    .line 2
    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMinTileX()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMinTileY()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMinX()I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getMinX()I

    move-result p0

    return p0
.end method

.method public getMinY()I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getMinY()I

    move-result p0

    return p0
.end method

.method public getNumXTiles()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getNumYTiles()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_2

    .line 2
    iget-object p0, p0, Ljava/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Ljava/awt/Image;->UndefinedProperty:Ljava/lang/Object;

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    .line 5
    sget-object p0, Ljava/awt/Image;->UndefinedProperty:Ljava/lang/Object;

    :cond_1
    return-object p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null property name is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProperty(Ljava/lang/String;Ljava/awt/image/ImageObserver;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/awt/image/BufferedImage;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljava/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRGB(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Ljava/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/awt/image/ColorModel;->getRGB(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getRGB(IIII[III)[I
    .locals 7

    .line 2
    iget-object v0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v0

    .line 3
    iget-object v1, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 4
    new-array v0, v0, [D

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown data buffer type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-array v0, v0, [F

    goto :goto_0

    .line 7
    :cond_2
    new-array v0, v0, [I

    goto :goto_0

    .line 8
    :cond_3
    new-array v0, v0, [S

    goto :goto_0

    .line 9
    :cond_4
    new-array v0, v0, [B

    :goto_0
    if-nez p5, :cond_5

    mul-int p5, p4, p7

    add-int/2addr p5, p6

    .line 10
    new-array p5, p5, [I

    :cond_5
    move v1, p2

    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_7

    move v2, p1

    move v3, p6

    :goto_2
    add-int v4, p1, p3

    if-ge v2, v4, :cond_6

    add-int/lit8 v4, v3, 0x1

    .line 11
    iget-object v5, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    iget-object v6, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v6, v2, v1, v0}, Ljava/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/awt/image/ColorModel;->getRGB(Ljava/lang/Object;)I

    move-result v5

    aput v5, p5, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    add-int/2addr p6, p7

    goto :goto_1

    :cond_7
    return-object p5
.end method

.method public getRaster()Ljava/awt/image/WritableRaster;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    return-object p0
.end method

.method public getSampleModel()Ljava/awt/image/SampleModel;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Ljava/awt/image/ImageProducer;
    .locals 2

    iget-object v0, p0, Ljava/awt/image/BufferedImage;->osis:Lsun/awt/image/OffScreenImageSource;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    :cond_0
    new-instance v0, Lsun/awt/image/OffScreenImageSource;

    iget-object v1, p0, Ljava/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    invoke-direct {v0, p0, v1}, Lsun/awt/image/OffScreenImageSource;-><init>(Ljava/awt/image/BufferedImage;Ljava/util/Hashtable;)V

    iput-object v0, p0, Ljava/awt/image/BufferedImage;->osis:Lsun/awt/image/OffScreenImageSource;

    :cond_1
    iget-object p0, p0, Ljava/awt/image/BufferedImage;->osis:Lsun/awt/image/OffScreenImageSource;

    return-object p0
.end method

.method public getSources()Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/awt/image/RenderedImage;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubimage(IIII)Ljava/awt/image/BufferedImage;
    .locals 10

    new-instance v0, Ljava/awt/image/BufferedImage;

    iget-object v1, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    iget-object v2, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object p1

    iget-object p2, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p2

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    invoke-direct {v0, v1, p1, p2, p0}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0
.end method

.method public getTile(II)Ljava/awt/image/Raster;
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "BufferedImages only have one tile with index 0,0"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTileGridXOffset()I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result p0

    return p0
.end method

.method public getTileGridYOffset()I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result p0

    return p0
.end method

.method public getTileHeight()I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getHeight()I

    move-result p0

    return p0
.end method

.method public getTileWidth()I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getWidth()I

    move-result p0

    return p0
.end method

.method public getTransparency()I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result p0

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Ljava/awt/image/BufferedImage;->imageType:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getWidth()I

    move-result p0

    return p0
.end method

.method public getWidth(Ljava/awt/image/ImageObserver;)I
    .locals 0

    .line 2
    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getWidth()I

    move-result p0

    return p0
.end method

.method public getWritableTile(II)Ljava/awt/image/WritableRaster;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    return-object p0
.end method

.method public getWritableTileIndices()[Ljava/awt/Point;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/awt/Point;

    new-instance v0, Ljava/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/awt/Point;-><init>(II)V

    aput-object v0, p0, v1

    return-object p0
.end method

.method public hasTileWriters()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAlphaPremultiplied()Z
    .locals 0

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p0

    return p0
.end method

.method public isTileWritable(II)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only 1 tile in image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseWritableTile(II)V
    .locals 0

    return-void
.end method

.method public removeTileObserver(Ljava/awt/image/TileObserver;)V
    .locals 0

    return-void
.end method

.method public setData(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 15
    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-static {p1, p0}, Lcom/trans/android/util/BridgeUtils;->copyData(Landroid/graphics/Bitmap;Ljava/awt/image/WritableRaster;)V

    return-void
.end method

.method public setData(Ljava/awt/image/Raster;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v3

    .line 5
    new-instance v4, Ljava/awt/Rectangle;

    invoke-direct {v4, v2, v3, v0, v1}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 6
    new-instance v0, Ljava/awt/Rectangle;

    iget-object v1, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    iget v2, v1, Ljava/awt/image/Raster;->width:I

    iget v1, v1, Ljava/awt/image/Raster;->height:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 7
    invoke-virtual {v4, v0}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 9
    :cond_0
    iget v1, v0, Ljava/awt/Rectangle;->width:I

    .line 10
    iget v8, v0, Ljava/awt/Rectangle;->height:I

    .line 11
    iget v9, v0, Ljava/awt/Rectangle;->x:I

    .line 12
    iget v0, v0, Ljava/awt/Rectangle;->y:I

    const/4 v2, 0x0

    move v10, v0

    move-object v7, v2

    :goto_0
    add-int v2, v0, v8

    if-ge v10, v2, :cond_1

    const/4 v6, 0x1

    move-object v2, p1

    move v3, v9

    move v4, v10

    move v5, v1

    .line 13
    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v11

    .line 14
    iget-object v2, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/WritableRaster;->setPixels(IIII[I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized setRGB(III)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    iget-object v1, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Ljava/awt/image/ColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRGB(IIII[III)V
    .locals 6

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    add-int v2, p2, p4

    if-ge v1, v2, :cond_1

    move v2, p1

    move v3, p6

    :goto_1
    add-int v4, p1, p3

    if-ge v2, v4, :cond_0

    .line 3
    iget-object v4, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    add-int/lit8 v5, v3, 0x1

    aget v3, p5, v3

    invoke-virtual {v4, v3, v0}, Ljava/awt/image/ColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v3, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v3, v2, v1, v0}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/2addr p6, p7

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BufferedImage@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/awt/image/BufferedImage;->imageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/awt/image/BufferedImage;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ljava/awt/image/BufferedImage;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
