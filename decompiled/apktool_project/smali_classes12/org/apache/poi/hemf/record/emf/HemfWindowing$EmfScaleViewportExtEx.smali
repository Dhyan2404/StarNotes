.class public Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfScaleViewportExtEx;
.super Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScaleViewportExt;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfWindowing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfScaleViewportExtEx"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScaleViewportExt;-><init>()V

    return-void
.end method


# virtual methods
.method public calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V
    .locals 11

    invoke-interface {p1}, Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;->getViewport()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    iget-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScaleViewportExt;->scale:Ljava/awt/geom/Dimension2D;

    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v9

    mul-double/2addr v5, v9

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScaleViewportExt;->scale:Ljava/awt/geom/Dimension2D;

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide p0

    mul-double/2addr v7, p0

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->scaleViewportExtEx:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfScaleViewportExtEx;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfScaleViewportExtEx;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScaleViewportExt;->scale:Ljava/awt/geom/Dimension2D;

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfWindowing;->access$000(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Dimension2D;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
