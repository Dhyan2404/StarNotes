.class public Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;
.super Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPolygon"
.end annotation


# instance fields
.field private final bounds:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;->bounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;Ljava/awt/geom/Path2D;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;->lambda$draw$0(Ljava/awt/geom/Path2D;)V

    return-void
.end method

.method private synthetic lambda$draw$0(Ljava/awt/geom/Path2D;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    return-void
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1, p0}, Ljava/awt/geom/Rectangle2D;->setRect(Ljava/awt/geom/Rectangle2D;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1, p0}, Ljava/awt/geom/Rectangle2D;->add(Ljava/awt/geom/Rectangle2D;)V

    :goto_0
    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/khh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/khh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;)V

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;->getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->draw(Ljava/util/function/Consumer;Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V

    return-void
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->polygon:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->FILL_DRAW:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

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

    new-instance v0, Lcom/sunia/HTREnginev2/lhh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lhh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;)V

    new-instance v1, Lcom/sunia/HTREnginev2/mhh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mhh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;)V

    const-string p0, "base"

    const-string v2, "bounds"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public hasStartPoint()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p4

    long-to-int p4, p4

    const/16 p5, 0x4000

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    const-wide/16 v0, 0x4

    add-long/2addr p2, v0

    new-instance p5, Ljava/awt/geom/Path2D$Double;

    const/4 v0, 0x0

    invoke-direct {p5, v0, p4}, Ljava/awt/geom/Path2D$Double;-><init>(II)V

    iput-object p5, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    new-instance p5, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p5}, Ljava/awt/geom/Point2D$Double;-><init>()V

    :goto_0
    if-ge v0, p4, :cond_2

    invoke-virtual {p0, p1, p5}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;->readPoint(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide v1

    add-long/2addr p2, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;->hasStartPoint()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    invoke-virtual {p5}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual {p5}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v2, v3}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    invoke-virtual {p5}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual {p5}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/Path2D;->lineTo(DD)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    invoke-virtual {p5}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual {p5}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/Path2D;->lineTo(DD)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez p4, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->addClose()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    invoke-virtual {p0}, Ljava/awt/geom/Path2D;->closePath()V

    :cond_3
    return-wide p2
.end method

.method public readPoint(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readPointL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide p0

    return-wide p0
.end method
