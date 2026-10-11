.class public final enum Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zaxxer/sparsebits/SparseBitSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Statistics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

.field public static final enum Cardinality:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

.field public static final enum Compaction_count_value:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

.field public static final enum Length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

.field public static final enum Level2_area_length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

.field public static final enum Level2_areas:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

.field public static final enum Level3_block_length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

.field public static final enum Level3_blocks:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

.field public static final enum Set_array_length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

.field public static final enum Set_array_max_length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

.field public static final enum Size:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

.field public static final enum Total_words:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    const-string v1, "Size"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Size:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    new-instance v1, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    const-string v2, "Length"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    new-instance v2, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    const-string v3, "Cardinality"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Cardinality:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    new-instance v3, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    const-string v4, "Total_words"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Total_words:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    new-instance v4, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    const-string v5, "Set_array_length"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Set_array_length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    new-instance v5, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    const-string v6, "Set_array_max_length"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Set_array_max_length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    new-instance v6, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    const-string v7, "Level2_areas"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Level2_areas:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    new-instance v7, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    const-string v8, "Level2_area_length"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Level2_area_length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    new-instance v8, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    const-string v9, "Level3_blocks"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Level3_blocks:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    new-instance v9, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    const-string v10, "Level3_block_length"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Level3_block_length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    new-instance v10, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    const-string v11, "Compaction_count_value"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Compaction_count_value:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    filled-new-array/range {v0 .. v10}, [Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    move-result-object v0

    sput-object v0, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->$VALUES:[Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;
    .locals 1

    const-class v0, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    return-object p0
.end method

.method public static values()[Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;
    .locals 1

    sget-object v0, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->$VALUES:[Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    invoke-virtual {v0}, [Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    return-object v0
.end method
