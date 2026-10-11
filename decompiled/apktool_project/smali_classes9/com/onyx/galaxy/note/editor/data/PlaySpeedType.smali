.class public final enum Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/data/PlaySpeedType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0014B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;",
        "",
        "speed",
        "",
        "text",
        "",
        "(Ljava/lang/String;IFLjava/lang/String;)V",
        "getSpeed",
        "()F",
        "setSpeed",
        "(F)V",
        "getText",
        "()Ljava/lang/String;",
        "setText",
        "(Ljava/lang/String;)V",
        "ZERO_POINT_SEVEN_FIVE",
        "ONE",
        "ONE_POINT_TWO_FIVE",
        "ONE_POINT_FIVE",
        "TWO",
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

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

.field public static final Companion:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum ONE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

.field public static final enum ONE_POINT_FIVE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

.field public static final enum ONE_POINT_TWO_FIVE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

.field public static final enum TWO:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

.field public static final enum ZERO_POINT_SEVEN_FIVE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;


# instance fields
.field private speed:F

.field private text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->ZERO_POINT_SEVEN_FIVE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->ONE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->ONE_POINT_TWO_FIVE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->ONE_POINT_FIVE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    sget-object v4, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->TWO:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    const/high16 v1, 0x3f400000    # 0.75f

    const-string v2, "0.75X"

    const-string v3, "ZERO_POINT_SEVEN_FIVE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->ZERO_POINT_SEVEN_FIVE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "1.0X"

    const-string v3, "ONE"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->ONE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    const/high16 v1, 0x3fa00000    # 1.25f

    const-string v2, "1.25X"

    const-string v3, "ONE_POINT_TWO_FIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->ONE_POINT_TWO_FIVE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    const/high16 v1, 0x3fc00000    # 1.5f

    const-string v2, "1.5X"

    const-string v3, "ONE_POINT_FIVE"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->ONE_POINT_FIVE:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    const/high16 v1, 0x40000000    # 2.0f

    const-string v2, "2.0X"

    const-string v3, "TWO"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->TWO:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->$values()[Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->$VALUES:[Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->Companion:Lcom/onyx/galaxy/note/editor/data/PlaySpeedType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->speed:F

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->text:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->$VALUES:[Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    return-object v0
.end method


# virtual methods
.method public final getSpeed()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->speed:F

    return p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->speed:F

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->text:Ljava/lang/String;

    return-void
.end method
