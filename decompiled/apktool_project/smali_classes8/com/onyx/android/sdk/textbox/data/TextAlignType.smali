.class public final enum Lcom/onyx/android/sdk/textbox/data/TextAlignType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/textbox/data/TextAlignType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/data/TextAlignType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "JUSTIFY_LEFT",
        "JUSTIFY_RIGHT",
        "JUSTIFY_CENTER",
        "Companion",
        "sdk-textbox_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/textbox/data/TextAlignType;

.field public static final Companion:Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum JUSTIFY_CENTER:Lcom/onyx/android/sdk/textbox/data/TextAlignType;

.field public static final enum JUSTIFY_LEFT:Lcom/onyx/android/sdk/textbox/data/TextAlignType;

.field public static final enum JUSTIFY_RIGHT:Lcom/onyx/android/sdk/textbox/data/TextAlignType;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/textbox/data/TextAlignType;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->JUSTIFY_LEFT:Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    sget-object v1, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->JUSTIFY_RIGHT:Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    sget-object v2, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->JUSTIFY_CENTER:Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    const/4 v1, 0x0

    const-string v2, "left"

    const-string v3, "JUSTIFY_LEFT"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/textbox/data/TextAlignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->JUSTIFY_LEFT:Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    new-instance v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    const/4 v1, 0x1

    const-string v2, "right"

    const-string v3, "JUSTIFY_RIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/textbox/data/TextAlignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->JUSTIFY_RIGHT:Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    new-instance v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    const/4 v1, 0x2

    const-string v2, "center"

    const-string v3, "JUSTIFY_CENTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/textbox/data/TextAlignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->JUSTIFY_CENTER:Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    invoke-static {}, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->$values()[Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->$VALUES:[Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->Companion:Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;

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

    iput-object p3, p0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/textbox/data/TextAlignType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/data/TextAlignType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/textbox/data/TextAlignType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->$VALUES:[Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->value:Ljava/lang/String;

    return-object p0
.end method
