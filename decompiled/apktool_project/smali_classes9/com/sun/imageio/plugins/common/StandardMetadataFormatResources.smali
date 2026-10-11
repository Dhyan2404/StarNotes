.class public Lcom/sun/imageio/plugins/common/StandardMetadataFormatResources;
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
    .locals 8

    const/16 p0, 0x53

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "Chroma"

    const-string v1, "Chroma (color) information"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "ColorSpaceType"

    const-string v1, "The raw color space of the image"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "NumChannels"

    const-string v1, "The number of channels in the raw image, including alpha"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "Gamma"

    const-string v1, "The image gamma"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "BlackIsZero"

    const-string v1, "True if smaller values represent darker shades"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "Palette"

    const-string v1, "Palette-color information"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "PaletteEntry"

    const-string v1, "A palette entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "PaletteEntry/index"

    const-string v1, "The index of the palette entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "PaletteEntry/red"

    const-string v1, "The red value for the palette entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "PaletteEntry/green"

    const-string v1, "The green value for the palette entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "PaletteEntry/blue"

    const-string v1, "The blue value for the palette entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "PaletteEntry/alpha"

    const-string v1, "The alpha value for the palette entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "BackgroundIndex"

    const-string v1, "A palette index to be used as a background"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "BackgroundColor"

    const-string v1, "An RGB triple to be used as a background"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "BackgroundColor/red"

    const-string v1, "The red background value"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "BackgroundColor/green"

    const-string v1, "The green background value"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "BackgroundColor/blue"

    const-string v1, "The blue background value"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "Compression"

    const-string v1, "Compression information"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "CompressionTypeName"

    const-string v1, "The name of the compression scheme in use"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "Lossless"

    const-string v1, "True if the compression scheme is lossless"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "BitRate"

    const-string v1, "The estimated bit rate of the compression scheme"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "NumProgressiveScans"

    const-string v1, "The number of progressive scans used in the image encoding"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "Data"

    const-string v1, "Information on the image layout"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "PlanarConfiguration"

    const-string v1, "The organization of image samples in the stream"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "SampleFormat"

    const-string v1, "The numeric format of image samples"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "BitsPerSample"

    const-string v1, "The number of bits per sample"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "BitsPerSample/value"

    const-string v1, "A list of integers, one per channel"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, p0, v2

    const-string v0, "SignificantBitsPerSample"

    const-string v2, "The number of significant bits per sample"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x1b

    aput-object v0, p0, v2

    const-string v0, "SignificantBitsPerSample/value"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, p0, v2

    const-string v0, "SampleMSB"

    const-string v2, "The position of the most significant bit of each sample"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x1d

    aput-object v0, p0, v2

    const-string v0, "SampleMSB/value"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p0, v1

    const-string v0, "Dimension"

    const-string v1, "Dimension information"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p0, v1

    const-string v0, "PixelAspectRatio"

    const-string v1, "The width of a pixel divided by its height"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p0, v1

    const-string v0, "ImageOrientation"

    const-string v1, "The desired orientation of the image in terms of flips and counter-clockwise rotations"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p0, v1

    const-string v0, "HorizontalPixelSize"

    const-string v1, "The width of a pixel, in millimeters, as it should be rendered on media"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p0, v1

    const-string v0, "VerticalPixelSize"

    const-string v1, "The height of a pixel, in millimeters, as it should be rendered on media"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p0, v1

    const-string v0, "HorizontalPhysicalPixelSpacing"

    const-string v1, "The horizontal distance in the subject of the image, in millimeters, represented by one pixel at the center of the image"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p0, v1

    const-string v0, "VerticalPhysicalPixelSpacing"

    const-string v1, "The vertical distance in the subject of the image, in millimeters, represented by one pixel at the center of the image"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p0, v1

    const-string v0, "HorizontalPosition"

    const-string v1, "The horizontal position, in millimeters, where the image should be rendered on media "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p0, v1

    const-string v0, "VerticalPosition"

    const-string v1, "The vertical position, in millimeters, where the image should be rendered on media "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p0, v1

    const-string v0, "HorizontalPixelOffset"

    const-string v1, "The horizontal position, in pixels, where the image should be rendered onto a raster display"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p0, v1

    const-string v0, "VerticalPixelOffset"

    const-string v1, "The vertical position, in pixels, where the image should be rendered onto a raster display"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p0, v1

    const-string v0, "HorizontalScreenSize"

    const-string v1, "The width, in pixels, of the raster display into which the image should be rendered"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p0, v1

    const-string v0, "VerticalScreenSize"

    const-string v1, "The height, in pixels, of the raster display into which the image should be rendered"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, p0, v1

    const-string v0, "Document"

    const-string v1, "Document information"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p0, v1

    const-string v0, "FormatVersion"

    const-string v1, "The version of the format used by the stream"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, p0, v1

    const-string v0, "SubimageInterpretation"

    const-string v1, "The interpretation of this image in relation to the other images stored in the same stream"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, p0, v1

    const-string v0, "ImageCreationTime"

    const-string v1, "The time of image creation"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p0, v1

    const-string v0, "ImageCreationTime/year"

    const-string v1, "The full year (e.g., 1967, not 67)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x30

    aput-object v0, p0, v2

    const-string v0, "ImageCreationTime/month"

    const-string v2, "The month, with January = 1"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x31

    aput-object v0, p0, v3

    const-string v0, "ImageCreationTime/day"

    const-string v3, "The day of the month"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x32

    aput-object v0, p0, v4

    const-string v0, "ImageCreationTime/hour"

    const-string v4, "The hour from 0 to 23"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x33

    aput-object v0, p0, v5

    const-string v0, "ImageCreationTime/minute"

    const-string v5, "The minute from 0 to 59"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x34

    aput-object v0, p0, v6

    const-string v0, "ImageCreationTime/second"

    const-string v6, "The second from 0 to 60 (60 = leap second)"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x35

    aput-object v0, p0, v7

    const-string v0, "ImageModificationTime"

    const-string v7, "The time of the last image modification"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x36

    aput-object v0, p0, v7

    const-string v0, "ImageModificationTime/year"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x37

    aput-object v0, p0, v1

    const-string v0, "ImageModificationTime/month"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x38

    aput-object v0, p0, v1

    const-string v0, "ImageModificationTime/day"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x39

    aput-object v0, p0, v1

    const-string v0, "ImageModificationTime/hour"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3a

    aput-object v0, p0, v1

    const-string v0, "ImageModificationTime/minute"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3b

    aput-object v0, p0, v1

    const-string v0, "ImageModificationTime/second"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3c

    aput-object v0, p0, v1

    const-string v0, "Text"

    const-string v1, "Text information"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3d

    aput-object v0, p0, v1

    const-string v0, "TextEntry"

    const-string v1, "A text entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e

    aput-object v0, p0, v1

    const-string v0, "TextEntry/keyword"

    const-string v1, "A keyword associated with the text entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3f

    aput-object v0, p0, v1

    const-string v0, "TextEntry/value"

    const-string v1, "the text entry"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x40

    aput-object v0, p0, v1

    const-string v0, "TextEntry/language"

    const-string v1, "The language of the text"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x41

    aput-object v0, p0, v1

    const-string v0, "TextEntry/encoding"

    const-string v1, "The encoding of the text"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x42

    aput-object v0, p0, v1

    const-string v0, "TextEntry/compression"

    const-string v1, "The method used to compress the text"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x43

    aput-object v0, p0, v1

    const-string v0, "Transparency"

    const-string v1, "Transparency information"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x44

    aput-object v0, p0, v1

    const-string v0, "Alpha"

    const-string v1, "The type of alpha information contained in the image"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x45

    aput-object v0, p0, v1

    const-string v0, "TransparentIndex"

    const-string v1, "A palette index to be treated as transparent"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x46

    aput-object v0, p0, v1

    const-string v0, "TransparentColor"

    const-string v1, "An RGB color to be treated as transparent"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x47

    aput-object v0, p0, v1

    const-string v0, "TransparentColor/red"

    const-string v1, "The red channel of the transparent color"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x48

    aput-object v0, p0, v1

    const-string v0, "TransparentColor/green"

    const-string v1, "The green channel of the transparent color"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x49

    aput-object v0, p0, v1

    const-string v0, "TransparentColor/blue"

    const-string v1, "The blue channel of the transparent color"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4a

    aput-object v0, p0, v1

    const-string v0, "TileTransparencies"

    const-string v1, "A list of completely transparent tiles"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4b

    aput-object v0, p0, v1

    const-string v0, "TransparentTile"

    const-string v1, "The index of a completely transparent tile"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4c

    aput-object v0, p0, v1

    const-string v0, "TransparentTile/x"

    const-string v1, "The tile\'s X index"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x4d

    aput-object v0, p0, v2

    const-string v0, "TransparentTile/y"

    const-string v2, "The tile\'s Y index"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x4e

    aput-object v0, p0, v3

    const-string v0, "TileOpacities"

    const-string v3, "A list of completely opaque tiles"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x4f

    aput-object v0, p0, v3

    const-string v0, "OpaqueTile"

    const-string v3, "The index of a completely opaque tile"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x50

    aput-object v0, p0, v3

    const-string v0, "OpaqueTile/x"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x51

    aput-object v0, p0, v1

    const-string v0, "OpaqueTile/y"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x52

    aput-object v0, p0, v1

    return-object p0
.end method
