.class public Lcom/sunia/commonv2/bean/PointsToBitmapResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitmapByteArray:[B

.field private height:F

.field private width:F


# direct methods
.method public constructor <init>([BFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/commonv2/bean/PointsToBitmapResult;->bitmapByteArray:[B

    iput p2, p0, Lcom/sunia/commonv2/bean/PointsToBitmapResult;->width:F

    iput p3, p0, Lcom/sunia/commonv2/bean/PointsToBitmapResult;->height:F

    return-void
.end method


# virtual methods
.method public getBitmapByteArray()[B
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/PointsToBitmapResult;->bitmapByteArray:[B

    return-object p0
.end method

.method public getHeight()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/PointsToBitmapResult;->height:F

    return p0
.end method

.method public getWidth()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/PointsToBitmapResult;->width:F

    return p0
.end method
