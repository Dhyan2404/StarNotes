.class public final Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;
.super Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2;->invoke()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007H\u0016J0\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1",
        "Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;",
        "applyStrokeStyle",
        "",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "render",
        "Lkotlin/Function0;",
        "createPenRender",
        "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;",
        "renderMatrix",
        "Landroid/graphics/Matrix;",
        "config",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
        "defaultPenConfig",
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


# instance fields
.field public final synthetic d:Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;)V
    .locals 0

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;->d:Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;-><init>(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V

    return-void
.end method


# virtual methods
.method public applyStrokeStyle(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "render"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;->d:Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->access$applySquareStrokeStyle(Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public createPenRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Landroid/graphics/Matrix;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderMatrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;->createPenConfig(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;->createPenRender(Lcom/onyx/android/sdk/pen/NeoPenConfig;Z)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p0

    return-object p0
.end method

.method public defaultPenConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;->defaultPenConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->resetBrushRatioAndAngle()V

    return-object p0
.end method
