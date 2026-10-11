.class public Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputEditTextHelper;
.super Lcom/sunia/HTREnginev2/yb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/yb<",
        "Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field public c:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field public d:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field public e:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/yb;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputEditTextHelper;->b:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v1, Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputEditTextHelper;->c:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputEditTextHelper;->c:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v1, Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputEditTextHelper;->d:I

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v1, Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputEditTextHelper;->b()V

    return-void
.end method

.method public final b()V
    .locals 5

    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelBelow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputEditTextHelper;->e:I

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    :cond_1
    new-instance v2, Landroid/graphics/BlendModeColorFilter;

    sget-object v3, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v3, Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v3, Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    sget-object v0, Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;->replaceAlphaWithBitwise(II)I

    move-result v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p0, Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_5
    return-void
.end method

.method public loadFromAttribute(Landroid/util/AttributeSet;I)V
    .locals 1

    iget-object p2, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p2, Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextInputEditTextHelper:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextInputEditTextHelper_android_textColor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputEditTextHelper;->b:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextInputEditTextHelper_android_textColorHint:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputEditTextHelper;->c:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextInputEditTextHelper_textCursorDrawable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputEditTextHelper;->d:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextInputEditTextHelper_textCursorColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputEditTextHelper;->e:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputEditTextHelper;->a()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public tint()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputEditTextHelper;->a()V

    return-void
.end method
