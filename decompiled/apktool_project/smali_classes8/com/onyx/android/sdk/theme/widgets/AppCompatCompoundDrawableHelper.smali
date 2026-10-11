.class public Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;
.super Lcom/sunia/HTREnginev2/yb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper$CompoundDrawableExtensible;
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
.field public b:[Lcom/onyx/android/sdk/theme/utils/TintInfo;

.field public c:[I

.field public d:[I

.field public e:[Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/yb;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    const/4 p1, 0x4

    new-array p2, p1, [Lcom/onyx/android/sdk/theme/utils/TintInfo;

    iput-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b:[Lcom/onyx/android/sdk/theme/utils/TintInfo;

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->c:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->d:[I

    new-array p1, p1, [Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->e:[Landroid/graphics/PorterDuff$Mode;

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b:[Lcom/onyx/android/sdk/theme/utils/TintInfo;

    aget-object p0, p0, p1

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    iget-boolean p1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-eqz p1, :cond_3

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-boolean v1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    return-object p1

    :cond_3
    return-object v0
.end method

.method public b(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->e:[Landroid/graphics/PorterDuff$Mode;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->d:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->c:[I

    aget v2, v2, p1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->i(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->h(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/yb;->mTintManager:Lcom/onyx/android/sdk/theme/utils/TintManager;

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    return-object p1
.end method

.method public final varargs c([I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->c:[I

    aget v3, p1, v1

    aput v3, v2, v1

    iget-object v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->d:[I

    aput v0, v2, v1

    iget-object v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b:[Lcom/onyx/android/sdk/theme/utils/TintInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iput-boolean v0, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iput-boolean v0, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    iput-object v3, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs d([I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->d:[I

    aget v3, p1, v1

    aput v3, v2, v1

    iget-object v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b:[Lcom/onyx/android/sdk/theme/utils/TintInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iput-boolean v0, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->g(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/yb;->skipNextApply()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->c([I)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/yb;->setSkipNextApply(Z)V

    return-void
.end method

.method public f(IIII)V
    .locals 0

    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->c([I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const/4 p4, 0x3

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->g(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/yb;->skipNextApply()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final h(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b:[Lcom/onyx/android/sdk/theme/utils/TintInfo;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    new-instance v1, Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/theme/utils/TintInfo;-><init>()V

    aput-object v1, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b:[Lcom/onyx/android/sdk/theme/utils/TintInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yb;->mTintManager:Lcom/onyx/android/sdk/theme/utils/TintManager;

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final i(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b:[Lcom/onyx/android/sdk/theme/utils/TintInfo;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    new-instance v1, Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/theme/utils/TintInfo;-><init>()V

    aput-object v1, v0, p1

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b:[Lcom/onyx/android/sdk/theme/utils/TintInfo;

    aget-object p0, p0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    iput-object p2, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    return-void
.end method

.method public loadFromAttribute(Landroid/util/AttributeSet;I)V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->c:[I

    sget v0, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_android_drawableLeft:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    aput v0, p2, v2

    iget-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->d:[I

    sget v0, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_drawableLeftTint:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    aput v0, p2, v2

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_drawableLeftTintMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->e:[Landroid/graphics/PorterDuff$Mode;

    sget v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_drawableLeftTintMode:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    aput-object v1, p2, v2

    :cond_0
    iget-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->c:[I

    sget v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_android_drawableTop:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v3, 0x1

    aput v1, p2, v3

    iget-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->d:[I

    sget v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_drawableTopTint:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, p2, v3

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_drawableTopTintMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->e:[Landroid/graphics/PorterDuff$Mode;

    sget v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_drawableTopTintMode:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    aput-object v1, p2, v3

    :cond_1
    iget-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->c:[I

    sget v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_android_drawableRight:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v4, 0x2

    aput v1, p2, v4

    iget-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->d:[I

    sget v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_drawableRightTint:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, p2, v4

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_drawableRightTintMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->e:[Landroid/graphics/PorterDuff$Mode;

    sget v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_drawableRightTintMode:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    aput-object v1, p2, v4

    :cond_2
    iget-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->c:[I

    sget v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_android_drawableBottom:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v5, 0x3

    aput v1, p2, v5

    iget-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->d:[I

    sget v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_drawableBottomTint:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, p2, v5

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_drawableBottomTintMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->e:[Landroid/graphics/PorterDuff$Mode;

    sget v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintCompoundDrawableHelper_drawableBottomTintMode:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    aput-object v0, p2, v5

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->g(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public tint()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/onyx/android/sdk/theme/widgets/AppCompatCompoundDrawableHelper;->g(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
