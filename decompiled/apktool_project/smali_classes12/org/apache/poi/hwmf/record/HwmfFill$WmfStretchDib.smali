.class public Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;
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
    name = "WmfStretchDib"
.end annotation


# instance fields
.field protected final bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

.field protected colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

.field protected final dstBounds:Ljava/awt/geom/Rectangle2D;

.field protected rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

.field protected final srcBounds:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->srcBounds:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->dstBounds:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 10

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setRasterOp3(Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-virtual {v1}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getPenColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBackgroundColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBkMode()Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    move-result-object v0

    sget-object v4, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;->TRANSPARENT:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->srcBounds:Ljava/awt/geom/Rectangle2D;

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1, v0, v1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->dstBounds:Ljava/awt/geom/Rectangle2D;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->drawImage(Lorg/apache/poi/sl/draw/ImageRenderer;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getBMPData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getBMPData()[B

    move-result-object p0

    return-object p0
.end method

.method public getBitmap()Lorg/apache/poi/hwmf/record/HwmfBitmapDib;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    return-object p0
.end method

.method public getColorUsage()Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    return-object p0
.end method

.method public getDstBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->dstBounds:Ljava/awt/geom/Rectangle2D;

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

    new-instance v1, Lcom/sunia/HTREnginev2/g4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;)V

    const-string v2, "colorUsage"

    new-instance v3, Lcom/sunia/HTREnginev2/h4i;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/h4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;)V

    const-string v4, "srcBounds"

    new-instance v5, Lcom/sunia/HTREnginev2/i4i;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/i4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;)V

    const-string v6, "dstBounds"

    new-instance v7, Lcom/sunia/HTREnginev2/j4i;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/j4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getRasterOperation()Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    return-object p0
.end method

.method public getSrcBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->srcBounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->stretchDib:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/poi/hwmf/record/HwmfFill;->access$000(Lorg/apache/poi/util/LittleEndianInputStream;)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p4

    invoke-static {p4}, Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->srcBounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p4}, Lorg/apache/poi/hwmf/record/HwmfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result p4

    add-int/lit8 p4, p4, 0x6

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, v0}, Lorg/apache/poi/hwmf/record/HwmfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result v0

    add-int/2addr p4, v0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    const-wide/16 v0, 0x6

    sub-long/2addr p2, v0

    int-to-long v0, p4

    sub-long/2addr p2, v0

    long-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->init(Lorg/apache/poi/util/LittleEndianInputStream;I)I

    move-result p0

    add-int/2addr p4, p0

    return p4
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
