.class public final Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->t(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$m;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$m;->f:Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$m;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$m;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$m;->f:Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->displayScalingBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$m;->a(Ljava/util/List;)V

    return-void
.end method
