.class public Lcom/onyx/android/sdk/matisse/internal/ui/widget/PreviewViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public canScroll(Landroid/view/View;ZIII)Z
    .locals 1

    instance-of v0, p1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->canScroll(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result p0

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

    :cond_2
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result p0

    return p0
.end method
