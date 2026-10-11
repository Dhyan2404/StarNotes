.class public final enum Lcom/onyx/engine/sdk/SearchParaChar;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/SearchParaChar;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/SearchParaChar;

.field public static final enum EMPTY:Lcom/onyx/engine/sdk/SearchParaChar;

.field public static final enum NORMAL:Lcom/onyx/engine/sdk/SearchParaChar;

.field public static final enum SPACE:Lcom/onyx/engine/sdk/SearchParaChar;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/SearchParaChar;
    .locals 3

    sget-object v0, Lcom/onyx/engine/sdk/SearchParaChar;->NORMAL:Lcom/onyx/engine/sdk/SearchParaChar;

    sget-object v1, Lcom/onyx/engine/sdk/SearchParaChar;->EMPTY:Lcom/onyx/engine/sdk/SearchParaChar;

    sget-object v2, Lcom/onyx/engine/sdk/SearchParaChar;->SPACE:Lcom/onyx/engine/sdk/SearchParaChar;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/engine/sdk/SearchParaChar;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/SearchParaChar;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/SearchParaChar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/SearchParaChar;->NORMAL:Lcom/onyx/engine/sdk/SearchParaChar;

    new-instance v0, Lcom/onyx/engine/sdk/SearchParaChar;

    const-string v1, "EMPTY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/SearchParaChar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/SearchParaChar;->EMPTY:Lcom/onyx/engine/sdk/SearchParaChar;

    new-instance v0, Lcom/onyx/engine/sdk/SearchParaChar;

    const-string v1, "SPACE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/SearchParaChar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/SearchParaChar;->SPACE:Lcom/onyx/engine/sdk/SearchParaChar;

    invoke-static {}, Lcom/onyx/engine/sdk/SearchParaChar;->$values()[Lcom/onyx/engine/sdk/SearchParaChar;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/SearchParaChar;->$VALUES:[Lcom/onyx/engine/sdk/SearchParaChar;

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

.method public static valueOf(I)Lcom/onyx/engine/sdk/SearchParaChar;
    .locals 5

    .line 2
    invoke-static {}, Lcom/onyx/engine/sdk/SearchParaChar;->values()[Lcom/onyx/engine/sdk/SearchParaChar;

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
    sget-object p0, Lcom/onyx/engine/sdk/SearchParaChar;->NORMAL:Lcom/onyx/engine/sdk/SearchParaChar;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/SearchParaChar;
    .locals 1

    .line 1
    const-class v0, Lcom/onyx/engine/sdk/SearchParaChar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/SearchParaChar;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/SearchParaChar;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/SearchParaChar;->$VALUES:[Lcom/onyx/engine/sdk/SearchParaChar;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/SearchParaChar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/SearchParaChar;

    return-object v0
.end method
