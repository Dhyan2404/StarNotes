.class public final enum Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/engine/sdk/CompatiblePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PositionVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

.field public static final enum V2_TO_V31_TO_V32:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

.field public static final enum V2_TO_V32:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

.field public static final enum V31_TO_V32:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;
    .locals 3

    sget-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;->V2_TO_V31_TO_V32:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    sget-object v1, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;->V31_TO_V32:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    sget-object v2, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;->V2_TO_V32:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    const-string v1, "V2_TO_V31_TO_V32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;->V2_TO_V31_TO_V32:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    new-instance v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    const-string v1, "V31_TO_V32"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;->V31_TO_V32:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    new-instance v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    const-string v1, "V2_TO_V32"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;->V2_TO_V32:Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    invoke-static {}, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;->$values()[Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;->$VALUES:[Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;->$VALUES:[Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/CompatiblePosition$PositionVersion;

    return-object v0
.end method
