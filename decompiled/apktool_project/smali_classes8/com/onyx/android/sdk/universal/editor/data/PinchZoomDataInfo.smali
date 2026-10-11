.class public final Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;",
        "",
        "()V",
        "initialFocusX",
        "",
        "getInitialFocusX",
        "()F",
        "setInitialFocusX",
        "(F)V",
        "initialFocusY",
        "getInitialFocusY",
        "setInitialFocusY",
        "lastScaleFactor",
        "getLastScaleFactor",
        "setLastScaleFactor",
        "lastScalingDisplayMatrix",
        "Landroid/graphics/Matrix;",
        "getLastScalingDisplayMatrix",
        "()Landroid/graphics/Matrix;",
        "setLastScalingDisplayMatrix",
        "(Landroid/graphics/Matrix;)V",
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


# instance fields
.field private initialFocusX:F

.field private initialFocusY:F

.field private lastScaleFactor:F

.field private lastScalingDisplayMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->lastScalingDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->lastScaleFactor:F

    return-void
.end method


# virtual methods
.method public final getInitialFocusX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->initialFocusX:F

    return p0
.end method

.method public final getInitialFocusY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->initialFocusY:F

    return p0
.end method

.method public final getLastScaleFactor()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->lastScaleFactor:F

    return p0
.end method

.method public final getLastScalingDisplayMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->lastScalingDisplayMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final setInitialFocusX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->initialFocusX:F

    return-void
.end method

.method public final setInitialFocusY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->initialFocusY:F

    return-void
.end method

.method public final setLastScaleFactor(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->lastScaleFactor:F

    return-void
.end method

.method public final setLastScalingDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->lastScalingDisplayMatrix:Landroid/graphics/Matrix;

    return-void
.end method
