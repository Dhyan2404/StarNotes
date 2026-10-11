.class public final enum Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;",
        "",
        "(Ljava/lang/String;I)V",
        "isCustomCanvasExpandType",
        "",
        "isDefaultCanvasExpandType",
        "DEFAULT",
        "HEIGHT_EXPAND",
        "WIDTH_EXPAND",
        "WIDTH_HEIGHT_EXPAND",
        "CUSTOM",
        "CLIP",
        "Companion",
        "sdk-replicator_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

.field public static final enum CLIP:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

.field public static final enum CUSTOM:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DEFAULT:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

.field public static final enum HEIGHT_EXPAND:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

.field public static final enum WIDTH_EXPAND:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

.field public static final enum WIDTH_HEIGHT_EXPAND:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->DEFAULT:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->HEIGHT_EXPAND:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->WIDTH_EXPAND:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    sget-object v3, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->WIDTH_HEIGHT_EXPAND:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    sget-object v4, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    sget-object v5, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->CLIP:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    filled-new-array/range {v0 .. v5}, [Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->DEFAULT:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    const-string v1, "HEIGHT_EXPAND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->HEIGHT_EXPAND:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    const-string v1, "WIDTH_EXPAND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->WIDTH_EXPAND:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    const-string v1, "WIDTH_HEIGHT_EXPAND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->WIDTH_HEIGHT_EXPAND:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    const-string v1, "CUSTOM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    const-string v1, "CLIP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->CLIP:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->$values()[Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->$VALUES:[Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->Companion:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType$Companion;

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
            "Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->$VALUES:[Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    return-object v0
.end method


# virtual methods
.method public isCustomCanvasExpandType()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDefaultCanvasExpandType()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->DEFAULT:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
