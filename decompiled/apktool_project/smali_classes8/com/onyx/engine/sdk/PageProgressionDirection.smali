.class public final enum Lcom/onyx/engine/sdk/PageProgressionDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/PageProgressionDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/PageProgressionDirection;

.field public static final enum LTR:Lcom/onyx/engine/sdk/PageProgressionDirection;

.field public static final enum RTL:Lcom/onyx/engine/sdk/PageProgressionDirection;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/PageProgressionDirection;
    .locals 2

    sget-object v0, Lcom/onyx/engine/sdk/PageProgressionDirection;->LTR:Lcom/onyx/engine/sdk/PageProgressionDirection;

    sget-object v1, Lcom/onyx/engine/sdk/PageProgressionDirection;->RTL:Lcom/onyx/engine/sdk/PageProgressionDirection;

    filled-new-array {v0, v1}, [Lcom/onyx/engine/sdk/PageProgressionDirection;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/PageProgressionDirection;

    const-string v1, "LTR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/PageProgressionDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/PageProgressionDirection;->LTR:Lcom/onyx/engine/sdk/PageProgressionDirection;

    new-instance v0, Lcom/onyx/engine/sdk/PageProgressionDirection;

    const-string v1, "RTL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/PageProgressionDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/PageProgressionDirection;->RTL:Lcom/onyx/engine/sdk/PageProgressionDirection;

    invoke-static {}, Lcom/onyx/engine/sdk/PageProgressionDirection;->$values()[Lcom/onyx/engine/sdk/PageProgressionDirection;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/PageProgressionDirection;->$VALUES:[Lcom/onyx/engine/sdk/PageProgressionDirection;

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

.method public static valueOf(I)Lcom/onyx/engine/sdk/PageProgressionDirection;
    .locals 5

    .line 2
    invoke-static {}, Lcom/onyx/engine/sdk/PageProgressionDirection;->values()[Lcom/onyx/engine/sdk/PageProgressionDirection;

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
    sget-object p0, Lcom/onyx/engine/sdk/PageProgressionDirection;->LTR:Lcom/onyx/engine/sdk/PageProgressionDirection;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/PageProgressionDirection;
    .locals 1

    .line 1
    const-class v0, Lcom/onyx/engine/sdk/PageProgressionDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/PageProgressionDirection;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/PageProgressionDirection;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/PageProgressionDirection;->$VALUES:[Lcom/onyx/engine/sdk/PageProgressionDirection;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/PageProgressionDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/PageProgressionDirection;

    return-object v0
.end method
