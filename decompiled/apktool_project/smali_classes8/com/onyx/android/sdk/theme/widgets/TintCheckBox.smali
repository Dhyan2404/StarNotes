.class public Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;
.super Landroid/widget/CheckBox;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;
.implements Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper$BackgroundExtensible;
.implements Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper$CompoundButtonExtensible;
.implements Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper$TextExtensible;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

.field public f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;

.field public g:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006c

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->get(Landroid/content/Context;)Lcom/onyx/android/sdk/theme/utils/TintManager;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    .line 7
    invoke-virtual {v0, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    .line 8
    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;-><init>(Landroid/widget/CompoundButton;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;

    .line 9
    invoke-virtual {v0, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    .line 10
    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;-><init>(Landroid/widget/TextView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    .line 11
    invoke-virtual {v0, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->isSkipAnimatedSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getWrapperDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;->b(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundDrawableExternal(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundResId(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public setBackgroundTintList(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundTintList(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setBackgroundTintList(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundTintList(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;->e(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(I)V

    :goto_0
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;->d()V

    :cond_0
    return-void
.end method

.method public setCompoundButtonTintList(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;->g(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setCompoundButtonTintList(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;->g(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->h(I)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->h(I)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->j()V

    :cond_0
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->j()V

    :cond_0
    return-void
.end method

.method public setTextColorById(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->m(I)V

    :cond_0
    return-void
.end method

.method public tint()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->tint()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundButtonHelper;->tint()V

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->tint()V

    :cond_2
    return-void
.end method
