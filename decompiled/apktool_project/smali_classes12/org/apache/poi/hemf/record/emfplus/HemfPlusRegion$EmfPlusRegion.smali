.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusRegion"
.end annotation


# instance fields
.field private final graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

.field private regionNode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;->setRegionNode(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;)V

    return-void
.end method

.method private setRegionNode(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;->regionNode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

    return-void
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

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;->regionNode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;->getShape()Ljava/awt/Shape;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/awt/geom/Path2D$Double;

    invoke-direct {p2, p0}, Ljava/awt/geom/Path2D$Double;-><init>(Ljava/awt/Shape;)V

    move-object p0, p2

    :goto_0
    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->setPath(Ljava/awt/geom/Path2D;)V

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

    new-instance v0, Lcom/sunia/HTREnginev2/muh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/muh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;)V

    new-instance v1, Lcom/sunia/HTREnginev2/nuh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nuh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;)V

    const-string p0, "graphicsVersion"

    const-string v2, "regionNode"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->REGION:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    return-object p0
.end method

.method public getGraphicsVersion()Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-object p0
.end method

.method public getRegionNode()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;->regionNode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    const-wide/16 p4, 0x4

    add-long/2addr p2, p4

    new-instance p4, Lcom/sunia/HTREnginev2/ouh;

    invoke-direct {p4, p0}, Lcom/sunia/HTREnginev2/ouh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;)V

    invoke-static {p1, p4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion;->access$000(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;)J

    move-result-wide p0

    add-long/2addr p2, p0

    return-wide p2
.end method
