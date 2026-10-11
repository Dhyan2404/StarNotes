.class public final Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000c\"\u0004\u0008\u001d\u0010\u000e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;",
        "",
        "()V",
        "action",
        "",
        "getAction",
        "()I",
        "setAction",
        "(I)V",
        "displayScale",
        "",
        "getDisplayScale",
        "()F",
        "setDisplayScale",
        "(F)V",
        "focusX",
        "getFocusX",
        "setFocusX",
        "focusY",
        "getFocusY",
        "setFocusY",
        "matrix",
        "Landroid/graphics/Matrix;",
        "getMatrix",
        "()Landroid/graphics/Matrix;",
        "setMatrix",
        "(Landroid/graphics/Matrix;)V",
        "scaleFactor",
        "getScaleFactor",
        "setScaleFactor",
        "updateArgsByDetector",
        "",
        "detector",
        "Landroid/view/ScaleGestureDetector;",
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
.field public static final ACTION_SCALE_BEGIN:I = 0x0

.field public static final ACTION_SCALE_END:I = 0x2

.field public static final ACTION_SCALING:I = 0x1

.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private action:I

.field private displayScale:F

.field private focusX:F

.field private focusY:F

.field private matrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scaleFactor:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final getAction()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->action:I

    return p0
.end method

.method public final getDisplayScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->displayScale:F

    return p0
.end method

.method public final getFocusX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->focusX:F

    return p0
.end method

.method public final getFocusY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->focusY:F

    return p0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getScaleFactor()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->scaleFactor:F

    return p0
.end method

.method public final setAction(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->action:I

    return-void
.end method

.method public final setDisplayScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->displayScale:F

    return-void
.end method

.method public final setFocusX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->focusX:F

    return-void
.end method

.method public final setFocusY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->focusY:F

    return-void
.end method

.method public final setMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public final setScaleFactor(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->scaleFactor:F

    return-void
.end method

.method public final updateArgsByDetector(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->focusX:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->focusY:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->scaleFactor:F

    return-void
.end method
