.class public Lsun/java2d/loops/XorPixelWriter$FloatData;
.super Lsun/java2d/loops/XorPixelWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/XorPixelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatData"
.end annotation


# instance fields
.field xorData:[I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Lsun/java2d/loops/XorPixelWriter;-><init>()V

    check-cast p1, [F

    check-cast p2, [F

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lsun/java2d/loops/XorPixelWriter$FloatData;->xorData:[I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/java2d/loops/XorPixelWriter$FloatData;->xorData:[I

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    aget v3, p2, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, v1, v0

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
    .locals 3

    check-cast p1, [F

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget-object v2, p0, Lsun/java2d/loops/XorPixelWriter$FloatData;->xorData:[I

    aget v2, v2, v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
