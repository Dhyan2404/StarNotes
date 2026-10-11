.class public Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfArcTo;
.super Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfArcTo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/awt/geom/Arc2D;Ljava/awt/geom/Path2D;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfArcTo;->lambda$draw$0(Ljava/awt/geom/Arc2D;Ljava/awt/geom/Path2D;)V

    return-void
.end method

.method private static synthetic lambda$draw$0(Ljava/awt/geom/Arc2D;Ljava/awt/geom/Path2D;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    return-void
.end method


# virtual methods
.method public calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1, p0}, Ljava/awt/geom/Rectangle2D;->setRect(Ljava/awt/geom/Rectangle2D;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1, p0}, Ljava/awt/geom/Rectangle2D;->add(Ljava/awt/geom/Rectangle2D;)V

    :goto_0
    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->getShape()Ljava/awt/geom/Arc2D;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/wgh;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/wgh;-><init>(Ljava/awt/geom/Arc2D;)V

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->draw(Ljava/util/function/Consumer;Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->arcTo:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfArcTo;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfArcTo;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    iget-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide p2

    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->startPoint:Ljava/awt/geom/Point2D;

    invoke-static {p1, p4}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readPointL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide p4

    add-long/2addr p2, p4

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->endPoint:Ljava/awt/geom/Point2D;

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readPointL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide p0

    add-long/2addr p2, p0

    return-wide p2
.end method
