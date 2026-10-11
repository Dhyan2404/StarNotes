.class public final enum Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;",
        "",
        "(Ljava/lang/String;I)V",
        "RESULT_NONE",
        "RESULT_SUCCESS",
        "RESULT_FAILED",
        "RESULT_UN_SUPPORT",
        "RESULT_WAITING",
        "RESULT_PROCESSING",
        "sdk-data_release"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

.field public static final enum RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

.field public static final enum RESULT_NONE:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

.field public static final enum RESULT_PROCESSING:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

.field public static final enum RESULT_SUCCESS:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

.field public static final enum RESULT_UN_SUPPORT:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

.field public static final enum RESULT_WAITING:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_NONE:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_SUCCESS:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    sget-object v2, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    sget-object v3, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_UN_SUPPORT:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    sget-object v4, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_WAITING:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    sget-object v5, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_PROCESSING:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    filled-new-array/range {v0 .. v5}, [Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    const-string v1, "RESULT_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_NONE:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    const-string v1, "RESULT_SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_SUCCESS:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    const-string v1, "RESULT_FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    const-string v1, "RESULT_UN_SUPPORT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_UN_SUPPORT:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    const-string v1, "RESULT_WAITING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_WAITING:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    const-string v1, "RESULT_PROCESSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_PROCESSING:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-static {}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->$values()[Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->$VALUES:[Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->$VALUES:[Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    return-object v0
.end method
