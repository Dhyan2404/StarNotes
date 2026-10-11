.class public Lcom/sun/imageio/plugins/png/PNGMetadataFormatResources;
.super Ljava/util/ListResourceBundle;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 7

    const/16 p0, 0x6d

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "IHDR"

    const-string v1, "The IHDR chunk, containing the header"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "PLTE"

    const-string v1, "The PLTE chunk, containing the palette"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "PLTEEntry"

    const-string v1, "A palette entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "bKGD"

    const-string v1, "The bKGD chunk, containing the background color"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "bKGD_RGB"

    const-string v1, "An RGB background color, for RGB and RGBAlpha images"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "bKGD_Grayscale"

    const-string v1, "A grayscale background color, for Gray and GrayAlpha images"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "bKGD_Palette"

    const-string v1, "A background palette index"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "cHRM"

    const-string v1, "The cHRM chunk, containing color calibration"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "gAMA"

    const-string v1, "The gAMA chunk, containing the image gamma"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "hIST"

    const-string v1, "The hIST chunk, containing histogram information "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "hISTEntry"

    const-string v1, "A histogram entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "iCCP"

    const-string v1, "The iCCP chunk, containing an ICC color profile"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "iTXt"

    const-string v1, "The iTXt chunk, containing internationalized text"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "iTXtEntry"

    const-string v1, "A localized text entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "pHYS"

    const-string v1, "The pHYS chunk, containing the pixel size and aspect ratio"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "sBIT"

    const-string v1, "The sBIT chunk, containing significant bit information"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "sBIT_Grayscale"

    const-string v1, "Significant bit information for gray samples"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "sBIT_GrayAlpha"

    const-string v1, "Significant bit information for gray and alpha samples"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "sBIT_RGB"

    const-string v1, "Significant bit information for RGB samples"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "sBIT_RGBAlpha"

    const-string v1, "Significant bit information for RGBA samples"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "sBIT_Palette"

    const-string v1, "Significant bit information for RGB palette entries"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "sPLT"

    const-string v1, "The sPLT chunk, containing a suggested palette"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "sPLTEntry"

    const-string v1, "A suggested palette entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "sRGB"

    const-string v1, "The sRGB chunk, containing rendering intent information"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "tEXt"

    const-string v1, "The tEXt chunk, containing text"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "tEXtEntry"

    const-string v1, "A text entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "tIME"

    const-string v1, "The tIME chunk, containing the image modification time"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "tRNS"

    const-string v1, "The tRNS chunk, containing transparency information"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    const-string v0, "tRNS_Grayscale"

    const-string v1, "A grayscale value that should be considered transparent"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    const-string v0, "tRNS_RGB"

    const-string v1, "An RGB value that should be considered transparent"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, p0, v1

    const-string v0, "tRNS_Palette"

    const-string v1, "A palette index that should be considered transparent"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p0, v1

    const-string v0, "zTXt"

    const-string v1, "The zTXt chunk, containing compressed text"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p0, v1

    const-string v0, "zTXtEntry"

    const-string v1, "A compressed text entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p0, v1

    const-string v0, "UnknownChunks"

    const-string v1, "A set of unknown chunks"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p0, v1

    const-string v0, "UnknownChunk"

    const-string v1, "Unknown chunk data stored as a byte array"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p0, v1

    const-string v0, "IHDR/width"

    const-string v1, "The width of the image in pixels"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p0, v1

    const-string v0, "IHDR/height"

    const-string v1, "The height of the image in pixels"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p0, v1

    const-string v0, "IHDR/bitDepth"

    const-string v1, "The bit depth of the image samples"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p0, v1

    const-string v0, "IHDR/colorType"

    const-string v1, "The color type of the image"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p0, v1

    const-string v0, "IHDR/compressionMethod"

    const-string v1, "The compression used for image data, always \"deflate\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p0, v1

    const-string v0, "IHDR/filterMethod"

    const-string v1, "The filtering method used for compression, always \"adaptive\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p0, v1

    const-string v0, "IHDR/interlaceMethod"

    const-string v1, "The interlacing method, \"none\" or \"adam7\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p0, v1

    const-string v0, "PLTEEntry/index"

    const-string v1, "The index of a palette entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p0, v1

    const-string v0, "PLTEEntry/red"

    const-string v1, "The red value of a palette entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, p0, v1

    const-string v0, "PLTEEntry/green"

    const-string v1, "The green value of a palette entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p0, v1

    const-string v0, "PLTEEntry/blue"

    const-string v1, "The blue value of a palette entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, p0, v1

    const-string v0, "bKGD_Grayscale/gray"

    const-string v1, "A gray value to be used as a background"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, p0, v1

    const-string v0, "bKGD_RGB/red"

    const-string v1, "A red value to be used as a background"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p0, v1

    const-string v0, "bKGD_RGB/green"

    const-string v1, "A green value to be used as a background"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x30

    aput-object v0, p0, v1

    const-string v0, "bKGD_RGB/blue"

    const-string v1, "A blue value to be used as a background"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x31

    aput-object v0, p0, v1

    const-string v0, "bKGD_Palette/index"

    const-string v1, "A palette index to be used as a background"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x32

    aput-object v0, p0, v1

    const-string v0, "cHRM/whitePointX"

    const-string v1, "The CIE x coordinate of the white point, multiplied by 1e5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x33

    aput-object v0, p0, v1

    const-string v0, "cHRM/whitePointY"

    const-string v1, "The CIE y coordinate of the white point, multiplied by 1e5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x34

    aput-object v0, p0, v1

    const-string v0, "cHRM/redX"

    const-string v1, "The CIE x coordinate of the red primary, multiplied by 1e5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x35

    aput-object v0, p0, v1

    const-string v0, "cHRM/redY"

    const-string v1, "The CIE y coordinate of the red primary, multiplied by 1e5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x36

    aput-object v0, p0, v1

    const-string v0, "cHRM/greenX"

    const-string v1, "The CIE x coordinate of the green primary, multiplied by 1e5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x37

    aput-object v0, p0, v1

    const-string v0, "cHRM/greenY"

    const-string v1, "The CIE y coordinate of the green primary, multiplied by 1e5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x38

    aput-object v0, p0, v1

    const-string v0, "cHRM/blueX"

    const-string v1, "The CIE x coordinate of the blue primary, multiplied by 1e5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x39

    aput-object v0, p0, v1

    const-string v0, "cHRM/blueY"

    const-string v1, "The CIE y coordinate of the blue primary, multiplied by 1e5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3a

    aput-object v0, p0, v1

    const-string v0, "gAMA/value"

    const-string v1, "The image gamma, multiplied by 1e5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3b

    aput-object v0, p0, v1

    const-string v0, "hISTEntry/index"

    const-string v1, "The palette index of this histogram entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3c

    aput-object v0, p0, v1

    const-string v0, "hISTEntry/value"

    const-string v1, "The frequency of this histogram entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3d

    aput-object v0, p0, v1

    const-string v0, "iCCP/profileName"

    const-string v1, "The name of this ICC profile"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e

    aput-object v0, p0, v1

    const-string v0, "iCCP/compressionMethod"

    const-string v1, "The compression method used to store this ICC profile"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3f

    aput-object v0, p0, v1

    const-string v0, "iTXtEntry/keyword"

    const-string v1, "The keyword"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x40

    aput-object v0, p0, v2

    const-string v0, "iTXtEntry/compressionMethod"

    const-string v2, "The compression method used to store this iTXt entry"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x41

    aput-object v0, p0, v2

    const-string v0, "iTXtEntry/languageTag"

    const-string v2, "The ISO tag describing the language this iTXt entry"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x42

    aput-object v0, p0, v2

    const-string v0, "iTXtEntry/translatedKeyword"

    const-string v2, "The translated keyword for iTXt entry"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x43

    aput-object v0, p0, v2

    const-string v0, "iTXtEntry/text"

    const-string v2, "The localized text"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x44

    aput-object v0, p0, v2

    const-string v0, "pHYS/pixelsPerUnitXAxis"

    const-string v2, "The number of horizontal pixels per unit, multiplied by 1e5"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x45

    aput-object v0, p0, v2

    const-string v0, "pHYS/pixelsPerUnitYAxis"

    const-string v2, "The number of vertical pixels per unit, multiplied by 1e5"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x46

    aput-object v0, p0, v2

    const-string v0, "pHYS/unitSpecifier"

    const-string v2, "The unit specifier for this chunk (i.e., meters)"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x47

    aput-object v0, p0, v2

    const-string v0, "sBIT_Grayscale/gray"

    const-string v2, "The number of significant bits of the gray samples"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x48

    aput-object v0, p0, v3

    const-string v0, "sBIT_GrayAlpha/gray"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x49

    aput-object v0, p0, v2

    const-string v0, "sBIT_GrayAlpha/alpha"

    const-string v2, "The number of significant bits of the alpha samples"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x4a

    aput-object v0, p0, v3

    const-string v0, "sBIT_RGB/red"

    const-string v3, "The number of significant bits of the red samples"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x4b

    aput-object v0, p0, v4

    const-string v0, "sBIT_RGB/green"

    const-string v4, "The number of significant bits of the green samples"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x4c

    aput-object v0, p0, v5

    const-string v0, "sBIT_RGB/blue"

    const-string v5, "The number of significant bits of the blue samples"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x4d

    aput-object v0, p0, v6

    const-string v0, "sBIT_RGBAlpha/red"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x4e

    aput-object v0, p0, v3

    const-string v0, "sBIT_RGBAlpha/green"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x4f

    aput-object v0, p0, v3

    const-string v0, "sBIT_RGBAlpha/blue"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x50

    aput-object v0, p0, v3

    const-string v0, "sBIT_RGBAlpha/alpha"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x51

    aput-object v0, p0, v2

    const-string v0, "sBIT_Palette/red"

    const-string v2, "The number of significant bits of the red palette entries"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x52

    aput-object v0, p0, v2

    const-string v0, "sBIT_Palette/green"

    const-string v2, "The number of significant bits of the green palette entries"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x53

    aput-object v0, p0, v2

    const-string v0, "sBIT_Palette/blue"

    const-string v2, "The number of significant bits of the blue palette entries"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x54

    aput-object v0, p0, v2

    const-string v0, "sPLTEntry/index"

    const-string v2, "The index of a suggested palette entry"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x55

    aput-object v0, p0, v2

    const-string v0, "sPLTEntry/red"

    const-string v2, "The red value of a suggested palette entry"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x56

    aput-object v0, p0, v2

    const-string v0, "sPLTEntry/green"

    const-string v2, "The green value of a suggested palette entry"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x57

    aput-object v0, p0, v2

    const-string v0, "sPLTEntry/blue"

    const-string v2, "The blue value of a suggested palette entry"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x58

    aput-object v0, p0, v3

    const-string v0, "sPLTEntry/alpha"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x59

    aput-object v0, p0, v2

    const-string v0, "sRGB/renderingIntent"

    const-string v2, "The rendering intent"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5a

    aput-object v0, p0, v2

    const-string v0, "tEXtEntry/keyword"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5b

    aput-object v0, p0, v2

    const-string v0, "tEXtEntry/value"

    const-string v2, "The text"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5c

    aput-object v0, p0, v2

    const-string v0, "tIME/year"

    const-string v2, "The year when the image was last modified"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5d

    aput-object v0, p0, v2

    const-string v0, "tIME/month"

    const-string v2, "The month when the image was last modified, 1 = January"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5e

    aput-object v0, p0, v2

    const-string v0, "tIME/day"

    const-string v2, "The day of the month when the image was last modified"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5f

    aput-object v0, p0, v2

    const-string v0, "tIME/hour"

    const-string v2, "The hour when the image was last modified"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x60

    aput-object v0, p0, v2

    const-string v0, "tIME/minute"

    const-string v2, "The minute when the image was last modified"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x61

    aput-object v0, p0, v2

    const-string v0, "tIME/second"

    const-string v2, "The second when the image was last modified, 60 = leap second"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x62

    aput-object v0, p0, v2

    const-string v0, "tRNS_Grayscale/gray"

    const-string v2, "The gray value to be considered transparent"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x63

    aput-object v0, p0, v2

    const-string v0, "tRNS_RGB/red"

    const-string v2, "The red value to be considered transparent"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x64

    aput-object v0, p0, v2

    const-string v0, "tRNS_RGB/green"

    const-string v2, "The green value to be considered transparent"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x65

    aput-object v0, p0, v2

    const-string v0, "tRNS_RGB/blue"

    const-string v2, "The blure value to be considered transparent"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x66

    aput-object v0, p0, v2

    const-string v0, "tRNS_Palette/index"

    const-string v2, "A palette index to be considered transparent"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x67

    aput-object v0, p0, v2

    const-string v0, "tRNS_Palette/alpha"

    const-string v2, "The transparency associated with the palette entry"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x68

    aput-object v0, p0, v2

    const-string v0, "zTXtEntry/keyword"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x69

    aput-object v0, p0, v1

    const-string v0, "zTXtEntry/compressionMethod"

    const-string v1, "The compression method"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x6a

    aput-object v0, p0, v1

    const-string v0, "zTXtEntry/text"

    const-string v1, "The compressed text"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x6b

    aput-object v0, p0, v1

    const-string v0, "UnknownChunk/type"

    const-string v1, "The 4-character type of the unknown chunk"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x6c

    aput-object v0, p0, v1

    return-object p0
.end method
