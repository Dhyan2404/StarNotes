.class public Lcom/sun/imageio/plugins/bmp/BMPMetadataFormatResources;
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
    .locals 4

    const/16 p0, 0x14

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "BMPVersion"

    const-string v1, "BMP version string"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "Width"

    const-string v1, "The width of the image"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "Height"

    const-string v1, "The height of the image"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "BitsPerPixel"

    const-string v1, ""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "PixelsPerMeter"

    const-string v1, "Resolution in pixels per unit distance"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "Pixels Per Meter along X"

    const-string v1, "X"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, p0, v2

    const-string v0, "Pixels Per Meter along Y"

    const-string v2, "Y"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, p0, v3

    const-string v0, "ColorsUsed"

    const-string v3, "Number of color indexes in the color table actually used"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, p0, v3

    const-string v0, "ColorsImportant"

    const-string v3, "Number of color indexes considered important for display"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, p0, v3

    const-string v0, "Mask"

    const-string v3, "Color masks; present for BI_BITFIELDS compression only"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, p0, v3

    const-string v0, "Intent"

    const-string v3, "Rendering intent"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0xa

    aput-object v0, p0, v3

    const-string v0, "Palette"

    const-string v3, "The color palette"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0xb

    aput-object v0, p0, v3

    const-string v0, "Red"

    const-string v3, "Red Mask/Color Palette"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0xc

    aput-object v0, p0, v3

    const-string v0, "Green"

    const-string v3, "Green Mask/Color Palette/Gamma"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0xd

    aput-object v0, p0, v3

    const-string v0, "Blue"

    const-string v3, "Blue Mask/Color Palette/Gamma"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0xe

    aput-object v0, p0, v3

    const-string v0, "Alpha"

    const-string v3, "Alpha Mask/Color Palette/Gamma"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0xf

    aput-object v0, p0, v3

    const-string v0, "ColorSpaceType"

    const-string v3, "Color Space Type"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x10

    aput-object v0, p0, v3

    const-string v0, "The X coordinate of a point in XYZ color space"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "The Y coordinate of a point in XYZ color space"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "Z"

    const-string v1, "The Z coordinate of a point in XYZ color space"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    return-object p0
.end method
