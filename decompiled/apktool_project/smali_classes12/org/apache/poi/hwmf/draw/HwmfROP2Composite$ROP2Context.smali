.class Lorg/apache/poi/hwmf/draw/HwmfROP2Composite$ROP2Context;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/CompositeContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/draw/HwmfROP2Composite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ROP2Context"
.end annotation


# instance fields
.field private final op:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfROP2Composite$ROP2Context;->op:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    return-void
.end method


# virtual methods
.method public compose(Ljava/awt/image/Raster;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)V
    .locals 11

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Ljava/awt/image/Raster;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Ljava/awt/image/Raster;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v8, v0, [I

    new-array v9, v0, [I

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v1, :cond_0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move v4, v10

    move v5, v0

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-object v2, p2

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfROP2Composite$ROP2Context;->op:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    invoke-virtual {v2, v8, v9}, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->process([I[I)V

    move-object v2, p3

    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method
