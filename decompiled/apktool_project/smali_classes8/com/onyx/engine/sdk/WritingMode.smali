.class public final enum Lcom/onyx/engine/sdk/WritingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/WritingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/WritingMode;

.field public static final enum HORIZONTAL:Lcom/onyx/engine/sdk/WritingMode;

.field public static final enum VERTICAL_LR:Lcom/onyx/engine/sdk/WritingMode;

.field public static final enum VERTICAL_RL:Lcom/onyx/engine/sdk/WritingMode;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/WritingMode;
    .locals 3

    sget-object v0, Lcom/onyx/engine/sdk/WritingMode;->HORIZONTAL:Lcom/onyx/engine/sdk/WritingMode;

    sget-object v1, Lcom/onyx/engine/sdk/WritingMode;->VERTICAL_RL:Lcom/onyx/engine/sdk/WritingMode;

    sget-object v2, Lcom/onyx/engine/sdk/WritingMode;->VERTICAL_LR:Lcom/onyx/engine/sdk/WritingMode;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/engine/sdk/WritingMode;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/WritingMode;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/WritingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/WritingMode;->HORIZONTAL:Lcom/onyx/engine/sdk/WritingMode;

    new-instance v0, Lcom/onyx/engine/sdk/WritingMode;

    const-string v1, "VERTICAL_RL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/WritingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/WritingMode;->VERTICAL_RL:Lcom/onyx/engine/sdk/WritingMode;

    new-instance v0, Lcom/onyx/engine/sdk/WritingMode;

    const-string v1, "VERTICAL_LR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/WritingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/WritingMode;->VERTICAL_LR:Lcom/onyx/engine/sdk/WritingMode;

    invoke-static {}, Lcom/onyx/engine/sdk/WritingMode;->$values()[Lcom/onyx/engine/sdk/WritingMode;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/WritingMode;->$VALUES:[Lcom/onyx/engine/sdk/WritingMode;

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

.method public static valueOf(I)Lcom/onyx/engine/sdk/WritingMode;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/onyx/engine/sdk/WritingMode;->HORIZONTAL:Lcom/onyx/engine/sdk/WritingMode;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/onyx/engine/sdk/WritingMode;->VERTICAL_LR:Lcom/onyx/engine/sdk/WritingMode;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lcom/onyx/engine/sdk/WritingMode;->VERTICAL_RL:Lcom/onyx/engine/sdk/WritingMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/WritingMode;
    .locals 1

    .line 1
    const-class v0, Lcom/onyx/engine/sdk/WritingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/WritingMode;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/WritingMode;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/WritingMode;->$VALUES:[Lcom/onyx/engine/sdk/WritingMode;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/WritingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/WritingMode;

    return-object v0
.end method
