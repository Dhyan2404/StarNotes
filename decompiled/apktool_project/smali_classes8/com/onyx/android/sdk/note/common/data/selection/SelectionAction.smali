.class public final enum Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

.field public static final enum HWR_GESTURE:Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

.field public static final enum LASSO:Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

.field public static final enum MOVE:Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;


# direct methods
.method private static synthetic $values()[Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;->LASSO:Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;->MOVE:Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    sget-object v2, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;->HWR_GESTURE:Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    const-string v1, "LASSO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;->LASSO:Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    const-string v1, "MOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;->MOVE:Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    const-string v1, "HWR_GESTURE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;->HWR_GESTURE:Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    invoke-static {}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;->$values()[Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;->$VALUES:[Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;->$VALUES:[Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    invoke-virtual {v0}, [Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/note/common/data/selection/SelectionAction;

    return-object v0
.end method
