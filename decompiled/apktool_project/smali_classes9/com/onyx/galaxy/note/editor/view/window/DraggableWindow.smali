.class public final Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;
.super Lcom/hjq/window/draggable/MovingDraggable;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/window/EasyWindow$OnWindowLifecycle;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0015\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u00106\u001a\u000203\u0012\u0006\u0010:\u001a\u000207\u00a2\u0006\u0004\u0008a\u0010bJ\u001a\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\u000c\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J#\u0010\u0012\u001a\u00020\u00002\u001b\u0010\u0011\u001a\u0017\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0002\u0008\u0010J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0008\u0010\u0014\u001a\u00020\u000fH\u0014J\u0008\u0010\u0015\u001a\u00020\u000fH\u0014J\u0016\u0010\u0017\u001a\u00020\u000f2\u000c\u0010\u0016\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000eH\u0016J\u0016\u0010\u0018\u001a\u00020\u000f2\u000c\u0010\u0016\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000eH\u0016J\u0006\u0010\u0019\u001a\u00020\tJ\u0006\u0010\u001a\u001a\u00020\tJ\u0008\u0010\u001b\u001a\u00020\u0007H\u0016J\u0008\u0010\u001d\u001a\u00020\u001cH\u0014J\u0018\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0017J\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u001fH\u0007J\u0010\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020!H\u0007J\u0010\u0010$\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020%H\u0007J\u0010\u0010(\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\'H\u0007J\u0010\u0010*\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020)H\u0007J\u0008\u0010+\u001a\u00020\u000fH\u0014J\u000e\u0010.\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020,J\u0006\u0010/\u001a\u00020\u000fJ\u0006\u00100\u001a\u00020\u000fJ\u0006\u00101\u001a\u00020\u000fJ\u0006\u00102\u001a\u00020\u0007R\u0014\u00106\u001a\u0002038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R(\u0010A\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R$\u0010-\u001a\u00020,2\u0006\u0010B\u001a\u00020,8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010C\u001a\u0004\u0008D\u0010ER$\u0010M\u001a\u0004\u0018\u00010F8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u0016\u0010N\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010CR\u0016\u0010P\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010OR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0018\u0010V\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010CR\u0016\u0010Y\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0016\u0010[\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010XR\u0016\u0010\\\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010OR\u0016\u0010`\u001a\u00020]8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_\u00a8\u0006c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;",
        "Lcom/hjq/window/draggable/MovingDraggable;",
        "Lcom/hjq/window/EasyWindow$OnWindowLifecycle;",
        "Landroid/view/View;",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "h",
        "",
        "x",
        "y",
        "g",
        "Lkotlin/Function1;",
        "Lcom/hjq/window/EasyWindow;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "block",
        "setupWindow",
        "updateWindowCoordinate",
        "dispatchStartDraggingCallback",
        "dispatchStopDraggingCallback",
        "easyWindow",
        "onWindowShow",
        "onWindowCancel",
        "getWindowWidthSafely",
        "getWindowHeightSafely",
        "isTouchMoving",
        "",
        "getMinTouchDistance",
        "onTouch",
        "Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;",
        "onContainerRectChangedEvent",
        "Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;",
        "onEditFocusEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;",
        "onThemeChangedEvent",
        "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;",
        "onSystemThemeChangedEvent",
        "Lcom/onyx/galaxy/note/editor/event/WindowLocationChangedEvent;",
        "onWindowLocationChangedEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;",
        "onConfigurationChangedEvent",
        "onScreenRotateInfluenceCoordinateChangeFinish",
        "Landroid/graphics/Rect;",
        "limitRect",
        "updateLimitRect",
        "autoAvoidanceMove",
        "show",
        "dismiss",
        "isShowing",
        "Landroid/app/Activity;",
        "s",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;",
        "t",
        "Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;",
        "delegate",
        "u",
        "Lcom/hjq/window/EasyWindow;",
        "getWindow",
        "()Lcom/hjq/window/EasyWindow;",
        "setWindow",
        "(Lcom/hjq/window/EasyWindow;)V",
        "window",
        "<set-?>",
        "Landroid/graphics/Rect;",
        "getLimitRect",
        "()Landroid/graphics/Rect;",
        "",
        "w",
        "[I",
        "getLimitRectLocation",
        "()[I",
        "setLimitRectLocation",
        "([I)V",
        "limitRectLocation",
        "tempRect",
        "Z",
        "interceptEvent",
        "Landroid/view/View$OnLayoutChangeListener;",
        "z",
        "Landroid/view/View$OnLayoutChangeListener;",
        "locationChangedListener",
        "J",
        "focusEditRect",
        "O",
        "F",
        "viewDownX",
        "Q",
        "viewDownY",
        "touchMoving",
        "Landroid/graphics/Point;",
        "k0",
        "Landroid/graphics/Point;",
        "currentPosition",
        "<init>",
        "(Landroid/app/Activity;Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V",
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
.field public J:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public O:F

.field public Q:F

.field public Z:Z

.field public k0:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lcom/hjq/window/EasyWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Z

.field public z:Landroid/view/View$OnLayoutChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hjq/window/draggable/MovingDraggable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->s:Landroid/app/Activity;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->t:Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->v:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->x:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->k0:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final autoAvoidanceMove()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->getDraggable()Lcom/hjq/window/draggable/BaseDraggable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hjq/window/draggable/BaseDraggable;->getEasyWindow()Lcom/hjq/window/EasyWindow;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->k0:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->updateWindowCoordinate(II)V

    :cond_1
    return-void
.end method

.method public final dismiss()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeDecorView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->z:Landroid/view/View$OnLayoutChangeListener;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->unregisterWindowLocationChangeListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeDecorView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->removeAllViews(Landroid/view/View;)V

    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->recycle()V

    :cond_4
    return-void
.end method

.method public dispatchStartDraggingCallback()V
    .locals 0

    invoke-super {p0}, Lcom/hjq/window/draggable/BaseDraggable;->dispatchStartDraggingCallback()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->t:Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;->beforeDrag()V

    return-void
.end method

.method public dispatchStopDraggingCallback()V
    .locals 3

    invoke-super {p0}, Lcom/hjq/window/draggable/BaseDraggable;->dispatchStopDraggingCallback()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->k0:Landroid/graphics/Point;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->t:Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;->afterDrag()V

    return-void
.end method

.method public final g(II)Z
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->v:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->x:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindowWidthSafely()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindowHeightSafely()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->v:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->x:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getLimitRect()Landroid/graphics/Rect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->v:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getLimitRectLocation()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->w:[I

    return-object p0
.end method

.method public getMinTouchDistance()F
    .locals 1

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public final getWindow()Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    return-object p0
.end method

.method public final getWindowHeightSafely()I
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewHeight()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewHeight()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string v0, "getDecorView(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v1, v1, v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getWindowWidthSafely()I
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewWidth()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string v0, "getDecorView(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v1, v1, v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public final h(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowInvisibleWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowInvisibleHeight()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->w:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    aget p1, v1, v3

    aget v0, v1, v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->Z:Z

    if-eqz v0, :cond_2

    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->O:F

    sub-float/2addr v1, p2

    const/4 p2, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->Q:F

    sub-float/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/hjq/window/draggable/BaseDraggable;->updateLocation(FF)V

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->dispatchExecuteDraggingCallback()V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->O:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->Q:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/hjq/window/draggable/BaseDraggable;->isFingerMove(FFFF)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean v2, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->Z:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->dispatchStartDraggingCallback()V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->Z:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->dispatchStopDraggingCallback()V

    :cond_4
    :try_start_0
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->Z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->Z:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v3, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->Z:Z

    throw p1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->O:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->Q:F

    iput-boolean v3, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->Z:Z

    :cond_6
    :goto_0
    return v3
.end method

.method public final isShowing()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->isShowing()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public isTouchMoving()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->Z:Z

    return p0
.end method

.method public final onConfigurationChangedEvent(Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->t:Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;->onConfigurationChanged()V

    return-void
.end method

.method public final onContainerRectChangedEvent(Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;->getContainerRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->updateLimitRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onEditFocusEvent(Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;->getEditRect()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->J:Landroid/graphics/Rect;

    return-void
.end method

.method public onScreenRotateInfluenceCoordinateChangeFinish()V
    .locals 0

    invoke-super {p0}, Lcom/hjq/window/draggable/BaseDraggable;->onScreenRotateInfluenceCoordinateChangeFinish()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->t:Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;->onOrientationChanged()V

    return-void
.end method

.method public final onSystemThemeChangedEvent(Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeDecorView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onThemeChangedEvent(Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeDecorView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->J:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/onyx/android/sdk/base/extension/RectKt;->touchDownOutside(Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p2, Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;

    invoke-direct {p2}, Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;-><init>()V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->J:Landroid/graphics/Rect;

    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->y:Z

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->t:Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;

    invoke-interface {v0, p2}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->y:Z

    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->y:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->h(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method public onWindowCancel(Lcom/hjq/window/EasyWindow;)V
    .locals 0
    .param p1    # Lcom/hjq/window/EasyWindow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/hjq/window/EasyWindow$OnWindowLifecycle;->onWindowCancel(Lcom/hjq/window/EasyWindow;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->INSTANCE:Lcom/onyx/android/sdk/theme/utils/ThemeBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->unRegister(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->t:Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;->onWindowDismiss()V

    return-void
.end method

.method public final onWindowLocationChangedEvent(Lcom/onyx/galaxy/note/editor/event/WindowLocationChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/WindowLocationChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/WindowLocationChangedEvent;->getLocation()[I

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->w:[I

    return-void
.end method

.method public onWindowShow(Lcom/hjq/window/EasyWindow;)V
    .locals 2
    .param p1    # Lcom/hjq/window/EasyWindow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/hjq/window/EasyWindow$OnWindowLifecycle;->onWindowShow(Lcom/hjq/window/EasyWindow;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->INSTANCE:Lcom/onyx/android/sdk/theme/utils/ThemeBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->register(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->k0:Landroid/graphics/Point;

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->autoAvoidanceMove()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->t:Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;->onWindowShow()V

    return-void
.end method

.method public final setLimitRectLocation([I)V
    .locals 0
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->w:[I

    return-void
.end method

.method public final setWindow(Lcom/hjq/window/EasyWindow;)V
    .locals 0
    .param p1    # Lcom/hjq/window/EasyWindow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    return-void
.end method

.method public final setupWindow(Lkotlin/jvm/functions/Function1;)Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/hjq/window/EasyWindow<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->s:Landroid/app/Activity;

    invoke-static {v0}, Lcom/hjq/window/EasyWindow;->with(Landroid/app/Activity;)Lcom/hjq/window/EasyWindow;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->addFullScreenFlag(Lcom/hjq/window/EasyWindow;)V

    invoke-virtual {v0, p0}, Lcom/hjq/window/EasyWindow;->setDraggable(Lcom/hjq/window/draggable/BaseDraggable;)Lcom/hjq/window/EasyWindow;

    const-class v1, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hjq/window/EasyWindow;->setTag(Ljava/lang/String;)Lcom/hjq/window/EasyWindow;

    invoke-virtual {v0, p0}, Lcom/hjq/window/EasyWindow;->setOnWindowLifecycle(Lcom/hjq/window/EasyWindow$OnWindowLifecycle;)Lcom/hjq/window/EasyWindow;

    const v1, 0x5265c00

    invoke-virtual {v0, v1}, Lcom/hjq/window/EasyWindow;->setDuration(I)Lcom/hjq/window/EasyWindow;

    sget v1, Lcom/onyx/galaxy/note/R$style;->popupWindowAnimationLong:I

    invoke-virtual {v0, v1}, Lcom/hjq/window/EasyWindow;->setAnimStyle(I)Lcom/hjq/window/EasyWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hjq/window/EasyWindow;->setOutsideTouchable(Z)Lcom/hjq/window/EasyWindow;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    return-object p0
.end method

.method public final show()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->show()V

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->u:Lcom/hjq/window/EasyWindow;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeDecorView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow$show$1;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->t:Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow$show$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->registerWindowLocationChangeListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->z:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public final updateLimitRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "limitRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->v:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->autoAvoidanceMove()V

    return-void
.end method

.method public updateWindowCoordinate(II)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->k0:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->g(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindowWidthSafely()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindowHeightSafely()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/hjq/window/draggable/BaseDraggable;->updateWindowCoordinate(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/hjq/window/draggable/BaseDraggable;->updateWindowCoordinate(II)V

    return-void
.end method
