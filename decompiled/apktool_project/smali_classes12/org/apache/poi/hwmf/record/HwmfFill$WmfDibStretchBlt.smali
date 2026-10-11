.class public Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;
.implements Lorg/apache/poi/hwmf/record/HwmfFill$HwmfImageRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfDibStretchBlt"
.end annotation


# instance fields
.field protected final dstBounds:Ljava/awt/geom/Rectangle2D;

.field protected rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

.field protected final srcBounds:Ljava/awt/geom/Rectangle2D;

.field protected target:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->srcBounds:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->dstBounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setRasterOp3(Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->target:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBkMode()Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;->TRANSPARENT:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    invoke-virtual {v0, v2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBkMode(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;)V

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getPenColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBackgroundColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->target:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->srcBounds:Ljava/awt/geom/Rectangle2D;

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1, v2, v3, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBkMode(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;)V

    :cond_0
    return-void
.end method

.method public getBMPData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->target:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->target:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getBMPData()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getDstBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->dstBounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "rasterOperation"

    new-instance v1, Lcom/sunia/HTREnginev2/i3i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/i3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;)V

    const-string v2, "srcBounds"

    new-instance v3, Lcom/sunia/HTREnginev2/j3i;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/j3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;)V

    const-string v4, "dstBounds"

    new-instance v5, Lcom/sunia/HTREnginev2/k3i;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/k3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;)V

    const-string v6, "target"

    new-instance v7, Lcom/sunia/HTREnginev2/l3i;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/l3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->target:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->target:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRasterOperation()Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    return-object p0
.end method

.method public getSrcBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->srcBounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getTarget()Lorg/apache/poi/hwmf/record/HwmfBitmapDib;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->target:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->dibStretchBlt:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3, p4}, Lorg/apache/poi/hwmf/record/HwmfFill;->access$100(JI)Z

    move-result p4

    invoke-static {p1}, Lorg/apache/poi/hwmf/record/HwmfFill;->access$000(Lorg/apache/poi/util/LittleEndianInputStream;)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->srcBounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, v0}, Lorg/apache/poi/hwmf/record/HwmfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    add-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, v1}, Lorg/apache/poi/hwmf/record/HwmfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result v1

    add-int/2addr v0, v1

    if-eqz p4, :cond_1

    new-instance p4, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-direct {p4}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;-><init>()V

    iput-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->target:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    const-wide/16 v1, 0x6

    sub-long/2addr p2, v1

    int-to-long v1, v0

    sub-long/2addr p2, v1

    long-to-int p0, p2

    invoke-virtual {p4, p1, p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->init(Lorg/apache/poi/util/LittleEndianInputStream;I)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method
