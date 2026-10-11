.class public final Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008+\u0010,J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\n\u001a\u00020\u0008R\"\u0010\r\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u000c\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010R\"\u0010\u0018\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u000c\u001a\u0004\u0008\u0018\u0010\u000e\"\u0004\u0008\u0019\u0010\u0010R\"\u0010\u001b\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u000c\u001a\u0004\u0008\u001b\u0010\u000e\"\u0004\u0008\u001c\u0010\u0010R\"\u0010\u001e\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u000c\u001a\u0004\u0008\u001e\u0010\u000e\"\u0004\u0008\u001f\u0010\u0010R\"\u0010!\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u000c\u001a\u0004\u0008!\u0010\u000e\"\u0004\u0008\"\u0010\u0010R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;",
        "",
        "",
        "resetState",
        "resetStateAboutScale",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "",
        "isScrollFinishedAtReleaseTouch",
        "isUserInteracting",
        "a",
        "Z",
        "isLongPress",
        "()Z",
        "setLongPress",
        "(Z)V",
        "b",
        "isPinchZooming",
        "setPinchZooming",
        "c",
        "isScrolling",
        "setScrolling",
        "d",
        "isTouch",
        "setTouch",
        "e",
        "isShapeTouchEnabled",
        "setShapeTouchEnabled",
        "f",
        "isTextSelectionTouchEnabled",
        "setTextSelectionTouchEnabled",
        "g",
        "isStylusLongPress",
        "setStylusLongPress",
        "Landroid/graphics/Point;",
        "h",
        "Landroid/graphics/Point;",
        "getStartPoint",
        "()Landroid/graphics/Point;",
        "setStartPoint",
        "(Landroid/graphics/Point;)V",
        "startPoint",
        "<init>",
        "()V",
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
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->e:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->f:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->h:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final getStartPoint()Landroid/graphics/Point;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->h:Landroid/graphics/Point;

    return-object p0
.end method

.method public final isLongPress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->a:Z

    return p0
.end method

.method public final isPinchZooming()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->b:Z

    return p0
.end method

.method public final isScrollFinishedAtReleaseTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->c:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->b:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isScrolling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->c:Z

    return p0
.end method

.method public final isShapeTouchEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->e:Z

    return p0
.end method

.method public final isStylusLongPress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->g:Z

    return p0
.end method

.method public final isTextSelectionTouchEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->f:Z

    return p0
.end method

.method public final isTouch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->d:Z

    return p0
.end method

.method public final isUserInteracting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->b:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->d:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDownAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->d:Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isUpAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isCancelAction(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->d:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final resetState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->a:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->c:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->b:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->d:Z

    return-void
.end method

.method public final resetStateAboutScale()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->c:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->b:Z

    return-void
.end method

.method public final setLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->a:Z

    return-void
.end method

.method public final setPinchZooming(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->b:Z

    return-void
.end method

.method public final setScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->c:Z

    return-void
.end method

.method public final setShapeTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->e:Z

    return-void
.end method

.method public final setStartPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->h:Landroid/graphics/Point;

    return-void
.end method

.method public final setStylusLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->g:Z

    return-void
.end method

.method public final setTextSelectionTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->f:Z

    return-void
.end method

.method public final setTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->d:Z

    return-void
.end method
