.class public final Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001+B\u0011\u0008\u0016\u0012\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008$\u0010%B\u001b\u0008\u0016\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010&\u00a2\u0006\u0004\u0008$\u0010(B#\u0008\u0016\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010&\u0012\u0006\u0010)\u001a\u00020\u000e\u00a2\u0006\u0004\u0008$\u0010*J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\tH\u0017R\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0010R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u0017\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;",
        "Landroid/widget/FrameLayout;",
        "Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;",
        "listener",
        "",
        "setOnSwipeListener",
        "",
        "enable",
        "setEnableSwipeDetector",
        "Landroid/view/MotionEvent;",
        "ev",
        "onInterceptTouchEvent",
        "event",
        "onTouchEvent",
        "",
        "e",
        "I",
        "activePointId",
        "Landroid/graphics/PointF;",
        "f",
        "Landroid/graphics/PointF;",
        "downPointF",
        "g",
        "Z",
        "isSwipeHorizontal",
        "h",
        "isSwipeVertical",
        "i",
        "touchSlop",
        "j",
        "Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;",
        "swipeListener",
        "k",
        "isEnableSwipeDetector",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "OnSwipeChangeListener",
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
.field public e:I

.field public f:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->e:I

    .line 3
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->f:Landroid/graphics/PointF;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->i:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->e:I

    .line 8
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->f:Landroid/graphics/PointF;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->i:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->k:Z

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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->e:I

    .line 13
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->f:Landroid/graphics/PointF;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->i:I

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->k:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->k:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->g:Z

    if-eqz v3, :cond_1

    return v2

    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->g:Z

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->h:Z

    if-eqz v0, :cond_4

    return v3

    :cond_4
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->i:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    iput-boolean v2, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->h:Z

    return v3

    :cond_5
    iget-object p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->f:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->i:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->j:Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;->onStart()V

    :cond_6
    iput-boolean v2, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->g:Z

    goto :goto_0

    :cond_7
    iput-boolean v3, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->h:Z

    iput-boolean v3, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->g:Z

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->e:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->f:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_8
    :goto_0
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->g:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->k:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->j:Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;->onSwiped(FF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->j:Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;->onFinished()V

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->g:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1
.end method

.method public final setEnableSwipeDetector(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->k:Z

    return-void
.end method

.method public final setOnSwipeListener(Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;->j:Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;

    return-void
.end method
