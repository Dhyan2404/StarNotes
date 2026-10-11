.class public abstract Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$Companion;,
        Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u0000 72\u00020\u0001:\u000278B\u0007\u00a2\u0006\u0004\u00085\u00106J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u000e\u0010\u000e\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000cJ\u0008\u0010\u000f\u001a\u00020\u0006H&J\u0016\u0010\u0013\u001a\u00020\u00082\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H&J\u0018\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0016\u0010\u0017\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019R\u0016\u0010\u001f\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001eR&\u0010%\u001a\u0012\u0012\u0004\u0012\u00020\u00110!j\u0008\u0012\u0004\u0012\u00020\u0011`\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010\'\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u001eR\u0016\u0010)\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u001eR\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u00104\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103\u00a8\u00069"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;",
        "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "rv",
        "Landroid/view/MotionEvent;",
        "e",
        "",
        "onInterceptTouchEvent",
        "",
        "onTouchEvent",
        "disallowIntercept",
        "onRequestDisallowInterceptTouchEvent",
        "",
        "limit",
        "setBorderLimit",
        "isEnableSwipe",
        "",
        "",
        "positionList",
        "updateChangeItems",
        "a",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        "downPointF",
        "b",
        "Z",
        "isSwipeHorizontal",
        "c",
        "isSwipeVertical",
        "d",
        "I",
        "lastPosition",
        "downPosition",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "f",
        "Ljava/util/HashSet;",
        "swipeSet",
        "g",
        "touchSlop",
        "h",
        "activePointId",
        "Lcom/onyx/android/sdk/base/data/TimeGuard;",
        "i",
        "Lcom/onyx/android/sdk/base/data/TimeGuard;",
        "timeGuard",
        "Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;",
        "j",
        "Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;",
        "edgeScroller",
        "k",
        "F",
        "borderLimit",
        "<init>",
        "()V",
        "Companion",
        "EdgeScroller",
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
.field public static final Companion:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCROLLING_STEP:I = 0xa

.field public static final START_SCROLL_DURATION:J = 0x258L

.field public static final START_SWIPE_TOUCH_DURATION:J = 0x1f4L

.field public static final STOP_SCROLLING_ANIMATOR_LIMIT:I = 0x50

.field public static final l:F


# instance fields
.field public a:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:Lcom/onyx/android/sdk/base/data/TimeGuard;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->Companion:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$Companion;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_100:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    sput v0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->l:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->a:Landroid/graphics/PointF;

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->d:I

    iput v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->e:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->f:Ljava/util/HashSet;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->g:I

    iput v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->h:I

    sget v0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->l:F

    iput v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->k:F

    return-void
.end method

.method public static final synthetic access$getBORDER_LIMIT$cp()F
    .locals 1

    sget v0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->l:F

    return v0
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget v1, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/high16 v1, 0x42a00000    # 80.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x50

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->j:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->stopScroll()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->j:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->startScroll()V

    :cond_3
    return-void
.end method

.method public abstract isEnableSwipe()Z
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->isEnableSwipe()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_9

    const/4 p1, 0x1

    if-eq v0, p1, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_7

    goto/16 :goto_2

    :cond_1
    iget v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->h:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v2, :cond_b

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->b:Z

    if-eqz v2, :cond_2

    return p1

    :cond_2
    iget-boolean v2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->c:Z

    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v2

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->g:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->i:Lcom/onyx/android/sdk/base/data/TimeGuard;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TimeGuard;->check()Z

    move-result v0

    if-ne v0, p1, :cond_4

    move v0, p1

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->b:Z

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->g:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_6

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->c:Z

    return v1

    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->a:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->g:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_b

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->b:Z

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->j:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->stopScroll()V

    :cond_8
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->j:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    iput v2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->d:I

    iput v2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->e:I

    goto :goto_2

    :cond_9
    iput-boolean v1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->c:Z

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->b:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->a:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iput v2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->d:I

    iput v2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->e:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->h:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->e:I

    :cond_a
    new-instance p1, Lcom/onyx/android/sdk/base/data/TimeGuard;

    const-wide/16 v1, 0x1f4

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/base/data/TimeGuard;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->i:Lcom/onyx/android/sdk/base/data/TimeGuard;

    :cond_b
    :goto_2
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->b:Z

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->j:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    if-nez v0, :cond_1

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    iget v3, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->k:F

    const-wide/16 v4, 0x258

    const/16 v6, 0xa

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;FJI)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->j:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->j:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->updateMovePoint(Landroid/view/MotionEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_f

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    return-void

    :cond_4
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_5

    return-void

    :cond_5
    iget v3, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->d:I

    if-ne v3, v0, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    return-void

    :cond_6
    iget v4, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->e:I

    if-ne v4, v2, :cond_7

    iput v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->e:I

    :cond_7
    if-ne v3, v2, :cond_8

    iput v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->d:I

    :cond_8
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->f:Ljava/util/HashSet;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget v4, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->e:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget v6, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->e:I

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lt v6, v4, :cond_a

    if-le v6, v3, :cond_9

    :cond_a
    iget-object v7, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->f:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    if-gt v4, v3, :cond_d

    :goto_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->f:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_2

    :cond_c
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->f:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eq v4, v3, :cond_d

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_d
    iput v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->d:I

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_e

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->updateChangeItems(Ljava/util/List;)V

    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    goto :goto_3

    :cond_f
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->j:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->stopScroll()V

    :cond_10
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->j:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    iput v2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->d:I

    iput v2, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->e:I

    :goto_3
    return-void
.end method

.method public final setBorderLimit(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;->k:F

    return-void
.end method

.method public abstract updateChangeItems(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
