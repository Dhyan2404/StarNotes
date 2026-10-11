.class public final Lcom/onyx/android/sdk/universal/editor/display/EditorView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010B\u001a\u00020A\u0012\u0006\u0010D\u001a\u00020C\u00a2\u0006\u0004\u0008E\u0010FJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J0\u0010\r\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008H\u0014J(\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0014J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0006H\u0016J\u000e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0001J\u0012\u0010\u0019\u001a\u00020\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010\u001a\u001a\u00020\u0004H\u0014J\u0008\u0010\u001b\u001a\u00020\u0004H\u0014J\u0008\u0010\u001c\u001a\u00020\u0004H\u0002J\u0012\u0010\u001d\u001a\u00020\u00042\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002J\u0012\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002R$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R$\u0010.\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u0018\u00101\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100RA\u0010:\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u0017\u00a2\u0006\u000c\u00083\u0012\u0008\u00084\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u0004\u0018\u0001028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R&\u0010@\u001a\u0012\u0012\u0004\u0012\u00020<0;j\u0008\u0012\u0004\u0012\u00020<`=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?\u00a8\u0006G"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/EditorView;",
        "Landroid/view/View;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "onDraw",
        "",
        "changed",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "activated",
        "setActivated",
        "view",
        "setFocusRectView",
        "Landroid/view/MotionEvent;",
        "event",
        "dispatchTouchEvent",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "c",
        "a",
        "b",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;",
        "e",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;",
        "getRenderManager",
        "()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;",
        "setRenderManager",
        "(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V",
        "renderManager",
        "Lorg/greenrobot/eventbus/EventBus;",
        "f",
        "Lorg/greenrobot/eventbus/EventBus;",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "setEventBus",
        "(Lorg/greenrobot/eventbus/EventBus;)V",
        "eventBus",
        "g",
        "Landroid/view/View;",
        "focusRectView",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlin/jvm/functions/Function1;",
        "getDispatchTouchCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "setDispatchTouchCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "dispatchTouchCallback",
        "Ljava/util/ArrayList;",
        "Landroid/graphics/Rect;",
        "Lkotlin/collections/ArrayList;",
        "i",
        "Ljava/util/ArrayList;",
        "exclusionRectList",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/MotionEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->i:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->i:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "getContext(...)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    sget-object p1, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, v3}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->enableVibrate(Landroid/content/Context;Z)V

    goto :goto_5

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_4

    goto :goto_4

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    move v3, v2

    :goto_4
    if-eqz v3, :cond_7

    sget-object p1, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, v2}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->enableVibrate(Landroid/content/Context;Z)V

    :cond_7
    :goto_5
    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->i:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->h:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->a(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->b(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final getDispatchTouchCallback()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/MotionEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->h:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->f:Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method

.method public final getRenderManager()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->e:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->requestRefreshConfigOfView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->initStylusVibrate(Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    sget-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->destroyStylusVibrate(Landroid/content/Context;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->e:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->c()V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->f:Lorg/greenrobot/eventbus/EventBus;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeChangedEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeChangedEvent;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setActivated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setActivated(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->g:Landroid/view/View;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    :goto_0
    return-void
.end method

.method public final setDispatchTouchCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/MotionEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->h:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setEventBus(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0
    .param p1    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->f:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public final setFocusRectView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->g:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setRenderManager(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/RenderManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/EditorView;->e:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    return-void
.end method
