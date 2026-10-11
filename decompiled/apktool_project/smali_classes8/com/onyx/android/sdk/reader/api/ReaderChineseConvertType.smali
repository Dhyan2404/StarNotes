.class public final enum Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "SIMPLIFIED_TO_TRADITIONAL",
        "TRADITIONAL_TO_SIMPLIFIED",
        "SIMPLIFIED_TO_TRADITIONAL_TW",
        "SIMPLIFIED_TO_TRADITIONAL_HK",
        "sdk-readercore_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

.field public static final enum NONE:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

.field public static final enum SIMPLIFIED_TO_TRADITIONAL:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

.field public static final enum SIMPLIFIED_TO_TRADITIONAL_HK:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

.field public static final enum SIMPLIFIED_TO_TRADITIONAL_TW:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

.field public static final enum TRADITIONAL_TO_SIMPLIFIED:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->NONE:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->SIMPLIFIED_TO_TRADITIONAL:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    sget-object v2, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->TRADITIONAL_TO_SIMPLIFIED:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    sget-object v3, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->SIMPLIFIED_TO_TRADITIONAL_TW:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    sget-object v4, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->SIMPLIFIED_TO_TRADITIONAL_HK:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->NONE:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    const-string v1, "SIMPLIFIED_TO_TRADITIONAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->SIMPLIFIED_TO_TRADITIONAL:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    const-string v1, "TRADITIONAL_TO_SIMPLIFIED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->TRADITIONAL_TO_SIMPLIFIED:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    const-string v1, "SIMPLIFIED_TO_TRADITIONAL_TW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->SIMPLIFIED_TO_TRADITIONAL_TW:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    const-string v1, "SIMPLIFIED_TO_TRADITIONAL_HK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->SIMPLIFIED_TO_TRADITIONAL_HK:Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    invoke-static {}, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->$values()[Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->$VALUES:[Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;->$VALUES:[Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;

    return-object v0
.end method
