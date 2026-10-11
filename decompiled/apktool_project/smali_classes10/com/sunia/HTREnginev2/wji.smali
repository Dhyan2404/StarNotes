.class public final Lcom/sunia/HTREnginev2/wji;
.super Ljavax/imageio/ImageTypeSpecifier;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/awt/image/IndexColorModel;)V
    .locals 2

    const-string v0, "colorModel"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/image/ColorModel;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1}, Ljava/awt/image/IndexColorModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;)V

    return-void
.end method


# virtual methods
.method public final createBufferedImage(II)Ljava/awt/image/BufferedImage;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ljavax/imageio/ImageTypeSpecifier;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {v0, p1, p2}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

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
