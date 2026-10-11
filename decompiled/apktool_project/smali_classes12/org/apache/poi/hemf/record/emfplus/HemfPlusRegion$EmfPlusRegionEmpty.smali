.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionEmpty;
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
    name = "EmfPlusRegionEmpty"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionEmpty;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->EMPTY:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    return-object p0
.end method

.method public getShape()Ljava/awt/Shape;
    .locals 9

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 p0, 0x0

    return-wide p0
.end method
