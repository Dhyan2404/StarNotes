.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;
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
    name = "EmfPlusRegionNode"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private left:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

.field private nodeType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

.field private right:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->setRight(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;)V

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->setLeft(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;)V

    return-void
.end method

.method private setLeft(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->left:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

    return-void
.end method

.method private setRight(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->right:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

    return-void
.end method


# virtual methods
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

    const-string v0, "nodeType"

    new-instance v1, Lcom/sunia/HTREnginev2/ruh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ruh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;)V

    const-string v2, "left"

    new-instance v3, Lcom/sunia/HTREnginev2/suh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/suh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;)V

    const-string v4, "right"

    new-instance v5, Lcom/sunia/HTREnginev2/tuh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/tuh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->nodeType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    return-object p0
.end method

.method public getLeft()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->left:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

    return-object p0
.end method

.method public getNodeType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->nodeType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    return-object p0
.end method

.method public getRight()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->right:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

    return-object p0
.end method

.method public getShape()Ljava/awt/Shape;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->nodeType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    sget-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->COMPLEMENT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->right:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->left:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

    :goto_1
    invoke-interface {v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;->getShape()Ljava/awt/Shape;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->left:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->right:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

    :goto_2
    invoke-interface {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;->getShape()Ljava/awt/Shape;

    move-result-object v0

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    if-nez v0, :cond_4

    return-object v1

    :cond_4
    new-instance v2, Ljava/awt/geom/Area;

    invoke-direct {v2, v1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    new-instance v1, Ljava/awt/geom/Area;

    invoke-direct {v1, v0}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->nodeType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->operation:Ljava/util/function/BiConsumer;

    invoke-interface {p0, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/puh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/puh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;)V

    invoke-static {p1, v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion;->access$000(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;)J

    move-result-wide v0

    new-instance v2, Lcom/sunia/HTREnginev2/quh;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/quh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;)V

    invoke-static {p1, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion;->access$000(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public setNodeType(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;->nodeType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    return-void
.end method
