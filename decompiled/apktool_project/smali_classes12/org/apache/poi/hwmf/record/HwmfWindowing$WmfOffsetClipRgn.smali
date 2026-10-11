.class public Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfOffsetClipRgn;
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
    name = "WmfOffsetClipRgn"
.end annotation


# instance fields
.field protected final offset:Ljava/awt/geom/Point2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfOffsetClipRgn;->offset:Ljava/awt/geom/Point2D;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getClip()Ljava/awt/Shape;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/awt/geom/AffineTransform;

    invoke-direct {v1}, Ljava/awt/geom/AffineTransform;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfOffsetClipRgn;->offset:Ljava/awt/geom/Point2D;

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfOffsetClipRgn;->offset:Ljava/awt/geom/Point2D;

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v1, v0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_COPY:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->setClip(Ljava/awt/Shape;Lorg/apache/poi/hwmf/record/HwmfRegionMode;Z)V

    return-void
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

    new-instance v0, Lcom/sunia/HTREnginev2/yai;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/yai;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfOffsetClipRgn;)V

    const-string p0, "offset"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getOffset()Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfOffsetClipRgn;->offset:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->offsetClipRgn:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfOffsetClipRgn;->offset:Ljava/awt/geom/Point2D;

    invoke-static {p1, p0}, Lorg/apache/poi/hwmf/record/HwmfDraw;->readPointS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
