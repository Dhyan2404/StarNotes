.class public Lcom/onyx/android/sdk/theme/widgets/TintTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;
.implements Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper$BackgroundExtensible;
.implements Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper$CompoundDrawableExtensible;
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

.field public g:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;-><init>(Landroid/widget/TextView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    .line 7
    invoke-virtual {v0, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    .line 8
    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    .line 9
    invoke-virtual {v0, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    .line 10
    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;-><init>(Landroid/widget/TextView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

    .line 11
    invoke-virtual {v0, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getCompoundDrawableByPosition(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/theme/utils/InputConnectionImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/onyx/android/sdk/theme/utils/InputConnectionImpl;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundDrawableExternal(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundTintList(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawableTintList(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

    if-eqz p0, :cond_0

    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->d([I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->f(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->e()V

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->m(I)V

    :cond_0
    return-void
.end method

.method public tint()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->tint()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->tint()V

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->tint()V

    :cond_2
    return-void
.end method
