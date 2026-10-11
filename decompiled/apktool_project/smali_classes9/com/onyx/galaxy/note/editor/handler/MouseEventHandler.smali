.class public final Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001d2\u00020\u0001:\u0001\u000cB\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0007J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0008H\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/events/app/MouseScrollEvent;",
        "event",
        "",
        "onMouseScrollEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/MouseScaleEvent;",
        "onMouseScaleEvent",
        "",
        "scroll",
        "b",
        "scale",
        "a",
        "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;",
        "f",
        "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;",
        "editorViewDragLayout",
        "",
        "g",
        "Z",
        "isMouseScrolling",
        "",
        "h",
        "I",
        "rxMouseScrollCancelKey",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V",
        "i",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final SCALE_STEP_MOUSE:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final i:Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;->i:Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler$a;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorViewDragLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;->h:I

    return-void
.end method

.method public static final synthetic access$getEditorViewDragLayout$p(Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;)Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    return-object p0
.end method

.method public static final synthetic access$setMouseScrolling$p(Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;->g:Z

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->actualScale(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->scaleRange(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lorg/apache/commons/lang3/Range;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "getMinimum(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->actualScale(Lcom/onyx/android/sdk/universal/editor/EditorBundle;F)F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "getMaximum(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v3, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->actualScale(Lcom/onyx/android/sdk/universal/editor/EditorBundle;F)F

    move-result v1

    cmpg-float v3, v0, v2

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    cmpg-float v3, p1, v4

    if-gez v3, :cond_0

    return-void

    :cond_0
    cmpl-float v3, v0, v1

    if-ltz v3, :cond_1

    cmpl-float v3, p1, v4

    if-lez v3, :cond_1

    return-void

    :cond_1
    sub-float v3, v1, v2

    const/16 v5, 0x28

    int-to-float v5, v5

    div-float/2addr v3, v5

    cmpl-float p1, p1, v4

    if-lez p1, :cond_2

    add-float/2addr v0, v3

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    goto :goto_0

    :cond_2
    sub-float/2addr v0, v3

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    :goto_0
    move v1, p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(F)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;->h:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler$onMouseScroll$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler$onMouseScroll$1;-><init>(Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->shortTimer(Lkotlin/jvm/functions/Function1;)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;->h:I

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;->g:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->onOuterScrollBegin()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;->g:Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    move-result-object p0

    neg-float p1, p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->onOuterScrolling(F)V

    return-void
.end method

.method public final onMouseScaleEvent(Lcom/onyx/android/sdk/universal/editor/events/app/MouseScaleEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/MouseScaleEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/MouseScaleEvent;->getScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;->a(F)V

    return-void
.end method

.method public final onMouseScrollEvent(Lcom/onyx/android/sdk/universal/editor/events/app/MouseScrollEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/MouseScrollEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/MouseScrollEvent;->getScroll()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;->b(F)V

    return-void
.end method
