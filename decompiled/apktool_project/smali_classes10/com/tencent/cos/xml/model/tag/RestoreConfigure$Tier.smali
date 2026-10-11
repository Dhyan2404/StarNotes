.class public final enum Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/RestoreConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

.field public static final enum Bulk:Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

.field public static final enum Expedited:Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

.field public static final enum Standard:Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;


# instance fields
.field private tier:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

    const-string v1, "Expedited"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;->Expedited:Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

    const-string v2, "Standard"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;->Standard:Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

    new-instance v2, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

    const-string v3, "Bulk"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;->Bulk:Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

    filled-new-array {v0, v1, v2}, [Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;->$VALUES:[Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

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

    iput-object p3, p0, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;->tier:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;->$VALUES:[Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;

    return-object v0
.end method


# virtual methods
.method public getTier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;->tier:Ljava/lang/String;

    return-object p0
.end method
