.class public Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper$DrawableCallback;,
        Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper$SwitchCompatExtensible;
    }
.end annotation


# instance fields
.field public a:[I

.field public b:Landroidx/appcompat/widget/SwitchCompat;

.field public c:Lcom/onyx/android/sdk/theme/utils/TintManager;

.field public d:Z

.field public e:Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper$DrawableCallback;

.field public f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SwitchCompat;Lcom/onyx/android/sdk/theme/utils/TintManager;[ILcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper$DrawableCallback;)V
    .locals 0
    .param p4    # Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper$DrawableCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->a:[I

    iput-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->c:Lcom/onyx/android/sdk/theme/utils/TintManager;

    iput-object p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->b:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p4, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper$DrawableCallback;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper$DrawableCallback;

    invoke-interface {v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper$DrawableCallback;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    iget-boolean v3, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    iget-boolean v3, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f(Landroid/graphics/drawable/Drawable;)V

    if-ne v0, v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public b(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->a:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->h:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->l(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->h:I

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->k(I)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->c:Lcom/onyx/android/sdk/theme/utils/TintManager;

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->g:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->g:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->i:Landroid/graphics/PorterDuff$Mode;

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iput-boolean p1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-void
.end method

.method public d(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->h:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->h:I

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iput-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    iput-object v2, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->l(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->k(I)Z

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->c(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->j(Z)V

    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->e:Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper$DrawableCallback;

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper$DrawableCallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public g(I)V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->g:I

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->c(I)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->c:Lcom/onyx/android/sdk/theme/utils/TintManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public h(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/theme/utils/TintInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    iput-object p1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->a()Z

    return-void
.end method

.method public i(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->l(Landroid/graphics/PorterDuff$Mode;)V

    iget p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->h:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->k(I)Z

    :cond_1
    return-void
.end method

.method public final j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->d:Z

    return-void
.end method

.method public final k(I)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/theme/utils/TintInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    iget-object v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->c:Lcom/onyx/android/sdk/theme/utils/TintManager;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->a()Z

    move-result p0

    return p0
.end method

.method public final l(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/theme/utils/TintInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f:Lcom/onyx/android/sdk/theme/utils/TintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    iput-object p1, p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    return-void
.end method

.method public final m()Z
    .locals 3

    iget-boolean v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->d:Z

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->d:Z

    return v1
.end method

.method public n()V
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->h:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->k(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->c:Lcom/onyx/android/sdk/theme/utils/TintManager;

    iget v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->g:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->g:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->g:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method
