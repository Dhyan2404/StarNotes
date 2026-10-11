.class public final enum Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

.field public static final enum ETAG:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

.field public static final enum IS_MULTIPARTUPLOADed:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

.field public static final enum LastModified_Date:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

.field public static final enum REPLICATION_STATUS:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

.field public static final enum SIZE:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

.field public static final enum StroageClass:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    const/4 v1, 0x0

    const-string v2, "Size"

    const-string v3, "SIZE"

    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;->SIZE:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    const/4 v2, 0x1

    const-string v3, "LastModifiedDate"

    const-string v4, "LastModified_Date"

    invoke-direct {v1, v4, v2, v3}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;->LastModified_Date:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    new-instance v2, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    const/4 v3, 0x2

    const-string v4, "StorageClass"

    const-string v5, "StroageClass"

    invoke-direct {v2, v5, v3, v4}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;->StroageClass:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    new-instance v3, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    const/4 v4, 0x3

    const-string v5, "Etag"

    const-string v6, "ETAG"

    invoke-direct {v3, v6, v4, v5}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;->ETAG:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    new-instance v4, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    const/4 v5, 0x4

    const-string v6, "IsMultipartUploaded"

    const-string v7, "IS_MULTIPARTUPLOADed"

    invoke-direct {v4, v7, v5, v6}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;->IS_MULTIPARTUPLOADed:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    new-instance v5, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    const/4 v6, 0x5

    const-string v7, "ReplicationStatus"

    const-string v8, "REPLICATION_STATUS"

    invoke-direct {v5, v8, v6, v7}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;->REPLICATION_STATUS:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    filled-new-array/range {v0 .. v5}, [Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;->$VALUES:[Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

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

    iput-object p3, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;->$VALUES:[Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;->value:Ljava/lang/String;

    return-object p0
.end method
