.class public Lsun/awt/image/SunWritableRaster;
.super Ljava/awt/image/WritableRaster;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/awt/image/SunWritableRaster$DataStealer;
    }
.end annotation


# static fields
.field private static stealer:Lsun/awt/image/SunWritableRaster$DataStealer;


# instance fields
.field private theTrackable:Lsun/java2d/StateTrackableDelegate;


# direct methods
.method public constructor <init>(Ljava/awt/image/SampleModel;Ljava/awt/Point;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/awt/image/WritableRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/Point;)V

    .line 2
    iget-object p1, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    invoke-static {p1}, Lsun/awt/image/SunWritableRaster;->stealTrackable(Ljava/awt/image/DataBuffer;)Lsun/java2d/StateTrackableDelegate;

    move-result-object p1

    iput-object p1, p0, Lsun/awt/image/SunWritableRaster;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/image/WritableRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    .line 4
    invoke-static {p2}, Lsun/awt/image/SunWritableRaster;->stealTrackable(Ljava/awt/image/DataBuffer;)Lsun/java2d/StateTrackableDelegate;

    move-result-object p1

    iput-object p1, p0, Lsun/awt/image/SunWritableRaster;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Ljava/awt/image/WritableRaster;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p5}, Ljava/awt/image/WritableRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Ljava/awt/image/WritableRaster;)V

    .line 6
    invoke-static {p2}, Lsun/awt/image/SunWritableRaster;->stealTrackable(Ljava/awt/image/DataBuffer;)Lsun/java2d/StateTrackableDelegate;

    move-result-object p1

    iput-object p1, p0, Lsun/awt/image/SunWritableRaster;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    return-void
.end method

.method public static makeTrackable(Ljava/awt/image/DataBuffer;)V
    .locals 2

    sget-object v0, Lsun/awt/image/SunWritableRaster;->stealer:Lsun/awt/image/SunWritableRaster$DataStealer;

    sget-object v1, Lsun/java2d/StateTrackable$State;->STABLE:Lsun/java2d/StateTrackable$State;

    invoke-static {v1}, Lsun/java2d/StateTrackableDelegate;->createInstance(Lsun/java2d/StateTrackable$State;)Lsun/java2d/StateTrackableDelegate;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lsun/awt/image/SunWritableRaster$DataStealer;->setTrackable(Ljava/awt/image/DataBuffer;Lsun/java2d/StateTrackableDelegate;)V

    return-void
.end method

.method public static markDirty(Ljava/awt/Image;)V
    .locals 0

    .line 5
    invoke-static {p0}, Lsun/java2d/SurfaceData;->getPrimarySurfaceData(Ljava/awt/Image;)Lsun/java2d/SurfaceData;

    move-result-object p0

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    return-void
.end method

.method public static markDirty(Ljava/awt/image/DataBuffer;)V
    .locals 1

    .line 1
    sget-object v0, Lsun/awt/image/SunWritableRaster;->stealer:Lsun/awt/image/SunWritableRaster$DataStealer;

    invoke-interface {v0, p0}, Lsun/awt/image/SunWritableRaster$DataStealer;->getTrackable(Ljava/awt/image/DataBuffer;)Lsun/java2d/StateTrackableDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public static markDirty(Ljava/awt/image/WritableRaster;)V
    .locals 1

    .line 2
    instance-of v0, p0, Lsun/awt/image/SunWritableRaster;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lsun/awt/image/SunWritableRaster;

    invoke-virtual {p0}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p0

    invoke-static {p0}, Lsun/awt/image/SunWritableRaster;->markDirty(Ljava/awt/image/DataBuffer;)V

    :goto_0
    return-void
.end method

.method public static setDataStealer(Lsun/awt/image/SunWritableRaster$DataStealer;)V
    .locals 1

    sget-object v0, Lsun/awt/image/SunWritableRaster;->stealer:Lsun/awt/image/SunWritableRaster$DataStealer;

    if-nez v0, :cond_0

    sput-object p0, Lsun/awt/image/SunWritableRaster;->stealer:Lsun/awt/image/SunWritableRaster$DataStealer;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string v0, "Attempt to set DataStealer twice"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setTrackable(Ljava/awt/image/DataBuffer;Lsun/java2d/StateTrackableDelegate;)V
    .locals 1

    sget-object v0, Lsun/awt/image/SunWritableRaster;->stealer:Lsun/awt/image/SunWritableRaster$DataStealer;

    invoke-interface {v0, p0, p1}, Lsun/awt/image/SunWritableRaster$DataStealer;->setTrackable(Ljava/awt/image/DataBuffer;Lsun/java2d/StateTrackableDelegate;)V

    return-void
.end method

.method public static stealData(Ljava/awt/image/DataBufferByte;I)[B
    .locals 1

    .line 1
    sget-object v0, Lsun/awt/image/SunWritableRaster;->stealer:Lsun/awt/image/SunWritableRaster$DataStealer;

    invoke-interface {v0, p0, p1}, Lsun/awt/image/SunWritableRaster$DataStealer;->getData(Ljava/awt/image/DataBufferByte;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static stealData(Ljava/awt/image/DataBufferInt;I)[I
    .locals 1

    .line 3
    sget-object v0, Lsun/awt/image/SunWritableRaster;->stealer:Lsun/awt/image/SunWritableRaster$DataStealer;

    invoke-interface {v0, p0, p1}, Lsun/awt/image/SunWritableRaster$DataStealer;->getData(Ljava/awt/image/DataBufferInt;I)[I

    move-result-object p0

    return-object p0
.end method

.method public static stealData(Ljava/awt/image/DataBufferUShort;I)[S
    .locals 1

    .line 2
    sget-object v0, Lsun/awt/image/SunWritableRaster;->stealer:Lsun/awt/image/SunWritableRaster$DataStealer;

    invoke-interface {v0, p0, p1}, Lsun/awt/image/SunWritableRaster$DataStealer;->getData(Ljava/awt/image/DataBufferUShort;I)[S

    move-result-object p0

    return-object p0
.end method

.method public static stealTrackable(Ljava/awt/image/DataBuffer;)Lsun/java2d/StateTrackableDelegate;
    .locals 1

    sget-object v0, Lsun/awt/image/SunWritableRaster;->stealer:Lsun/awt/image/SunWritableRaster$DataStealer;

    invoke-interface {v0, p0}, Lsun/awt/image/SunWritableRaster$DataStealer;->getTrackable(Ljava/awt/image/DataBuffer;)Lsun/java2d/StateTrackableDelegate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final markDirty()V
    .locals 0

    .line 6
    iget-object p0, p0, Lsun/awt/image/SunWritableRaster;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method
