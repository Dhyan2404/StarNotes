.class public final Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;
.implements Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCounterWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CounterWindow.kt\ncom/onyx/galaxy/note/editor/view/window/CounterWindow\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,199:1\n91#2,14:200\n*S KotlinDebug\n*F\n+ 1 CounterWindow.kt\ncom/onyx/galaxy/note/editor/view/window/CounterWindow\n*L\n191#1:200,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010 \u001a\u00020\u001d\u0012\u0006\u0010$\u001a\u00020!\u00a2\u0006\u0004\u00084\u00105J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\t\u001a\u00020\u0007H\u0016J\u0008\u0010\n\u001a\u00020\u0007H\u0016J\u0008\u0010\u000b\u001a\u00020\u0007H\u0016J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016J(\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0005J\u0006\u0010\u0015\u001a\u00020\u0007J\u0006\u0010\u0016\u001a\u00020\u0005J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0017H\u0007J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0005H\u0016J\u0008\u0010\u001a\u001a\u00020\u0007H\u0002J\u0008\u0010\u001b\u001a\u00020\u0007H\u0002J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0005H\u0002R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0018\u0010\'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u001b\u00103\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u00101\u001a\u0004\u0008-\u00102\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;",
        "Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;",
        "Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onInterceptTouchEvent",
        "",
        "afterDrag",
        "onWindowDismiss",
        "onWindowLocationChanged",
        "onOrientationChanged",
        "onConfigurationChanged",
        "Landroid/app/Activity;",
        "activity",
        "Landroid/graphics/Point;",
        "location",
        "Landroid/graphics/Rect;",
        "limitRect",
        "isExpand",
        "show",
        "dismiss",
        "isShowing",
        "Lcom/onyx/galaxy/note/editor/event/CounterStateChangeEvent;",
        "onCounterStateChangeEvent",
        "onExpandStateChanged",
        "f",
        "h",
        "c",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "a",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "counterBundle",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "b",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "counterEntry",
        "Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;",
        "Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;",
        "window",
        "Lcom/onyx/galaxy/note/editor/view/CounterView;",
        "d",
        "Lcom/onyx/galaxy/note/editor/view/CounterView;",
        "counterView",
        "Landroid/animation/ValueAnimator;",
        "e",
        "Landroid/animation/ValueAnimator;",
        "expandAnimator",
        "Landroid/os/Handler;",
        "Lkotlin/Lazy;",
        "()Landroid/os/Handler;",
        "handler",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCounterWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CounterWindow.kt\ncom/onyx/galaxy/note/editor/view/window/CounterWindow\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,199:1\n91#2,14:200\n*S KotlinDebug\n*F\n+ 1 CounterWindow.kt\ncom/onyx/galaxy/note/editor/view/window/CounterWindow\n*L\n191#1:200,14\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lcom/onyx/galaxy/note/editor/view/CounterView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/data/CounterEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "counterEntry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->a:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->b:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$handler$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$handler$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->f:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->g(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public static final synthetic access$getCounterView$p(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;)Lcom/onyx/galaxy/note/editor/view/CounterView;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->d:Lcom/onyx/galaxy/note/editor/view/CounterView;

    return-object p0
.end method

.method public static final synthetic access$getWindow$p(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;)Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    return-object p0
.end method

.method public static final synthetic access$saveWindowLocation(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->h()V

    return-void
.end method

.method public static synthetic b(Landroid/view/WindowManager$LayoutParams;Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->d(Landroid/view/WindowManager$LayoutParams;Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final d(Landroid/view/WindowManager$LayoutParams;Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$layoutParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p1, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindow()Lcom/hjq/window/EasyWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/hjq/window/EasyWindow;->setWindowParams(Landroid/view/WindowManager$LayoutParams;)Lcom/hjq/window/EasyWindow;

    :cond_0
    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$limitRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/extension/Activity;->getFrontActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->show(Landroid/app/Activity;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public static synthetic show$default(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/app/Activity;Landroid/graphics/Point;Landroid/graphics/Rect;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->show(Landroid/app/Activity;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V

    return-void
.end method


# virtual methods
.method public afterDrag()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->afterDrag(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->h()V

    return-void
.end method

.method public beforeDrag()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->beforeDrag(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    return-void
.end method

.method public final c(Z)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindow()Lcom/hjq/window/EasyWindow;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeWindowParams(Lcom/hjq/window/EasyWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->d:Lcom/onyx/galaxy/note/editor/view/CounterView;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v2, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v5, v5, v3, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-eqz p1, :cond_2

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr p1, v1

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v2, v1, v5

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getLimitRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v5, v2, Landroid/graphics/Rect;->left:I

    :cond_3
    invoke-static {p1, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->counter_window_collapse_expand_animation_duration:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindow()Lcom/hjq/window/EasyWindow;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lcom/hjq/window/EasyWindow;->setWindowParams(Landroid/view/WindowManager$LayoutParams;)Lcom/hjq/window/EasyWindow;

    :cond_4
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz v1, :cond_5

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->updateWindowCoordinate(II)V

    :cond_5
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindow()Lcom/hjq/window/EasyWindow;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/hjq/window/EasyWindow;->update()V

    :cond_6
    new-instance v1, Lcom/sunia/HTREnginev2/mfe;

    invoke-direct {v1, v0, p0}, Lcom/sunia/HTREnginev2/mfe;-><init>(Landroid/view/WindowManager$LayoutParams;Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$animateToRight$$inlined$addListener$default$1;

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$animateToRight$$inlined$addListener$default$1;-><init>(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final dismiss()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->e()Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getLimitRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindow()Lcom/hjq/window/EasyWindow;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeWindowParams(Lcom/hjq/window/EasyWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/graphics/Point;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {v3, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->d:Lcom/onyx/galaxy/note/editor/view/CounterView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/CounterView;->isExpanded()Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->dismiss()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v4, Lcom/sunia/HTREnginev2/lfe;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/sunia/HTREnginev2/lfe;-><init>(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindow()Lcom/hjq/window/EasyWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getCounterWindowLocationOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$saveWindowLocation$1$1;

    invoke-direct {v2, v0, p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$saveWindowLocation$1$1;-><init>(Landroid/view/WindowManager$LayoutParams;Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public final isShowing()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->isShowing()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public onConfigurationChanged()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->onConfigurationChanged(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->f()V

    return-void
.end method

.method public final onCounterStateChangeEvent(Lcom/onyx/galaxy/note/editor/event/CounterStateChangeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/CounterStateChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->d:Lcom/onyx/galaxy/note/editor/view/CounterView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public onExpandStateChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->d:Lcom/onyx/galaxy/note/editor/view/CounterView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindowWidthSafely()I

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    sget-object v3, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/extension/Activity;->getFrontActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivityDecorView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->locationInActivity(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getX()I

    move-result v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c(Z)V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDownAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindow()Lcom/hjq/window/EasyWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/hjq/window/EasyWindow;->removeWindowFlags(I)Lcom/hjq/window/EasyWindow;

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindow()Lcom/hjq/window/EasyWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->update()V

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->d:Lcom/onyx/galaxy/note/editor/view/CounterView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->interceptTouchEventIf(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->onInterceptTouchEvent(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged()V
    .locals 1

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->onOrientationChanged(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->d:Lcom/onyx/galaxy/note/editor/view/CounterView;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getLimitRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->updateVisibleRect(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onWindowDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->onWindowDismiss(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    return-void
.end method

.method public onWindowLocationChanged()V
    .locals 1

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->onWindowLocationChanged(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->d:Lcom/onyx/galaxy/note/editor/view/CounterView;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getLimitRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->updateVisibleRect(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onWindowShow()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->onWindowShow(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/CounterView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->a:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->b:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-direct {v0, v1, v2, p1}, Lcom/onyx/galaxy/note/editor/view/CounterView;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->d:Lcom/onyx/galaxy/note/editor/view/CounterView;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    invoke-direct {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;-><init>(Landroid/app/Activity;Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$show$1;

    invoke-direct {p1, p0, p2}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$show$1;-><init>(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/graphics/Point;)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->setupWindow(Lkotlin/jvm/functions/Function1;)Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->d:Lcom/onyx/galaxy/note/editor/view/CounterView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p4}, Lcom/onyx/galaxy/note/editor/view/CounterView;->setInitState(Z)V

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->d:Lcom/onyx/galaxy/note/editor/view/CounterView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->setCallback(Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;)V

    :cond_2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->updateLimitRect(Landroid/graphics/Rect;)V

    :cond_3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->c:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->show()V

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->h()V

    return-void
.end method
