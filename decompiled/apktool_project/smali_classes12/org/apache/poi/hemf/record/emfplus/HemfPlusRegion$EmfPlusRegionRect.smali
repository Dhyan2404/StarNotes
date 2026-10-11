.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionRect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusRegionRect"
.end annotation


# instance fields
.field private final rect:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionRect;->rect:Ljava/awt/geom/Rectangle2D;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionRect;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionRect;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionRect;->rect:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/dvh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/dvh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionRect;)V

    const-string p0, "rect"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionRect;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->RECT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    return-object p0
.end method

.method public getShape()Ljava/awt/Shape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionRect;->rect:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;)J
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionRect;->rect:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readRectF(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
