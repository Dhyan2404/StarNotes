.class public Lcom/sunia/HTREnginev2/u9j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final u:Z
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x15
    .end annotation
.end field

.field public static final v:Z


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Landroid/graphics/drawable/LayerDrawable;

.field public t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sunia/HTREnginev2/u9j;->u:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sunia/HTREnginev2/u9j;->v:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1
    .param p2    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/u9j;->n:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/u9j;->o:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/u9j;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/u9j;->r:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/u9j;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/u9j;->n:Z

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->K()V

    return-void
.end method

.method public B(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->k:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u9j;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->K()V

    :cond_0
    return-void
.end method

.method public C(I)V
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/u9j;->h:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sunia/HTREnginev2/u9j;->h:I

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->K()V

    :cond_0
    return-void
.end method

.method public D(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->j:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u9j;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->f()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->f()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->j:Landroid/content/res/ColorStateList;

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public E(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u9j;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->f()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/u9j;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->f()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public F(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/u9j;->r:Z

    return-void
.end method

.method public final G(II)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget v4, p0, Lcom/sunia/HTREnginev2/u9j;->e:I

    iget v5, p0, Lcom/sunia/HTREnginev2/u9j;->f:I

    iput p2, p0, Lcom/sunia/HTREnginev2/u9j;->f:I

    iput p1, p0, Lcom/sunia/HTREnginev2/u9j;->e:I

    iget-boolean v6, p0, Lcom/sunia/HTREnginev2/u9j;->o:Z

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->H()V

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    add-int/2addr v1, p1

    sub-int/2addr v1, v4

    add-int/2addr v3, p2

    sub-int/2addr v3, v5

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method public final H()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->f()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sunia/HTREnginev2/u9j;->t:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public final I(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 3
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/sunia/HTREnginev2/u9j;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/u9j;->o:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->H()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p0, p1, v0, v1, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->f()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->f()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->n()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->n()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->e()Lcom/google/android/material/shape/Shapeable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->e()Lcom/google/android/material/shape/Shapeable;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/material/shape/Shapeable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public J(II)V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sunia/HTREnginev2/u9j;->c:I

    iget v2, p0, Lcom/sunia/HTREnginev2/u9j;->e:I

    iget v3, p0, Lcom/sunia/HTREnginev2/u9j;->d:I

    sub-int/2addr p2, v3

    iget p0, p0, Lcom/sunia/HTREnginev2/u9j;->f:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public final K()V
    .locals 4

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->f()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->n()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/sunia/HTREnginev2/u9j;->h:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/u9j;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/sunia/HTREnginev2/u9j;->h:I

    int-to-float v0, v0

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/u9j;->n:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    sget v2, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, v0, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    :cond_1
    return-void
.end method

.method public final L(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lcom/sunia/HTREnginev2/u9j;->c:I

    iget v3, p0, Lcom/sunia/HTREnginev2/u9j;->e:I

    iget v4, p0, Lcom/sunia/HTREnginev2/u9j;->d:I

    iget v5, p0, Lcom/sunia/HTREnginev2/u9j;->f:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method

.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 8

    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u9j;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u9j;->j:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u9j;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget v1, p0, Lcom/sunia/HTREnginev2/u9j;->h:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/u9j;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/u9j;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    iget v3, p0, Lcom/sunia/HTREnginev2/u9j;->h:I

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/sunia/HTREnginev2/u9j;->n:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    sget v5, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {v4, v5}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    sget-boolean v3, Lcom/sunia/HTREnginev2/u9j;->u:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v6, p0, Lcom/sunia/HTREnginev2/u9j;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v3, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v3, p0, Lcom/sunia/HTREnginev2/u9j;->m:Landroid/graphics/drawable/Drawable;

    const/4 v6, -0x1

    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v6, p0, Lcom/sunia/HTREnginev2/u9j;->l:Landroid/content/res/ColorStateList;

    invoke-static {v6}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v2

    aput-object v0, v4, v5

    invoke-direct {v7, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v7}, Lcom/sunia/HTREnginev2/u9j;->L(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u9j;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v6, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/sunia/HTREnginev2/u9j;->s:Landroid/graphics/drawable/LayerDrawable;

    return-object v3

    :cond_2
    new-instance v3, Lcom/google/android/material/ripple/RippleDrawableCompat;

    iget-object v6, p0, Lcom/sunia/HTREnginev2/u9j;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v3, v6}, Lcom/google/android/material/ripple/RippleDrawableCompat;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v3, p0, Lcom/sunia/HTREnginev2/u9j;->m:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sunia/HTREnginev2/u9j;->l:Landroid/content/res/ColorStateList;

    invoke-static {v6}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v6, v2

    aput-object v0, v6, v5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->m:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v4

    invoke-direct {v3, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/sunia/HTREnginev2/u9j;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v3}, Lcom/sunia/HTREnginev2/u9j;->L(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object p0

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/u9j;->g:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/u9j;->f:I

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/u9j;->e:I

    return p0
.end method

.method public e()Lcom/google/android/material/shape/Shapeable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->s:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/Shapeable;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/Shapeable;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public f()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/u9j;->g(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public final g(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->s:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/sunia/HTREnginev2/u9j;->u:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->s:Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->s:Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public h()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->l:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public i()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object p0
.end method

.method public j()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->k:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/u9j;->h:I

    return p0
.end method

.method public l()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->j:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public m()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->i:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public final n()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/u9j;->g(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public o()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/u9j;->o:Z

    return p0
.end method

.method public p()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/u9j;->q:Z

    return p0
.end method

.method public q()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/u9j;->r:Z

    return p0
.end method

.method public r(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/u9j;->c:I

    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetRight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/u9j;->d:I

    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/u9j;->e:I

    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/u9j;->f:I

    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/u9j;->g:I

    iget-object v4, p0, Lcom/sunia/HTREnginev2/u9j;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/u9j;->z(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/u9j;->p:Z

    :cond_0
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_strokeWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/u9j;->h:I

    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_backgroundTintMode:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v3}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->i:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/google/android/material/R$styleable;->MaterialButton_backgroundTint:I

    invoke-static {v0, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->j:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/google/android/material/R$styleable;->MaterialButton_strokeColor:I

    invoke-static {v0, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->k:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/google/android/material/R$styleable;->MaterialButton_rippleColor:I

    invoke-static {v0, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->l:Landroid/content/res/ColorStateList;

    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/u9j;->q:Z

    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/u9j;->t:I

    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_toggleCheckedStateOnClick:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/u9j;->r:Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_android_background:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->t()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->H()V

    :goto_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    iget v4, p0, Lcom/sunia/HTREnginev2/u9j;->c:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/sunia/HTREnginev2/u9j;->e:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/sunia/HTREnginev2/u9j;->d:I

    add-int/2addr v2, v4

    iget p0, p0, Lcom/sunia/HTREnginev2/u9j;->f:I

    add-int/2addr v3, p0

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method public s(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->f()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/u9j;->f()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/u9j;->o:Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u9j;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/u9j;->q:Z

    return-void
.end method

.method public v(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/u9j;->p:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sunia/HTREnginev2/u9j;->g:I

    if-eq v0, p1, :cond_1

    :cond_0
    iput p1, p0, Lcom/sunia/HTREnginev2/u9j;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/u9j;->p:Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/u9j;->z(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_1
    return-void
.end method

.method public w(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget v0, p0, Lcom/sunia/HTREnginev2/u9j;->e:I

    invoke-virtual {p0, v0, p1}, Lcom/sunia/HTREnginev2/u9j;->G(II)V

    return-void
.end method

.method public x(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget v0, p0, Lcom/sunia/HTREnginev2/u9j;->f:I

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/u9j;->G(II)V

    return-void
.end method

.method public y(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->l:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u9j;->l:Landroid/content/res/ColorStateList;

    sget-boolean v0, Lcom/sunia/HTREnginev2/u9j;->u:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/ripple/RippleDrawableCompat;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u9j;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/ripple/RippleDrawableCompat;

    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/ripple/RippleDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public z(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u9j;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/u9j;->I(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method
