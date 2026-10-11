.class public Lsun/java2d/loops/XorPixelWriter$DoubleData;
.super Lsun/java2d/loops/XorPixelWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/XorPixelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleData"
.end annotation


# instance fields
.field xorData:[J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-direct {p0}, Lsun/java2d/loops/XorPixelWriter;-><init>()V

    check-cast p1, [D

    check-cast p2, [D

    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lsun/java2d/loops/XorPixelWriter$DoubleData;->xorData:[J

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/java2d/loops/XorPixelWriter$DoubleData;->xorData:[J

    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    aget-wide v4, p2, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic setRaster(Ljava/awt/image/WritableRaster;)V
    .locals 0

    invoke-super {p0, p1}, Lsun/java2d/loops/PixelWriter;->setRaster(Ljava/awt/image/WritableRaster;)V

    return-void
.end method

.method public bridge synthetic writePixel(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lsun/java2d/loops/XorPixelWriter;->writePixel(II)V

    return-void
.end method

.method public xorPixel(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, [D

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v1, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-object v3, p0, Lsun/java2d/loops/XorPixelWriter$DoubleData;->xorData:[J

    aget-wide v3, v3, v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
