.class public final Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBanded(Ljava/awt/color/ColorSpace;[I[IIZZ)Ljavax/imageio/ImageTypeSpecifier;
    .locals 0

    invoke-static/range {p0 .. p5}, Ljavax/imageio/ImageTypeSpecifier;->createBanded(Ljava/awt/color/ColorSpace;[I[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public static createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;
    .locals 0

    invoke-static {p0}, Ljavax/imageio/ImageTypeSpecifier;->createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public static createFromIndexColorModel(Ljava/awt/image/IndexColorModel;)Ljavax/imageio/ImageTypeSpecifier;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/wji;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/wji;-><init>(Ljava/awt/image/IndexColorModel;)V

    return-object v0
.end method

.method public static createGrayscale(II)Ljavax/imageio/ImageTypeSpecifier;
    .locals 3

    const/16 v0, 0x10

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p0, Lcom/sunia/HTREnginev2/lmi;

    invoke-static {v1}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object p1

    filled-new-array {v2}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/sunia/HTREnginev2/lmi;-><init>(Ljava/awt/color/ColorSpace;[IZZ)V

    return-object p0

    :cond_0
    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2
    new-instance p0, Lcom/sunia/HTREnginev2/kpn;

    invoke-static {v1}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object p1

    filled-new-array {v2}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/sunia/HTREnginev2/kpn;-><init>(Ljava/awt/color/ColorSpace;[IZZ)V

    return-object p0

    .line 3
    :cond_1
    invoke-static {p0, p1, v2}, Ljavax/imageio/ImageTypeSpecifier;->createGrayscale(IIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public static createGrayscale(IIZ)Ljavax/imageio/ImageTypeSpecifier;
    .locals 4

    const/16 v0, 0x10

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4
    new-instance p0, Lcom/sunia/HTREnginev2/lmi;

    invoke-static {v1}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object p1

    filled-new-array {v2, v3}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0, v3, p2}, Lcom/sunia/HTREnginev2/lmi;-><init>(Ljava/awt/color/ColorSpace;[IZZ)V

    return-object p0

    :cond_0
    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 5
    new-instance p0, Lcom/sunia/HTREnginev2/kpn;

    invoke-static {v1}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object p1

    filled-new-array {v2, v3}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0, v3, p2}, Lcom/sunia/HTREnginev2/kpn;-><init>(Ljava/awt/color/ColorSpace;[IZZ)V

    return-object p0

    .line 6
    :cond_1
    invoke-static {p0, p1, v2, p2}, Ljavax/imageio/ImageTypeSpecifier;->createGrayscale(IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public static createIndexed([B[B[B[BII)Ljavax/imageio/ImageTypeSpecifier;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Ljavax/imageio/ImageTypeSpecifier;->createIndexed([B[B[B[BII)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public static createIndexed([IZIII)Ljavax/imageio/ImageTypeSpecifier;
    .locals 9

    .line 2
    new-instance v8, Ljava/awt/image/IndexColorModel;

    array-length v2, p0

    const/4 v4, 0x0

    move-object v0, v8

    move v1, p3

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    invoke-static {v8}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createFromIndexColorModel(Ljava/awt/image/IndexColorModel;)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public static createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/sunia/HTREnginev2/kpn;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/sunia/HTREnginev2/kpn;-><init>(Ljava/awt/color/ColorSpace;[IZZ)V

    return-object p2

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Ljavax/imageio/ImageTypeSpecifier;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public static createPacked(Ljava/awt/color/ColorSpace;IIIIIZ)Ljavax/imageio/ImageTypeSpecifier;
    .locals 11

    move-object v1, p0

    move/from16 v8, p5

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    if-ne v8, v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p6}, Ljavax/imageio/ImageTypeSpecifier;->createPacked(Ljava/awt/color/ColorSpace;IIIIIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "colorSpace"

    invoke-static {p0, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    move v0, v9

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    const-string v2, "ColorSpace must be TYPE_RGB"

    invoke-static {v0, p0, v2}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_4

    :cond_3
    move v3, v9

    :cond_4
    const-string v0, "No mask has at least 1 bit set"

    invoke-static {v3, v0}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/String;)Z

    if-nez v8, :cond_5

    const/16 v0, 0x8

    goto :goto_2

    :cond_5
    const/16 v0, 0x10

    :goto_2
    move v2, v0

    new-instance v10, Ljava/awt/image/DirectColorModel;

    move-object v0, v10

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p6

    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Ljava/awt/image/DirectColorModel;-><init>(Ljava/awt/color/ColorSpace;IIIIIZI)V

    new-instance v0, Ljavax/imageio/ImageTypeSpecifier;

    invoke-virtual {v10, v9, v9}, Ljava/awt/image/ColorModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;)V

    return-object v0
.end method

.method public static createPackedGrayscale(Ljava/awt/color/ColorSpace;II)Ljavax/imageio/ImageTypeSpecifier;
    .locals 12

    const-string v0, "colorSpace"

    invoke-static {p0, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "ColorSpace must be TYPE_GRAY"

    invoke-static {v0, p0, v1}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    if-eq p1, v3, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bits must be 1, 2, or 4: %s"

    invoke-static {v1, v4, v5}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "dataType must be TYPE_BYTE: %s"

    invoke-static {v1, v4, v5}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    shl-int v8, v3, p1

    new-array v9, v8, [B

    new-array v10, v8, [B

    new-array v11, v8, [B

    move v1, v2

    :goto_4
    if-ge v1, v8, :cond_4

    new-array v4, v3, [F

    int-to-float v5, v1

    add-int/lit8 v6, v8, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v4, v2

    invoke-virtual {p0, v4}, Ljava/awt/color/ColorSpace;->toRGB([F)[F

    move-result-object v4

    aget v5, v4, v2

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v9, v1

    aget v5, v4, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v10, v1

    aget v4, v4, v0

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/awt/image/IndexColorModel;

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v6 .. v11}, Ljava/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    new-instance v0, Ljava/awt/image/MultiPixelPackedSampleModel;

    invoke-direct {v0, p2, v3, v3, p1}, Ljava/awt/image/MultiPixelPackedSampleModel;-><init>(IIII)V

    new-instance p1, Ljavax/imageio/ImageTypeSpecifier;

    invoke-direct {p1, p0, v0}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;)V

    return-object p1
.end method
