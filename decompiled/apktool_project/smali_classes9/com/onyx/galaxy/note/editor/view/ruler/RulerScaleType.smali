.class public final enum Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0019\u0008\u0086\u0081\u0002\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001bB\'\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000bj\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;",
        "",
        "smallScaleStep",
        "",
        "middleScaleStep",
        "bigScaleStep",
        "scaleTextStep",
        "(Ljava/lang/String;IIIII)V",
        "getBigScaleStep",
        "()I",
        "setBigScaleStep",
        "(I)V",
        "getMiddleScaleStep",
        "setMiddleScaleStep",
        "getScaleTextStep",
        "setScaleTextStep",
        "getSmallScaleStep",
        "setSmallScaleStep",
        "CM_DEFAULT",
        "CM_COARSE",
        "CM_TWO_SCALE",
        "CM_FIVE_SCALE",
        "IN_DEFAULT",
        "IN_HALF",
        "IN_QUARTER",
        "IN_TWO_SCALE",
        "IN_FIVE_SCALE",
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

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

.field public static final enum CM_COARSE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

.field public static final enum CM_DEFAULT:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

.field public static final enum CM_FIVE_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

.field public static final enum CM_TWO_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum IN_DEFAULT:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

.field public static final enum IN_FIVE_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

.field public static final enum IN_HALF:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

.field public static final enum IN_QUARTER:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

.field public static final enum IN_TWO_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

.field private static final MIN_SCALE_INTERVAL:F


# instance fields
.field private bigScaleStep:I

.field private middleScaleStep:I

.field private scaleTextStep:I

.field private smallScaleStep:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;
    .locals 9

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_DEFAULT:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_COARSE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_TWO_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    sget-object v3, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_FIVE_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    sget-object v4, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_DEFAULT:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    sget-object v5, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_HALF:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    sget-object v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_QUARTER:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    sget-object v7, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_TWO_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    sget-object v8, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_FIVE_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    filled-new-array/range {v0 .. v8}, [Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 15

    new-instance v7, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    const-string v1, "CM_DEFAULT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/16 v5, 0xa

    const/16 v6, 0xa

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_DEFAULT:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    const-string v9, "CM_COARSE"

    const/4 v10, 0x1

    const/4 v11, 0x5

    const/4 v12, 0x5

    const/16 v13, 0xa

    const/16 v14, 0xa

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_COARSE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    const-string v2, "CM_TWO_SCALE"

    const/4 v3, 0x2

    const/4 v5, 0x5

    const/16 v7, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_TWO_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    const-string v9, "CM_FIVE_SCALE"

    const/4 v10, 0x3

    const/16 v11, 0xa

    const/16 v12, 0xa

    const/16 v13, 0x32

    const/16 v14, 0x32

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_FIVE_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    const-string v2, "IN_DEFAULT"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_DEFAULT:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    const-string v9, "IN_HALF"

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/16 v13, 0x10

    const/16 v14, 0x10

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_HALF:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    const-string v2, "IN_QUARTER"

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_QUARTER:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    const-string v9, "IN_TWO_SCALE"

    const/4 v10, 0x7

    const/16 v11, 0x8

    const/16 v12, 0x8

    const/16 v14, 0x20

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_TWO_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    const-string v2, "IN_FIVE_SCALE"

    const/16 v3, 0x8

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x50

    const/16 v7, 0x50

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_FIVE_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    invoke-static {}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->$values()[Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->$VALUES:[Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->Companion:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_2:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    sput v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->MIN_SCALE_INTERVAL:F

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->smallScaleStep:I

    iput p4, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->middleScaleStep:I

    iput p5, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->bigScaleStep:I

    iput p6, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->scaleTextStep:I

    return-void
.end method

.method public static final synthetic access$getMIN_SCALE_INTERVAL$cp()F
    .locals 1

    sget v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->MIN_SCALE_INTERVAL:F

    return v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->$VALUES:[Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    return-object v0
.end method


# virtual methods
.method public final getBigScaleStep()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->bigScaleStep:I

    return p0
.end method

.method public final getMiddleScaleStep()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->middleScaleStep:I

    return p0
.end method

.method public final getScaleTextStep()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->scaleTextStep:I

    return p0
.end method

.method public final getSmallScaleStep()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->smallScaleStep:I

    return p0
.end method

.method public final setBigScaleStep(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->bigScaleStep:I

    return-void
.end method

.method public final setMiddleScaleStep(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->middleScaleStep:I

    return-void
.end method

.method public final setScaleTextStep(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->scaleTextStep:I

    return-void
.end method

.method public final setSmallScaleStep(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->smallScaleStep:I

    return-void
.end method
