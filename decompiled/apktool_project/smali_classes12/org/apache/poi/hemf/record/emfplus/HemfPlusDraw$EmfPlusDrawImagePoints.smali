.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusRelativePosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusDrawImagePoints"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EFFECT:Lorg/apache/poi/util/BitField;


# instance fields
.field private flags:I

.field private imageAttributesID:I

.field private final lowerLeft:Ljava/awt/geom/Point2D;

.field private final lowerRight:Ljava/awt/geom/Point2D;

.field private final srcRect:Ljava/awt/geom/Rectangle2D;

.field private srcUnit:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

.field private final trans:Ljava/awt/geom/AffineTransform;

.field private final upperLeft:Ljava/awt/geom/Point2D;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->EFFECT:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->srcRect:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->upperLeft:Ljava/awt/geom/Point2D;

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lowerRight:Ljava/awt/geom/Point2D;

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lowerLeft:Ljava/awt/geom/Point2D;

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->trans:Ljava/awt/geom/AffineTransform;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lambda$getGenericProperties$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->imageAttributesID:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->srcUnit:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->srcRect:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->upperLeft:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lowerLeft:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lowerRight:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->trans:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->imageAttributesID:I

    invoke-virtual {p1, v1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->applyPlusObjectTableEntry(I)V

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;->getObjectId()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->applyPlusObjectTableEntry(I)V

    invoke-virtual {v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->getEmfPlusImage()Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getRasterOp3()Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBkMode()Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    move-result-object v5

    :try_start_0
    iget-object v6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->trans:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v3, v6}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p1, v3}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->setTransform(Ljava/awt/geom/AffineTransform;)V

    sget-object v3, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->SRCCOPY:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    invoke-virtual {v0, v3}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setRasterOp3(Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;)V

    sget-object v3, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;->TRANSPARENT:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    invoke-virtual {v0, v3}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBkMode(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;)V

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->srcRect:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1, v1, p0, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->drawImage(Lorg/apache/poi/sl/draw/ImageRenderer;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v5}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBkMode(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;)V

    invoke-virtual {v0, v4}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setRasterOp3(Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;)V

    invoke-virtual {p1, v2}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v5}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBkMode(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;)V

    invoke-virtual {v0, v4}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setRasterOp3(Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;)V

    invoke-virtual {p1, v2}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->setTransform(Ljava/awt/geom/AffineTransform;)V

    throw p0
.end method

.method public getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->drawImagePoints:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->flags:I

    return p0
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

    new-instance v1, Lcom/sunia/HTREnginev2/toh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/toh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)V

    const-string v2, "flags"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/uoh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/uoh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)V

    const-string v2, "imageAttributesID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/voh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/voh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)V

    const-string v2, "srcUnit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/woh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/woh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)V

    const-string v2, "srcRect"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/xoh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xoh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)V

    const-string v2, "upperLeft"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/yoh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/yoh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)V

    const-string v2, "lowerLeft"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/zoh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zoh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)V

    const-string v2, "lowerRight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/qoh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qoh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;)V

    const-string p0, "transform"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    iput v2, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->flags:I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->imageAttributesID:I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->srcUnit:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    iget-object v2, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->srcRect:Ljava/awt/geom/Rectangle2D;

    invoke-static {v1, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readRectF(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    add-int/lit8 v2, v2, 0x4

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusRelativePosition;->isRelativePosition()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/sunia/HTREnginev2/poh;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/poh;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;->isCompressed()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/sunia/HTREnginev2/roh;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/roh;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/sunia/HTREnginev2/soh;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/soh;-><init>()V

    :goto_0
    iget-object v4, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lowerLeft:Ljava/awt/geom/Point2D;

    invoke-interface {v3, v1, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lowerRight:Ljava/awt/geom/Point2D;

    invoke-interface {v3, v1, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->upperLeft:Ljava/awt/geom/Point2D;

    invoke-interface {v3, v1, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    const/4 v1, 0x3

    new-array v3, v1, [[D

    new-array v4, v1, [D

    iget-object v5, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lowerLeft:Ljava/awt/geom/Point2D;

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    const/4 v7, 0x0

    aput-wide v5, v4, v7

    iget-object v5, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lowerRight:Ljava/awt/geom/Point2D;

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    const/4 v8, 0x1

    aput-wide v5, v4, v8

    iget-object v5, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->upperLeft:Ljava/awt/geom/Point2D;

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    const/4 v9, 0x2

    aput-wide v5, v4, v9

    aput-object v4, v3, v7

    new-array v4, v1, [D

    iget-object v5, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lowerLeft:Ljava/awt/geom/Point2D;

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    aput-wide v5, v4, v7

    iget-object v5, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->lowerRight:Ljava/awt/geom/Point2D;

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    aput-wide v5, v4, v8

    iget-object v5, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->upperLeft:Ljava/awt/geom/Point2D;

    invoke-virtual {v5}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    aput-wide v5, v4, v9

    aput-object v4, v3, v8

    new-array v4, v1, [D

    fill-array-data v4, :array_0

    aput-object v4, v3, v9

    invoke-static {v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    new-array v4, v1, [[D

    new-array v5, v1, [D

    iget-object v6, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->srcRect:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v10

    aput-wide v10, v5, v7

    iget-object v6, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->srcRect:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v10

    aput-wide v10, v5, v8

    iget-object v6, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->srcRect:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v10

    aput-wide v10, v5, v9

    aput-object v5, v4, v7

    new-array v5, v1, [D

    iget-object v6, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->srcRect:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v10

    aput-wide v10, v5, v7

    iget-object v6, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->srcRect:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v10

    aput-wide v10, v5, v8

    iget-object v6, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->srcRect:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v10

    aput-wide v10, v5, v9

    aput-object v5, v4, v8

    new-array v1, v1, [D

    fill-array-data v1, :array_1

    aput-object v1, v4, v9

    invoke-static {v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    new-instance v4, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v4, v1}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iget-object v10, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;->trans:Ljava/awt/geom/AffineTransform;

    aget-object v0, v1, v7

    aget-wide v3, v0, v7

    invoke-static {v3, v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->round10(D)D

    move-result-wide v11

    aget-object v0, v1, v8

    aget-wide v3, v0, v7

    invoke-static {v3, v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->round10(D)D

    move-result-wide v13

    aget-object v0, v1, v7

    aget-wide v3, v0, v8

    invoke-static {v3, v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->round10(D)D

    move-result-wide v15

    aget-object v0, v1, v8

    aget-wide v3, v0, v8

    invoke-static {v3, v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->round10(D)D

    move-result-wide v17

    aget-object v0, v1, v7

    aget-wide v3, v0, v9

    invoke-static {v3, v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->round10(D)D

    move-result-wide v19

    aget-object v0, v1, v8

    aget-wide v0, v0, v9

    invoke-static {v0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->round10(D)D

    move-result-wide v21

    invoke-virtual/range {v10 .. v22}, Ljava/awt/geom/AffineTransform;->setTransform(DDDDDD)V

    int-to-long v0, v2

    return-wide v0

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
