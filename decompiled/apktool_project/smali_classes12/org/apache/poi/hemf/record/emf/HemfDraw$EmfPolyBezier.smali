.class public Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;
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
    name = "EmfPolyBezier"
.end annotation


# instance fields
.field private final bounds:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->bounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;Ljava/awt/geom/Path2D;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->lambda$draw$0(Ljava/awt/geom/Path2D;)V

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$draw$0(Ljava/awt/geom/Path2D;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->hasStartPoint()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, v0, p0}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    return-void
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addClose()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1, p0}, Ljava/awt/geom/Rectangle2D;->setRect(Ljava/awt/geom/Rectangle2D;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1, p0}, Ljava/awt/geom/Rectangle2D;->add(Ljava/awt/geom/Rectangle2D;)V

    :goto_0
    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/bhh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/bhh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;)V

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->draw(Ljava/util/function/Consumer;Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V

    return-void
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->polyBezier:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->DRAW:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

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

    new-instance v0, Lcom/sunia/HTREnginev2/chh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/chh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;)V

    new-instance v1, Lcom/sunia/HTREnginev2/dhh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dhh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;)V

    const-string p0, "base"

    const-string v2, "bounds"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public hasStartPoint()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {v1, v2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v4

    long-to-int v4, v4

    const/16 v5, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const-wide/16 v5, 0x4

    add-long/2addr v2, v5

    new-instance v5, Ljava/awt/geom/Path2D$Double;

    add-int/lit8 v6, v4, 0x2

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6}, Ljava/awt/geom/Path2D$Double;-><init>(II)V

    iput-object v5, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/awt/geom/Point2D;

    new-instance v6, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v6}, Ljava/awt/geom/Point2D$Double;-><init>()V

    aput-object v6, v5, v7

    new-instance v6, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v6}, Ljava/awt/geom/Point2D$Double;-><init>()V

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-instance v6, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v6}, Ljava/awt/geom/Point2D$Double;-><init>()V

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->hasStartPoint()Z

    move-result v6

    if-eqz v6, :cond_0

    if-lez v4, :cond_1

    aget-object v6, v5, v7

    invoke-virtual {v0, v1, v6}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->readPoint(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide v10

    add-long/2addr v2, v10

    iget-object v6, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    aget-object v10, v5, v7

    invoke-virtual {v10}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v10

    aget-object v12, v5, v7

    invoke-virtual {v12}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v12

    invoke-virtual {v6, v10, v11, v12, v13}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    move v6, v8

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v10, v11, v10, v11}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    :cond_1
    move v6, v7

    :goto_0
    add-int/lit8 v10, v6, 0x2

    if-ge v10, v4, :cond_2

    aget-object v10, v5, v7

    invoke-virtual {v0, v1, v10}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->readPoint(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide v10

    add-long/2addr v2, v10

    aget-object v10, v5, v8

    invoke-virtual {v0, v1, v10}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->readPoint(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide v10

    add-long/2addr v2, v10

    aget-object v10, v5, v9

    invoke-virtual {v0, v1, v10}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;->readPoint(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide v10

    add-long/2addr v2, v10

    iget-object v10, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    aget-object v11, v5, v7

    invoke-virtual {v11}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v11

    aget-object v13, v5, v7

    invoke-virtual {v13}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v13

    aget-object v15, v5, v8

    invoke-virtual {v15}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v15

    aget-object v17, v5, v8

    invoke-virtual/range {v17 .. v17}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v17

    aget-object v19, v5, v9

    invoke-virtual/range {v19 .. v19}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v19

    aget-object v21, v5, v9

    invoke-virtual/range {v21 .. v21}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v21

    invoke-virtual/range {v10 .. v22}, Ljava/awt/geom/Path2D;->curveTo(DDDDDD)V

    add-int/lit8 v6, v6, 0x3

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public readPoint(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readPointL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide p0

    return-wide p0
.end method
