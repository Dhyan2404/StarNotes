.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNode;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionRect;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionEmpty;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionInfinite;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionPath;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegion;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


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

.method public static synthetic access$000(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion;->readNode(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static readNode(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/LittleEndianInputStream;",
            "Ljava/util/function/Consumer<",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->constructor:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;->setNodeType(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;)V

    const-wide/16 v2, 0x4

    invoke-interface {v1, p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide p0

    add-long/2addr p0, v2

    return-wide p0
.end method
