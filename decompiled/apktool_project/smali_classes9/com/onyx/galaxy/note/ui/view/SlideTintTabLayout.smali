.class public final Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;
.super Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0016R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001c\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;",
        "Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "onDraw",
        "",
        "newPosition",
        "G",
        "Landroid/graphics/Paint;",
        "b1",
        "Landroid/graphics/Paint;",
        "sliderPaint",
        "Landroid/graphics/RectF;",
        "c1",
        "Landroid/graphics/RectF;",
        "sliderRect",
        "Landroid/animation/ValueAnimator;",
        "d1",
        "Landroid/animation/ValueAnimator;",
        "animator",
        "e1",
        "I",
        "lastPosition",
        "f1",
        "targetPosition",
        "",
        "g1",
        "F",
        "progress",
        "h1",
        "round",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
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
.field public final b1:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c1:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d1:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e1:I

.field public f1:I

.field public g1:F

.field public final h1:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    sget p2, Lcom/onyx/android/sdk/skin/R$color;->theme_background_drag_tool:I

    invoke-static {p2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->b1:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->c1:Landroid/graphics/RectF;

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->d1:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout$1;-><init>(Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout;Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_10:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->h1:F

    return-void
.end method

.method public static synthetic F(Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->H(Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final H(Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->g1:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static final synthetic access$animateToPosition(Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->G(I)V

    return-void
.end method

.method public static final synthetic access$setLastPosition$p(Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->e1:I

    return-void
.end method


# virtual methods
.method public final G(I)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->d1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->e1:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->f1:I

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->d1:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v0, v0

    aput v0, v2, v3

    const/4 v0, 0x1

    int-to-float v3, p1

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance v0, Lcom/sunia/HTREnginev2/num;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/num;-><init>(Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout$animateToPosition$1$2;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout$animateToPosition$1$2;-><init>(Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;I)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->e1:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->f1:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->g1:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int/2addr v4, v0

    int-to-float v0, v4

    iget v4, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->g1:F

    mul-float/2addr v0, v4

    add-float/2addr v3, v0

    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->e1:I

    iget v4, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->f1:I

    if-ne v0, v4, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->c1:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iput v3, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->c1:Landroid/graphics/RectF;

    iget v1, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->h1:F

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;->b1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method
