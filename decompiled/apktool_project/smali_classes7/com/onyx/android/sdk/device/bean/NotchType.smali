.class public final enum Lcom/onyx/android/sdk/device/bean/NotchType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/device/bean/NotchType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/device/bean/NotchType;",
        "",
        "positionOffset",
        "Landroid/graphics/Point;",
        "(Ljava/lang/String;ILandroid/graphics/Point;)V",
        "getPositionOffset",
        "()Landroid/graphics/Point;",
        "LEFT_TOP",
        "RIGHT_TOP",
        "MIDDLE_LEFT",
        "MIDDLE_RIGHT",
        "MIDDLE_TOP",
        "sdk-device_release"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/device/bean/NotchType;

.field public static final enum LEFT_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;

.field public static final enum MIDDLE_LEFT:Lcom/onyx/android/sdk/device/bean/NotchType;

.field public static final enum MIDDLE_RIGHT:Lcom/onyx/android/sdk/device/bean/NotchType;

.field public static final enum MIDDLE_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;

.field public static final enum RIGHT_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;


# instance fields
.field private final positionOffset:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/device/bean/NotchType;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/device/bean/NotchType;->LEFT_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;

    sget-object v1, Lcom/onyx/android/sdk/device/bean/NotchType;->RIGHT_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;

    sget-object v2, Lcom/onyx/android/sdk/device/bean/NotchType;->MIDDLE_LEFT:Lcom/onyx/android/sdk/device/bean/NotchType;

    sget-object v3, Lcom/onyx/android/sdk/device/bean/NotchType;->MIDDLE_RIGHT:Lcom/onyx/android/sdk/device/bean/NotchType;

    sget-object v4, Lcom/onyx/android/sdk/device/bean/NotchType;->MIDDLE_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/onyx/android/sdk/device/bean/NotchType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/device/bean/NotchType;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const-string v2, "LEFT_TOP"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/onyx/android/sdk/device/bean/NotchType;-><init>(Ljava/lang/String;ILandroid/graphics/Point;)V

    sput-object v0, Lcom/onyx/android/sdk/device/bean/NotchType;->LEFT_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;

    new-instance v0, Lcom/onyx/android/sdk/device/bean/NotchType;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const-string v2, "RIGHT_TOP"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/onyx/android/sdk/device/bean/NotchType;-><init>(Ljava/lang/String;ILandroid/graphics/Point;)V

    sput-object v0, Lcom/onyx/android/sdk/device/bean/NotchType;->RIGHT_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;

    new-instance v0, Lcom/onyx/android/sdk/device/bean/NotchType;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const-string v2, "MIDDLE_LEFT"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/onyx/android/sdk/device/bean/NotchType;-><init>(Ljava/lang/String;ILandroid/graphics/Point;)V

    sput-object v0, Lcom/onyx/android/sdk/device/bean/NotchType;->MIDDLE_LEFT:Lcom/onyx/android/sdk/device/bean/NotchType;

    new-instance v0, Lcom/onyx/android/sdk/device/bean/NotchType;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const-string v2, "MIDDLE_RIGHT"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/onyx/android/sdk/device/bean/NotchType;-><init>(Ljava/lang/String;ILandroid/graphics/Point;)V

    sput-object v0, Lcom/onyx/android/sdk/device/bean/NotchType;->MIDDLE_RIGHT:Lcom/onyx/android/sdk/device/bean/NotchType;

    new-instance v0, Lcom/onyx/android/sdk/device/bean/NotchType;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const-string v2, "MIDDLE_TOP"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/onyx/android/sdk/device/bean/NotchType;-><init>(Ljava/lang/String;ILandroid/graphics/Point;)V

    sput-object v0, Lcom/onyx/android/sdk/device/bean/NotchType;->MIDDLE_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;

    invoke-static {}, Lcom/onyx/android/sdk/device/bean/NotchType;->$values()[Lcom/onyx/android/sdk/device/bean/NotchType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/device/bean/NotchType;->$VALUES:[Lcom/onyx/android/sdk/device/bean/NotchType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/device/bean/NotchType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/graphics/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/onyx/android/sdk/device/bean/NotchType;->positionOffset:Landroid/graphics/Point;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/device/bean/NotchType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/device/bean/NotchType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/device/bean/NotchType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/device/bean/NotchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/device/bean/NotchType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/device/bean/NotchType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/device/bean/NotchType;->$VALUES:[Lcom/onyx/android/sdk/device/bean/NotchType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/device/bean/NotchType;

    return-object v0
.end method


# virtual methods
.method public final getPositionOffset()Landroid/graphics/Point;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/device/bean/NotchType;->positionOffset:Landroid/graphics/Point;

    return-object p0
.end method
