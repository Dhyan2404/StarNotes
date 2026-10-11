.class public Ljava/awt/image/ColorConvertOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/BufferedImageOp;
.implements Ljava/awt/image/RasterOp;


# instance fields
.field CSList:[Ljava/awt/color/ColorSpace;

.field dstMaxVals:[F

.field dstMinVals:[F

.field gotProfiles:Z

.field hints:Ljava/awt/RenderingHints;

.field profileList:[Ljava/awt/color/ICC_Profile;

.field srcMaxVals:[F

.field srcMinVals:[F

.field thisDestProfile:Ljava/awt/color/ICC_Profile;

.field thisRasterTransform:Lsun/java2d/cmm/ColorTransform;

.field thisSrcProfile:Ljava/awt/color/ICC_Profile;

.field thisTransform:Lsun/java2d/cmm/ColorTransform;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lsun/java2d/cmm/ProfileDeferralMgr;->deferring:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lsun/java2d/cmm/ProfileDeferralMgr;->activateProfiles()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/awt/RenderingHints;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/awt/color/ICC_Profile;

    .line 2
    iput-object v0, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    .line 3
    iput-object p1, p0, Ljava/awt/image/ColorConvertOp;->hints:Ljava/awt/RenderingHints;

    return-void
.end method

.method public constructor <init>(Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 5
    instance-of v0, p1, Ljava/awt/color/ICC_ColorSpace;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/awt/color/ICC_Profile;

    .line 6
    iput-object v0, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    .line 7
    check-cast p1, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {p1}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/awt/color/ColorSpace;

    .line 8
    iput-object v0, p0, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    aput-object p1, v0, v1

    .line 9
    :goto_0
    iput-object p2, p0, Ljava/awt/image/ColorConvertOp;->hints:Ljava/awt/RenderingHints;

    return-void

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ColorSpace cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 12
    instance-of v0, p1, Ljava/awt/color/ICC_ColorSpace;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/awt/color/ICC_ColorSpace;

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/awt/color/ICC_Profile;

    .line 13
    iput-object v0, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    .line 14
    move-object v3, p1

    check-cast v3, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {v3}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v3

    aput-object v3, v0, v2

    .line 15
    iget-object v0, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    move-object v2, p2

    check-cast v2, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {v2}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v2

    aput-object v2, v0, v1

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/awt/image/ColorConvertOp;->getMinMaxValsFromColorSpaces(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/awt/color/ColorSpace;

    .line 17
    iput-object v0, p0, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    .line 18
    :goto_0
    iput-object p3, p0, Ljava/awt/image/ColorConvertOp;->hints:Ljava/awt/RenderingHints;

    return-void

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ColorSpaces cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Ljava/awt/color/ICC_Profile;Ljava/awt/RenderingHints;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Ljava/awt/image/ColorConvertOp;->gotProfiles:Z

    .line 22
    array-length v0, p1

    new-array v0, v0, [Ljava/awt/color/ICC_Profile;

    iput-object v0, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    const/4 v0, 0x0

    .line 23
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 24
    iget-object v1, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    iput-object p2, p0, Ljava/awt/image/ColorConvertOp;->hints:Ljava/awt/RenderingHints;

    return-void

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Profiles cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final ICCBIFilter(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 5

    iget-object v0, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    array-length v0, v0

    check-cast p2, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {p2}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p3, :cond_1

    if-eqz v0, :cond_0

    iget-object p3, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    add-int/lit8 p4, v0, -0x1

    aget-object p3, p3, p4

    invoke-virtual {p0, p1, v1}, Ljava/awt/image/ColorConvertOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p4

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Destination ColorSpace is undefined"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_7

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_7

    check-cast p4, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {p4}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object p4

    move-object v4, p4

    move-object p4, p3

    move-object p3, v4

    :goto_0
    const/4 v2, 0x0

    if-ne p2, p3, :cond_4

    move p3, v2

    :goto_1
    if-ge p3, v0, :cond_3

    iget-object v3, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    aget-object v3, v3, p3

    if-eq p2, v3, :cond_2

    move p2, v2

    goto :goto_2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p4}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1, v2, v2, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->dispose()V

    return-object p4

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->dispose()V

    throw p1

    :cond_4
    invoke-virtual {p4}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p2

    if-eqz v0, :cond_5

    :try_start_1
    iget-object p0, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    aget-object p0, p0, v2

    instance-of p0, p0, Ljava/awt/color/ICC_ProfileGray;

    if-eqz p0, :cond_6

    :cond_5
    instance-of p0, p2, Lcom/trans/android/AndroidGraphics2D;

    if-eqz p0, :cond_6

    new-instance p0, Landroid/graphics/ColorMatrix;

    invoke-direct {p0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    move-object p3, p2

    check-cast p3, Lcom/trans/android/AndroidGraphics2D;

    invoke-virtual {p3, p0}, Lcom/trans/android/AndroidGraphics2D;->setImageColorFilter(Landroid/graphics/ColorMatrix;)V

    :cond_6
    invoke-virtual {p2, p1, v2, v2, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p2}, Ljava/awt/Graphics2D;->dispose()V

    return-object p4

    :catchall_1
    move-exception p0

    invoke-virtual {p2}, Ljava/awt/Graphics2D;->dispose()V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Width or height of BufferedImages do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 7

    if-nez p2, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    .line 10
    invoke-virtual {p3}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result p2

    .line 11
    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 12
    :cond_0
    new-array v2, p2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    const/16 v1, 0x8

    .line 13
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p2, Ljava/awt/image/ComponentColorModel;

    .line 15
    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v4

    .line 16
    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    .line 17
    :cond_2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    .line 18
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    .line 19
    new-instance p3, Ljava/awt/image/BufferedImage;

    .line 20
    invoke-virtual {p2, p0, p1}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p0

    .line 21
    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p3, p2, p0, p1, v0}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object p3
.end method

.method private getMinMaxValsFromColorSpaces(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)V
    .locals 5

    invoke-virtual {p1}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    new-array v1, v0, [F

    iput-object v1, p0, Ljava/awt/image/ColorConvertOp;->srcMinVals:[F

    new-array v1, v0, [F

    iput-object v1, p0, Ljava/awt/image/ColorConvertOp;->srcMaxVals:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Ljava/awt/image/ColorConvertOp;->srcMinVals:[F

    invoke-virtual {p1, v2}, Ljava/awt/color/ColorSpace;->getMinValue(I)F

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Ljava/awt/image/ColorConvertOp;->srcMaxVals:[F

    invoke-virtual {p1, v2}, Ljava/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result p1

    new-array v0, p1, [F

    iput-object v0, p0, Ljava/awt/image/ColorConvertOp;->dstMinVals:[F

    new-array v0, p1, [F

    iput-object v0, p0, Ljava/awt/image/ColorConvertOp;->dstMaxVals:[F

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object v0, p0, Ljava/awt/image/ColorConvertOp;->dstMinVals:[F

    invoke-virtual {p2, v1}, Ljava/awt/color/ColorSpace;->getMinValue(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Ljava/awt/image/ColorConvertOp;->dstMaxVals:[F

    invoke-virtual {p2, v1}, Ljava/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getMinMaxValsFromProfiles(Ljava/awt/color/ICC_Profile;Ljava/awt/color/ICC_Profile;)V
    .locals 3

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result p1

    new-array v1, p1, [F

    iput-object v1, p0, Ljava/awt/image/ColorConvertOp;->srcMinVals:[F

    new-array v2, p1, [F

    iput-object v2, p0, Ljava/awt/image/ColorConvertOp;->srcMaxVals:[F

    invoke-direct {p0, v0, p1, v1, v2}, Ljava/awt/image/ColorConvertOp;->setMinMax(II[F[F)V

    invoke-virtual {p2}, Ljava/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result p1

    invoke-virtual {p2}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result p2

    new-array v0, p2, [F

    iput-object v0, p0, Ljava/awt/image/ColorConvertOp;->dstMinVals:[F

    new-array v1, p2, [F

    iput-object v1, p0, Ljava/awt/image/ColorConvertOp;->dstMaxVals:[F

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/awt/image/ColorConvertOp;->setMinMax(II[F[F)V

    return-void
.end method

.method private getRenderingIntent(Ljava/awt/color/ICC_Profile;)I
    .locals 1

    const p0, 0x68656164

    invoke-virtual {p1, p0}, Ljava/awt/color/ICC_Profile;->getData(I)[B

    move-result-object p0

    const/16 p1, 0x42

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    const/16 v0, 0x43

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private final nonICCBIFilter(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/16 v4, 0x3e9

    invoke-static {v4}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v4

    check-cast v4, Ljava/awt/color/ICC_ColorSpace;

    const/4 v5, 0x0

    if-nez p3, :cond_0

    move-object/from16 v6, p1

    invoke-virtual {v0, v6, v5}, Ljava/awt/image/ColorConvertOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v7

    invoke-virtual {v7}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    invoke-virtual/range {p3 .. p3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    if-ne v3, v7, :cond_22

    invoke-virtual/range {p3 .. p3}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    if-ne v2, v7, :cond_22

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v9

    invoke-virtual {v7}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v6

    invoke-virtual {v7}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v11

    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->getNumColorComponents()I

    move-result v12

    invoke-virtual {v11}, Ljava/awt/image/ColorModel;->getNumColorComponents()I

    move-result v13

    invoke-virtual {v11}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v14

    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v15

    const/16 v16, 0x1

    if-eqz v15, :cond_1

    if-eqz v14, :cond_1

    move/from16 v15, v16

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    iget-object v5, v0, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    const/high16 v18, 0x3f800000    # 1.0f

    if-nez v5, :cond_19

    move-object/from16 p3, v7

    iget-object v7, v0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    array-length v7, v7

    if-eqz v7, :cond_18

    instance-of v5, v1, Ljava/awt/color/ICC_ColorSpace;

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v5

    move-object v7, v5

    move-object/from16 p4, v10

    move/from16 v5, v16

    goto :goto_2

    :cond_2
    move-object v5, v1

    check-cast v5, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {v5}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v5

    move-object v7, v5

    move-object/from16 p4, v10

    const/4 v5, 0x0

    :goto_2
    instance-of v10, v8, Ljava/awt/color/ICC_ColorSpace;

    if-nez v10, :cond_3

    invoke-virtual {v4}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v10

    move-object/from16 v19, v4

    goto :goto_3

    :cond_3
    move-object v10, v8

    check-cast v10, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {v10}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v10

    move-object/from16 v19, v4

    const/16 v16, 0x0

    :goto_3
    iget-object v4, v0, Ljava/awt/image/ColorConvertOp;->thisTransform:Lsun/java2d/cmm/ColorTransform;

    if-eqz v4, :cond_4

    iget-object v4, v0, Ljava/awt/image/ColorConvertOp;->thisSrcProfile:Ljava/awt/color/ICC_Profile;

    if-ne v4, v7, :cond_4

    iget-object v4, v0, Ljava/awt/image/ColorConvertOp;->thisDestProfile:Ljava/awt/color/ICC_Profile;

    if-eq v4, v10, :cond_5

    :cond_4
    invoke-direct {v0, v7, v10}, Ljava/awt/image/ColorConvertOp;->updateBITransform(Ljava/awt/color/ICC_Profile;Ljava/awt/color/ICC_Profile;)V

    :cond_5
    if-eqz v5, :cond_6

    move-object/from16 v10, v19

    const/4 v7, 0x3

    goto :goto_4

    :cond_6
    move-object v10, v1

    move v7, v12

    :goto_4
    new-array v4, v7, [F

    move-object/from16 v21, v8

    new-array v8, v7, [F

    move-object/from16 v22, v11

    const/4 v11, 0x0

    :goto_5
    const v23, 0x477fff00    # 65535.0f

    if-ge v11, v12, :cond_7

    invoke-virtual {v10, v11}, Ljava/awt/color/ColorSpace;->getMinValue(I)F

    move-result v24

    aput v24, v4, v11

    invoke-virtual {v10, v11}, Ljava/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v24

    aget v25, v4, v11

    sub-float v24, v24, v25

    div-float v23, v23, v24

    aput v23, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    if-eqz v16, :cond_8

    move-object/from16 v10, v19

    const/4 v11, 0x3

    goto :goto_6

    :cond_8
    move v11, v13

    move-object/from16 v10, v21

    :goto_6
    new-array v0, v11, [F

    move-object/from16 v19, v8

    new-array v8, v11, [F

    move-object/from16 v24, v4

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v13, :cond_9

    invoke-virtual {v10, v4}, Ljava/awt/color/ColorSpace;->getMinValue(I)F

    move-result v21

    aput v21, v0, v4

    invoke-virtual {v10, v4}, Ljava/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v21

    aget v25, v0, v4

    sub-float v21, v21, v25

    div-float v21, v21, v23

    aput v21, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    if-eqz v14, :cond_b

    add-int/lit8 v4, v13, 0x1

    const/4 v10, 0x3

    if-le v4, v10, :cond_a

    goto :goto_8

    :cond_a
    move v4, v10

    :goto_8
    new-array v4, v4, [F

    goto :goto_a

    :cond_b
    const/4 v10, 0x3

    if-le v13, v10, :cond_c

    move v4, v13

    goto :goto_9

    :cond_c
    move v4, v10

    :goto_9
    new-array v4, v4, [F

    :goto_a
    mul-int v10, v2, v7

    new-array v10, v10, [S

    move-object/from16 v20, v0

    mul-int v0, v2, v11

    new-array v0, v0, [S

    move/from16 v23, v14

    if-eqz v15, :cond_d

    new-array v14, v2, [F

    goto :goto_b

    :cond_d
    const/4 v14, 0x0

    :goto_b
    move/from16 v25, v13

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v3, :cond_21

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v21, 0x0

    :goto_d
    if-ge v3, v2, :cond_11

    invoke-virtual {v9, v3, v13, v4}, Ljava/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v29, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v8, v9}, Ljava/awt/image/ColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v8

    if-eqz v15, :cond_e

    aget v9, v8, v12

    aput v9, v14, v3

    :cond_e
    if-eqz v5, :cond_f

    invoke-virtual {v1, v8}, Ljava/awt/color/ColorSpace;->toCIEXYZ([F)[F

    move-result-object v8

    :cond_f
    const/4 v9, 0x0

    :goto_e
    if-ge v9, v7, :cond_10

    add-int/lit8 v30, v21, 0x1

    aget v31, v8, v9

    aget v32, v24, v9

    sub-float v31, v31, v32

    aget v32, v19, v9

    mul-float v31, v31, v32

    const/high16 v32, 0x3f000000    # 0.5f

    move-object/from16 v33, v4

    add-float v4, v31, v32

    float-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, v10, v21

    add-int/lit8 v9, v9, 0x1

    move/from16 v21, v30

    move-object/from16 v4, v33

    goto :goto_e

    :cond_10
    move-object/from16 v33, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v9, v29

    goto :goto_d

    :cond_11
    move-object/from16 v3, p0

    move-object/from16 v29, v9

    move-object/from16 v4, v20

    iget-object v8, v3, Ljava/awt/image/ColorConvertOp;->thisTransform:Lsun/java2d/cmm/ColorTransform;

    invoke-interface {v8, v10, v0}, Lsun/java2d/cmm/ColorTransform;->colorConvert([S[S)[S

    move/from16 v20, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_f
    if-ge v8, v2, :cond_17

    move/from16 v21, v9

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v11, :cond_12

    add-int/lit8 v30, v21, 0x1

    aget-short v21, v0, v21

    const v31, 0xffff

    move-object/from16 v32, v0

    and-int v0, v21, v31

    int-to-float v0, v0

    aget v21, v28, v9

    mul-float v0, v0, v21

    aget v21, v4, v9

    add-float v0, v0, v21

    aput v0, v27, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v21, v30

    move-object/from16 v0, v32

    goto :goto_10

    :cond_12
    move-object/from16 v32, v0

    move-object/from16 v0, v27

    if-eqz v16, :cond_13

    invoke-virtual {v1, v0}, Ljava/awt/color/ColorSpace;->fromCIEXYZ([F)[F

    move-result-object v9

    move-object/from16 v27, v4

    const/4 v4, 0x0

    move/from16 v34, v25

    move/from16 v25, v7

    move/from16 v7, v34

    :goto_11
    if-ge v4, v7, :cond_14

    aget v30, v9, v4

    aput v30, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_13
    move-object/from16 v27, v4

    move/from16 v34, v25

    move/from16 v25, v7

    move/from16 v7, v34

    :cond_14
    if-eqz v15, :cond_15

    aget v4, v14, v8

    aput v4, v0, v7

    goto :goto_12

    :cond_15
    if-eqz v23, :cond_16

    aput v18, v0, v7

    :cond_16
    :goto_12
    move-object/from16 v4, v22

    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v5}, Ljava/awt/image/ColorModel;->getDataElements([FILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v9, p4

    invoke-virtual {v9, v8, v13, v5}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v22, v4

    move/from16 v9, v21

    move-object/from16 v4, v27

    move-object/from16 v27, v0

    move-object/from16 v0, v32

    move/from16 v34, v25

    move/from16 v25, v7

    move/from16 v7, v34

    goto :goto_f

    :cond_17
    move-object/from16 v9, p4

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v27, v4

    move-object/from16 v4, v22

    move/from16 v34, v25

    move/from16 v25, v7

    move/from16 v7, v34

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v20

    move/from16 v3, v26

    move-object/from16 v20, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move-object v4, v0

    move-object/from16 v0, v32

    move/from16 v34, v25

    move/from16 v25, v7

    move/from16 v7, v34

    goto/16 :goto_c

    :cond_18
    move/from16 v26, v3

    goto :goto_13

    :cond_19
    move/from16 v26, v3

    move-object/from16 p3, v7

    :goto_13
    move-object/from16 v21, v8

    move-object/from16 v29, v9

    move-object v9, v10

    move-object v4, v11

    move v7, v13

    move/from16 v23, v14

    move-object v3, v0

    if-nez v5, :cond_1a

    const/4 v0, 0x0

    goto :goto_14

    :cond_1a
    array-length v0, v5

    :goto_14
    if-eqz v23, :cond_1b

    add-int/lit8 v13, v7, 0x1

    new-array v5, v13, [F

    goto :goto_15

    :cond_1b
    new-array v5, v7, [F

    :goto_15
    move/from16 v13, v26

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_16
    if-ge v11, v13, :cond_21

    move-object v14, v10

    move/from16 v26, v13

    move-object/from16 v13, v17

    const/4 v10, 0x0

    :goto_17
    if-ge v10, v2, :cond_20

    move/from16 v16, v2

    move-object/from16 v2, v29

    invoke-virtual {v2, v10, v11, v13}, Ljava/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/4 v2, 0x0

    invoke-virtual {v6, v13, v8, v2}, Ljava/awt/image/ColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/awt/color/ColorSpace;->toCIEXYZ([F)[F

    move-result-object v2

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_1c

    move/from16 v17, v0

    iget-object v0, v3, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/awt/color/ColorSpace;->fromCIEXYZ([F)[F

    move-result-object v0

    iget-object v2, v3, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/awt/color/ColorSpace;->toCIEXYZ([F)[F

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v17

    goto :goto_18

    :cond_1c
    move/from16 v17, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/awt/color/ColorSpace;->fromCIEXYZ([F)[F

    move-result-object v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v7, :cond_1d

    aget v19, v1, v2

    aput v19, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_1d
    if-eqz v15, :cond_1e

    aget v1, v8, v12

    aput v1, v5, v7

    goto :goto_1a

    :cond_1e
    if-eqz v23, :cond_1f

    aput v18, v5, v7

    :cond_1f
    :goto_1a
    const/4 v1, 0x0

    invoke-virtual {v4, v5, v1, v14}, Ljava/awt/image/ColorModel;->getDataElements([FILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v9, v10, v11, v14}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p2

    move-object/from16 v21, v0

    move/from16 v2, v16

    move/from16 v0, v17

    goto :goto_17

    :cond_20
    move/from16 v17, v0

    move/from16 v16, v2

    move-object/from16 v0, v21

    const/4 v1, 0x0

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p2

    move-object v10, v14

    move/from16 v0, v17

    move-object/from16 v17, v13

    move/from16 v13, v26

    goto :goto_16

    :cond_21
    return-object p3

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width or height of BufferedImages do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final nonICCRasterFilter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v1

    iget-object v3, v0, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result v3

    if-ne v1, v3, :cond_14

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-virtual/range {p0 .. p1}, Ljava/awt/image/ColorConvertOp;->createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getHeight()I

    move-result v5

    if-ne v3, v5, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getWidth()I

    move-result v5

    if-ne v3, v5, :cond_13

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v3

    iget-object v5, v0, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result v5

    if-ne v3, v5, :cond_12

    move-object/from16 v3, p2

    :goto_0
    iget-object v5, v0, Ljava/awt/image/ColorConvertOp;->srcMinVals:[F

    if-nez v5, :cond_1

    iget-object v5, v0, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    aget-object v6, v5, v4

    aget-object v5, v5, v1

    invoke-direct {v0, v6, v5}, Ljava/awt/image/ColorConvertOp;->getMinMaxValsFromColorSpaces(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v5

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v7

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x4

    if-eq v7, v10, :cond_3

    if-ne v7, v9, :cond_2

    goto :goto_1

    :cond_2
    move v11, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v11, v1

    :goto_2
    if-eq v8, v10, :cond_5

    if-ne v8, v9, :cond_4

    goto :goto_3

    :cond_4
    move v9, v4

    goto :goto_4

    :cond_5
    :goto_3
    move v9, v1

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v13

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v14

    const/16 v16, 0x0

    if-nez v11, :cond_7

    new-array v4, v13, [F

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v13, :cond_8

    if-ne v7, v2, :cond_6

    iget-object v2, v0, Ljava/awt/image/ColorConvertOp;->srcMaxVals:[F

    aget v2, v2, v1

    iget-object v15, v0, Ljava/awt/image/ColorConvertOp;->srcMinVals:[F

    aget v15, v15, v1

    sub-float/2addr v2, v15

    const v15, 0x46fffe00    # 32767.0f

    div-float/2addr v2, v15

    aput v2, v4, v1

    goto :goto_6

    :cond_6
    iget-object v2, v0, Ljava/awt/image/ColorConvertOp;->srcMaxVals:[F

    aget v2, v2, v1

    iget-object v15, v0, Ljava/awt/image/ColorConvertOp;->srcMinVals:[F

    aget v15, v15, v1

    sub-float/2addr v2, v15

    invoke-virtual {v5, v1}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v15

    const/16 v18, 0x1

    shl-int v15, v18, v15

    add-int/lit8 v15, v15, -0x1

    int-to-float v15, v15

    div-float/2addr v2, v15

    aput v2, v4, v1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    goto :goto_5

    :cond_7
    move-object/from16 v4, v16

    :cond_8
    if-nez v9, :cond_b

    new-array v1, v14, [F

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v14, :cond_a

    const/4 v5, 0x2

    if-ne v8, v5, :cond_9

    iget-object v7, v0, Ljava/awt/image/ColorConvertOp;->dstMaxVals:[F

    aget v7, v7, v2

    iget-object v15, v0, Ljava/awt/image/ColorConvertOp;->dstMinVals:[F

    aget v15, v15, v2

    sub-float/2addr v7, v15

    const v15, 0x46fffe00    # 32767.0f

    div-float v7, v15, v7

    aput v7, v1, v2

    goto :goto_8

    :cond_9
    const v15, 0x46fffe00    # 32767.0f

    invoke-virtual {v6, v2}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v7

    const/16 v16, 0x1

    shl-int v7, v16, v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget-object v5, v0, Ljava/awt/image/ColorConvertOp;->dstMaxVals:[F

    aget v5, v5, v2

    iget-object v15, v0, Ljava/awt/image/ColorConvertOp;->dstMinVals:[F

    aget v15, v15, v2

    sub-float/2addr v5, v15

    div-float/2addr v7, v5

    aput v7, v1, v2

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v16, v1

    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v1

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getMinY()I

    move-result v2

    new-array v5, v13, [F

    iget-object v6, v0, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    const/4 v7, 0x0

    aget-object v8, v6, v7

    const/4 v15, 0x1

    aget-object v6, v6, v15

    move v15, v7

    :goto_9
    if-ge v15, v12, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v17

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getMinX()I

    move-result v18

    move/from16 v24, v15

    move v15, v7

    move/from16 v7, v17

    move/from16 v17, v12

    move/from16 v12, v18

    move/from16 v18, v24

    :goto_a
    if-ge v15, v10, :cond_10

    move/from16 v19, v10

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v13, :cond_d

    move/from16 v20, v13

    move-object/from16 v13, p1

    invoke-virtual {v13, v7, v1, v10}, Ljava/awt/image/Raster;->getSampleFloat(III)F

    move-result v21

    if-nez v11, :cond_c

    aget v22, v4, v10

    mul-float v21, v21, v22

    move-object/from16 v22, v4

    iget-object v4, v0, Ljava/awt/image/ColorConvertOp;->srcMinVals:[F

    aget v4, v4, v10

    add-float v21, v21, v4

    goto :goto_c

    :cond_c
    move-object/from16 v22, v4

    :goto_c
    aput v21, v5, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v20

    move-object/from16 v4, v22

    goto :goto_b

    :cond_d
    move-object/from16 v22, v4

    move/from16 v20, v13

    move-object/from16 v13, p1

    invoke-virtual {v8, v5}, Ljava/awt/color/ColorSpace;->toCIEXYZ([F)[F

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/awt/color/ColorSpace;->fromCIEXYZ([F)[F

    move-result-object v4

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v14, :cond_f

    aget v21, v4, v10

    move-object/from16 v23, v4

    if-nez v9, :cond_e

    iget-object v4, v0, Ljava/awt/image/ColorConvertOp;->dstMinVals:[F

    aget v4, v4, v10

    sub-float v21, v21, v4

    aget v4, v16, v10

    mul-float v21, v21, v4

    :cond_e
    move/from16 v4, v21

    invoke-virtual {v3, v12, v2, v10, v4}, Ljava/awt/image/WritableRaster;->setSample(IIIF)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v23

    goto :goto_d

    :cond_f
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v19

    move/from16 v13, v20

    move-object/from16 v4, v22

    goto :goto_a

    :cond_10
    move-object/from16 v22, v4

    move/from16 v19, v10

    move/from16 v20, v13

    move-object/from16 v13, p1

    add-int/lit8 v15, v18, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v12, v17

    move/from16 v13, v20

    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_11
    return-object v3

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Numbers of destination Raster bands and destination color space components do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width or height of Rasters do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Numbers of source Raster bands and source color space components do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination ColorSpace is undefined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setMinMax(II[F[F)V
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    aput p0, p3, v1

    const/high16 p0, 0x42c80000    # 100.0f

    aput p0, p4, v1

    const/high16 p0, -0x3d000000    # -128.0f

    aput p0, p3, v2

    const/high16 p1, 0x42fe0000    # 127.0f

    aput p1, p4, v2

    aput p0, p3, v0

    aput p1, p4, v0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    aput p0, p3, v0

    aput p0, p3, v2

    aput p0, p3, v1

    const p0, 0x3fffff00    # 1.9999695f

    aput p0, p4, v0

    aput p0, p4, v2

    aput p0, p4, v1

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v1, p2, :cond_2

    aput p0, p3, v1

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private updateBITransform(Ljava/awt/color/ICC_Profile;Ljava/awt/color/ICC_Profile;)V
    .locals 13

    iget-object v0, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    aget-object v4, v0, v3

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    move v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v4, v1, 0x1

    move v5, v2

    :goto_1
    const/4 v6, 0x2

    if-eqz v1, :cond_3

    add-int/lit8 v7, v1, -0x1

    aget-object v0, v0, v7

    if-ne p2, v0, :cond_3

    if-ge v4, v6, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v0, v2

    :goto_3
    new-array v7, v4, [Ljava/awt/color/ICC_Profile;

    if-eqz v5, :cond_4

    aput-object p1, v7, v3

    move v5, v2

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    move v8, v3

    :goto_5
    if-ge v8, v1, :cond_5

    add-int/lit8 v9, v5, 0x1

    iget-object v10, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    aget-object v10, v10, v8

    aput-object v10, v7, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    aput-object p2, v7, v5

    :cond_6
    new-array v0, v4, [Lsun/java2d/cmm/ColorTransform;

    aget-object v1, v7, v3

    invoke-virtual {v1}, Ljava/awt/color/ICC_Profile;->getProfileClass()I

    move-result v1

    if-ne v1, v6, :cond_7

    move v1, v2

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    invoke-static {}, Lsun/java2d/cmm/CMSManager;->getModule()Lsun/java2d/cmm/PCMM;

    move-result-object v5

    move v9, v2

    move v8, v3

    :goto_7
    if-ge v8, v4, :cond_a

    add-int/lit8 v10, v4, -0x1

    const/4 v11, 0x4

    if-ne v8, v10, :cond_8

    move v9, v6

    goto :goto_8

    :cond_8
    if-ne v9, v11, :cond_9

    aget-object v10, v7, v8

    invoke-virtual {v10}, Ljava/awt/color/ICC_Profile;->getProfileClass()I

    move-result v10

    const/4 v12, 0x5

    if-ne v10, v12, :cond_9

    move v9, v2

    move v1, v3

    :cond_9
    :goto_8
    aget-object v10, v7, v8

    invoke-interface {v5, v10, v1, v9}, Lsun/java2d/cmm/PCMM;->createTransform(Ljava/awt/color/ICC_Profile;II)Lsun/java2d/cmm/ColorTransform;

    move-result-object v1

    aput-object v1, v0, v8

    aget-object v1, v7, v8

    invoke-direct {p0, v1}, Ljava/awt/image/ColorConvertOp;->getRenderingIntent(Ljava/awt/color/ICC_Profile;)I

    move-result v1

    add-int/lit8 v8, v8, 0x1

    move v9, v11

    goto :goto_7

    :cond_a
    invoke-interface {v5, v0}, Lsun/java2d/cmm/PCMM;->createTransform([Lsun/java2d/cmm/ColorTransform;)Lsun/java2d/cmm/ColorTransform;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/image/ColorConvertOp;->thisTransform:Lsun/java2d/cmm/ColorTransform;

    iput-object p1, p0, Ljava/awt/image/ColorConvertOp;->thisSrcProfile:Ljava/awt/color/ICC_Profile;

    iput-object p2, p0, Ljava/awt/image/ColorConvertOp;->thisDestProfile:Ljava/awt/color/ICC_Profile;

    return-void
.end method


# virtual methods
.method public createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 2

    if-nez p2, :cond_2

    .line 1
    iget-object v0, p0, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    array-length v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 3
    aget-object v0, v0, v1

    .line 4
    new-instance v1, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v1, v0}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Destination ColorSpace is undefined"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 7
    aget-object v1, v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-direct {p0, p1, p2, v1}, Ljava/awt/image/ColorConvertOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;
    .locals 4

    iget-object v0, p0, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    const-string v1, "Destination ColorSpace is undefined"

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    array-length p0, v0

    if-ne p0, v3, :cond_0

    aget-object p0, v0, v2

    invoke-virtual {p0}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    array-length v0, p0

    if-lt v0, v3, :cond_2

    sub-int/2addr v0, v2

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result p0

    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v1

    new-instance v2, Ljava/awt/Point;

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v3

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result p1

    invoke-direct {v2, v3, p1}, Ljava/awt/Point;-><init>(II)V

    const/4 p1, 0x0

    invoke-static {p1, v0, v1, p0, v2}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    instance-of v0, v0, Ljava/awt/image/IndexColorModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    check-cast v0, Ljava/awt/image/IndexColorModel;

    .line 3
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/awt/image/IndexColorModel;->convertToIntDiscrete(Ljava/awt/image/Raster;Z)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    instance-of v2, v2, Ljava/awt/image/IndexColorModel;

    if-eqz v2, :cond_1

    move-object v2, p2

    move-object p2, v1

    move-object v3, p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v2

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v2, v1

    move-object v3, v2

    .line 7
    :goto_0
    iget-object v4, p0, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    if-nez v4, :cond_4

    instance-of v4, v0, Ljava/awt/color/ICC_ColorSpace;

    if-eqz v4, :cond_4

    if-eqz p2, :cond_3

    instance-of v4, v3, Ljava/awt/color/ICC_ColorSpace;

    if-nez v4, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-direct {p0, p1, v0, p2, v3}, Ljava/awt/image/ColorConvertOp;->ICCBIFilter(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    goto :goto_2

    .line 9
    :cond_4
    :goto_1
    invoke-direct {p0, p1, v0, p2, v3}, Ljava/awt/image/ColorConvertOp;->nonICCBIFilter(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    :goto_2
    if-eqz v2, :cond_5

    .line 10
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p1

    const/4 p2, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p1, p0, p2, p2, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->dispose()V

    return-object v2

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->dispose()V

    .line 13
    throw p0

    :cond_5
    return-object p0
.end method

.method public final filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 12

    .line 14
    iget-object v0, p0, Ljava/awt/image/ColorConvertOp;->CSList:[Ljava/awt/color/ColorSpace;

    if-eqz v0, :cond_0

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/awt/image/ColorConvertOp;->nonICCRasterFilter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    .line 16
    :cond_0
    iget-object v0, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    .line 17
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v2

    iget-object v3, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result v3

    if-ne v2, v3, :cond_c

    if-nez p2, :cond_1

    .line 18
    invoke-virtual {p0, p1}, Ljava/awt/image/ColorConvertOp;->createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;

    move-result-object p2

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Ljava/awt/image/Raster;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 20
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Ljava/awt/image/Raster;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 21
    invoke-virtual {p2}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v2

    iget-object v3, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    add-int/lit8 v5, v0, -0x1

    aget-object v3, v3, v5

    .line 22
    invoke-virtual {v3}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 23
    :goto_0
    iget-object v2, p0, Ljava/awt/image/ColorConvertOp;->thisRasterTransform:Lsun/java2d/cmm/ColorTransform;

    const/4 v3, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-nez v2, :cond_6

    .line 24
    new-array v2, v0, [Lsun/java2d/cmm/ColorTransform;

    .line 25
    iget-object v7, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/awt/color/ICC_Profile;->getProfileClass()I

    move-result v7

    if-ne v7, v1, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v4

    .line 26
    :goto_1
    invoke-static {}, Lsun/java2d/cmm/CMSManager;->getModule()Lsun/java2d/cmm/PCMM;

    move-result-object v8

    move v9, v4

    move v10, v6

    :goto_2
    if-ge v9, v0, :cond_5

    add-int/lit8 v11, v0, -0x1

    if-ne v9, v11, :cond_3

    move v10, v1

    goto :goto_3

    :cond_3
    if-ne v10, v5, :cond_4

    .line 27
    iget-object v11, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    aget-object v11, v11, v9

    .line 28
    invoke-virtual {v11}, Ljava/awt/color/ICC_Profile;->getProfileClass()I

    move-result v11

    if-ne v11, v3, :cond_4

    move v7, v4

    move v10, v6

    .line 29
    :cond_4
    :goto_3
    iget-object v11, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    aget-object v11, v11, v9

    invoke-interface {v8, v11, v7, v10}, Lsun/java2d/cmm/PCMM;->createTransform(Ljava/awt/color/ICC_Profile;II)Lsun/java2d/cmm/ColorTransform;

    move-result-object v7

    aput-object v7, v2, v9

    .line 30
    iget-object v7, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    aget-object v7, v7, v9

    invoke-direct {p0, v7}, Ljava/awt/image/ColorConvertOp;->getRenderingIntent(Ljava/awt/color/ICC_Profile;)I

    move-result v7

    add-int/lit8 v9, v9, 0x1

    move v10, v5

    goto :goto_2

    .line 31
    :cond_5
    invoke-interface {v8, v2}, Lsun/java2d/cmm/PCMM;->createTransform([Lsun/java2d/cmm/ColorTransform;)Lsun/java2d/cmm/ColorTransform;

    move-result-object v1

    iput-object v1, p0, Ljava/awt/image/ColorConvertOp;->thisRasterTransform:Lsun/java2d/cmm/ColorTransform;

    .line 32
    :cond_6
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v1

    .line 33
    invoke-virtual {p2}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v2

    if-eq v1, v5, :cond_8

    if-eq v1, v3, :cond_8

    if-eq v2, v5, :cond_8

    if-ne v2, v3, :cond_7

    goto :goto_4

    .line 34
    :cond_7
    iget-object p0, p0, Ljava/awt/image/ColorConvertOp;->thisRasterTransform:Lsun/java2d/cmm/ColorTransform;

    invoke-interface {p0, p1, p2}, Lsun/java2d/cmm/ColorTransform;->colorConvert(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)V

    goto :goto_5

    .line 35
    :cond_8
    :goto_4
    iget-object v1, p0, Ljava/awt/image/ColorConvertOp;->srcMinVals:[F

    if-nez v1, :cond_9

    .line 36
    iget-object v1, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    aget-object v2, v1, v4

    sub-int/2addr v0, v6

    aget-object v0, v1, v0

    invoke-direct {p0, v2, v0}, Ljava/awt/image/ColorConvertOp;->getMinMaxValsFromProfiles(Ljava/awt/color/ICC_Profile;Ljava/awt/color/ICC_Profile;)V

    .line 37
    :cond_9
    iget-object v5, p0, Ljava/awt/image/ColorConvertOp;->thisRasterTransform:Lsun/java2d/cmm/ColorTransform;

    iget-object v8, p0, Ljava/awt/image/ColorConvertOp;->srcMinVals:[F

    iget-object v9, p0, Ljava/awt/image/ColorConvertOp;->srcMaxVals:[F

    iget-object v10, p0, Ljava/awt/image/ColorConvertOp;->dstMinVals:[F

    iget-object v11, p0, Ljava/awt/image/ColorConvertOp;->dstMaxVals:[F

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v5 .. v11}, Lsun/java2d/cmm/ColorTransform;->colorConvert(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;[F[F[F[F)V

    :goto_5
    return-object p2

    .line 38
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Numbers of destination Raster bands and destination color space components do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Width or height of Rasters do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Numbers of source Raster bands and source color space components do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source or Destination ColorSpace is undefined"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/awt/image/ColorConvertOp;->getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public final getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public final getICC_Profiles()[Ljava/awt/color/ICC_Profile;
    .locals 4

    iget-boolean v0, p0, Ljava/awt/image/ColorConvertOp;->gotProfiles:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    array-length v0, v0

    new-array v0, v0, [Ljava/awt/color/ICC_Profile;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ljava/awt/image/ColorConvertOp;->profileList:[Ljava/awt/color/ICC_Profile;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Float;-><init>()V

    :cond_0
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p0

    invoke-virtual {p2, v0, v1, p0, p1}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2
.end method

.method public final getRenderingHints()Ljava/awt/RenderingHints;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/ColorConvertOp;->hints:Ljava/awt/RenderingHints;

    return-object p0
.end method
