.class public final Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;
.super Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001$B\'\u0008\u0007\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\"\u0010#J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\u0012\u001a\u00020\tH\u0002R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;",
        "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;",
        "Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;",
        "callback",
        "",
        "setCallback",
        "",
        "orientation",
        "setOrientation",
        "",
        "isVerticalOrientation",
        "Landroid/view/MotionEvent;",
        "event",
        "onInterceptTouchEvent",
        "onTouchEvent",
        "computeScroll",
        "d",
        "b",
        "c",
        "Landroidx/customview/widget/ViewDragHelper;",
        "h",
        "Landroidx/customview/widget/ViewDragHelper;",
        "viewDragHelper",
        "i",
        "Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;",
        "Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;",
        "j",
        "Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;",
        "dragDetector",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "defStyle",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "CustomCallback",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public h:Landroidx/customview/widget/ViewDragHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->j:Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;

    .line 6
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;-><init>(Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;)V

    invoke-static {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->h:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$canQuickDrag(Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->d(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->i:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    return-object p0
.end method

.method public static final synthetic access$getViewDragHelper$p(Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;)Landroidx/customview/widget/ViewDragHelper;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->h:Landroidx/customview/widget/ViewDragHelper;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDoneAction(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->i:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->canDrag()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->i:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->canDragByPen()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->h:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final d(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDoneAction(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->i:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->canQuickDrag()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public final isVerticalOrientation()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->j:Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->isVerticalOrientation()Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->i:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->onInterceptTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->h:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isPenTouchType(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->c()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->j:Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$onInterceptTouchEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$onInterceptTouchEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->detect(Landroid/view/MotionEvent;Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->i:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->onViewMovingTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->j:Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->onUp(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->i:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->onViewUpTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->j:Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->onDown(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->i:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->onViewDownTouch(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->h:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->j:Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->getTouchSlopCanDrag()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    if-nez v2, :cond_8

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDownAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDoneAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->h:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_a
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->i:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->h:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDoneAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->j:Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->onUp(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->i:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->onViewUpTouch(Landroid/view/MotionEvent;)V

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->j:Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->getTouchSlopCanDrag()Z

    move-result p0

    return p0
.end method

.method public final setCallback(Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->i:Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    return-void
.end method

.method public final setOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->j:Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->setOrientation(I)V

    return-void
.end method
