.class public Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;
.super Lcom/sunia/HTREnginev2/yb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper$ImageExtensible;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/yb<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/onyx/android/sdk/theme/utils/TintInfo;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/yb;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->b:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->b:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    iget-boolean v3, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->b:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    iget-boolean v3, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->e(Landroid/graphics/drawable/Drawable;)V

    if-ne v0, v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->a()Z

    return-void
.end method

.method public final c(I)V
    .locals 1

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->d:I

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->b:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iput-boolean p1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/yb;->skipNextApply()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->c:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->c(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/yb;->setSkipNextApply(Z)V

    return-void
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/yb;->skipNextApply()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public g(I)V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->c:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->c:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mTintManager:Lcom/onyx/android/sdk/theme/utils/TintManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public h(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->d:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->d:I

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->b:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->j(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->i(I)Z

    :cond_1
    return-void
.end method

.method public final i(I)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->b:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/theme/utils/TintInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->b:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->b:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mTintManager:Lcom/onyx/android/sdk/theme/utils/TintManager;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->a()Z

    move-result p0

    return p0
.end method

.method public final j(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->d:I

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->b:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/theme/utils/TintInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->b:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->b:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    iput-object p1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    return-void
.end method

.method public loadFromAttribute(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintImageHelper:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    iget-object p2, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sunia/HTREnginev2/yb;->mTintManager:Lcom/onyx/android/sdk/theme/utils/TintManager;

    sget v0, Lcom/onyx/android/sdk/skin/R$styleable;->TintImageHelper_srcCompat:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->c:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->e(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintImageHelper_imageTint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintImageHelper_imageTint:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->d:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintImageHelper_imageTintMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintImageHelper_imageTintMode:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->d:I

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->i(I)Z

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->c:I

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/sunia/HTREnginev2/yb;->mTintManager:Lcom/onyx/android/sdk/theme/utils/TintManager;

    sget v0, Lcom/onyx/android/sdk/skin/R$styleable;->TintImageHelper_android_src:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->c:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->e(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public tint()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/yb;->setSkipNextApply(Z)V

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->d:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->i(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mTintManager:Lcom/onyx/android/sdk/theme/utils/TintManager;

    iget v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->c:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->c:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->c:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatImageHelper;->e(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method
