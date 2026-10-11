.class public abstract Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lcom/onyx/android/sdk/matisse/listener/OnFragmentInteractionListener;


# static fields
.field public static final CHECK_STATE:Ljava/lang/String; = "checkState"

.field public static final EXTRA_DEFAULT_BUNDLE:Ljava/lang/String; = "extra_default_bundle"

.field public static final EXTRA_RESULT_APPLY:Ljava/lang/String; = "extra_result_apply"

.field public static final EXTRA_RESULT_BUNDLE:Ljava/lang/String; = "extra_result_bundle"

.field public static final EXTRA_RESULT_ORIGINAL_ENABLE:Ljava/lang/String; = "extra_result_original_enable"


# instance fields
.field public A0:Z

.field protected mAdapter:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;

.field protected mButtonApply:Landroid/widget/TextView;

.field protected mButtonBack:Landroid/widget/TextView;

.field protected mCheckView:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

.field protected mOriginalEnable:Z

.field protected mPager:Landroidx/viewpager/widget/ViewPager;

.field protected mPreviousPos:I

.field protected final mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

.field protected mSize:Landroid/widget/TextView;

.field protected mSpec:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

.field public w0:Landroid/widget/LinearLayout;

.field public x0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

.field public y0:Landroid/widget/FrameLayout;

.field public z0:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mPreviousPos:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->A0:Z

    return-void
.end method

.method public static synthetic C(Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->G(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    move-result p0

    return p0
.end method

.method public static synthetic D(Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->I()V

    return-void
.end method

.method public static synthetic E(Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;)I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->H()I

    move-result p0

    return p0
.end method

.method public static synthetic F(Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->x0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

    return-object p0
.end method


# virtual methods
.method public final G(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->isAcceptable(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->handleCause(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;)V

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final H()I
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->count()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->asList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isImage()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v3, v3, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->size:J

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/matisse/internal/utils/PhotoMetadataUtils;->getSizeInMB(J)F

    move-result v3

    iget-object v4, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget v4, v4, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final I()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->count()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$string;->button_apply_default:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v3, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->singleSelectionModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    sget v3, Lcom/onyx/android/sdk/imagepicker/R$string;->button_apply_default:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mButtonApply:Landroid/widget/TextView;

    sget v3, Lcom/onyx/android/sdk/imagepicker/R$string;->button_apply:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->originalable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->w0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->J()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->w0:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final J()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->x0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->x0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->H()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$string;->error_over_original_size:I

    iget-object v2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget v2, v2, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->x0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->x0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;->setColor(I)V

    iput-boolean v2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->sendBackResult(Z)V

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->autoHideToobar:Z

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->A0:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->z0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->z0:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 12
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->y0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->y0:Landroid/widget/FrameLayout;

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->z0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->z0:Landroid/widget/FrameLayout;

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 20
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->y0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->y0:Landroid/widget/FrameLayout;

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 24
    :goto_0
    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->A0:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->A0:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$id;->button_back:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->onBackPressed()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->button_apply:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->sendBackResult(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v1, -0x54fffff3

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;

    iget v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mPreviousPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eq v1, p1, :cond_3

    iget-object v2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;->resetView()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;->getMediaItem(I)Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-boolean v1, v1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->countable:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->checkedNumOf(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)I

    move-result v1

    iget-object v3, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    iget-object v3, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->maxSelectableReached()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->isSelected(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    move-result v1

    iget-object v3, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    iget-object v3, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->maxSelectableReached()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->updateSize(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)V

    :cond_3
    iput p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mPreviousPos:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "checkState"

    iget-boolean v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public sendBackResult(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->getDataWithBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_result_bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "extra_result_apply"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "extra_result_original_enable"

    iget-boolean v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public updateSize(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)V
    .locals 6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isGif()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSize:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->size:J

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/matisse/internal/utils/PhotoMetadataUtils;->getSizeInMB(J)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSize:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->w0:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-boolean p1, p1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->originalable:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->w0:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
