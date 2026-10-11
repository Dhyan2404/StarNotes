.class public final enum Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IncludedObjectVersions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;

.field public static final enum ALL:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;

.field public static final enum CURRENT:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;

    const/4 v1, 0x0

    const-string v2, "All"

    const-string v3, "ALL"

    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;->ALL:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;

    const/4 v2, 0x1

    const-string v3, "Current"

    const-string v4, "CURRENT"

    invoke-direct {v1, v4, v2, v3}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;->CURRENT:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;

    filled-new-array {v0, v1}, [Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;->$VALUES:[Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;

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

    iput-object p3, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;->$VALUES:[Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;->desc:Ljava/lang/String;

    return-object p0
.end method
