.class public Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;
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
    name = "WmfArc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;
    }
.end annotation


# instance fields
.field protected final bounds:Ljava/awt/geom/Rectangle2D;

.field protected final endPoint:Ljava/awt/geom/Point2D;

.field protected final startPoint:Ljava/awt/geom/Point2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->startPoint:Ljava/awt/geom/Point2D;

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->endPoint:Ljava/awt/geom/Point2D;

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->handler:Ljava/util/function/BiConsumer;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->getShape()Ljava/awt/geom/Arc2D;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getArcClosure()Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfDraw$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfRecordType:[I

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->ARC:Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->PIE:Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->CHORD:Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    return-object p0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getEndPoint()Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->endPoint:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method public getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->getArcClosure()Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->drawStyle:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->getShape()Ljava/awt/geom/Arc2D;

    move-result-object v0

    const-string v1, "startPoint"

    new-instance v2, Lcom/sunia/HTREnginev2/a2i;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/a2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;)V

    const-string v3, "endPoint"

    new-instance v4, Lcom/sunia/HTREnginev2/b2i;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/b2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;)V

    const-string v5, "startAngle"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/sunia/HTREnginev2/c2i;

    invoke-direct {v6, v0}, Lcom/sunia/HTREnginev2/c2i;-><init>(Ljava/awt/geom/Arc2D;)V

    const-string v7, "extentAngle"

    new-instance v8, Lcom/sunia/HTREnginev2/d2i;

    invoke-direct {v8, v0}, Lcom/sunia/HTREnginev2/d2i;-><init>(Ljava/awt/geom/Arc2D;)V

    const-string v9, "bounds"

    new-instance v10, Lcom/sunia/HTREnginev2/e2i;

    invoke-direct {v10, p0}, Lcom/sunia/HTREnginev2/e2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;)V

    invoke-static/range {v1 .. v10}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getShape()Ljava/awt/geom/Arc2D;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->startPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v3

    sub-double/2addr v1, v3

    neg-double v1, v1

    iget-object v3, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->startPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v3}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v5}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->endPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v3}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v5}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v5

    sub-double/2addr v3, v5

    neg-double v3, v3

    iget-object v5, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->endPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v7}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    sub-double/2addr v3, v1

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/16 v7, 0x168

    :goto_0
    int-to-double v7, v7

    add-double v20, v3, v7

    cmpg-double v3, v1, v5

    if-gez v3, :cond_1

    const-wide v3, 0x4076800000000000L    # 360.0

    add-double/2addr v1, v3

    :cond_1
    move-wide/from16 v18, v1

    new-instance v1, Ljava/awt/geom/Arc2D$Double;

    iget-object v2, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v10

    iget-object v2, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v12

    iget-object v2, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v14

    iget-object v2, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->getArcClosure()Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    move-result-object v0

    iget v0, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->awtType:I

    move-object v9, v1

    move/from16 v22, v0

    invoke-direct/range {v9 .. v22}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    return-object v1
.end method

.method public getStartPoint()Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->startPoint:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->arc:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->endPoint:Ljava/awt/geom/Point2D;

    invoke-static {p1, p2}, Lorg/apache/poi/hwmf/record/HwmfDraw;->readPointS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I

    iget-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->startPoint:Ljava/awt/geom/Point2D;

    invoke-static {p1, p2}, Lorg/apache/poi/hwmf/record/HwmfDraw;->readPointS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p0}, Lorg/apache/poi/hwmf/record/HwmfDraw;->readBounds(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    const/16 p0, 0x10

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
