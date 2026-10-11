.class public Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;
.super Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPolyPolygon"
.end annotation


# instance fields
.field private final bounds:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;->bounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method

.method public static synthetic a(Ljava/awt/Shape;Ljava/awt/geom/Path2D;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;->lambda$draw$0(Ljava/awt/Shape;Ljava/awt/geom/Path2D;)V

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$draw$0(Ljava/awt/Shape;Ljava/awt/geom/Path2D;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    return-void
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;->getShape(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)Ljava/awt/Shape;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sunia/HTREnginev2/jhh;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/jhh;-><init>(Ljava/awt/Shape;)V

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;->getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->draw(Ljava/util/function/Consumer;Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V

    return-void
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->polyPolygon:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    new-instance v0, Lcom/sunia/HTREnginev2/hhh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/hhh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;)V

    new-instance v1, Lcom/sunia/HTREnginev2/ihh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ihh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;)V

    const-string p0, "base"

    const-string v2, "bounds"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {v1, v2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v4

    const-wide/16 v6, 0x4000

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    const-wide/16 v6, 0x8

    add-long/2addr v2, v6

    long-to-int v6, v4

    new-array v7, v6, [J

    const-wide/16 v8, 0x4

    mul-long/2addr v8, v4

    add-long/2addr v2, v8

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    int-to-long v10, v9

    cmp-long v10, v10, v4

    if-gez v10, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v10

    aput-wide v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v4}, Ljava/awt/geom/Point2D$Double;-><init>()V

    move v5, v8

    :goto_1
    if-ge v5, v6, :cond_4

    aget-wide v9, v7, v5

    new-instance v11, Ljava/awt/geom/Path2D$Double;

    long-to-int v12, v9

    invoke-direct {v11, v8, v12}, Ljava/awt/geom/Path2D$Double;-><init>(II)V

    move v12, v8

    :goto_2
    int-to-long v13, v12

    cmp-long v13, v13, v9

    if-gez v13, :cond_2

    invoke-virtual {p0, v1, v4}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;->readPoint(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide v13

    add-long/2addr v2, v13

    if-nez v12, :cond_1

    invoke-virtual {v4}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v13

    move-wide/from16 p3, v9

    invoke-virtual {v4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v8

    invoke-virtual {v11, v13, v14, v8, v9}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    goto :goto_3

    :cond_1
    move-wide/from16 p3, v9

    invoke-virtual {v4}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v8

    invoke-virtual {v4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v13

    invoke-virtual {v11, v8, v9, v13, v14}, Ljava/awt/geom/Path2D;->lineTo(DD)V

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v9, p3

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v11}, Ljava/awt/geom/Path2D;->closePath()V

    :cond_3
    iget-object v8, v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;->polyList:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    return-wide v2
.end method

.method public readPoint(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readPointL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide p0

    return-wide p0
.end method
