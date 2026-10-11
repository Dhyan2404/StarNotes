.class public final Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$LocateMagnifierViewStateChangedHandler;
.super Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocateMagnifierViewStateChangedHandler"
.end annotation


# instance fields
.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$LocateMagnifierViewStateChangedHandler;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;-><init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)Z
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "currentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isNone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isMove()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;->getPreviousMode()Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isNone()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onViewStateChanged(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)V
    .locals 8
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldRectF"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newRectF"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "offset"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "currentType"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$LocateMagnifierViewStateChangedHandler;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p1, p3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$isHitTestViewportEdge(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;Landroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$LocateMagnifierViewStateChangedHandler;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p0, p3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$locateRectInPage(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;Landroid/graphics/RectF;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$LocateMagnifierViewStateChangedHandler;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewportEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->limitShapeRectInCurrentPage()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p3, Landroid/graphics/RectF;->left:F

    iget p4, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p4

    iget p4, p3, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p4, p2

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_LEFT:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const/high16 v6, -0x3ee00000    # -10.0f

    if-ne p5, p2, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual$default(Lcom/onyx/android/sdk/base/utils/MathUtils;FFFILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    add-float/2addr p1, v6

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_RIGHT:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const/high16 v7, 0x41200000    # 10.0f

    if-ne p5, p2, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual$default(Lcom/onyx/android/sdk/base/utils/MathUtils;FFFILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    add-float/2addr p1, v7

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_UP:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-ne p5, p2, :cond_4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move v1, p4

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual$default(Lcom/onyx/android/sdk/base/utils/MathUtils;FFFILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    add-float/2addr p4, v6

    goto :goto_0

    :cond_4
    sget-object p2, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_DOWN:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-ne p5, p2, :cond_5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move v1, p4

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual$default(Lcom/onyx/android/sdk/base/utils/MathUtils;FFFILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    add-float/2addr p4, v7

    goto :goto_0

    :cond_5
    sget-object p2, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_NEW_LINE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-ne p5, p2, :cond_6

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move v1, p4

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual$default(Lcom/onyx/android/sdk/base/utils/MathUtils;FFFILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$LocateMagnifierViewStateChangedHandler;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewportContainer$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;->getViewportView()Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getNewLineOffset()F

    move-result p2

    add-float/2addr p4, p2

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->g()Lcom/onyx/android/sdk/base/rx/RxFilter;

    move-result-object p2

    sget-object p3, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;

    invoke-virtual {p3, p1, p4}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;->createScrolling(FF)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->f()J

    move-result-wide p2

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance p5, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$LocateMagnifierViewStateChangedHandler$onViewStateChanged$1;

    invoke-direct {p5, p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$LocateMagnifierViewStateChangedHandler$onViewStateChanged$1;-><init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$LocateMagnifierViewStateChangedHandler;)V

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)I

    return-void

    :cond_6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$LocateMagnifierViewStateChangedHandler;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p0, p3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$locateRectInPage(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;Landroid/graphics/RectF;)V

    return-void
.end method
