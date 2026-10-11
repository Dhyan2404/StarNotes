.class public final Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/beyka/tiffbitmapfactory/TiffConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConverterOptions"
.end annotation


# instance fields
.field public appendTiff:Z

.field public availableMemory:J

.field public compressionScheme:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

.field public imageDescription:Ljava/lang/String;

.field private volatile isStoped:Z

.field public readTiffDirectory:I

.field public resUnit:Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

.field public software:Ljava/lang/String;

.field public throwExceptions:Z

.field public xResolution:F

.field public yResolution:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xf424000

    iput-wide v0, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->availableMemory:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->appendTiff:Z

    sget-object v1, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;->NONE:Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    iput-object v1, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->resUnit:Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    sget-object v1, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->NONE:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    iput-object v1, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->compressionScheme:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->throwExceptions:Z

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->isStoped:Z

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->isStoped:Z

    return-void
.end method
