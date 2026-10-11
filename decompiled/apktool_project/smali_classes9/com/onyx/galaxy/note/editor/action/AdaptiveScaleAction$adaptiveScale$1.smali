.class final Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$adaptiveScale$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->p()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "invoke",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Ljava/lang/Float;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $viewport:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$adaptiveScale$1;->this$0:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$adaptiveScale$1;->$viewport:Landroid/graphics/RectF;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Ljava/lang/Float;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$adaptiveScale$1;->this$0:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$adaptiveScale$1;->$viewport:Landroid/graphics/RectF;

    .line 4
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->adaptive_scale_width_error_range:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 5
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$adaptiveScale$1;->this$0:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->scaleRange(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object p0

    const-string v2, "getMinimum(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 6
    invoke-virtual {p1, v0, v1, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->calculateScaleRatioForViewport(Landroid/graphics/RectF;FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$adaptiveScale$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
