.class public final Lcom/sunia/HTREnginev2/y8g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/viewpager2/widget/ViewPager2;

.field public final b:Landroidx/viewpager2/widget/c;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Landroid/view/VelocityTracker;

.field public e:I

.field public f:F

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/c;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y8g;->a:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/y8g;->b:Landroidx/viewpager2/widget/c;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/y8g;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final a(JIFF)V
    .locals 8

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/y8g;->h:J

    const/4 v7, 0x0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y8g;->d:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public b()Z
    .locals 7
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y8g;->b:Landroidx/viewpager2/widget/c;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/c;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput v1, p0, Lcom/sunia/HTREnginev2/y8g;->g:I

    int-to-float v0, v1

    iput v0, p0, Lcom/sunia/HTREnginev2/y8g;->f:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/y8g;->h:J

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/y8g;->c()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y8g;->b:Landroidx/viewpager2/widget/c;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/c;->k()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y8g;->b:Landroidx/viewpager2/widget/c;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/c;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y8g;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_1
    iget-wide v2, p0, Lcom/sunia/HTREnginev2/y8g;->h:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sunia/HTREnginev2/y8g;->a(JIFF)V

    const/4 p0, 0x1

    return p0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y8g;->d:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/y8g;->d:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y8g;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/y8g;->e:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y8g;->b:Landroidx/viewpager2/widget/c;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/y8g;->b:Landroidx/viewpager2/widget/c;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/c;->m()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y8g;->d:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/sunia/HTREnginev2/y8g;->e:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/y8g;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y8g;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->h()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public e(F)Z
    .locals 9
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y8g;->b:Landroidx/viewpager2/widget/c;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/c;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/sunia/HTREnginev2/y8g;->f:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/sunia/HTREnginev2/y8g;->f:F

    iget p1, p0, Lcom/sunia/HTREnginev2/y8g;->g:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/sunia/HTREnginev2/y8g;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sunia/HTREnginev2/y8g;->g:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y8g;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    move v2, p1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, p1

    :goto_2
    const/4 p1, 0x0

    if-eqz v0, :cond_4

    iget v5, p0, Lcom/sunia/HTREnginev2/y8g;->f:F

    move v6, v5

    goto :goto_3

    :cond_4
    move v6, p1

    :goto_3
    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    iget p1, p0, Lcom/sunia/HTREnginev2/y8g;->f:F

    :goto_4
    move v7, p1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/y8g;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    const/4 v5, 0x2

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sunia/HTREnginev2/y8g;->a(JIFF)V

    return v8
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y8g;->b:Landroidx/viewpager2/widget/c;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/c;->h()Z

    move-result p0

    return p0
.end method
