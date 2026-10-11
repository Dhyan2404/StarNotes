.class public final enum Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "",
        "(Ljava/lang/String;I)V",
        "isFingerMode",
        "",
        "isReadingMode",
        "isStylusMode",
        "STYLUS_SCRIBBLE",
        "FINGER_SCRIBBLE",
        "READING",
        "Companion",
        "sdk-universal_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum FINGER_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

.field public static final enum READING:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

.field public static final enum STYLUS_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

.field public static final SWITCH_MODE_SEPARATE:Ljava/lang/String; = "_to_"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->STYLUS_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->FINGER_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->READING:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    const-string v1, "STYLUS_SCRIBBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->STYLUS_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    const-string v1, "FINGER_SCRIBBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->FINGER_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    const-string v1, "READING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->READING:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->$values()[Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->$VALUES:[Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->Companion:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode$Companion;

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
            "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->$VALUES:[Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    return-object v0
.end method


# virtual methods
.method public final isFingerMode()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->FINGER_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isReadingMode()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->READING:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStylusMode()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->STYLUS_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
