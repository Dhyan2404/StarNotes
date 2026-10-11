.class public Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;
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
    name = "EmfPolyDraw"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bounds:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;->bounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;Ljava/awt/geom/Path2D;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;->lambda$draw$0(Ljava/awt/geom/Path2D;)V

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

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1, p0}, Ljava/awt/geom/Rectangle2D;->setRect(Ljava/awt/geom/Rectangle2D;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1, p0}, Ljava/awt/geom/Rectangle2D;->add(Ljava/awt/geom/Rectangle2D;)V

    :goto_0
    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ghh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ghh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;)V

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;->getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->draw(Ljava/util/function/Consumer;Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V

    return-void
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->polyDraw:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    new-instance v0, Lcom/sunia/HTREnginev2/ehh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ehh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;)V

    new-instance v1, Lcom/sunia/HTREnginev2/fhh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fhh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;)V

    const-string p0, "base"

    const-string v2, "bounds"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {v1, v2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v4

    long-to-int v4, v4

    const-wide/16 v5, 0x4

    add-long/2addr v2, v5

    new-array v5, v4, [Ljava/awt/geom/Point2D;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_0

    new-instance v8, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v8}, Ljava/awt/geom/Point2D$Double;-><init>()V

    aput-object v8, v5, v7

    invoke-virtual {v0, v1, v8}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;->readPoint(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide v8

    add-long/2addr v2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v7, v6, v4}, Ljava/awt/geom/Path2D$Double;-><init>(II)V

    iput-object v7, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    :goto_1
    if-ge v6, v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v7

    and-int/lit8 v8, v7, 0x6

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_2

    const/4 v9, 0x6

    if-eq v8, v9, :cond_1

    goto :goto_2

    :cond_1
    iget-object v8, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v9

    aget-object v11, v5, v6

    invoke-virtual {v11}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v7

    add-int/lit8 v8, v6, 0x2

    if-ge v8, v4, :cond_3

    iget-object v9, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    aget-object v10, v5, v6

    invoke-virtual {v10}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v10

    aget-object v12, v5, v6

    invoke-virtual {v12}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v12

    add-int/lit8 v6, v6, 0x1

    aget-object v14, v5, v6

    invoke-virtual {v14}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v14

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v16

    aget-object v6, v5, v8

    invoke-virtual {v6}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v18

    aget-object v6, v5, v8

    invoke-virtual {v6}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v20

    invoke-virtual/range {v9 .. v21}, Ljava/awt/geom/Path2D;->curveTo(DDDDDD)V

    move v6, v8

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Points index causes index out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v8, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v9

    aget-object v11, v5, v6

    invoke-virtual {v11}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/awt/geom/Path2D;->lineTo(DD)V

    :goto_2
    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_5

    iget-object v7, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    invoke-virtual {v7}, Ljava/awt/geom/Path2D;->closePath()V

    :cond_5
    add-int/2addr v6, v8

    goto :goto_1

    :cond_6
    int-to-long v0, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public readPoint(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readPointL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide p0

    return-wide p0
.end method
