.class public Ljavax/imageio/ImageTypeSpecifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/imageio/ImageTypeSpecifier$d;,
        Ljavax/imageio/ImageTypeSpecifier$c;,
        Ljavax/imageio/ImageTypeSpecifier$b;,
        Ljavax/imageio/ImageTypeSpecifier$e;,
        Ljavax/imageio/ImageTypeSpecifier$f;
    }
.end annotation


# static fields
.field public static a:[Ljavax/imageio/ImageTypeSpecifier;

.field public static b:Ljava/awt/color/ColorSpace;


# instance fields
.field protected colorModel:Ljava/awt/image/ColorModel;

.field protected sampleModel:Ljava/awt/image/SampleModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    sput-object v0, Ljavax/imageio/ImageTypeSpecifier;->b:Ljava/awt/color/ColorSpace;

    const/16 v0, 0xe

    new-array v0, v0, [Ljavax/imageio/ImageTypeSpecifier;

    sput-object v0, Ljavax/imageio/ImageTypeSpecifier;->a:[Ljavax/imageio/ImageTypeSpecifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Ljava/awt/image/ColorModel;->isCompatibleSampleModel(Ljava/awt/image/SampleModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iput-object p1, p0, Ljavax/imageio/ImageTypeSpecifier;->colorModel:Ljava/awt/image/ColorModel;

    .line 6
    iput-object p2, p0, Ljavax/imageio/ImageTypeSpecifier;->sampleModel:Ljava/awt/image/SampleModel;

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sampleModel is incompatible with colorModel!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sampleModel == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "colorModel == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/awt/image/RenderedImage;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    iput-object v0, p0, Ljavax/imageio/ImageTypeSpecifier;->colorModel:Ljava/awt/image/ColorModel;

    .line 12
    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/ImageTypeSpecifier;->sampleModel:Ljava/awt/image/SampleModel;

    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "image == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljavax/imageio/ImageTypeSpecifier$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/imageio/ImageTypeSpecifier;-><init>()V

    return-void
.end method

.method public static a(Ljava/awt/color/ColorSpace;IIZZ)Ljava/awt/image/ColorModel;
    .locals 8

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v6, v0

    new-array v3, p1, [I

    invoke-static {p2}, Ljava/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/awt/image/ComponentColorModel;

    move-object v1, p1

    move-object v2, p0

    move v4, p3

    move v5, p4

    move v7, p2

    invoke-direct/range {v1 .. v7}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    return-object p1
.end method

.method public static b(I)Ljavax/imageio/ImageTypeSpecifier;
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid BufferedImage type!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/awt/image/BufferedImage;

    const/16 v0, 0xd

    invoke-direct {p0, v2, v2, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    check-cast p0, Ljava/awt/image/IndexColorModel;

    invoke-virtual {p0}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v0

    new-array v1, v0, [B

    new-array v2, v0, [B

    new-array v3, v0, [B

    new-array v4, v0, [B

    invoke-virtual {p0, v1}, Ljava/awt/image/IndexColorModel;->getReds([B)V

    invoke-virtual {p0, v2}, Ljava/awt/image/IndexColorModel;->getGreens([B)V

    invoke-virtual {p0, v3}, Ljava/awt/image/IndexColorModel;->getBlues([B)V

    invoke-virtual {p0, v4}, Ljava/awt/image/IndexColorModel;->getAlphas([B)V

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ljavax/imageio/ImageTypeSpecifier;->createIndexed([B[B[B[BII)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {v2, v3, v3}, Ljavax/imageio/ImageTypeSpecifier;->createGrayscale(IIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/16 p0, 0x10

    invoke-static {p0, v2, v3}, Ljavax/imageio/ImageTypeSpecifier;->createGrayscale(IIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_3
    const/16 p0, 0x8

    invoke-static {p0, v3, v3}, Ljavax/imageio/ImageTypeSpecifier;->createGrayscale(IIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object v0, Ljavax/imageio/ImageTypeSpecifier;->b:Ljava/awt/color/ColorSpace;

    const/16 v1, 0x7c00

    const/16 v2, 0x3e0

    const/16 v3, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Ljavax/imageio/ImageTypeSpecifier;->createPacked(Ljava/awt/color/ColorSpace;IIIIIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object v0, Ljavax/imageio/ImageTypeSpecifier;->b:Ljava/awt/color/ColorSpace;

    const v1, 0xf800

    const/16 v2, 0x7e0

    const/16 v3, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Ljavax/imageio/ImageTypeSpecifier;->createPacked(Ljava/awt/color/ColorSpace;IIIIIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p0, Ljavax/imageio/ImageTypeSpecifier;->b:Ljava/awt/color/ColorSpace;

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v2}, Ljavax/imageio/ImageTypeSpecifier;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Ljavax/imageio/ImageTypeSpecifier;->b:Ljava/awt/color/ColorSpace;

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v3}, Ljavax/imageio/ImageTypeSpecifier;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Ljavax/imageio/ImageTypeSpecifier;->b:Ljava/awt/color/ColorSpace;

    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    invoke-static {p0, v0, v3, v3, v3}, Ljavax/imageio/ImageTypeSpecifier;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object v0, Ljavax/imageio/ImageTypeSpecifier;->b:Ljava/awt/color/ColorSpace;

    const/16 v1, 0xff

    const v2, 0xff00

    const/high16 v3, 0xff0000

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Ljavax/imageio/ImageTypeSpecifier;->createPacked(Ljava/awt/color/ColorSpace;IIIIIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object v0, Ljavax/imageio/ImageTypeSpecifier;->b:Ljava/awt/color/ColorSpace;

    const/high16 v1, 0xff0000

    const v2, 0xff00

    const/16 v3, 0xff

    const/high16 v4, -0x1000000

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Ljavax/imageio/ImageTypeSpecifier;->createPacked(Ljava/awt/color/ColorSpace;IIIIIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object v0, Ljavax/imageio/ImageTypeSpecifier;->b:Ljava/awt/color/ColorSpace;

    const/high16 v1, 0xff0000

    const v2, 0xff00

    const/16 v3, 0xff

    const/high16 v4, -0x1000000

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Ljavax/imageio/ImageTypeSpecifier;->createPacked(Ljava/awt/color/ColorSpace;IIIIIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object v0, Ljavax/imageio/ImageTypeSpecifier;->b:Ljava/awt/color/ColorSpace;

    const/high16 v1, 0xff0000

    const v2, 0xff00

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Ljavax/imageio/ImageTypeSpecifier;->createPacked(Ljava/awt/color/ColorSpace;IIIIIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

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

.method public static c(I)Ljavax/imageio/ImageTypeSpecifier;
    .locals 2

    sget-object v0, Ljavax/imageio/ImageTypeSpecifier;->a:[Ljavax/imageio/ImageTypeSpecifier;

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    invoke-static {p0}, Ljavax/imageio/ImageTypeSpecifier;->b(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v1

    aput-object v1, v0, p0

    :cond_0
    sget-object v0, Ljavax/imageio/ImageTypeSpecifier;->a:[Ljavax/imageio/ImageTypeSpecifier;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static createBanded(Ljava/awt/color/ColorSpace;[I[IIZZ)Ljavax/imageio/ImageTypeSpecifier;
    .locals 8

    new-instance v7, Ljavax/imageio/ImageTypeSpecifier$b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/imageio/ImageTypeSpecifier$b;-><init>(Ljava/awt/color/ColorSpace;[I[IIZZ)V

    return-object v7
.end method

.method public static createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0xd

    if-gt p0, v0, :cond_0

    invoke-static {p0}, Ljavax/imageio/ImageTypeSpecifier;->c(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create from TYPE_CUSTOM!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid BufferedImage type!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromRenderedImage(Ljava/awt/image/RenderedImage;)Ljavax/imageio/ImageTypeSpecifier;
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljavax/imageio/ImageTypeSpecifier;->c(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljavax/imageio/ImageTypeSpecifier;

    invoke-direct {v0, p0}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/RenderedImage;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "image == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createGrayscale(IIZ)Ljavax/imageio/ImageTypeSpecifier;
    .locals 7

    .line 1
    new-instance v6, Ljavax/imageio/ImageTypeSpecifier$c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Ljavax/imageio/ImageTypeSpecifier$c;-><init>(IIZZZ)V

    return-object v6
.end method

.method public static createGrayscale(IIZZ)Ljavax/imageio/ImageTypeSpecifier;
    .locals 7

    .line 2
    new-instance v6, Ljavax/imageio/ImageTypeSpecifier$c;

    const/4 v4, 0x1

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljavax/imageio/ImageTypeSpecifier$c;-><init>(IIZZZ)V

    return-object v6
.end method

.method public static createIndexed([B[B[B[BII)Ljavax/imageio/ImageTypeSpecifier;
    .locals 8

    new-instance v7, Ljavax/imageio/ImageTypeSpecifier$d;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/imageio/ImageTypeSpecifier$d;-><init>([B[B[B[BII)V

    return-object v7
.end method

.method public static createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;
    .locals 7

    new-instance v6, Ljavax/imageio/ImageTypeSpecifier$e;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljavax/imageio/ImageTypeSpecifier$e;-><init>(Ljava/awt/color/ColorSpace;[IIZZ)V

    return-object v6
.end method

.method public static createPacked(Ljava/awt/color/ColorSpace;IIIIIZ)Ljavax/imageio/ImageTypeSpecifier;
    .locals 9

    new-instance v8, Ljavax/imageio/ImageTypeSpecifier$f;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Ljavax/imageio/ImageTypeSpecifier$f;-><init>(Ljava/awt/color/ColorSpace;IIIIIZ)V

    return-object v8
.end method


# virtual methods
.method public createBufferedImage(II)Ljava/awt/image/BufferedImage;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object p1

    new-instance p2, Ljava/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Ljava/awt/Point;-><init>(II)V

    invoke-static {p1, p2}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p1

    new-instance p2, Ljava/awt/image/BufferedImage;

    iget-object p0, p0, Ljavax/imageio/ImageTypeSpecifier;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-direct {p2, p0, p1, v0, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array size > Integer.MAX_VALUE!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljavax/imageio/ImageTypeSpecifier;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljavax/imageio/ImageTypeSpecifier;

    iget-object v1, p0, Ljavax/imageio/ImageTypeSpecifier;->colorModel:Ljava/awt/image/ColorModel;

    iget-object v2, p1, Ljavax/imageio/ImageTypeSpecifier;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {v1, v2}, Ljava/awt/image/ColorModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Ljavax/imageio/ImageTypeSpecifier;->sampleModel:Ljava/awt/image/SampleModel;

    iget-object p1, p1, Ljavax/imageio/ImageTypeSpecifier;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getBitsPerBand(I)I
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/ImageTypeSpecifier;->getNumBands()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Ljavax/imageio/ImageTypeSpecifier;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-virtual {p0, p1}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "band out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBufferedImageType()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Ljavax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result p0

    return p0
.end method

.method public getColorModel()Ljava/awt/image/ColorModel;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageTypeSpecifier;->colorModel:Ljava/awt/image/ColorModel;

    return-object p0
.end method

.method public getNumBands()I
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageTypeSpecifier;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result p0

    return p0
.end method

.method public getNumComponents()I
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageTypeSpecifier;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result p0

    return p0
.end method

.method public getSampleModel()Ljava/awt/image/SampleModel;
    .locals 0

    .line 1
    iget-object p0, p0, Ljavax/imageio/ImageTypeSpecifier;->sampleModel:Ljava/awt/image/SampleModel;

    return-object p0
.end method

.method public getSampleModel(II)Ljava/awt/image/SampleModel;
    .locals 4

    int-to-long v0, p1

    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    iget-object p0, p0, Ljavax/imageio/ImageTypeSpecifier;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-virtual {p0, p1, p2}, Ljava/awt/image/SampleModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "width*height > Integer.MAX_VALUE!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljavax/imageio/ImageTypeSpecifier;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    iget-object p0, p0, Ljavax/imageio/ImageTypeSpecifier;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0xe

    add-int/2addr v0, p0

    return v0
.end method
