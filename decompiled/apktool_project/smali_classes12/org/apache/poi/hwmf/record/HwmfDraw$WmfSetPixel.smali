.class public Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSetPixel;
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
    name = "WmfSetPixel"
.end annotation


# instance fields
.field protected final colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

.field protected final point:Ljava/awt/geom/Point2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSetPixel;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSetPixel;->point:Ljava/awt/geom/Point2D;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 10

    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSetPixel;->point:Ljava/awt/geom/Point2D;

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSetPixel;->point:Ljava/awt/geom/Point2D;

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {p1, v9}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->fill(Ljava/awt/Shape;)V

    return-void
.end method

.method public getColorRef()Lorg/apache/poi/hwmf/record/HwmfColorRef;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSetPixel;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

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

    new-instance v0, Lcom/sunia/HTREnginev2/r2i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/r2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSetPixel;)V

    new-instance v1, Lcom/sunia/HTREnginev2/s2i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/s2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSetPixel;)V

    const-string p0, "colorRef"

    const-string v2, "point"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPoint()Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSetPixel;->point:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->setPixel:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSetPixel;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result p2

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSetPixel;->point:Ljava/awt/geom/Point2D;

    invoke-static {p1, p0}, Lorg/apache/poi/hwmf/record/HwmfDraw;->readPointS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I

    move-result p0

    add-int/2addr p2, p0

    return p2
.end method
