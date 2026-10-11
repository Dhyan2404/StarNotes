.class public final enum Lcom/tencent/cos/xml/common/Region;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/common/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/common/Region;

.field public static final enum AP_Beijing:Lcom/tencent/cos/xml/common/Region;

.field public static final enum AP_Beijing_1:Lcom/tencent/cos/xml/common/Region;

.field public static final enum AP_Chengdu:Lcom/tencent/cos/xml/common/Region;

.field public static final enum AP_Guangzhou:Lcom/tencent/cos/xml/common/Region;

.field public static final enum AP_Guangzhou_2:Lcom/tencent/cos/xml/common/Region;

.field public static final enum AP_Hongkong:Lcom/tencent/cos/xml/common/Region;

.field public static final enum AP_Shanghai:Lcom/tencent/cos/xml/common/Region;

.field public static final enum AP_Singapore:Lcom/tencent/cos/xml/common/Region;

.field public static final enum CN_EAST:Lcom/tencent/cos/xml/common/Region;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum CN_NORTH:Lcom/tencent/cos/xml/common/Region;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum CN_SOUTH:Lcom/tencent/cos/xml/common/Region;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum CN_SOUTHWEST:Lcom/tencent/cos/xml/common/Region;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum EU_Frankfurt:Lcom/tencent/cos/xml/common/Region;

.field public static final enum NA_Toronto:Lcom/tencent/cos/xml/common/Region;

.field public static final enum SG:Lcom/tencent/cos/xml/common/Region;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private region:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/tencent/cos/xml/common/Region;

    const/4 v1, 0x0

    const-string v2, "ap-beijing-1"

    const-string v3, "AP_Beijing_1"

    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/xml/common/Region;->AP_Beijing_1:Lcom/tencent/cos/xml/common/Region;

    new-instance v1, Lcom/tencent/cos/xml/common/Region;

    const/4 v2, 0x1

    const-string v3, "ap-beijing"

    const-string v4, "AP_Beijing"

    invoke-direct {v1, v4, v2, v3}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/xml/common/Region;->AP_Beijing:Lcom/tencent/cos/xml/common/Region;

    new-instance v2, Lcom/tencent/cos/xml/common/Region;

    const/4 v3, 0x2

    const-string v4, "ap-shanghai"

    const-string v5, "AP_Shanghai"

    invoke-direct {v2, v5, v3, v4}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tencent/cos/xml/common/Region;->AP_Shanghai:Lcom/tencent/cos/xml/common/Region;

    new-instance v3, Lcom/tencent/cos/xml/common/Region;

    const/4 v4, 0x3

    const-string v5, "ap-guangzhou"

    const-string v6, "AP_Guangzhou"

    invoke-direct {v3, v6, v4, v5}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tencent/cos/xml/common/Region;->AP_Guangzhou:Lcom/tencent/cos/xml/common/Region;

    new-instance v4, Lcom/tencent/cos/xml/common/Region;

    const/4 v5, 0x4

    const-string v6, "ap-guangzhou-2"

    const-string v7, "AP_Guangzhou_2"

    invoke-direct {v4, v7, v5, v6}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/tencent/cos/xml/common/Region;->AP_Guangzhou_2:Lcom/tencent/cos/xml/common/Region;

    new-instance v5, Lcom/tencent/cos/xml/common/Region;

    const/4 v6, 0x5

    const-string v7, "ap-chengdu"

    const-string v8, "AP_Chengdu"

    invoke-direct {v5, v8, v6, v7}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tencent/cos/xml/common/Region;->AP_Chengdu:Lcom/tencent/cos/xml/common/Region;

    new-instance v6, Lcom/tencent/cos/xml/common/Region;

    const/4 v7, 0x6

    const-string v8, "ap-singapore"

    const-string v9, "AP_Singapore"

    invoke-direct {v6, v9, v7, v8}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/tencent/cos/xml/common/Region;->AP_Singapore:Lcom/tencent/cos/xml/common/Region;

    new-instance v7, Lcom/tencent/cos/xml/common/Region;

    const/4 v8, 0x7

    const-string v9, "ap-hongkong"

    const-string v10, "AP_Hongkong"

    invoke-direct {v7, v10, v8, v9}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/tencent/cos/xml/common/Region;->AP_Hongkong:Lcom/tencent/cos/xml/common/Region;

    new-instance v8, Lcom/tencent/cos/xml/common/Region;

    const/16 v9, 0x8

    const-string v10, "na-toronto"

    const-string v11, "NA_Toronto"

    invoke-direct {v8, v11, v9, v10}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/tencent/cos/xml/common/Region;->NA_Toronto:Lcom/tencent/cos/xml/common/Region;

    new-instance v9, Lcom/tencent/cos/xml/common/Region;

    const/16 v10, 0x9

    const-string v11, "eu-frankfurt"

    const-string v12, "EU_Frankfurt"

    invoke-direct {v9, v12, v10, v11}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/tencent/cos/xml/common/Region;->EU_Frankfurt:Lcom/tencent/cos/xml/common/Region;

    new-instance v10, Lcom/tencent/cos/xml/common/Region;

    const/16 v11, 0xa

    const-string v12, "cn-north"

    const-string v13, "CN_NORTH"

    invoke-direct {v10, v13, v11, v12}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/tencent/cos/xml/common/Region;->CN_NORTH:Lcom/tencent/cos/xml/common/Region;

    new-instance v11, Lcom/tencent/cos/xml/common/Region;

    const/16 v12, 0xb

    const-string v13, "cn-south"

    const-string v14, "CN_SOUTH"

    invoke-direct {v11, v14, v12, v13}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/tencent/cos/xml/common/Region;->CN_SOUTH:Lcom/tencent/cos/xml/common/Region;

    new-instance v12, Lcom/tencent/cos/xml/common/Region;

    const/16 v13, 0xc

    const-string v14, "cn-east"

    const-string v15, "CN_EAST"

    invoke-direct {v12, v15, v13, v14}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/tencent/cos/xml/common/Region;->CN_EAST:Lcom/tencent/cos/xml/common/Region;

    new-instance v13, Lcom/tencent/cos/xml/common/Region;

    const/16 v14, 0xd

    const-string v15, "cn-southwest"

    move-object/from16 v16, v12

    const-string v12, "CN_SOUTHWEST"

    invoke-direct {v13, v12, v14, v15}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/tencent/cos/xml/common/Region;->CN_SOUTHWEST:Lcom/tencent/cos/xml/common/Region;

    new-instance v14, Lcom/tencent/cos/xml/common/Region;

    const/16 v12, 0xe

    const-string v15, "sg"

    move-object/from16 v17, v13

    const-string v13, "SG"

    invoke-direct {v14, v13, v12, v15}, Lcom/tencent/cos/xml/common/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/tencent/cos/xml/common/Region;->SG:Lcom/tencent/cos/xml/common/Region;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    filled-new-array/range {v0 .. v14}, [Lcom/tencent/cos/xml/common/Region;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/common/Region;->$VALUES:[Lcom/tencent/cos/xml/common/Region;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/cos/xml/common/Region;->region:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/tencent/cos/xml/common/Region;
    .locals 5

    invoke-static {}, Lcom/tencent/cos/xml/common/Region;->values()[Lcom/tencent/cos/xml/common/Region;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/tencent/cos/xml/common/Region;->region:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/common/Region;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/common/Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/common/Region;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/common/Region;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/common/Region;->$VALUES:[Lcom/tencent/cos/xml/common/Region;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/common/Region;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/common/Region;

    return-object v0
.end method


# virtual methods
.method public getRegion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/common/Region;->region:Ljava/lang/String;

    return-object p0
.end method
