.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusRelativePosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusPath"
.end annotation


# static fields
.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;

.field private static final POINT_RLE_BEZIER:Lorg/apache/poi/util/BitField;

.field private static final POINT_RLE_COUNT:Lorg/apache/poi/util/BitField;

.field private static final POINT_TYPE_CLOSE:Lorg/apache/poi/util/BitField;

.field private static final POINT_TYPE_DASHED:Lorg/apache/poi/util/BitField;

.field private static final POINT_TYPE_ENUM:Lorg/apache/poi/util/BitField;

.field private static final POINT_TYPE_MARKER:Lorg/apache/poi/util/BitField;

.field private static final RLE_COMPRESSED:Lorg/apache/poi/util/BitField;

.field private static final TYPE_MASKS:[I

.field private static final TYPE_NAMES:[Ljava/lang/String;


# instance fields
.field private final graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

.field private pathPoints:[Ljava/awt/geom/Point2D;

.field private pointFlags:I

.field private pointTypes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x1000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->RLE_COMPRESSED:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->POINT_TYPE_DASHED:Lorg/apache/poi/util/BitField;

    const/16 v2, 0x20

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v3

    sput-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->POINT_TYPE_MARKER:Lorg/apache/poi/util/BitField;

    const/16 v3, 0x80

    invoke-static {v3}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v4

    sput-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->POINT_TYPE_CLOSE:Lorg/apache/poi/util/BitField;

    const/16 v4, 0xf

    invoke-static {v4}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v4

    sput-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->POINT_TYPE_ENUM:Lorg/apache/poi/util/BitField;

    invoke-static {v3}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v4

    sput-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->POINT_RLE_BEZIER:Lorg/apache/poi/util/BitField;

    const/16 v4, 0x3f

    invoke-static {v4}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v4

    sput-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->POINT_RLE_COUNT:Lorg/apache/poi/util/BitField;

    const/16 v4, 0x800

    const/16 v5, 0x4000

    filled-new-array {v4, v0, v5}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->FLAGS_MASKS:[I

    const-string v0, "RLE_COMPRESSED"

    const-string v4, "FORMAT_COMPRESSED"

    const-string v5, "RELATIVE_POSITION"

    filled-new-array {v5, v0, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->FLAGS_NAMES:[Ljava/lang/String;

    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->TYPE_MASKS:[I

    const-string v0, "MARKER"

    const-string v1, "CLOSE"

    const-string v2, "DASHED"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->TYPE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->lambda$null$2(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;I)Lorg/apache/poi/common/usermodel/GenericRecord;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->getGenericPoint(I)Lorg/apache/poi/common/usermodel/GenericRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;I)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->lambda$getGenericPoint$3(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->lambda$null$1(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;I)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->lambda$null$0(I)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->getGenericPoints()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getGenericPoint(I)Lorg/apache/poi/common/usermodel/GenericRecord;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/trh;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/trh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;I)V

    return-object v0
.end method

.method private getGenericPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/common/usermodel/GenericRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pathPoints:[Ljava/awt/geom/Point2D;

    array-length v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/srh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/srh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$getGenericPoint$3(I)Ljava/util/Map;
    .locals 6

    const-string v0, "flags"

    new-instance v1, Lcom/sunia/HTREnginev2/mrh;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/mrh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;I)V

    sget-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->TYPE_MASKS:[I

    sget-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->TYPE_NAMES:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v2, "type"

    new-instance v3, Lcom/sunia/HTREnginev2/nrh;

    invoke-direct {v3, p0, p1}, Lcom/sunia/HTREnginev2/nrh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;I)V

    const-string v4, "point"

    new-instance v5, Lcom/sunia/HTREnginev2/orh;

    invoke-direct {v5, p0, p1}, Lcom/sunia/HTREnginev2/orh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;I)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$null$0(I)Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pointTypes:[B

    aget-byte p0, p0, p1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$null$1(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->getPointType(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPathPointType;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$null$2(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->getPoint(I)Ljava/awt/geom/Point2D;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hemf/draw/HemfGraphics;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->getPath()Ljava/awt/geom/Path2D;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->setPath(Ljava/awt/geom/Path2D;)V

    return-void
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pointFlags:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "graphicsVersion"

    new-instance v1, Lcom/sunia/HTREnginev2/prh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/prh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)V

    const-string v2, "flags"

    new-instance v3, Lcom/sunia/HTREnginev2/qrh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/qrh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)V

    sget-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->FLAGS_MASKS:[I

    sget-object v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v3

    const-string v4, "points"

    new-instance v5, Lcom/sunia/HTREnginev2/rrh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/rrh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->PATH:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    return-object p0
.end method

.method public getGraphicsVersion()Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-object p0
.end method

.method public getPath()Ljava/awt/geom/Path2D;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->getPath(I)Ljava/awt/geom/Path2D;

    move-result-object p0

    return-object p0
.end method

.method public getPath(I)Ljava/awt/geom/Path2D;
    .locals 18

    move-object/from16 v0, p0

    .line 2
    new-instance v14, Ljava/awt/geom/Path2D$Double;

    move/from16 v1, p1

    invoke-direct {v14, v1}, Ljava/awt/geom/Path2D$Double;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pathPoints:[Ljava/awt/geom/Point2D;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 4
    aget-object v2, v2, v1

    .line 5
    sget-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$1;->$SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusPath$EmfPlusPathPointType:[I

    invoke-virtual {v0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->getPointType(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPathPointType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v3, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pathPoints:[Ljava/awt/geom/Point2D;

    add-int/lit8 v1, v1, 0x1

    aget-object v5, v3, v1

    add-int/lit8 v15, v1, 0x1

    .line 7
    aget-object v1, v3, v15

    .line 8
    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v8

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v10

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v12

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v16

    move-object v1, v14

    move-wide v2, v3

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-wide/from16 v12, v16

    invoke-virtual/range {v1 .. v13}, Ljava/awt/geom/Path2D;->curveTo(DDDDDD)V

    move v1, v15

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    invoke-virtual {v14, v3, v4, v5, v6}, Ljava/awt/geom/Path2D;->lineTo(DD)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    invoke-virtual {v14, v3, v4, v5, v6}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    .line 11
    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->isPointClosed(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v14}, Ljava/awt/geom/Path2D;->closePath()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v14
.end method

.method public getPoint(I)Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pathPoints:[Ljava/awt/geom/Point2D;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getPointType(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPathPointType;
    .locals 2

    invoke-static {}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPathPointType;->values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPathPointType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->POINT_TYPE_ENUM:Lorg/apache/poi/util/BitField;

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pointTypes:[B

    aget-byte p0, p0, p1

    invoke-virtual {v1, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p5

    iput p5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pointFlags:I

    const/4 p5, 0x2

    invoke-virtual {p1, p5}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    const-wide/16 v0, 0x8

    add-long/2addr p2, v0

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusRelativePosition;->isRelativePosition()Z

    move-result p5

    if-eqz p5, :cond_0

    new-instance p5, Lcom/sunia/HTREnginev2/poh;

    invoke-direct {p5}, Lcom/sunia/HTREnginev2/poh;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;->isCompressed()Z

    move-result p5

    if-eqz p5, :cond_1

    new-instance p5, Lcom/sunia/HTREnginev2/roh;

    invoke-direct {p5}, Lcom/sunia/HTREnginev2/roh;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p5, Lcom/sunia/HTREnginev2/soh;

    invoke-direct {p5}, Lcom/sunia/HTREnginev2/soh;-><init>()V

    :goto_0
    new-array v0, p4, [Ljava/awt/geom/Point2D;

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pathPoints:[Ljava/awt/geom/Point2D;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p4, :cond_2

    iget-object v2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pathPoints:[Ljava/awt/geom/Point2D;

    new-instance v3, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v3}, Ljava/awt/geom/Point2D$Double;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pathPoints:[Ljava/awt/geom/Point2D;

    aget-object v2, v2, v1

    invoke-interface {p5, p1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-array p5, p4, [B

    iput-object p5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pointTypes:[B

    sget-object p5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->RLE_COMPRESSED:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pointFlags:I

    invoke-virtual {p5, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p5

    if-eqz p5, :cond_3

    :goto_2
    if-ge v0, p4, :cond_4

    sget-object p5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->POINT_RLE_COUNT:Lorg/apache/poi/util/BitField;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result v1

    invoke-virtual {p5, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p5

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pointTypes:[B

    add-int v2, p4, p5

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result v3

    invoke-static {v1, p4, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    add-int/2addr v0, p5

    const-wide/16 v1, 0x2

    add-long/2addr p2, v1

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pointTypes:[B

    invoke-virtual {p1, p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    int-to-long p4, p4

    add-long/2addr p2, p4

    :cond_4
    const-wide/16 p4, 0x4

    rem-long v0, p2, p4

    sub-long v0, p4, v0

    rem-long/2addr v0, p4

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    int-to-long p0, p0

    add-long/2addr p2, p0

    return-wide p2
.end method

.method public isPointClosed(I)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->POINT_TYPE_CLOSE:Lorg/apache/poi/util/BitField;

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pointTypes:[B

    aget-byte p0, p0, p1

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isPointDashed(I)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->POINT_TYPE_DASHED:Lorg/apache/poi/util/BitField;

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pointTypes:[B

    aget-byte p0, p0, p1

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isPointMarker(I)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->POINT_TYPE_MARKER:Lorg/apache/poi/util/BitField;

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->pointTypes:[B

    aget-byte p0, p0, p1

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method
