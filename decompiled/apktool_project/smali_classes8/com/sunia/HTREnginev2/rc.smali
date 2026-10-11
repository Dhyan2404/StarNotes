.class public Lcom/sunia/HTREnginev2/rc;
.super Lcom/sunia/HTREnginev2/yb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/yb<",
        "Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:Lcom/onyx/android/sdk/theme/utils/TintInfo;

.field public e:Lcom/onyx/android/sdk/theme/utils/TintInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;Lcom/onyx/android/sdk/theme/utils/TintManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/yb;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/rc;->e:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-nez v2, :cond_0

    iget-boolean v1, v1, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v1, Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/rc;->e:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-static {v1, v0, v2}, Lcom/onyx/android/sdk/theme/utils/TintManager;->tintViewDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/onyx/android/sdk/theme/utils/TintInfo;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rc;->d:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x102000d

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/rc;->c(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/rc;->d:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-static {v1, v0, v2}, Lcom/onyx/android/sdk/theme/utils/TintManager;->tintViewDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/onyx/android/sdk/theme/utils/TintInfo;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void
.end method

.method public final c(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of p0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p0, :cond_0

    move-object p0, v0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final d(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rc;->e:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/theme/utils/TintInfo;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/rc;->e:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/rc;->e:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mTintManager:Lcom/onyx/android/sdk/theme/utils/TintManager;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/rc;->a()V

    return-void
.end method

.method public final e(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rc;->d:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/theme/utils/TintInfo;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/rc;->d:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/rc;->d:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mTintManager:Lcom/onyx/android/sdk/theme/utils/TintManager;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/rc;->b()V

    return-void
.end method

.method public loadFromAttribute(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintProgressBarHelper:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintProgressBarHelper_android_progressTint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintProgressBarHelper_android_progressTint:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/sunia/HTREnginev2/rc;->b:I

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/rc;->e(I)V

    :cond_0
    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintProgressBarHelper_android_indeterminateTint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintProgressBarHelper_android_indeterminateTint:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/sunia/HTREnginev2/rc;->c:I

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/rc;->d(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public tint()V
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/rc;->b:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/rc;->e(I)V

    :cond_0
    iget v0, p0, Lcom/sunia/HTREnginev2/rc;->c:I

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/rc;->d(I)V

    :cond_1
    return-void
.end method
