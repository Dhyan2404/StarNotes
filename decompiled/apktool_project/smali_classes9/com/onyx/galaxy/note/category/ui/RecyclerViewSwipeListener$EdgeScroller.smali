.class public final Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EdgeScroller"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000I\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0007*\u0001)\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0018\u001a\u00020\u000c\u00a2\u0006\u0004\u0008-\u0010.J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001f\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010(\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u0010R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;",
        "",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "updateMovePoint",
        "startScroll",
        "stopScroll",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "eventY",
        "",
        "a",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "b",
        "F",
        "borderLimit",
        "",
        "c",
        "J",
        "startScrollDuration",
        "d",
        "I",
        "baseScrollAmount",
        "e",
        "Landroid/view/MotionEvent;",
        "currentMoveEvent",
        "",
        "f",
        "Z",
        "isScrolling",
        "()Z",
        "setScrolling",
        "(Z)V",
        "Lcom/onyx/android/sdk/base/data/TimeGuard;",
        "g",
        "Lcom/onyx/android/sdk/base/data/TimeGuard;",
        "startScrollTimeGuard",
        "h",
        "lastMoveY",
        "com/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1",
        "i",
        "Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;",
        "scrollRunnable",
        "<init>",
        "(Landroidx/recyclerview/widget/RecyclerView;FJI)V",
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
.field public final a:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:F

.field public final c:J

.field public final d:I

.field public e:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Z

.field public g:Lcom/onyx/android/sdk/base/data/TimeGuard;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:F

.field public final i:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;FJI)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->b:F

    iput-wide p3, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->c:J

    iput p5, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->d:I

    new-instance p1, Lcom/onyx/android/sdk/base/data/TimeGuard;

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p1

    move-wide v2, p3

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/base/data/TimeGuard;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->g:Lcom/onyx/android/sdk/base/data/TimeGuard;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->h:F

    new-instance p1, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;-><init>(Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->i:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;

    return-void
.end method

.method public static final synthetic access$computeDynamicScrollSpeed(Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;Landroidx/recyclerview/widget/RecyclerView;F)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->a(Landroidx/recyclerview/widget/RecyclerView;F)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCurrentMoveEvent$p(Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;)Landroid/view/MotionEvent;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->e:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public static final synthetic access$getRecyclerView$p(Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;F)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_0

    iget v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->b:F

    div-float/2addr p2, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->b:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v1, p2

    iget p2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->b:F

    div-float p2, v1, p2

    :goto_0
    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float p2, v0, p2

    add-float/2addr v0, p2

    iget p0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->d:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    if-gez p1, :cond_1

    neg-int p0, p0

    :cond_1
    return p0
.end method

.method public final isScrolling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->f:Z

    return p0
.end method

.method public final setScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->f:Z

    return-void
.end method

.method public final startScroll()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->g:Lcom/onyx/android/sdk/base/data/TimeGuard;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TimeGuard;->check()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->f:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->i:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final stopScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->e:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->i:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateMovePoint(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->e:Landroid/view/MotionEvent;

    iget v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->h:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->g:Lcom/onyx/android/sdk/base/data/TimeGuard;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lcom/onyx/android/sdk/base/data/TimeGuard;->resetStartTime$default(Lcom/onyx/android/sdk/base/data/TimeGuard;JILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->h:F

    return-void
.end method
