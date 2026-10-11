.class final Ljava/awt/image/DataBuffer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/awt/image/SunWritableRaster$DataStealer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/image/DataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(Ljava/awt/image/DataBufferByte;I)[B
    .locals 0

    .line 1
    iget-object p0, p1, Ljava/awt/image/DataBufferByte;->bankdata:[[B

    aget-object p0, p0, p2

    return-object p0
.end method

.method public getData(Ljava/awt/image/DataBufferInt;I)[I
    .locals 0

    .line 3
    iget-object p0, p1, Ljava/awt/image/DataBufferInt;->bankdata:[[I

    aget-object p0, p0, p2

    return-object p0
.end method

.method public getData(Ljava/awt/image/DataBufferUShort;I)[S
    .locals 0

    .line 2
    iget-object p0, p1, Ljava/awt/image/DataBufferUShort;->bankdata:[[S

    aget-object p0, p0, p2

    return-object p0
.end method

.method public getTrackable(Ljava/awt/image/DataBuffer;)Lsun/java2d/StateTrackableDelegate;
    .locals 0

    iget-object p0, p1, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    return-object p0
.end method

.method public setTrackable(Ljava/awt/image/DataBuffer;Lsun/java2d/StateTrackableDelegate;)V
    .locals 0

    iput-object p2, p1, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    return-void
.end method
