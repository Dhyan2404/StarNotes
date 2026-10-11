.class public Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;
.source "SourceFile"


# static fields
.field private static final FRAC_BITS:I = 0x10

.field private static final FRAC_SCALE:F = 65536.0f


# instance fields
.field private chromaSubsampleH:I

.field private chromaSubsampleV:I

.field private codingRangeY:F

.field private colorConvert:Z

.field private decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

.field private iCbTab:[I

.field private iCrTab:[I

.field private iGCbTab:[I

.field private iGCrTab:[I

.field private iGYTab:[I

.field private iYTab:[I

.field private lumaBlue:F

.field private lumaGreen:F

.field private lumaRed:F

.field private referenceBlackCb:F

.field private referenceBlackCr:F

.field private referenceBlackY:F

.field private referenceWhiteCb:F

.field private referenceWhiteCr:F

.field private referenceWhiteY:F

.field private tmpImage:Ljava/awt/image/BufferedImage;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;-><init>()V

    const v0, 0x3e991687    # 0.299f

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->lumaRed:F

    const v0, 0x3f1645a2    # 0.587f

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->lumaGreen:F

    const v0, 0x3de978d5    # 0.114f

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->lumaBlue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceBlackY:F

    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceWhiteY:F

    const/high16 v1, 0x43000000    # 128.0f

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceBlackCb:F

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceWhiteCb:F

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceBlackCr:F

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceWhiteCr:F

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->codingRangeY:F

    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iYTab:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iCbTab:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iCrTab:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iGYTab:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iGCbTab:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iGCrTab:[I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleH:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleV:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iput-boolean p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->colorConvert:Z

    return-void
.end method

.method private clamp(I)B
    .locals 0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, 0xff0000

    if-le p1, p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    shr-int/lit8 p0, p1, 0x10

    int-to-byte p0, p0

    return p0
.end method

.method private warning(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->reader:Ljavax/imageio/ImageReader;

    instance-of v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->forwardWarningMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public beginDecoding()V
    .locals 12

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->beginDecoding()V

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->metadata:Ljavax/imageio/metadata/IIOMetadata;

    check-cast v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v1, 0x212

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v6

    if-ne v6, v4, :cond_2

    invoke-virtual {v1, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v6

    iput v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleH:I

    invoke-virtual {v1, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleV:I

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleH:I

    const-string v6, " (should be 1, 2, or 4), setting to 1"

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Y_CB_CR_SUBSAMPLING[0] has illegal value "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleH:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->warning(Ljava/lang/String;)V

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleH:I

    :cond_1
    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleV:I

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Y_CB_CR_SUBSAMPLING[1] has illegal value "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleV:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->warning(Ljava/lang/String;)V

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleV:I

    goto :goto_0

    :cond_2
    const-string v1, "Y_CB_CR_SUBSAMPLING count != 2, assuming no subsampling"

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->warning(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/16 v1, 0x211

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    const/4 v6, 0x3

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v7

    if-ne v7, v6, :cond_4

    invoke-virtual {v1, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v7

    iput v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->lumaRed:F

    invoke-virtual {v1, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v7

    iput v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->lumaGreen:F

    invoke-virtual {v1, v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->lumaBlue:F

    goto :goto_1

    :cond_4
    const-string v1, "Y_CB_CR_COEFFICIENTS count != 3, assuming default values for CCIR 601-1"

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->warning(Ljava/lang/String;)V

    :cond_5
    :goto_1
    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v1

    const/4 v7, 0x6

    if-ne v1, v7, :cond_6

    invoke-virtual {v0, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceBlackY:F

    invoke-virtual {v0, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceWhiteY:F

    invoke-virtual {v0, v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceBlackCb:F

    invoke-virtual {v0, v6}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceWhiteCb:F

    invoke-virtual {v0, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceBlackCr:F

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsFloat(I)F

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceWhiteCr:F

    goto :goto_2

    :cond_6
    const-string v0, "REFERENCE_BLACK_WHITE count != 6, ignoring it"

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->warning(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v0, "REFERENCE_BLACK_WHITE not found, assuming 0-255/128-255/128-255"

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->warning(Ljava/lang/String;)V

    :goto_2
    iput-boolean v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->colorConvert:Z

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->lumaBlue:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    sub-float v2, v1, v2

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->lumaRed:F

    mul-float v5, v4, v1

    sub-float v5, v1, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, v0

    sub-float/2addr v7, v4

    iget v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->lumaGreen:F

    div-float/2addr v7, v8

    mul-float v9, v0, v1

    sub-float/2addr v0, v6

    mul-float/2addr v9, v0

    div-float/2addr v9, v8

    mul-float/2addr v1, v4

    sub-float/2addr v4, v6

    mul-float/2addr v1, v4

    div-float/2addr v1, v8

    :goto_3
    const/16 v0, 0x100

    if-ge v3, v0, :cond_8

    int-to-float v0, v3

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceBlackY:F

    sub-float v6, v0, v4

    iget v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->codingRangeY:F

    mul-float/2addr v6, v8

    iget v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceWhiteY:F

    sub-float/2addr v8, v4

    div-float/2addr v6, v8

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceBlackCb:F

    sub-float v8, v0, v4

    const/high16 v10, 0x42fe0000    # 127.0f

    mul-float/2addr v8, v10

    iget v11, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceWhiteCb:F

    sub-float/2addr v11, v4

    div-float/2addr v8, v11

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceBlackCr:F

    sub-float/2addr v0, v4

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->referenceWhiteCr:F

    sub-float/2addr v10, v4

    div-float/2addr v0, v10

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iYTab:[I

    const/high16 v10, 0x47800000    # 65536.0f

    mul-float v11, v6, v10

    float-to-int v11, v11

    aput v11, v4, v3

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iCbTab:[I

    mul-float v11, v8, v2

    mul-float/2addr v11, v10

    float-to-int v11, v11

    aput v11, v4, v3

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iCrTab:[I

    mul-float v11, v0, v5

    mul-float/2addr v11, v10

    float-to-int v11, v11

    aput v11, v4, v3

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iGYTab:[I

    mul-float/2addr v6, v7

    mul-float/2addr v6, v10

    float-to-int v6, v6

    aput v6, v4, v3

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iGCbTab:[I

    mul-float/2addr v8, v9

    mul-float/2addr v8, v10

    float-to-int v6, v8

    aput v6, v4, v3

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iGCrTab:[I

    mul-float/2addr v0, v1

    mul-float/2addr v0, v10

    float-to-int v0, v0

    aput v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public decodeRaw([BIII)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleH:I

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleV:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    new-array v3, v2, [B

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v4, :cond_0

    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/lit8 v5, v5, 0x3

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr v6, v5

    new-array v6, v6, [B

    move/from16 v7, p3

    invoke-virtual {v4, v6, v1, v7, v5}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([BIII)V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v5, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {v5, v4}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->offset:J

    invoke-interface {v4, v5, v6}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    :goto_0
    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    :goto_1
    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_8

    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinX:I

    :goto_2
    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinX:I

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_7

    :try_start_0
    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v6, v3}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v2, -0x2

    aget-byte v6, v3, v6

    add-int/lit8 v7, v2, -0x1

    aget-byte v7, v3, v7

    iget-boolean v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->colorConvert:Z

    if-eqz v8, :cond_1

    and-int/lit16 v8, v6, 0xff

    and-int/lit16 v10, v7, 0xff

    iget-object v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iCbTab:[I

    aget v11, v11, v8

    iget-object v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iCrTab:[I

    aget v12, v12, v10

    iget-object v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iGCbTab:[I

    aget v8, v13, v8

    iget-object v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iGCrTab:[I

    aget v10, v13, v10

    goto :goto_3

    :cond_1
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    iget v15, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleV:I

    if-ge v13, v15, :cond_6

    iget v15, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinX:I

    sub-int v15, v5, v15

    mul-int/lit8 v15, v15, 0x3

    add-int/2addr v15, v1

    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    sub-int v16, v4, v9

    add-int v16, v16, v13

    mul-int v16, v16, p4

    add-int v15, v15, v16

    add-int v1, v4, v13

    move/from16 v16, v2

    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    add-int/2addr v9, v2

    if-lt v1, v9, :cond_2

    goto :goto_8

    :cond_2
    const/4 v1, 0x0

    :goto_5
    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleH:I

    if-ge v1, v2, :cond_5

    add-int v2, v5, v1

    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinX:I

    move/from16 v17, v4

    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    add-int/2addr v9, v4

    if-lt v2, v9, :cond_3

    goto :goto_7

    :cond_3
    add-int/lit8 v2, v14, 0x1

    aget-byte v4, v3, v14

    iget-boolean v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->colorConvert:Z

    if-eqz v9, :cond_4

    and-int/lit16 v4, v4, 0xff

    iget-object v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iYTab:[I

    aget v9, v9, v4

    iget-object v14, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->iGYTab:[I

    aget v4, v14, v4

    add-int v14, v9, v12

    add-int/2addr v4, v8

    add-int/2addr v4, v10

    add-int/2addr v9, v11

    invoke-direct {v0, v14}, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->clamp(I)B

    move-result v14

    invoke-direct {v0, v4}, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->clamp(I)B

    move-result v4

    invoke-direct {v0, v9}, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->clamp(I)B

    move-result v9

    aput-byte v14, p1, v15

    add-int/lit8 v14, v15, 0x1

    aput-byte v4, p1, v14

    add-int/lit8 v4, v15, 0x2

    aput-byte v9, p1, v4

    goto :goto_6

    :cond_4
    aput-byte v4, p1, v15

    add-int/lit8 v4, v15, 0x1

    aput-byte v6, p1, v4

    add-int/lit8 v4, v15, 0x2

    aput-byte v7, p1, v4

    :goto_6
    add-int/lit8 v15, v15, 0x3

    add-int/lit8 v1, v1, 0x1

    move v14, v2

    move/from16 v4, v17

    goto :goto_5

    :cond_5
    move/from16 v17, v4

    :goto_7
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p2

    move/from16 v2, v16

    move/from16 v4, v17

    goto :goto_4

    :cond_6
    move/from16 v16, v2

    :goto_8
    move/from16 v17, v4

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleH:I

    add-int/2addr v5, v1

    move/from16 v1, p2

    move/from16 v2, v16

    move/from16 v4, v17

    goto/16 :goto_2

    :catch_0
    return-void

    :cond_7
    move/from16 v16, v2

    move/from16 v17, v4

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->chromaSubsampleV:I

    add-int v4, v17, v1

    move/from16 v1, p2

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public setActiveSrcHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setActiveSrcHeight(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setActiveSrcHeight(I)V

    return-void
.end method

.method public setActiveSrcMinX(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setActiveSrcMinX(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setActiveSrcMinX(I)V

    return-void
.end method

.method public setActiveSrcMinY(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setActiveSrcMinY(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setActiveSrcMinY(I)V

    return-void
.end method

.method public setActiveSrcWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setActiveSrcWidth(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setActiveSrcWidth(I)V

    return-void
.end method

.method public setBitsPerSample([I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setBitsPerSample([I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setBitsPerSample([I)V

    return-void
.end method

.method public setByteCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setByteCount(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setByteCount(I)V

    return-void
.end method

.method public setColorMap([C)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setColorMap([C)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setColorMap([C)V

    return-void
.end method

.method public setCompression(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setCompression(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setCompression(I)V

    return-void
.end method

.method public setDestinationBands([I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDestinationBands([I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDestinationBands([I)V

    return-void
.end method

.method public setDstHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstHeight(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstHeight(I)V

    return-void
.end method

.method public setDstMinX(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstMinX(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstMinX(I)V

    return-void
.end method

.method public setDstMinY(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstMinY(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstMinY(I)V

    return-void
.end method

.method public setDstWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstWidth(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstWidth(I)V

    return-void
.end method

.method public setDstXOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstXOffset(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstXOffset(I)V

    return-void
.end method

.method public setDstYOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstYOffset(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstYOffset(I)V

    return-void
.end method

.method public setExtraSamples([I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setExtraSamples([I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setExtraSamples([I)V

    return-void
.end method

.method public setImage(Ljava/awt/image/BufferedImage;)V
    .locals 5

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Ljava/awt/image/Raster;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v2

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->tmpImage:Ljava/awt/image/BufferedImage;

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setImage(Ljava/awt/image/BufferedImage;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setImage(Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V

    return-void
.end method

.method public setOffset(J)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setOffset(J)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setOffset(J)V

    return-void
.end method

.method public setPhotometricInterpretation(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setPhotometricInterpretation(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setPhotometricInterpretation(I)V

    return-void
.end method

.method public setPlanar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setPlanar(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setPlanar(Z)V

    return-void
.end method

.method public setReader(Ljavax/imageio/ImageReader;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setReader(Ljavax/imageio/ImageReader;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setReader(Ljavax/imageio/ImageReader;)V

    return-void
.end method

.method public setSampleFormat([I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSampleFormat([I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSampleFormat([I)V

    return-void
.end method

.method public setSamplesPerPixel(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSamplesPerPixel(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSamplesPerPixel(I)V

    return-void
.end method

.method public setSourceBands([I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSourceBands([I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSourceBands([I)V

    return-void
.end method

.method public setSourceXOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSourceXOffset(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSourceXOffset(I)V

    return-void
.end method

.method public setSourceYOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSourceYOffset(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSourceYOffset(I)V

    return-void
.end method

.method public setSrcHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSrcHeight(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSrcHeight(I)V

    return-void
.end method

.method public setSrcMinX(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSrcMinX(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSrcMinX(I)V

    return-void
.end method

.method public setSrcMinY(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSrcMinY(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSrcMinY(I)V

    return-void
.end method

.method public setSrcWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSrcWidth(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSrcWidth(I)V

    return-void
.end method

.method public setStream(Ljavax/imageio/stream/ImageInputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setStream(Ljavax/imageio/stream/ImageInputStream;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setStream(Ljavax/imageio/stream/ImageInputStream;)V

    :goto_0
    return-void
.end method
