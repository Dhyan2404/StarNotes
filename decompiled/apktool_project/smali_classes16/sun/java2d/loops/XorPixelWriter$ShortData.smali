.class public Lsun/java2d/loops/XorPixelWriter$ShortData;
.super Lsun/java2d/loops/XorPixelWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/XorPixelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortData"
.end annotation


# instance fields
.field xorData:[S


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lsun/java2d/loops/XorPixelWriter;-><init>()V

    check-cast p1, [S

    iput-object p1, p0, Lsun/java2d/loops/XorPixelWriter$ShortData;->xorData:[S

    invoke-virtual {p0, p2}, Lsun/java2d/loops/XorPixelWriter$ShortData;->xorPixel(Ljava/lang/Object;)V

    check-cast p2, [S

    iput-object p2, p0, Lsun/java2d/loops/XorPixelWriter$ShortData;->xorData:[S

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
    .locals 3

    check-cast p1, [S

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-short v1, p1, v0

    iget-object v2, p0, Lsun/java2d/loops/XorPixelWriter$ShortData;->xorData:[S

    aget-short v2, v2, v0

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
