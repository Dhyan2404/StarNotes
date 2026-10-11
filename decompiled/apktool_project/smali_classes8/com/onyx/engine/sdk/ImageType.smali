.class public final enum Lcom/onyx/engine/sdk/ImageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/ImageType;

.field public static final enum JPEG:Lcom/onyx/engine/sdk/ImageType;

.field public static final enum ORIGIN:Lcom/onyx/engine/sdk/ImageType;

.field public static final enum PNG:Lcom/onyx/engine/sdk/ImageType;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/ImageType;
    .locals 3

    sget-object v0, Lcom/onyx/engine/sdk/ImageType;->JPEG:Lcom/onyx/engine/sdk/ImageType;

    sget-object v1, Lcom/onyx/engine/sdk/ImageType;->PNG:Lcom/onyx/engine/sdk/ImageType;

    sget-object v2, Lcom/onyx/engine/sdk/ImageType;->ORIGIN:Lcom/onyx/engine/sdk/ImageType;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/engine/sdk/ImageType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/ImageType;

    const-string v1, "JPEG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/ImageType;->JPEG:Lcom/onyx/engine/sdk/ImageType;

    new-instance v0, Lcom/onyx/engine/sdk/ImageType;

    const-string v1, "PNG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/ImageType;->PNG:Lcom/onyx/engine/sdk/ImageType;

    new-instance v0, Lcom/onyx/engine/sdk/ImageType;

    const-string v1, "ORIGIN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/ImageType;->ORIGIN:Lcom/onyx/engine/sdk/ImageType;

    invoke-static {}, Lcom/onyx/engine/sdk/ImageType;->$values()[Lcom/onyx/engine/sdk/ImageType;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/ImageType;->$VALUES:[Lcom/onyx/engine/sdk/ImageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/ImageType;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/ImageType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/ImageType;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/ImageType;->$VALUES:[Lcom/onyx/engine/sdk/ImageType;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/ImageType;

    return-object v0
.end method
