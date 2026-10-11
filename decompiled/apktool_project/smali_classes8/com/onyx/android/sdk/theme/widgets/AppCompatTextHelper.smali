.class public Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;
.super Lcom/sunia/HTREnginev2/yb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper$TextExtensible;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/yb<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

.field public g:Lcom/onyx/android/sdk/theme/utils/TintInfo;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/yb;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->l(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->g:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->b:I

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->c:I

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->g:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->c:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->d(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->g(I)V

    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/theme/utils/TintInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mTintManager:Lcom/onyx/android/sdk/theme/utils/TintManager;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->a()V

    return-void
.end method

.method public final g(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->g:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/theme/utils/TintInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->g:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->g:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mTintManager:Lcom/onyx/android/sdk/theme/utils/TintManager;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->b()V

    return-void
.end method

.method public h(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->c(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->i(IZ)V

    return-void
.end method

.method public i(IZ)V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/yb;->skipNextApply()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->c(I)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/yb;->setSkipNextApply(Z)V

    return-void
.end method

.method public final k(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->b:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->c(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->f(I)V

    :cond_0
    return-void
.end method

.method public final l(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/yb;->skipNextApply()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public loadFromAttribute(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextHelper:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextHelper_android_textColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-nez p2, :cond_0

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextHelper_android_textAppearance:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2, v2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->i(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->k(I)V

    :goto_0
    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextHelper_android_textColorHint:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->d:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextHelper_textCursorColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->e:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->n()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->o()V

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextHelper_android_textColorLink:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextHelper_android_textColorLink:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->e(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public m(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->k(I)V

    return-void
.end method

.method public final n()V
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->d:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->d:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 5

    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelBelow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->e:I

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    :cond_1
    new-instance v2, Landroid/graphics/BlendModeColorFilter;

    sget-object v3, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

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

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_5
    return-void
.end method

.method public p()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/yb;->skipNextApply()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->d(I)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/yb;->setSkipNextApply(Z)V

    return-void
.end method

.method public tint()V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->b:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->f(I)V

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->c:I

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->g(I)V

    :cond_1
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->d:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->n()V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextHelper;->o()V

    return-void
.end method
