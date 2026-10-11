.class public final enum Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;",
        "",
        "(Ljava/lang/String;I)V",
        "NORMAL",
        "UNDERLINE",
        "LINE_THROUGH",
        "sdk-neopdf_release"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

.field public static final enum LINE_THROUGH:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

.field public static final enum NORMAL:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

.field public static final enum UNDERLINE:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->NORMAL:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    sget-object v1, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->UNDERLINE:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    sget-object v2, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->LINE_THROUGH:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->NORMAL:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    new-instance v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    const-string v1, "UNDERLINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->UNDERLINE:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    new-instance v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    const-string v1, "LINE_THROUGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->LINE_THROUGH:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    invoke-static {}, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->$values()[Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->$VALUES:[Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->$VALUES:[Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    return-object v0
.end method
