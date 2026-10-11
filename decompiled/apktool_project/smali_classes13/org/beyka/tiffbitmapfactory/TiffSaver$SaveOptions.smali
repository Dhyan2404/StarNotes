.class public final Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/beyka/tiffbitmapfactory/TiffSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SaveOptions"
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public compressionScheme:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

.field public copyright:Ljava/lang/String;

.field public imageDescription:Ljava/lang/String;

.field public inAvailableMemory:J

.field public inThrowException:Z

.field public orientation:Lorg/beyka/tiffbitmapfactory/Orientation;

.field public resUnit:Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

.field public xResolution:F

.field public yResolution:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xf424000

    iput-wide v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->inAvailableMemory:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->inThrowException:Z

    sget-object v0, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->NONE:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->compressionScheme:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    sget-object v0, Lorg/beyka/tiffbitmapfactory/Orientation;->TOP_LEFT:Lorg/beyka/tiffbitmapfactory/Orientation;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->orientation:Lorg/beyka/tiffbitmapfactory/Orientation;

    const/4 v0, 0x0

    iput v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->xResolution:F

    iput v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->yResolution:F

    sget-object v0, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;->NONE:Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->resUnit:Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    return-void
.end method
