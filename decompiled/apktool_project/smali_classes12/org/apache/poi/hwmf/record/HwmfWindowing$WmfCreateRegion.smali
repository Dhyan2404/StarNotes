.class public Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;
.implements Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfWindowing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfCreateRegion"
.end annotation


# instance fields
.field private final bounds:Ljava/awt/geom/Rectangle2D;

.field private maxScan:I

.field private nextInChain:I

.field private objectCount:I

.field private objectType:I

.field private regionSize:I

.field private scanCount:I

.field private scanObjects:[Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->bounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->lambda$getGenericProperties$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->lambda$getGenericProperties$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->nextInChain:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->objectType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->objectCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->regionSize:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->scanCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->maxScan:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$7()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->scanObjects:[Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 26

    new-instance v0, Ljava/awt/geom/Area;

    invoke-direct {v0}, Ljava/awt/geom/Area;-><init>()V

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->scanObjects:[Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;

    array-length v2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v5, v2, :cond_1

    aget-object v9, v1, v5

    invoke-static {v9}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->access$000(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)I

    move-result v10

    invoke-static {v9}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->access$100(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->access$000(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)I

    move-result v11

    invoke-static {v9}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->access$100(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    invoke-static {v9}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->access$200(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    if-ge v12, v13, :cond_0

    invoke-static {v9}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->access$300(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)[I

    move-result-object v7

    aget v7, v7, v12

    invoke-static {v9}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->access$400(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)[I

    move-result-object v13

    aget v13, v13, v12

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->access$400(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)[I

    move-result-object v13

    aget v13, v13, v12

    invoke-static {v9}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->access$300(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)[I

    move-result-object v14

    aget v14, v14, v12

    sub-int/2addr v13, v14

    sub-int/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    new-instance v15, Ljava/awt/geom/Rectangle2D$Double;

    int-to-double v3, v7

    move-object/from16 v23, v9

    int-to-double v8, v10

    int-to-double v13, v13

    move-object/from16 v24, v1

    move/from16 v25, v2

    int-to-double v1, v11

    move-wide/from16 v19, v13

    move-object v14, v15

    move-object v7, v15

    move-wide v15, v3

    move-wide/from16 v17, v8

    move-wide/from16 v21, v1

    invoke-direct/range {v14 .. v22}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    new-instance v1, Ljava/awt/geom/Area;

    invoke-direct {v1, v7}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    invoke-virtual {v0, v1}, Ljava/awt/geom/Area;->add(Ljava/awt/geom/Area;)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v24, v1

    move/from16 v25, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-lez v6, :cond_3

    const/4 v1, 0x1

    if-ne v6, v1, :cond_2

    move-object v0, v7

    :cond_2
    move-object v3, v0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setRegion(Ljava/awt/Shape;)V

    return-void
.end method

.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;)V

    return-void
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

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/oai;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/oai;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)V

    const-string v2, "nextInChain"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/pai;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pai;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)V

    const-string v2, "objectType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/qai;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qai;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)V

    const-string v2, "objectCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/rai;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rai;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)V

    const-string v2, "regionSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/sai;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/sai;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)V

    const-string v2, "scanCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/tai;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tai;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)V

    const-string v2, "maxScan"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/uai;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/uai;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)V

    const-string v2, "bounds"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/vai;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vai;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;)V

    const-string p0, "scanObjects"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->createRegion:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->nextInChain:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->objectType:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->objectCount:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->regionSize:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->scanCount:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->maxScan:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    int-to-double v1, p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    int-to-double v3, p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    int-to-double p2, p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p4

    int-to-double v5, p4

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->bounds:Ljava/awt/geom/Rectangle2D;

    sub-double/2addr p2, v1

    sub-double v7, v5, v3

    move-wide v5, p2

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    iget p2, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->scanCount:I

    new-array p2, p2, [Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->scanObjects:[Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;

    const/16 p2, 0x16

    const/4 p3, 0x0

    :goto_0
    iget p4, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->scanCount:I

    if-ge p3, p4, :cond_0

    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfCreateRegion;->scanObjects:[Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;-><init>()V

    aput-object v0, p4, p3

    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result p4

    add-int/2addr p2, p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method
