.class public final enum Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmfPlusRegionNodeDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

.field public static final enum AND:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

.field public static final enum COMPLEMENT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

.field public static final enum EMPTY:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

.field public static final enum EXCLUDE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

.field public static final enum INFINITE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

.field public static final enum OR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

.field public static final enum PATH:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

.field public static final enum RECT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

.field public static final enum XOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;


# instance fields
.field public final constructor:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public final operation:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/awt/geom/Area;",
            "Ljava/awt/geom/Area;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    new-instance v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    const-string v1, "AND"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/sunia/HTREnginev2/uuh;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/uuh;-><init>()V

    new-instance v5, Lcom/sunia/HTREnginev2/zuh;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/zuh;-><init>()V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    sput-object v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->AND:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    new-instance v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    const-string v8, "OR"

    const/4 v9, 0x1

    const/4 v10, 0x2

    new-instance v11, Lcom/sunia/HTREnginev2/uuh;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/uuh;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/avh;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/avh;-><init>()V

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->OR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    new-instance v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    const-string v14, "XOR"

    const/4 v15, 0x2

    const/16 v16, 0x3

    new-instance v17, Lcom/sunia/HTREnginev2/uuh;

    invoke-direct/range {v17 .. v17}, Lcom/sunia/HTREnginev2/uuh;-><init>()V

    new-instance v18, Lcom/sunia/HTREnginev2/bvh;

    invoke-direct/range {v18 .. v18}, Lcom/sunia/HTREnginev2/bvh;-><init>()V

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->XOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    new-instance v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    const-string v8, "EXCLUDE"

    const/4 v9, 0x3

    const/4 v10, 0x4

    new-instance v11, Lcom/sunia/HTREnginev2/uuh;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/uuh;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/cvh;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/cvh;-><init>()V

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    sput-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->EXCLUDE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    new-instance v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    const-string v14, "COMPLEMENT"

    const/4 v15, 0x4

    const/16 v16, 0x5

    new-instance v17, Lcom/sunia/HTREnginev2/uuh;

    invoke-direct/range {v17 .. v17}, Lcom/sunia/HTREnginev2/uuh;-><init>()V

    new-instance v18, Lcom/sunia/HTREnginev2/cvh;

    invoke-direct/range {v18 .. v18}, Lcom/sunia/HTREnginev2/cvh;-><init>()V

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    sput-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->COMPLEMENT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    new-instance v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    const-string v8, "RECT"

    const/4 v9, 0x5

    const/high16 v10, 0x10000000

    new-instance v11, Lcom/sunia/HTREnginev2/vuh;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/vuh;-><init>()V

    const/4 v12, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    sput-object v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->RECT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    new-instance v7, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    const-string v14, "PATH"

    const/4 v15, 0x6

    const v16, 0x10000001

    new-instance v17, Lcom/sunia/HTREnginev2/wuh;

    invoke-direct/range {v17 .. v17}, Lcom/sunia/HTREnginev2/wuh;-><init>()V

    const/16 v18, 0x0

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    sput-object v7, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->PATH:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    new-instance v14, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    const-string v9, "EMPTY"

    const/4 v10, 0x7

    const v11, 0x10000002

    new-instance v12, Lcom/sunia/HTREnginev2/xuh;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/xuh;-><init>()V

    const/4 v13, 0x0

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    sput-object v14, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->EMPTY:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    new-instance v8, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    const-string v16, "INFINITE"

    const/16 v17, 0x8

    const v18, 0x10000003

    new-instance v19, Lcom/sunia/HTREnginev2/yuh;

    invoke-direct/range {v19 .. v19}, Lcom/sunia/HTREnginev2/yuh;-><init>()V

    const/16 v20, 0x0

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    sput-object v8, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->INFINITE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v8}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/util/function/Supplier;Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Supplier<",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeData;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/awt/geom/Area;",
            "Ljava/awt/geom/Area;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->id:I

    iput-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->constructor:Ljava/util/function/Supplier;

    iput-object p5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->operation:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusRegion$EmfPlusRegionNodeDataType;

    return-object v0
.end method
