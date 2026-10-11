.class public final enum Lcom/onyx/engine/sdk/Protocol;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/Protocol;

.field public static final enum CLICK:Lcom/onyx/engine/sdk/Protocol;

.field public static final enum DICT:Lcom/onyx/engine/sdk/Protocol;

.field public static final enum HTTP:Lcom/onyx/engine/sdk/Protocol;

.field public static final enum LOCAL_FILE:Lcom/onyx/engine/sdk/Protocol;

.field public static final enum MAIL:Lcom/onyx/engine/sdk/Protocol;

.field public static final enum SOUND:Lcom/onyx/engine/sdk/Protocol;

.field public static final enum UNKNOWN:Lcom/onyx/engine/sdk/Protocol;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/Protocol;
    .locals 7

    sget-object v0, Lcom/onyx/engine/sdk/Protocol;->UNKNOWN:Lcom/onyx/engine/sdk/Protocol;

    sget-object v1, Lcom/onyx/engine/sdk/Protocol;->HTTP:Lcom/onyx/engine/sdk/Protocol;

    sget-object v2, Lcom/onyx/engine/sdk/Protocol;->MAIL:Lcom/onyx/engine/sdk/Protocol;

    sget-object v3, Lcom/onyx/engine/sdk/Protocol;->LOCAL_FILE:Lcom/onyx/engine/sdk/Protocol;

    sget-object v4, Lcom/onyx/engine/sdk/Protocol;->SOUND:Lcom/onyx/engine/sdk/Protocol;

    sget-object v5, Lcom/onyx/engine/sdk/Protocol;->DICT:Lcom/onyx/engine/sdk/Protocol;

    sget-object v6, Lcom/onyx/engine/sdk/Protocol;->CLICK:Lcom/onyx/engine/sdk/Protocol;

    filled-new-array/range {v0 .. v6}, [Lcom/onyx/engine/sdk/Protocol;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/Protocol;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/Protocol;->UNKNOWN:Lcom/onyx/engine/sdk/Protocol;

    new-instance v0, Lcom/onyx/engine/sdk/Protocol;

    const-string v1, "HTTP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/Protocol;->HTTP:Lcom/onyx/engine/sdk/Protocol;

    new-instance v0, Lcom/onyx/engine/sdk/Protocol;

    const-string v1, "MAIL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/Protocol;->MAIL:Lcom/onyx/engine/sdk/Protocol;

    new-instance v0, Lcom/onyx/engine/sdk/Protocol;

    const-string v1, "LOCAL_FILE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/Protocol;->LOCAL_FILE:Lcom/onyx/engine/sdk/Protocol;

    new-instance v0, Lcom/onyx/engine/sdk/Protocol;

    const-string v1, "SOUND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/Protocol;->SOUND:Lcom/onyx/engine/sdk/Protocol;

    new-instance v0, Lcom/onyx/engine/sdk/Protocol;

    const-string v1, "DICT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/Protocol;->DICT:Lcom/onyx/engine/sdk/Protocol;

    new-instance v0, Lcom/onyx/engine/sdk/Protocol;

    const-string v1, "CLICK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/Protocol;->CLICK:Lcom/onyx/engine/sdk/Protocol;

    invoke-static {}, Lcom/onyx/engine/sdk/Protocol;->$values()[Lcom/onyx/engine/sdk/Protocol;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/Protocol;->$VALUES:[Lcom/onyx/engine/sdk/Protocol;

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

.method public static valueOf(I)Lcom/onyx/engine/sdk/Protocol;
    .locals 5

    .line 2
    invoke-static {}, Lcom/onyx/engine/sdk/Protocol;->values()[Lcom/onyx/engine/sdk/Protocol;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/onyx/engine/sdk/Protocol;->UNKNOWN:Lcom/onyx/engine/sdk/Protocol;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/Protocol;
    .locals 1

    .line 1
    const-class v0, Lcom/onyx/engine/sdk/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/Protocol;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/Protocol;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/Protocol;->$VALUES:[Lcom/onyx/engine/sdk/Protocol;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/Protocol;

    return-object v0
.end method
