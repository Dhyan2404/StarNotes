.class public Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;
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
    name = "WmfSetWindowOrg"
.end annotation


# instance fields
.field protected final origin:Ljava/awt/geom/Point2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;->origin:Ljava/awt/geom/Point2D;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getWindow()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;->getX()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;->getY()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;->getX()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;->getY()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setWindowOrg(DD)V

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->updateWindowMapMode()V

    :cond_1
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

    new-instance v0, Lcom/sunia/HTREnginev2/nbi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/nbi;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;)V

    const-string p0, "origin"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getOrigin()Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;->origin:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->setWindowOrg:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public getX()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;->origin:Ljava/awt/geom/Point2D;

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;->origin:Ljava/awt/geom/Point2D;

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;->origin:Ljava/awt/geom/Point2D;

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
