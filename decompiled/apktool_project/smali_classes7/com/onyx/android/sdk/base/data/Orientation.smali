.class public final enum Lcom/onyx/android/sdk/base/data/Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/data/Orientation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/base/data/Orientation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/Orientation;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "isPortrait",
        "",
        "LANDSCAPE",
        "PORTRAIT",
        "Companion",
        "sdk-base_release"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/base/data/Orientation;

.field public static final Companion:Lcom/onyx/android/sdk/base/data/Orientation$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum LANDSCAPE:Lcom/onyx/android/sdk/base/data/Orientation;

.field public static final enum PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/base/data/Orientation;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/data/Orientation;->LANDSCAPE:Lcom/onyx/android/sdk/base/data/Orientation;

    sget-object v1, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    filled-new-array {v0, v1}, [Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/base/data/Orientation;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/onyx/android/sdk/base/data/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/Orientation;->LANDSCAPE:Lcom/onyx/android/sdk/base/data/Orientation;

    new-instance v0, Lcom/onyx/android/sdk/base/data/Orientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/onyx/android/sdk/base/data/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-static {}, Lcom/onyx/android/sdk/base/data/Orientation;->$values()[Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/data/Orientation;->$VALUES:[Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/data/Orientation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/android/sdk/base/data/Orientation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/data/Orientation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/Orientation;->Companion:Lcom/onyx/android/sdk/base/data/Orientation$Companion;

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

    iput p3, p0, Lcom/onyx/android/sdk/base/data/Orientation;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/base/data/Orientation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/data/Orientation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/Orientation;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/Orientation;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/base/data/Orientation;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/data/Orientation;->$VALUES:[Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/base/data/Orientation;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/Orientation;->value:I

    return p0
.end method

.method public final isPortrait()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
