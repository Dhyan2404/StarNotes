.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusDrawImage"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private flags:I

.field private imageAttributesID:I

.field private final rectData:Ljava/awt/geom/Rectangle2D;

.field private final srcRect:Ljava/awt/geom/Rectangle2D;

.field private srcUnit:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->srcRect:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->rectData:Ljava/awt/geom/Rectangle2D;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->imageAttributesID:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->srcUnit:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->srcRect:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->rectData:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->imageAttributesID:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->applyPlusObjectTableEntry(I)V

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;->getObjectId()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->applyPlusObjectTableEntry(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->SRCCOPY:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setRasterOp3(Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;)V

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;->TRANSPARENT:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBkMode(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;)V

    invoke-virtual {v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->getEmfPlusImage()Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->srcRect:Ljava/awt/geom/Rectangle2D;

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->rectData:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1, v0, v1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->drawImage(Lorg/apache/poi/sl/draw/ImageRenderer;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->drawImage:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->flags:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "flags"

    new-instance v1, Lcom/sunia/HTREnginev2/koh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/koh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;)V

    const-string v2, "imageAttributesID"

    new-instance v3, Lcom/sunia/HTREnginev2/loh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/loh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;)V

    const-string v4, "srcUnit"

    new-instance v5, Lcom/sunia/HTREnginev2/moh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/moh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;)V

    const-string v6, "srcRect"

    new-instance v7, Lcom/sunia/HTREnginev2/noh;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/noh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;)V

    const-string v8, "rectData"

    new-instance v9, Lcom/sunia/HTREnginev2/ooh;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/ooh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;)V

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->flags:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->imageAttributesID:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    invoke-static {p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->srcUnit:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->srcRect:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readRectF(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result p2

    add-int/lit8 p2, p2, 0x8

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;->getReadRect()Ljava/util/function/BiFunction;

    move-result-object p3

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;->rectData:Ljava/awt/geom/Rectangle2D;

    invoke-interface {p3, p1, p0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p2, p0

    int-to-long p0, p2

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
