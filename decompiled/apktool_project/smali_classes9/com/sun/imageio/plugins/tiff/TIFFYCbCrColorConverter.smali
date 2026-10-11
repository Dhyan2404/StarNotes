.class public Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;
.super Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;
.source "SourceFile"


# static fields
.field private static final CODING_RANGE_CB_CR:F = 127.0f

.field private static final CODING_RANGE_Y:F = 255.0f


# instance fields
.field private lumaBlue:F

.field private lumaGreen:F

.field private lumaRed:F

.field private referenceBlackCb:F

.field private referenceBlackCr:F

.field private referenceBlackY:F

.field private referenceWhiteCb:F

.field private referenceWhiteCr:F

.field private referenceWhiteY:F


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;)V
    .locals 6

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;-><init>()V

    const v0, 0x3e991687    # 0.299f

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->lumaRed:F

    const v0, 0x3f1645a2    # 0.587f

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->lumaGreen:F

    const v0, 0x3de978d5    # 0.114f

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->lumaBlue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceBlackY:F

    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceWhiteY:F

    const/high16 v1, 0x43000000    # 128.0f

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceBlackCb:F

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceWhiteCb:F

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceBlackCr:F

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceWhiteCr:F

    const/16 v0, 0x211

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v5

    if-ne v5, v4, :cond_0

    invoke-virtual {v0, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v5

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->lumaRed:F

    invoke-virtual {v0, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v5

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->lumaGreen:F

    invoke-virtual {v0, v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->lumaBlue:F

    :cond_0
    const/16 v0, 0x214

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_1

    invoke-virtual {p1, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceBlackY:F

    invoke-virtual {p1, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceWhiteY:F

    invoke-virtual {p1, v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceBlackCb:F

    invoke-virtual {p1, v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceWhiteCb:F

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceBlackCr:F

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceWhiteCr:F

    :cond_1
    return-void
.end method


# virtual methods
.method public fromRGB(FFF[F)V
    .locals 3

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->lumaRed:F

    mul-float v1, v0, p1

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->lumaGreen:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->lumaBlue:F

    mul-float v2, p2, p3

    add-float/2addr v1, v2

    sub-float/2addr p3, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p2, v2

    sub-float p2, v2, p2

    div-float/2addr p3, p2

    sub-float/2addr p1, v1

    mul-float/2addr v0, v2

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    iget p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceWhiteY:F

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceBlackY:F

    sub-float/2addr p2, v0

    mul-float/2addr v1, p2

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr v1, p2

    add-float/2addr v1, v0

    const/4 p2, 0x0

    aput v1, p4, p2

    iget p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceWhiteCb:F

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceBlackCb:F

    sub-float/2addr p2, v0

    mul-float/2addr p3, p2

    const/high16 p2, 0x42fe0000    # 127.0f

    div-float/2addr p3, p2

    add-float/2addr p3, v0

    const/4 v0, 0x1

    aput p3, p4, v0

    iget p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceWhiteCr:F

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceBlackCr:F

    sub-float/2addr p3, p0

    mul-float/2addr p1, p3

    div-float/2addr p1, p2

    add-float/2addr p1, p0

    const/4 p0, 0x2

    aput p1, p4, p0

    return-void
.end method

.method public toRGB(FFF[F)V
    .locals 4

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceBlackY:F

    sub-float/2addr p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceWhiteY:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceBlackCb:F

    sub-float/2addr p2, v0

    const/high16 v1, 0x42fe0000    # 127.0f

    mul-float/2addr p2, v1

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceWhiteCb:F

    sub-float/2addr v2, v0

    div-float/2addr p2, v2

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceBlackCr:F

    sub-float/2addr p3, v0

    mul-float/2addr p3, v1

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->referenceWhiteCr:F

    sub-float/2addr v1, v0

    div-float/2addr p3, v1

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->lumaRed:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    sub-float v2, v1, v2

    mul-float/2addr p3, v2

    add-float/2addr p3, p1

    const/4 v2, 0x0

    aput p3, p4, v2

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->lumaBlue:F

    mul-float v3, v2, v1

    sub-float/2addr v1, v3

    mul-float/2addr p2, v1

    add-float/2addr p2, p1

    const/4 v1, 0x2

    aput p2, p4, v1

    mul-float/2addr v2, p2

    sub-float/2addr p1, v2

    mul-float/2addr v0, p3

    sub-float/2addr p1, v0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;->lumaGreen:F

    div-float/2addr p1, p0

    const/4 p0, 0x1

    aput p1, p4, p0

    return-void
.end method
