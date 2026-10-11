.class public Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;
.super Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfExtTextOutA"
.end annotation


# instance fields
.field protected boundsIgnored:Ljava/awt/geom/Rectangle2D;

.field protected graphicsMode:Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

.field protected final scale:Ljava/awt/geom/Dimension2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutOptions;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutOptions;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;)V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->boundsIgnored:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-direct {v0}, Lorg/apache/poi/util/Dimension2DDouble;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->scale:Ljava/awt/geom/Dimension2D;

    return-void
.end method

.method public static synthetic d(Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->boundsIgnored:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->graphicsMode:Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    sget-object v1, Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;->GM_COMPATIBLE:Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->scale:Ljava/awt/geom/Dimension2D;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->charsetProvider:Ljava/util/function/Supplier;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->setCharsetProvider(Ljava/util/function/Supplier;)V

    iget-object v2, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->rawTextBytes:[B

    iget v3, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->stringLength:I

    iget-object v4, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->reference:Ljava/awt/geom/Point2D;

    iget-object v6, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->bounds:Ljava/awt/geom/Rectangle2D;

    iget-object v7, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->options:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

    iget-object v8, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->dx:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->isUnicode()Z

    move-result v9

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->drawString([BILjava/awt/geom/Point2D;Ljava/awt/geom/Dimension2D;Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;Ljava/util/List;Z)V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->extTextOutA:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    new-instance v1, Lcom/sunia/HTREnginev2/wyh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wyh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;)V

    const-string v2, "boundsIgnored"

    new-instance v3, Lcom/sunia/HTREnginev2/xyh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/xyh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;)V

    const-string v4, "graphicsMode"

    new-instance v5, Lcom/sunia/HTREnginev2/yyh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/yyh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;)V

    const-string v6, "scale"

    new-instance v7, Lcom/sunia/HTREnginev2/zyh;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/zyh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGraphicsMode()Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->graphicsMode:Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    return-object p0
.end method

.method public getScale()Ljava/awt/geom/Dimension2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->scale:Ljava/awt/geom/Dimension2D;

    return-object p0
.end method

.method public getText(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->getText(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_a

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v4, v2

    if-lez v4, :cond_a

    iget-object v4, v0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->boundsIgnored:Ljava/awt/geom/Rectangle2D;

    invoke-static {v1, v4}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide v4

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;->values()[Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    iput-object v6, v0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->graphicsMode:Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iget-object v8, v0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;->scale:Ljava/awt/geom/Dimension2D;

    invoke-static {v1, v8}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readDimensionFloat(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Dimension2D;)J

    move-result-wide v8

    add-long/2addr v4, v8

    iget-object v8, v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->reference:Ljava/awt/geom/Point2D;

    invoke-static {v1, v8}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readPointL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->stringLength:I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v8

    long-to-int v8, v8

    const-wide/16 v9, 0x8

    add-long/2addr v4, v9

    iget-object v11, v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->options:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

    invoke-virtual {v11, v1}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->initInt(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v4, v11

    iget-object v11, v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {v1, v11}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide v11

    add-long/2addr v4, v11

    iget-object v11, v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->options:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

    invoke-virtual {v11}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->isClipped()Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->options:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

    invoke-virtual {v11}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->isOpaque()Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    iget-object v12, v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->bounds:Ljava/awt/geom/Rectangle2D;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v12 .. v20}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v11

    long-to-int v11, v11

    add-long/2addr v4, v6

    if-ge v11, v8, :cond_2

    const-string v12, "ds"

    goto :goto_1

    :cond_2
    const-string v12, "sd"

    :goto_1
    const/16 v13, 0x8

    if-gt v11, v13, :cond_3

    move-wide v13, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v11, -0x8

    int-to-long v13, v13

    :goto_2
    long-to-int v13, v13

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    array-length v14, v12

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_9

    aget-char v6, v12, v15

    const/16 v7, 0x64

    if-eq v6, v7, :cond_5

    int-to-long v6, v8

    add-long v16, v4, v9

    sub-long v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v6

    if-lez v8, :cond_4

    if-ltz v6, :cond_4

    add-int/lit8 v7, v8, -0x8

    int-to-long v9, v7

    cmp-long v7, v9, v2

    if-gez v7, :cond_4

    invoke-virtual {v1, v6}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    int-to-long v6, v6

    add-long/2addr v4, v6

    int-to-long v6, v13

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v6

    int-to-long v6, v6

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfText;->access$000()I

    move-result v9

    invoke-static {v6, v7, v9}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->rawTextBytes:[B

    invoke-virtual {v1, v9}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    add-long/2addr v4, v6

    :cond_4
    const-wide/16 v9, 0x4

    goto :goto_6

    :cond_5
    iget-object v6, v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->dx:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    int-to-long v6, v11

    const-wide/16 v9, 0x8

    add-long v16, v4, v9

    sub-long v6, v6, v16

    long-to-int v6, v6

    if-lez v11, :cond_7

    if-ltz v6, :cond_7

    add-int/lit8 v7, v11, -0x8

    int-to-long v9, v7

    cmp-long v7, v9, v2

    if-gez v7, :cond_7

    invoke-virtual {v1, v6}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    int-to-long v6, v6

    add-long/2addr v4, v6

    if-ge v11, v8, :cond_6

    add-int/lit8 v6, v8, -0x8

    int-to-long v6, v6

    goto :goto_4

    :cond_6
    move-wide v6, v2

    :goto_4
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    :goto_5
    add-int/lit8 v7, v6, -0x4

    int-to-long v9, v7

    cmp-long v7, v4, v9

    if-gtz v7, :cond_7

    iget-object v7, v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->dx:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v9, 0x4

    add-long/2addr v4, v9

    goto :goto_5

    :cond_7
    const-wide/16 v9, 0x4

    iget-object v6, v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->dx:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget v7, v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->stringLength:I

    if-ge v6, v7, :cond_8

    iget-object v6, v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->dx:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_8
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v6

    move v13, v6

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-wide v6, v9

    const-wide/16 v9, 0x8

    goto/16 :goto_3

    :cond_9
    return-wide v4

    :cond_a
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    const-string v1, "recordSize must be a positive integer (0-0x7FFFFFFF)"

    invoke-direct {v0, v1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
