.class public final enum Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextSpacingTrim"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;",
        "",
        "(Ljava/lang/String;I)V",
        "NORMAL",
        "SPACE_ALL",
        "SPACE_FIRST",
        "TRIM_START",
        "Companion",
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

.field public static final Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum NORMAL:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

.field public static final enum SPACE_ALL:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

.field public static final enum SPACE_FIRST:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

.field public static final enum TRIM_START:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->NORMAL:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->SPACE_ALL:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    sget-object v2, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->SPACE_FIRST:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    sget-object v3, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->TRIM_START:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    filled-new-array {v0, v1, v2, v3}, [Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->NORMAL:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    const-string v1, "SPACE_ALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->SPACE_ALL:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    const-string v1, "SPACE_FIRST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->SPACE_FIRST:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    const-string v1, "TRIM_START"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->TRIM_START:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    invoke-static {}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->$values()[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->$VALUES:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim$Companion;

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
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->$VALUES:[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    return-object v0
.end method
