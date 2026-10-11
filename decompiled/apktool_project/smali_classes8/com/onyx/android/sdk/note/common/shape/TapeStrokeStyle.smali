.class public final enum Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u0000 \u00062\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;",
        "",
        "(Ljava/lang/String;I)V",
        "STROKE",
        "STRIPES_FILL",
        "BITMAP_FILL",
        "Companion",
        "sdk-note_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

.field public static final enum BITMAP_FILL:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum STRIPES_FILL:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

.field public static final enum STROKE:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

.field private static final defaultTapeStrokeStyle:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->STROKE:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->STRIPES_FILL:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->BITMAP_FILL:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    const-string v1, "STROKE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->STROKE:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    const-string v1, "STRIPES_FILL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->STRIPES_FILL:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    new-instance v1, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    const-string v2, "BITMAP_FILL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->BITMAP_FILL:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    invoke-static {}, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->$values()[Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->$VALUES:[Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->Companion:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle$Companion;

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->defaultTapeStrokeStyle:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

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

.method public static final synthetic access$getDefaultTapeStrokeStyle$cp()Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->defaultTapeStrokeStyle:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->$VALUES:[Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    return-object v0
.end method
