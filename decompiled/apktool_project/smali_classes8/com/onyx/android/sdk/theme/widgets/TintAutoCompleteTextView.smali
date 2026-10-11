.class public Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;
.implements Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper$BackgroundExtensible;
.implements Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper$CompoundDrawableExtensible;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

.field public f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

.field public g:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

.field public h:Lcom/onyx/android/sdk/theme/widgets/AutoCompleteTextViewHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/TintManager;->get(Landroid/content/Context;)Lcom/onyx/android/sdk/theme/utils/TintManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    invoke-virtual {v1, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;-><init>(Landroid/widget/TextView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

    invoke-virtual {v1, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;-><init>(Landroid/widget/TextView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    invoke-virtual {v1, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/onyx/android/sdk/theme/widgets/AutoCompleteTextViewHelper;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AutoCompleteTextViewHelper;-><init>(Landroid/widget/AutoCompleteTextView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->h:Lcom/onyx/android/sdk/theme/widgets/AutoCompleteTextViewHelper;

    invoke-virtual {v1, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/AutoCompleteTextViewHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundDrawableExternal(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->setBackgroundTintList(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawableTintList(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

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
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

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
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->e()V

    :cond_0
    return-void
.end method

.method public setPopupBackground(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->h:Lcom/onyx/android/sdk/theme/widgets/AutoCompleteTextViewHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AutoCompleteTextViewHelper;->b(I)V

    :cond_0
    return-void
.end method

.method public tint()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;->tint()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->f:Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->tint()V

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintAutoCompleteTextView;->g:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->tint()V

    :cond_2
    return-void
.end method
