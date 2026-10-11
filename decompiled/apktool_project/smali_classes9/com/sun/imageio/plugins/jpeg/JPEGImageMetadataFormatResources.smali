.class public Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormatResources;
.super Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;
.source "SourceFile"


# static fields
.field static final imageContents:[[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x2e

    new-array v0, v0, [[Ljava/lang/Object;

    const-string v1, "JPEGvariety"

    const-string v2, "A node grouping all marker segments specific to the variety of stream being read/written (e.g. JFIF) - may be empty"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "markerSequence"

    const-string v2, "A node grouping all non-jfif marker segments"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "app0jfif"

    const-string v2, "A JFIF APP0 marker segment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "app14Adobe"

    const-string v2, "An Adobe APP14 marker segment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "sof"

    const-string v2, "A Start Of Frame marker segment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "sos"

    const-string v2, "A Start Of Scan marker segment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "app0JFXX"

    const-string v2, "A JFIF extension marker segment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "app2ICC"

    const-string v2, "An ICC profile APP2 marker segment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "JFIFthumbJPEG"

    const-string v2, "A JFIF thumbnail in JPEG format (no JFIF segments permitted)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "JFIFthumbPalette"

    const-string v2, "A JFIF thumbnail as an RGB indexed image"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "JFIFthumbRGB"

    const-string v2, "A JFIF thumbnail as an RGB image"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "componentSpec"

    const-string v2, "A component specification for a frame"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "scanComponentSpec"

    const-string v2, "A component specification for a scan"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "app0JFIF/majorVersion"

    const-string v2, "The major JFIF version number"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "app0JFIF/minorVersion"

    const-string v2, "The minor JFIF version number"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "app0JFIF/resUnits"

    const-string v2, "The resolution units for Xdensity and Ydensity (0 = no units, just aspect ratio; 1 = dots/inch; 2 = dots/cm)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "app0JFIF/Xdensity"

    const-string v2, "The horizontal density or aspect ratio numerator"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "app0JFIF/Ydensity"

    const-string v2, "The vertical density or aspect ratio denominator"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "app0JFIF/thumbWidth"

    const-string v2, "The width of the thumbnail, or 0 if there isn\'t one"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "app0JFIF/thumbHeight"

    const-string v2, "The height of the thumbnail, or 0 if there isn\'t one"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "app0JFXX/extensionCode"

    const-string v2, "The JFXX extension code identifying thumbnail type: (16 = JPEG, 17 = indexed, 19 = RGB"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "JFIFthumbPalette/thumbWidth"

    const-string v2, "The width of the thumbnail"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x15

    aput-object v1, v0, v3

    const-string v1, "JFIFthumbPalette/thumbHeight"

    const-string v3, "The height of the thumbnail"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x16

    aput-object v1, v0, v4

    const-string v1, "JFIFthumbRGB/thumbWidth"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "JFIFthumbRGB/thumbHeight"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "app14Adobe/version"

    const-string v2, "The version of Adobe APP14 marker segment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "app14Adobe/flags0"

    const-string v2, "The flags0 variable of an APP14 marker segment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "app14Adobe/flags1"

    const-string v2, "The flags1 variable of an APP14 marker segment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "app14Adobe/transform"

    const-string v2, "The color transform applied to the image (0 = Unknown, 1 = YCbCr, 2 = YCCK)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "sof/process"

    const-string v2, "The JPEG process (0 = Baseline sequential, 1 = Extended sequential, 2 = Progressive)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "sof/samplePrecision"

    const-string v2, "The number of bits per sample"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "sof/numLines"

    const-string v2, "The number of lines in the image"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "sof/samplesPerLine"

    const-string v2, "The number of samples per line"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "sof/numFrameComponents"

    const-string v2, "The number of components in the image"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "componentSpec/componentId"

    const-string v2, "The id for this component"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "componentSpec/HsamplingFactor"

    const-string v2, "The horizontal sampling factor for this component"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "componentSpec/VsamplingFactor"

    const-string v2, "The vertical sampling factor for this component"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "componentSpec/QtableSelector"

    const-string v2, "The quantization table to use for this component"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "sos/numScanComponents"

    const-string v2, "The number of components in the scan"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "sos/startSpectralSelection"

    const-string v2, "The first spectral band included in this scan"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "sos/endSpectralSelection"

    const-string v2, "The last spectral band included in this scan"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "sos/approxHigh"

    const-string v2, "The highest bit position included in this scan"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "sos/approxLow"

    const-string v2, "The lowest bit position included in this scan"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "scanComponentSpec/componentSelector"

    const-string v2, "The id of this component"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "scanComponentSpec/dcHuffTable"

    const-string v2, "The huffman table to use for encoding DC coefficients"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "scanComponentSpec/acHuffTable"

    const-string v2, "The huffman table to use for encoding AC coefficients"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormatResources;->imageContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 7

    sget-object p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;->commonContents:[[Ljava/lang/Object;

    array-length p0, p0

    sget-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormatResources;->imageContents:[[Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr p0, v0

    const/4 v0, 0x2

    filled-new-array {p0, v0}, [I

    move-result-object p0

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;->commonContents:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_0

    aget-object v4, p0, v2

    aget-object v6, v3, v1

    aget-object v6, v6, v0

    aput-object v6, v4, v0

    aget-object v4, p0, v2

    aget-object v3, v3, v1

    aget-object v3, v3, v5

    aput-object v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    sget-object v3, Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormatResources;->imageContents:[[Ljava/lang/Object;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v4, p0, v2

    aget-object v6, v3, v1

    aget-object v6, v6, v0

    aput-object v6, v4, v0

    aget-object v4, p0, v2

    aget-object v3, v3, v1

    aget-object v3, v3, v5

    aput-object v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v5

    goto :goto_1

    :cond_1
    return-object p0
.end method
