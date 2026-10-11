.class public Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;
.super Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfStretchBlt"
.end annotation


# instance fields
.field protected final bkColorSrc:Lorg/apache/poi/hwmf/record/HwmfColorRef;

.field protected final bounds:Ljava/awt/geom/Rectangle2D;

.field protected final xFormSrc:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->bounds:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->xFormSrc:Ljava/awt/geom/AffineTransform;

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->bkColorSrc:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->bkColorSrc:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBackgroundColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    invoke-super {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V

    return-void
.end method

.method public getBkColorSrc()Lorg/apache/poi/hwmf/record/HwmfColorRef;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->bkColorSrc:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-object p0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->stretchBlt:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "base"

    new-instance v1, Lcom/sunia/HTREnginev2/vih;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;)V

    const-string v2, "bounds"

    new-instance v3, Lcom/sunia/HTREnginev2/wih;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/wih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;)V

    const-string v4, "xFormSrc"

    new-instance v5, Lcom/sunia/HTREnginev2/xih;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/xih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;)V

    const-string v6, "bkColorSrc"

    new-instance v7, Lcom/sunia/HTREnginev2/yih;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/yih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getXFormSrc()Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->xFormSrc:Ljava/awt/geom/AffineTransform;

    return-object p0
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

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result v2

    iget-object v3, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {v1, v3}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {v1, v5}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v5

    long-to-int v5, v5

    ushr-int/lit8 v5, v5, 0x10

    invoke-static {v5}, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    new-instance v5, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v5}, Ljava/awt/geom/Point2D$Double;-><init>()V

    invoke-static {v1, v5}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readPointL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide v6

    add-long/2addr v3, v6

    iget-object v6, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->xFormSrc:Ljava/awt/geom/AffineTransform;

    invoke-static {v1, v6}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readXForm(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/AffineTransform;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iget-object v6, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->bkColorSrc:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {v6, v1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    move-result-object v6

    iput-object v6, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v7

    long-to-int v7, v7

    const-wide/16 v8, 0xc

    add-long/2addr v3, v8

    cmp-long v8, v3, p2

    if-ltz v8, :cond_0

    return-wide v3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v9

    long-to-int v9, v9

    const-wide/16 v10, 0x8

    add-long/2addr v3, v10

    cmp-long v12, v3, p2

    if-ltz v12, :cond_1

    return-wide v3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;->srcEqualsDstDimension()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v13, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->srcBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v14

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v16

    iget-object v5, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v5}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v18

    iget-object v5, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v5}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v20

    invoke-virtual/range {v13 .. v21}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v13

    add-long/2addr v3, v10

    iget-object v14, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->srcBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v15

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v17

    int-to-double v10, v12

    int-to-double v12, v13

    move-wide/from16 v19, v10

    move-wide/from16 v21, v12

    invoke-virtual/range {v14 .. v22}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    :goto_0
    move-wide v10, v3

    iget-object v3, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    move-object/from16 v0, p1

    move-object v1, v3

    move v3, v6

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readBitmap(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/hwmf/record/HwmfBitmapDib;IIIII)J

    move-result-wide v0

    add-long/2addr v10, v0

    return-wide v10
.end method

.method public srcEqualsDstDimension()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
