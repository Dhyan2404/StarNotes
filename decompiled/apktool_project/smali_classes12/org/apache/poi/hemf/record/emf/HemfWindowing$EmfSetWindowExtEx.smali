.class public Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfSetWindowExtEx;
.super Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowExt;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfWindowing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfSetWindowExtEx"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowExt;-><init>()V

    return-void
.end method


# virtual methods
.method public calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V
    .locals 9

    invoke-interface {p1}, Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;->getWindow()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    iget-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowExt;->size:Ljava/awt/geom/Dimension2D;

    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v5

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowExt;->size:Ljava/awt/geom/Dimension2D;

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v7

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->setWindowExtEx:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfSetWindowExtEx;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfWindowing$EmfSetWindowExtEx;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowExt;->size:Ljava/awt/geom/Dimension2D;

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readDimensionInt(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Dimension2D;)J

    move-result-wide p0

    return-wide p0
.end method
