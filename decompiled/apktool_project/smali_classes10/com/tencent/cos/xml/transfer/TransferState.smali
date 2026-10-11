.class public final enum Lcom/tencent/cos/xml/transfer/TransferState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/transfer/TransferState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/transfer/TransferState;

.field public static final enum CANCELED:Lcom/tencent/cos/xml/transfer/TransferState;

.field public static final enum COMPLETED:Lcom/tencent/cos/xml/transfer/TransferState;

.field public static final enum CONSTRAINED:Lcom/tencent/cos/xml/transfer/TransferState;

.field public static final enum FAILED:Lcom/tencent/cos/xml/transfer/TransferState;

.field public static final enum IN_PROGRESS:Lcom/tencent/cos/xml/transfer/TransferState;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/cos/xml/transfer/TransferState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PAUSED:Lcom/tencent/cos/xml/transfer/TransferState;

.field public static final enum RESUMED_WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

.field public static final enum UNKNOWN:Lcom/tencent/cos/xml/transfer/TransferState;

.field public static final enum WAITING:Lcom/tencent/cos/xml/transfer/TransferState;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/tencent/cos/xml/transfer/TransferState;

    const-string v1, "CONSTRAINED"

    const/4 v9, 0x0

    invoke-direct {v0, v1, v9}, Lcom/tencent/cos/xml/transfer/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->CONSTRAINED:Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v1, Lcom/tencent/cos/xml/transfer/TransferState;

    const-string v2, "WAITING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/cos/xml/transfer/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/cos/xml/transfer/TransferState;->WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v2, Lcom/tencent/cos/xml/transfer/TransferState;

    const-string v3, "IN_PROGRESS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tencent/cos/xml/transfer/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tencent/cos/xml/transfer/TransferState;->IN_PROGRESS:Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v3, Lcom/tencent/cos/xml/transfer/TransferState;

    const-string v4, "PAUSED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/tencent/cos/xml/transfer/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/cos/xml/transfer/TransferState;->PAUSED:Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v4, Lcom/tencent/cos/xml/transfer/TransferState;

    const-string v5, "RESUMED_WAITING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/tencent/cos/xml/transfer/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/tencent/cos/xml/transfer/TransferState;->RESUMED_WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v5, Lcom/tencent/cos/xml/transfer/TransferState;

    const-string v6, "COMPLETED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/tencent/cos/xml/transfer/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/cos/xml/transfer/TransferState;->COMPLETED:Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v6, Lcom/tencent/cos/xml/transfer/TransferState;

    const-string v7, "CANCELED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/tencent/cos/xml/transfer/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/tencent/cos/xml/transfer/TransferState;->CANCELED:Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v7, Lcom/tencent/cos/xml/transfer/TransferState;

    const-string v8, "FAILED"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10}, Lcom/tencent/cos/xml/transfer/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tencent/cos/xml/transfer/TransferState;->FAILED:Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v8, Lcom/tencent/cos/xml/transfer/TransferState;

    const-string v10, "UNKNOWN"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11}, Lcom/tencent/cos/xml/transfer/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/tencent/cos/xml/transfer/TransferState;->UNKNOWN:Lcom/tencent/cos/xml/transfer/TransferState;

    filled-new-array/range {v0 .. v8}, [Lcom/tencent/cos/xml/transfer/TransferState;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->$VALUES:[Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->MAP:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/cos/xml/transfer/TransferState;->values()[Lcom/tencent/cos/xml/transfer/TransferState;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v9, v1, :cond_0

    aget-object v2, v0, v9

    sget-object v3, Lcom/tencent/cos/xml/transfer/TransferState;->MAP:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
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

.method public static getState(Ljava/lang/String;)Lcom/tencent/cos/xml/transfer/TransferState;
    .locals 2

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/transfer/TransferState;

    return-object p0

    :cond_0
    sget-object p0, Lcom/tencent/cos/xml/transfer/TransferState;->UNKNOWN:Lcom/tencent/cos/xml/transfer/TransferState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/transfer/TransferState;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/transfer/TransferState;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/transfer/TransferState;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->$VALUES:[Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/transfer/TransferState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/transfer/TransferState;

    return-object v0
.end method
