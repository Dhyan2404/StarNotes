.class public final enum Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/engine/sdk/CompatiblePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PositionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

.field public static final enum ANNOTATION:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

.field public static final enum BOOKMARK:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

.field public static final enum NEW_WORDS:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

.field public static final enum READER_NOTE:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;
    .locals 4

    sget-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;->ANNOTATION:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    sget-object v1, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;->BOOKMARK:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    sget-object v2, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;->READER_NOTE:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    sget-object v3, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;->NEW_WORDS:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    const-string v1, "ANNOTATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;->ANNOTATION:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    new-instance v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    const-string v1, "BOOKMARK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;->BOOKMARK:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    new-instance v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    const-string v1, "READER_NOTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;->READER_NOTE:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    new-instance v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    const-string v1, "NEW_WORDS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;->NEW_WORDS:Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    invoke-static {}, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;->$values()[Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;->$VALUES:[Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;->$VALUES:[Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/CompatiblePosition$PositionType;

    return-object v0
.end method
