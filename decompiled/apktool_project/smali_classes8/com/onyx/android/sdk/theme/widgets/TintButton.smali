.class public Lcom/onyx/android/sdk/theme/widgets/TintButton;
.super Landroid/widget/Button;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;
.implements Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper$BackgroundExtensible;
.implements Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper$TextExtensible;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

.field public f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010048

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/android/sdk/theme/widgets/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->get(Landroid/content/Context;)Lcom/onyx/android/sdk/theme/utils/TintManager;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    .line 7
    invoke-virtual {v0, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    .line 8
    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;-><init>(Landroid/widget/TextView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    .line 9
    invoke-virtual {v0, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundDrawableExternal(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundTintList(ILandroid/graphics/PorterDuff$Mode;)V

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->m(I)V

    :cond_0
    return-void
.end method

.method public tint()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->tint()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintButton;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->tint()V

    :cond_1
    return-void
.end method
