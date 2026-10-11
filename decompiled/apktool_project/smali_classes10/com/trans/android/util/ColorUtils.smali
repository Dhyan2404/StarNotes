.class public Lcom/trans/android/util/ColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OPAQUE:I = 0xff

.field public static final TAG:Ljava/lang/String; = "ColorUtils"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BGRToRGB([I)[I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v4, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getAlphaFromComposite(Ljava/awt/Composite;)I
    .locals 2

    const/16 v0, 0xff

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Ljava/awt/AlphaComposite;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/awt/AlphaComposite;

    invoke-virtual {p0}, Ljava/awt/AlphaComposite;->getAlpha()F

    move-result p0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_1
    instance-of v1, p0, Lsun/java2d/loops/XORComposite;

    if-eqz v1, :cond_2

    check-cast p0, Lsun/java2d/loops/XORComposite;

    invoke-virtual {p0}, Lsun/java2d/loops/XORComposite;->getXorColor()Ljava/awt/Color;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/Color;->getAlpha()I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method private static toAndroidPixels(Ljava/awt/image/IndexColorModel;[I)[I
    .locals 3

    .line 11
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 13
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/awt/image/IndexColorModel;->getRGB(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toAndroidPixels(Ljava/awt/image/Raster;Ljava/awt/image/ColorModel;[I)[I
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/awt/image/IndexColorModel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/awt/image/IndexColorModel;

    invoke-static {p1, p2}, Lcom/trans/android/util/ColorUtils;->toAndroidPixels(Ljava/awt/image/IndexColorModel;[I)[I

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return-object p2

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Ljava/awt/image/SinglePixelPackedSampleModel;

    .line 7
    invoke-virtual {p0}, Ljava/awt/image/SinglePixelPackedSampleModel;->getBitMasks()[I

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Ljava/awt/image/SinglePixelPackedSampleModel;->getBitOffsets()[I

    move-result-object p0

    .line 9
    invoke-static {p2, v0, p0, p1}, Lcom/trans/android/util/ColorUtils;->toAndroidPixels([I[I[II)[I

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    invoke-static {p2, p1}, Lcom/trans/android/util/ColorUtils;->toAndroidPixels([II)[I

    move-result-object p0

    return-object p0
.end method

.method private static toAndroidPixels([II)[I
    .locals 10

    .line 17
    array-length v0, p0

    div-int/2addr v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x3

    .line 18
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    move v6, v4

    move v7, v6

    :goto_1
    if-ge v6, v3, :cond_0

    mul-int v8, v5, p1

    add-int/2addr v8, v6

    .line 19
    aget v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    sub-int v9, v3, v6

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    if-gt p1, v2, :cond_1

    const/high16 v6, -0x1000000

    goto :goto_2

    :cond_1
    mul-int v6, v5, p1

    add-int/2addr v6, v2

    .line 20
    aget v6, p0, v6

    shl-int/lit8 v6, v6, 0x18

    :goto_2
    or-int/2addr v6, v7

    .line 21
    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static toAndroidPixels([I[I[II)[I
    .locals 8

    .line 14
    array-length v0, p0

    div-int/2addr v0, p3

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, p3, :cond_0

    mul-int v6, v3, p3

    add-int/2addr v6, v4

    .line 15
    aget v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    aget v7, p2, v4

    shl-int/2addr v6, v7

    aget v7, p1, v4

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x3

    if-gt p3, v4, :cond_1

    const/high16 v4, -0x1000000

    or-int/2addr v5, v4

    .line 16
    :cond_1
    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static toColorInt([Ljava/awt/Color;)[I
    .locals 3

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toJavaPixels(Ljava/awt/image/Raster;[I)[I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 3
    :cond_0
    instance-of v1, p0, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz v1, :cond_1

    .line 4
    check-cast p0, Ljava/awt/image/SinglePixelPackedSampleModel;

    .line 5
    invoke-virtual {p0}, Ljava/awt/image/SinglePixelPackedSampleModel;->getBitMasks()[I

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Ljava/awt/image/SinglePixelPackedSampleModel;->getBitOffsets()[I

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Ljava/awt/image/SinglePixelPackedSampleModel;->getSampleSize()[I

    move-result-object p0

    .line 8
    invoke-static {p1, v1, v2, p0, v0}, Lcom/trans/android/util/ColorUtils;->toJavaPixels([I[I[I[II)[I

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-static {p1, v0}, Lcom/trans/android/util/ColorUtils;->toJavaPixels([II)[I

    move-result-object p0

    return-object p0
.end method

.method private static toJavaPixels([II)[I
    .locals 9

    .line 18
    array-length v0, p0

    mul-int/2addr v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x3

    .line 19
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 20
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_2

    .line 21
    aget v5, p0, v4

    move v6, v3

    :goto_1
    if-ge v6, v2, :cond_0

    mul-int v7, v4, p1

    add-int/2addr v7, v6

    sub-int v8, v2, v6

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x8

    shr-int v8, v5, v8

    and-int/lit16 v8, v8, 0xff

    .line 22
    aput v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x4

    if-ne p1, v6, :cond_1

    mul-int v6, v4, p1

    add-int/2addr v6, v1

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    .line 23
    aput v5, v0, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static toJavaPixels([I[I[I[II)[I
    .locals 7

    .line 10
    array-length p1, p0

    mul-int/2addr p1, p4

    new-array p1, p1, [I

    const/4 v0, 0x0

    move v1, v0

    .line 11
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 12
    aget v2, p0, v1

    move v3, v0

    :goto_1
    if-ge v3, p4, :cond_2

    .line 13
    aget v4, p2, v3

    .line 14
    aget v5, p3, v3

    div-int v5, v4, v5

    const/4 v6, 0x2

    if-nez v5, :cond_0

    mul-int v5, v1, p4

    add-int/2addr v5, v6

    shr-int v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    .line 15
    aput v4, p1, v5

    goto :goto_2

    :cond_0
    if-ne v5, v6, :cond_1

    mul-int v5, v1, p4

    shr-int v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    .line 16
    aput v4, p1, v5

    goto :goto_2

    :cond_1
    mul-int v6, v1, p4

    add-int/2addr v6, v5

    shr-int v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    .line 17
    aput v4, p1, v6

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static toRasterPixels(Ljava/awt/image/Raster;[I)[I
    .locals 10

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p0

    array-length v2, p1

    mul-int/2addr v2, v0

    new-array v2, v2, [I

    instance-of v3, p0, Ljava/awt/image/SinglePixelPackedSampleModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    check-cast p0, Ljava/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {p0}, Ljava/awt/image/SinglePixelPackedSampleModel;->getBitMasks()[I

    move-result-object v1

    invoke-virtual {p0}, Ljava/awt/image/SinglePixelPackedSampleModel;->getBitOffsets()[I

    move-result-object p0

    move v3, v4

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_4

    aget v5, p1, v3

    move v6, v4

    :goto_1
    if-ge v6, v0, :cond_1

    mul-int v7, v3, v0

    add-int/2addr v7, v6

    aget v8, p0, v6

    shr-int v8, v5, v8

    aget v9, v1, v6

    and-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move p0, v4

    :goto_2
    array-length v3, p1

    if-ge p0, v3, :cond_4

    move v3, v4

    :goto_3
    if-ge v3, v0, :cond_3

    mul-int v5, p0, v0

    add-int/2addr v5, v3

    sub-int v6, v0, v3

    sub-int/2addr v6, v1

    mul-int/lit8 v6, v6, 0x8

    shr-int v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    return-object v2
.end method
