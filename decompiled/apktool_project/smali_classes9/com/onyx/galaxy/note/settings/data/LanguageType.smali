.class public final enum Lcom/onyx/galaxy/note/settings/data/LanguageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/data/LanguageType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/settings/data/LanguageType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0016\u0008\u0086\u0081\u0002\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001aB\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/data/LanguageType;",
        "",
        "locale",
        "Ljava/util/Locale;",
        "displayName",
        "",
        "(Ljava/lang/String;ILjava/util/Locale;I)V",
        "getDisplayName",
        "()I",
        "getLocale",
        "()Ljava/util/Locale;",
        "DEFAULT",
        "CHINESE_SIMPLIFIED",
        "CHINESE_TRADITIONAL",
        "ENGLISH_UK",
        "ENGLISH_US",
        "GERMAN",
        "SPANISH",
        "PORTUGUESE",
        "TURKISH",
        "KOREAN",
        "JAPANESE",
        "ARABIC",
        "FRENCH",
        "ITALIAN",
        "RUSSIAN",
        "Companion",
        "note_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum ARABIC:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum CHINESE_SIMPLIFIED:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum CHINESE_TRADITIONAL:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final Companion:Lcom/onyx/galaxy/note/settings/data/LanguageType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DEFAULT:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum ENGLISH_UK:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum ENGLISH_US:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum FRENCH:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum GERMAN:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum ITALIAN:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum JAPANESE:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum KOREAN:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum PORTUGUESE:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum RUSSIAN:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum SPANISH:Lcom/onyx/galaxy/note/settings/data/LanguageType;

.field public static final enum TURKISH:Lcom/onyx/galaxy/note/settings/data/LanguageType;


# instance fields
.field private final displayName:I

.field private final locale:Ljava/util/Locale;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/settings/data/LanguageType;
    .locals 15

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->DEFAULT:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/LanguageType;->CHINESE_SIMPLIFIED:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v2, Lcom/onyx/galaxy/note/settings/data/LanguageType;->CHINESE_TRADITIONAL:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v3, Lcom/onyx/galaxy/note/settings/data/LanguageType;->ENGLISH_UK:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v4, Lcom/onyx/galaxy/note/settings/data/LanguageType;->ENGLISH_US:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v5, Lcom/onyx/galaxy/note/settings/data/LanguageType;->GERMAN:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v6, Lcom/onyx/galaxy/note/settings/data/LanguageType;->SPANISH:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v7, Lcom/onyx/galaxy/note/settings/data/LanguageType;->PORTUGUESE:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v8, Lcom/onyx/galaxy/note/settings/data/LanguageType;->TURKISH:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v9, Lcom/onyx/galaxy/note/settings/data/LanguageType;->KOREAN:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v10, Lcom/onyx/galaxy/note/settings/data/LanguageType;->JAPANESE:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v11, Lcom/onyx/galaxy/note/settings/data/LanguageType;->ARABIC:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v12, Lcom/onyx/galaxy/note/settings/data/LanguageType;->FRENCH:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v13, Lcom/onyx/galaxy/note/settings/data/LanguageType;->ITALIAN:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v14, Lcom/onyx/galaxy/note/settings/data/LanguageType;->RUSSIAN:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    filled-new-array/range {v0 .. v14}, [Lcom/onyx/galaxy/note/settings/data/LanguageType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->language_default:I

    const-string v3, "DEFAULT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->DEFAULT:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, "SIMPLIFIED_CHINESE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->chinese_simplified:I

    const-string v3, "CHINESE_SIMPLIFIED"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->CHINESE_SIMPLIFIED:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    const-string v2, "TRADITIONAL_CHINESE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->chinese_traditional:I

    const-string v3, "CHINESE_TRADITIONAL"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->CHINESE_TRADITIONAL:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "UK"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->english_uk:I

    const-string v3, "ENGLISH_UK"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->ENGLISH_UK:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "US"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->english_us:I

    const-string v3, "ENGLISH_US"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->ENGLISH_US:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "de"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->german:I

    const-string v3, "GERMAN"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->GERMAN:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "es"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->spanish:I

    const-string v3, "SPANISH"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->SPANISH:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->portuguese:I

    const-string v3, "PORTUGUESE"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->PORTUGUESE:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "tr"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->turkish:I

    const-string v3, "TURKISH"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->TURKISH:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "ko"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->korean:I

    const-string v3, "KOREAN"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->KOREAN:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "ja"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->japanese:I

    const-string v3, "JAPANESE"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->JAPANESE:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "ar"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->arabic:I

    const-string v3, "ARABIC"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->ARABIC:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "fr"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->french:I

    const-string v3, "FRENCH"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->FRENCH:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "it"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->italian:I

    const-string v3, "ITALIAN"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->ITALIAN:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "ru"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->russian:I

    const-string v3, "RUSSIAN"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/settings/data/LanguageType;-><init>(Ljava/lang/String;ILjava/util/Locale;I)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->RUSSIAN:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/LanguageType;->$values()[Lcom/onyx/galaxy/note/settings/data/LanguageType;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->$VALUES:[Lcom/onyx/galaxy/note/settings/data/LanguageType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/LanguageType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/settings/data/LanguageType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->Companion:Lcom/onyx/galaxy/note/settings/data/LanguageType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Locale;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->locale:Ljava/util/Locale;

    iput p4, p0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->displayName:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/settings/data/LanguageType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/data/LanguageType;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/settings/data/LanguageType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->$VALUES:[Lcom/onyx/galaxy/note/settings/data/LanguageType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/settings/data/LanguageType;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->displayName:I

    return p0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->locale:Ljava/util/Locale;

    return-object p0
.end method
