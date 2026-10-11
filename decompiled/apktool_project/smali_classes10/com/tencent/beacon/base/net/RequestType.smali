.class public final enum Lcom/tencent/beacon/base/net/RequestType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/beacon/base/net/RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/beacon/base/net/RequestType;

.field public static final enum EVENT:Lcom/tencent/beacon/base/net/RequestType;

.field public static final enum LONG_CONNECTION:Lcom/tencent/beacon/base/net/RequestType;

.field public static final enum QIMEI:Lcom/tencent/beacon/base/net/RequestType;

.field public static final enum QUIC:Lcom/tencent/beacon/base/net/RequestType;

.field public static final enum STRATEGY:Lcom/tencent/beacon/base/net/RequestType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tencent/beacon/base/net/RequestType;

    const-string v1, "EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/beacon/base/net/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/beacon/base/net/RequestType;->EVENT:Lcom/tencent/beacon/base/net/RequestType;

    new-instance v1, Lcom/tencent/beacon/base/net/RequestType;

    const-string v2, "STRATEGY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/beacon/base/net/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/beacon/base/net/RequestType;->STRATEGY:Lcom/tencent/beacon/base/net/RequestType;

    new-instance v2, Lcom/tencent/beacon/base/net/RequestType;

    const-string v3, "QIMEI"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tencent/beacon/base/net/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tencent/beacon/base/net/RequestType;->QIMEI:Lcom/tencent/beacon/base/net/RequestType;

    new-instance v3, Lcom/tencent/beacon/base/net/RequestType;

    const-string v4, "LONG_CONNECTION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/tencent/beacon/base/net/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/beacon/base/net/RequestType;->LONG_CONNECTION:Lcom/tencent/beacon/base/net/RequestType;

    new-instance v4, Lcom/tencent/beacon/base/net/RequestType;

    const-string v5, "QUIC"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/tencent/beacon/base/net/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/tencent/beacon/base/net/RequestType;->QUIC:Lcom/tencent/beacon/base/net/RequestType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/tencent/beacon/base/net/RequestType;

    move-result-object v0

    sput-object v0, Lcom/tencent/beacon/base/net/RequestType;->$VALUES:[Lcom/tencent/beacon/base/net/RequestType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/beacon/base/net/RequestType;
    .locals 1

    const-class v0, Lcom/tencent/beacon/base/net/RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/beacon/base/net/RequestType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/beacon/base/net/RequestType;
    .locals 1

    sget-object v0, Lcom/tencent/beacon/base/net/RequestType;->$VALUES:[Lcom/tencent/beacon/base/net/RequestType;

    invoke-virtual {v0}, [Lcom/tencent/beacon/base/net/RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/beacon/base/net/RequestType;

    return-object v0
.end method
