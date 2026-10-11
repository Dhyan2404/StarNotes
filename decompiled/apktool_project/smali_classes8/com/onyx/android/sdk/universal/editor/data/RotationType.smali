.class public final enum Lcom/onyx/android/sdk/universal/editor/data/RotationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/universal/editor/data/RotationType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/RotationType;",
        "",
        "degrees",
        "",
        "(Ljava/lang/String;II)V",
        "getDegrees",
        "()I",
        "ANTI_CLOCKWISE_90",
        "CLOCKWISE_90",
        "CLOCKWISE_180",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/universal/editor/data/RotationType;

.field public static final enum ANTI_CLOCKWISE_90:Lcom/onyx/android/sdk/universal/editor/data/RotationType;

.field public static final enum CLOCKWISE_180:Lcom/onyx/android/sdk/universal/editor/data/RotationType;

.field public static final enum CLOCKWISE_90:Lcom/onyx/android/sdk/universal/editor/data/RotationType;


# instance fields
.field private final degrees:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/universal/editor/data/RotationType;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->ANTI_CLOCKWISE_90:Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->CLOCKWISE_90:Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->CLOCKWISE_180:Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    const/4 v1, 0x0

    const/16 v2, -0x5a

    const-string v3, "ANTI_CLOCKWISE_90"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/RotationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->ANTI_CLOCKWISE_90:Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    const/4 v1, 0x1

    const/16 v2, 0x5a

    const-string v3, "CLOCKWISE_90"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/RotationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->CLOCKWISE_90:Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    const/4 v1, 0x2

    const/16 v2, 0xb4

    const-string v3, "CLOCKWISE_180"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/RotationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->CLOCKWISE_180:Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->$values()[Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->$VALUES:[Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->degrees:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/universal/editor/data/RotationType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/RotationType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/universal/editor/data/RotationType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->$VALUES:[Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    return-object v0
.end method


# virtual methods
.method public final getDegrees()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->degrees:I

    return p0
.end method
