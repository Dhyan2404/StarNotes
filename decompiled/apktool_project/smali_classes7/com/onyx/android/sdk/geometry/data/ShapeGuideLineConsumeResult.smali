.class public final Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;",
        "",
        "()V",
        "dx",
        "",
        "getDx",
        "()F",
        "setDx",
        "(F)V",
        "dy",
        "getDy",
        "setDy",
        "isStickyState",
        "",
        "()Z",
        "setStickyState",
        "(Z)V",
        "Companion",
        "sdk-geometry_release"
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
.field public static final Companion:Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private dx:F

.field private dy:F

.field private isStickyState:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->Companion:Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDx()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->dx:F

    return p0
.end method

.method public final getDy()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->dy:F

    return p0
.end method

.method public final isStickyState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->isStickyState:Z

    return p0
.end method

.method public final setDx(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->dx:F

    return-void
.end method

.method public final setDy(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->dy:F

    return-void
.end method

.method public final setStickyState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->isStickyState:Z

    return-void
.end method
