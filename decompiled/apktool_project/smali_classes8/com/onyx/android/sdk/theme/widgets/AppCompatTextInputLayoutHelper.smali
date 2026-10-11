.class public Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;
.super Lcom/sunia/HTREnginev2/yb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/yb<",
        "Lcom/google/android/material/textfield/TextInputLayout;",
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

.field public f:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/onyx/android/sdk/theme/utils/TintManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/yb;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->b:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->c:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->c:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->d:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->d:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->e:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->e:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->f:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->f:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method

.method public loadFromAttribute(Landroid/util/AttributeSet;I)V
    .locals 1

    iget-object p2, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextInputLayoutHelper:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextInputLayoutHelper_boxBackgroundColor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->b:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextInputLayoutHelper_boxStrokeColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->c:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextInputLayoutHelper_startIconTint:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->d:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextInputLayoutHelper_endIconTint:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->e:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextInputLayoutHelper_hintTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->f:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->a()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public tint()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->a()V

    return-void
.end method
