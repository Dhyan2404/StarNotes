.class public Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfFrameRegion"
.end annotation


# instance fields
.field protected brushIndex:I

.field protected final frame:Ljava/awt/geom/Dimension2D;

.field protected regionIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-direct {v0}, Lorg/apache/poi/util/Dimension2DDouble;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;->frame:Ljava/awt/geom/Dimension2D;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 14

    iget v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;->brushIndex:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->applyObjectTableEntry(I)V

    iget v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;->regionIndex:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->applyObjectTableEntry(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getRegion()Ljava/awt/Shape;

    move-result-object v0

    invoke-interface {v0}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;->frame:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v3}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v3

    sub-double v6, v1, v3

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;->frame:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v3}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v3

    sub-double v8, v1, v3

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;->frame:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v3}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v10

    add-double/2addr v1, v3

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;->frame:Ljava/awt/geom/Dimension2D;

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v12

    mul-double/2addr v12, v10

    add-double/2addr v12, v3

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v5, p0

    move-wide v10, v1

    invoke-direct/range {v5 .. v13}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    new-instance v1, Ljava/awt/geom/Area;

    invoke-direct {v1, p0}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    new-instance p0, Ljava/awt/geom/Area;

    invoke-direct {p0, v0}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    invoke-virtual {v1, p0}, Ljava/awt/geom/Area;->subtract(Ljava/awt/geom/Area;)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->fill(Ljava/awt/Shape;)V

    return-void
.end method

.method public getBrushIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;->brushIndex:I

    return p0
.end method

.method public getFrame()Ljava/awt/geom/Dimension2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;->frame:Ljava/awt/geom/Dimension2D;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "regionIndex"

    new-instance v1, Lcom/sunia/HTREnginev2/g2i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;)V

    const-string v2, "brushIndex"

    new-instance v3, Lcom/sunia/HTREnginev2/h2i;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/h2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;)V

    const-string v4, "frame"

    new-instance v5, Lcom/sunia/HTREnginev2/i2i;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/i2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRegionIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;->regionIndex:I

    return p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->frameRegion:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;->regionIndex:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;->brushIndex:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p1

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;->frame:Ljava/awt/geom/Dimension2D;

    int-to-double p3, p1

    int-to-double p1, p2

    invoke-virtual {p0, p3, p4, p1, p2}, Ljava/awt/geom/Dimension2D;->setSize(DD)V

    const/16 p0, 0x8

    return p0
.end method
