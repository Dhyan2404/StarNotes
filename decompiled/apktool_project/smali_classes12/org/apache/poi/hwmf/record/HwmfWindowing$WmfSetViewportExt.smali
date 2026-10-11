.class public Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetViewportExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfWindowing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfSetViewportExt"
.end annotation


# instance fields
.field protected final extents:Ljava/awt/geom/Dimension2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-direct {v0}, Lorg/apache/poi/util/Dimension2DDouble;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetViewportExt;->extents:Ljava/awt/geom/Dimension2D;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 8

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getViewport()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetViewportExt;->extents:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v6

    cmpl-double v1, v4, v6

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetViewportExt;->extents:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetViewportExt;->extents:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v1

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetViewportExt;->extents:Ljava/awt/geom/Dimension2D;

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setViewportExt(DD)V

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->updateWindowMapMode()V

    :cond_3
    return-void
.end method

.method public getExtents()Ljava/awt/geom/Dimension2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetViewportExt;->extents:Ljava/awt/geom/Dimension2D;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/kbi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/kbi;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetViewportExt;)V

    const-string p0, "extents"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->setViewportExt:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p1

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetViewportExt;->extents:Ljava/awt/geom/Dimension2D;

    int-to-double p3, p1

    int-to-double p1, p2

    invoke-virtual {p0, p3, p4, p1, p2}, Ljava/awt/geom/Dimension2D;->setSize(DD)V

    const/4 p0, 0x4

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
