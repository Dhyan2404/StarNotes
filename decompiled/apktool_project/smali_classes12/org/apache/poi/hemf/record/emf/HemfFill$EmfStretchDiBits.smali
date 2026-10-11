.class public Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchDiBits;
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
    name = "EmfStretchDiBits"
.end annotation


# instance fields
.field protected final bounds:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchDiBits;->bounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchDiBits;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchDiBits;->lambda$getGenericProperties$0()Ljava/lang/Object;

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
.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchDiBits;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->stretchDiBits:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    new-instance v0, Lcom/sunia/HTREnginev2/zih;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/zih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchDiBits;)V

    new-instance v1, Lcom/sunia/HTREnginev2/ajh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ajh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchDiBits;)V

    const-string p0, "base"

    const-string v2, "bounds"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchDiBits;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchDiBits;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result v2

    iget-object v3, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchDiBits;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {v1, v3}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v6

    const-wide/16 v7, 0x8

    add-long/2addr v3, v7

    iget-object v7, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->srcBounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {v1, v7}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v3, v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v11

    invoke-static {v11}, Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    move-result-object v11

    iput-object v11, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v11

    long-to-int v11, v11

    ushr-int/lit8 v11, v11, 0x10

    invoke-static {v11}, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object v11

    iput-object v11, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v12

    iget-object v13, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->dstBounds:Ljava/awt/geom/Rectangle2D;

    int-to-double v14, v5

    int-to-double v5, v6

    move/from16 p2, v10

    int-to-double v10, v11

    move/from16 p3, v8

    move/from16 p4, v9

    int-to-double v8, v12

    move-wide/from16 v16, v5

    move-wide/from16 v18, v10

    move-wide/from16 v20, v8

    invoke-virtual/range {v13 .. v21}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    const-wide/16 v5, 0x20

    add-long v8, v3, v5

    iget-object v3, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    move-object/from16 v0, p1

    move-object v1, v3

    move v3, v7

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readBitmap(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/hwmf/record/HwmfBitmapDib;IIIII)J

    move-result-wide v0

    add-long/2addr v8, v0

    return-wide v8
.end method
