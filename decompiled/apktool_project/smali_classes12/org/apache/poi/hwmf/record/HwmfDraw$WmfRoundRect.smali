.class public Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;
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
    name = "WmfRoundRect"
.end annotation


# instance fields
.field protected final bounds:Ljava/awt/geom/Rectangle2D;

.field protected final corners:Ljava/awt/geom/Dimension2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-direct {v0}, Lorg/apache/poi/util/Dimension2DDouble;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;->corners:Ljava/awt/geom/Dimension2D;

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;->bounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;->getShape()Ljava/awt/geom/RoundRectangle2D;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->fill(Ljava/awt/Shape;)V

    return-void
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getCorners()Ljava/awt/geom/Dimension2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;->corners:Ljava/awt/geom/Dimension2D;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/o2i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/o2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;)V

    new-instance v1, Lcom/sunia/HTREnginev2/p2i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/p2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;)V

    const-string p0, "bounds"

    const-string v2, "corners"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getShape()Ljava/awt/geom/RoundRectangle2D;
    .locals 14

    new-instance v13, Ljava/awt/geom/RoundRectangle2D$Double;

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;->corners:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v9

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;->corners:Ljava/awt/geom/Dimension2D;

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v11

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Ljava/awt/geom/RoundRectangle2D$Double;-><init>(DDDDDD)V

    return-object v13
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->roundRect:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p3

    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;->corners:Ljava/awt/geom/Dimension2D;

    int-to-double v0, p3

    int-to-double p2, p2

    invoke-virtual {p4, v0, v1, p2, p3}, Ljava/awt/geom/Dimension2D;->setSize(DD)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p0}, Lorg/apache/poi/hwmf/record/HwmfDraw;->readBounds(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method
