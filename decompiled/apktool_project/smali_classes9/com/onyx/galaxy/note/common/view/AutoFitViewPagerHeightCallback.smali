.class public Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "position",
        "",
        "onPageSelected",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "a",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "viewpager",
        "<init>",
        "(Landroidx/viewpager2/widget/ViewPager2;)V",
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
.field public final a:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewpager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;->a:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;->b(Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;I)V

    return-void
.end method

.method public static final b(Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;I)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;->a:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v3, p1, v0}, Landroid/view/View;->measure(II)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;->a:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p1, Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback$onPageSelected$1$1$1;

    invoke-direct {p1, v3}, Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback$onPageSelected$1$1$1;-><init>(Landroid/view/View;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;->a:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/sunia/HTREnginev2/lj;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/lj;-><init>(Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
