.class public final Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000f\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u0011\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0005R\u001a\u0010\u0012\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;",
        "",
        "()V",
        "direction",
        "",
        "(I)V",
        "arrowHeight",
        "",
        "getArrowHeight",
        "()F",
        "setArrowHeight",
        "(F)V",
        "arrowLenFactor",
        "getArrowLenFactor",
        "setArrowLenFactor",
        "getDirection",
        "()I",
        "setDirection",
        "halfBottomLine",
        "getHalfBottomLine",
        "setHalfBottomLine",
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
.field public static final ARROW_DIRECTION_BOTH:I = 0x3

.field public static final ARROW_DIRECTION_END:I = 0x2

.field public static final ARROW_DIRECTION_NONE:I = 0x0

.field public static final ARROW_DIRECTION_START:I = 0x1

.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NONE:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private arrowHeight:F

.field private arrowLenFactor:F

.field private direction:I

.field private halfBottomLine:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle$Companion;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->NONE:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;-><init>(I)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->DEFAULT:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 2
    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->arrowLenFactor:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 3
    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->arrowHeight:F

    const/high16 v0, 0x40b00000    # 5.5f

    .line 4
    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->halfBottomLine:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 6
    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->arrowLenFactor:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 7
    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->arrowHeight:F

    const/high16 v0, 0x40b00000    # 5.5f

    .line 8
    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->halfBottomLine:F

    .line 9
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->direction:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->DEFAULT:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    return-object v0
.end method

.method public static final synthetic access$getNONE$cp()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->NONE:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    return-object v0
.end method


# virtual methods
.method public final getArrowHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->arrowHeight:F

    return p0
.end method

.method public final getArrowLenFactor()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->arrowLenFactor:F

    return p0
.end method

.method public final getDirection()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->direction:I

    return p0
.end method

.method public final getHalfBottomLine()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->halfBottomLine:F

    return p0
.end method

.method public final setArrowHeight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->arrowHeight:F

    return-void
.end method

.method public final setArrowLenFactor(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->arrowLenFactor:F

    return-void
.end method

.method public final setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->direction:I

    return-void
.end method

.method public final setHalfBottomLine(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->halfBottomLine:F

    return-void
.end method
