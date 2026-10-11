.class public final enum Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "UNKNOWN",
        "MS_ON_SCREEN",
        "MS_OFF_SCREEN",
        "MS_CONTEXT_LESS",
        "ML",
        "ML_MIXED",
        "SUNIA",
        "SUNIA_NAI_NBI",
        "Companion",
        "sdk-hwr_release"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

.field public static final Companion:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum ML:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

.field public static final enum ML_MIXED:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

.field public static final enum MS_CONTEXT_LESS:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

.field public static final enum MS_OFF_SCREEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

.field public static final enum MS_ON_SCREEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

.field public static final enum SUNIA:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

.field public static final enum SUNIA_NAI_NBI:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

.field public static final enum UNKNOWN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;


# instance fields
.field private final type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .locals 8

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->UNKNOWN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_ON_SCREEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    sget-object v2, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_OFF_SCREEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    sget-object v3, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_CONTEXT_LESS:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    sget-object v4, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    sget-object v5, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML_MIXED:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    sget-object v6, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->SUNIA:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    sget-object v7, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->SUNIA_NAI_NBI:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    filled-new-array/range {v0 .. v7}, [Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->UNKNOWN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    const-string v1, "MS_ON_SCREEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_ON_SCREEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    const-string v1, "MS_OFF_SCREEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_OFF_SCREEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    const-string v1, "MS_CONTEXT_LESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_CONTEXT_LESS:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    const-string v1, "ML"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    const-string v1, "ML_MIXED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML_MIXED:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    const-string v1, "SUNIA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->SUNIA:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    const-string v1, "SUNIA_NAI_NBI"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->SUNIA_NAI_NBI:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-static {}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->$values()[Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->$VALUES:[Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->Companion:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->type:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->$VALUES:[Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->type:Ljava/lang/String;

    return-object p0
.end method
