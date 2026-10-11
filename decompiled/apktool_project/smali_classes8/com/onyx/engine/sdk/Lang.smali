.class public final enum Lcom/onyx/engine/sdk/Lang;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/Lang;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/Lang;

.field public static final enum CN:Lcom/onyx/engine/sdk/Lang;

.field public static final enum EN:Lcom/onyx/engine/sdk/Lang;

.field public static final enum JA:Lcom/onyx/engine/sdk/Lang;

.field public static final enum TH:Lcom/onyx/engine/sdk/Lang;

.field public static final enum ZH:Lcom/onyx/engine/sdk/Lang;

.field public static final enum ZH_HK:Lcom/onyx/engine/sdk/Lang;

.field public static final enum ZH_SG:Lcom/onyx/engine/sdk/Lang;

.field public static final enum ZH_TW:Lcom/onyx/engine/sdk/Lang;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/Lang;
    .locals 8

    sget-object v0, Lcom/onyx/engine/sdk/Lang;->ZH:Lcom/onyx/engine/sdk/Lang;

    sget-object v1, Lcom/onyx/engine/sdk/Lang;->CN:Lcom/onyx/engine/sdk/Lang;

    sget-object v2, Lcom/onyx/engine/sdk/Lang;->ZH_TW:Lcom/onyx/engine/sdk/Lang;

    sget-object v3, Lcom/onyx/engine/sdk/Lang;->ZH_HK:Lcom/onyx/engine/sdk/Lang;

    sget-object v4, Lcom/onyx/engine/sdk/Lang;->ZH_SG:Lcom/onyx/engine/sdk/Lang;

    sget-object v5, Lcom/onyx/engine/sdk/Lang;->JA:Lcom/onyx/engine/sdk/Lang;

    sget-object v6, Lcom/onyx/engine/sdk/Lang;->EN:Lcom/onyx/engine/sdk/Lang;

    sget-object v7, Lcom/onyx/engine/sdk/Lang;->TH:Lcom/onyx/engine/sdk/Lang;

    filled-new-array/range {v0 .. v7}, [Lcom/onyx/engine/sdk/Lang;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/engine/sdk/Lang;

    const/4 v1, 0x0

    const-string v2, "zh-"

    const-string v3, "ZH"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/engine/sdk/Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/engine/sdk/Lang;->ZH:Lcom/onyx/engine/sdk/Lang;

    new-instance v0, Lcom/onyx/engine/sdk/Lang;

    const/4 v1, 0x1

    const-string v2, "zh-CN"

    const-string v3, "CN"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/engine/sdk/Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/engine/sdk/Lang;->CN:Lcom/onyx/engine/sdk/Lang;

    new-instance v0, Lcom/onyx/engine/sdk/Lang;

    const/4 v1, 0x2

    const-string v2, "zh-TW"

    const-string v3, "ZH_TW"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/engine/sdk/Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/engine/sdk/Lang;->ZH_TW:Lcom/onyx/engine/sdk/Lang;

    new-instance v0, Lcom/onyx/engine/sdk/Lang;

    const/4 v1, 0x3

    const-string v2, "zh-HK"

    const-string v3, "ZH_HK"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/engine/sdk/Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/engine/sdk/Lang;->ZH_HK:Lcom/onyx/engine/sdk/Lang;

    new-instance v0, Lcom/onyx/engine/sdk/Lang;

    const/4 v1, 0x4

    const-string v2, "zh-sg"

    const-string v3, "ZH_SG"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/engine/sdk/Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/engine/sdk/Lang;->ZH_SG:Lcom/onyx/engine/sdk/Lang;

    new-instance v0, Lcom/onyx/engine/sdk/Lang;

    const/4 v1, 0x5

    const-string v2, "ja"

    const-string v3, "JA"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/engine/sdk/Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/engine/sdk/Lang;->JA:Lcom/onyx/engine/sdk/Lang;

    new-instance v0, Lcom/onyx/engine/sdk/Lang;

    const/4 v1, 0x6

    const-string v2, "en"

    const-string v3, "EN"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/engine/sdk/Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/engine/sdk/Lang;->EN:Lcom/onyx/engine/sdk/Lang;

    new-instance v0, Lcom/onyx/engine/sdk/Lang;

    const/4 v1, 0x7

    const-string v2, "th"

    const-string v3, "TH"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/engine/sdk/Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/engine/sdk/Lang;->TH:Lcom/onyx/engine/sdk/Lang;

    invoke-static {}, Lcom/onyx/engine/sdk/Lang;->$values()[Lcom/onyx/engine/sdk/Lang;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/Lang;->$VALUES:[Lcom/onyx/engine/sdk/Lang;

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

    iput-object p3, p0, Lcom/onyx/engine/sdk/Lang;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/Lang;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/Lang;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/Lang;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/Lang;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/Lang;->$VALUES:[Lcom/onyx/engine/sdk/Lang;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/Lang;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/Lang;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Lang;->value:Ljava/lang/String;

    return-object p0
.end method
