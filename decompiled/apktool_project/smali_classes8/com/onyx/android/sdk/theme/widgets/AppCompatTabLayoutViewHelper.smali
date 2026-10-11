.class public Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;
.super Lcom/sunia/HTREnginev2/yb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/yb<",
        "Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/yb;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->b:I

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->c:I

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->d:I

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->e:I

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->f:I

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->g:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->h:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->i:Z

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->j:I

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->k:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->d:I

    if-eq v2, v1, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    iget v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->d:I

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v3, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->e:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->e:I

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v2, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->b:I

    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v2, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    :cond_2
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->f:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->f:I

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v2, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setUnboundedRipple(Z)V

    :cond_3
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->g:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->g:I

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v2, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    :cond_4
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->h:I

    if-eq v0, v1, :cond_5

    iget-object v2, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v2, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    :cond_5
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->k:I

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v1, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->initTabViewBackgroundColor()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->i:Z

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->setUnboundedRipple(Z)V

    return-void
.end method

.method public initTabViewBackgroundColor()V
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v1, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v1, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->j:I

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public loadFromAttribute(Landroid/util/AttributeSet;I)V
    .locals 2

    iget-object p2, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p2, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/skin/R$styleable;->TintTabLayoutHelper:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTabLayoutHelper_tabIndicatorColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->b:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTabLayoutHelper_tabTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->c:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTabLayoutHelper_tabSelectedTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->d:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTabLayoutHelper_tabTextSelector:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->e:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTabLayoutHelper_rippleColorRes:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->f:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTabLayoutHelper_tabIconTint:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->g:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTabLayoutHelper_tabMode:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->h:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTabLayoutHelper_tabUnboundedRipple:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->i:Z

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTabLayoutHelper_tabViewBackground:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->j:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTabLayoutHelper_background:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->k:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->a()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public tint()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->a()V

    return-void
.end method
