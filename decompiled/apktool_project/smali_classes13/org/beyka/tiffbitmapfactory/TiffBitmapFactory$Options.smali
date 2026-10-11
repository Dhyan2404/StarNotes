.class public final Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field public inAvailableMemory:J

.field public inDecodeArea:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$DecodeArea;

.field public inDirectoryNumber:I

.field public inJustDecodeBounds:Z

.field public inPreferredConfig:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

.field public inSampleSize:I

.field public inSwapRedBlueColors:Z

.field public inThrowException:Z

.field public inUseOrientationTag:Z

.field private volatile isStoped:Z

.field public outAuthor:Ljava/lang/String;

.field public outBitsPerSample:I

.field public outCompressionScheme:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

.field public outCopyright:Ljava/lang/String;

.field public outCurDirectoryNumber:I

.field public outDatetime:Ljava/lang/String;

.field public outDirectoryCount:I

.field public outFillOrder:Lorg/beyka/tiffbitmapfactory/FillOrder;

.field public outHeight:I

.field public outHostComputer:Ljava/lang/String;

.field public outImageDescription:Ljava/lang/String;

.field public outImageOrientation:Lorg/beyka/tiffbitmapfactory/Orientation;

.field public outNumberOfStrips:I

.field public outPhotometric:Lorg/beyka/tiffbitmapfactory/Photometric;

.field public outPlanarConfig:Lorg/beyka/tiffbitmapfactory/PlanarConfig;

.field public outResolutionUnit:Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

.field public outRowPerStrip:I

.field public outSamplePerPixel:I

.field public outSoftware:Ljava/lang/String;

.field public outStripSize:I

.field public outTileHeight:I

.field public outTileWidth:I

.field public outWidth:I

.field public outXResolution:F

.field public outYResolution:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;->ARGB_8888:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->inPreferredConfig:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

    const-string v0, ""

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->outAuthor:Ljava/lang/String;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->outCopyright:Ljava/lang/String;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->outImageDescription:Ljava/lang/String;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->outSoftware:Ljava/lang/String;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->outDatetime:Ljava/lang/String;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->outHostComputer:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->isStoped:Z

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->inThrowException:Z

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->inUseOrientationTag:Z

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->inSwapRedBlueColors:Z

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x1

    iput v1, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->inSampleSize:I

    iput v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->inDirectoryNumber:I

    const-wide/32 v0, 0xf424000

    iput-wide v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->inAvailableMemory:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->outWidth:I

    iput v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->outHeight:I

    iput v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->outDirectoryCount:I

    sget-object v0, Lorg/beyka/tiffbitmapfactory/Orientation;->UNAVAILABLE:Lorg/beyka/tiffbitmapfactory/Orientation;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->outImageOrientation:Lorg/beyka/tiffbitmapfactory/Orientation;

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->isStoped:Z

    return-void
.end method
