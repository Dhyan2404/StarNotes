.class public final Lcom/sunia/HTREnginev2/xji;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final C:I = 0xd9

.field public static final D:I = 0xa7

.field public static final E:I = 0x0

.field public static final F:I = 0x1

.field public static final G:I = 0x2

.field public static final H:I = 0x0

.field public static final I:I = 0x1

.field public static final J:I = 0x2


# instance fields
.field public A:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public B:Landroid/graphics/Typeface;

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Landroid/animation/TimeInterpolator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Landroid/animation/TimeInterpolator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Landroid/animation/TimeInterpolator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Landroid/content/Context;

.field public final h:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public i:Landroid/widget/LinearLayout;

.field public j:I

.field public k:Landroid/widget/FrameLayout;

.field public l:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final m:F

.field public n:I

.field public o:I

.field public p:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public q:Z

.field public r:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public s:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public t:I

.field public u:I

.field public v:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public w:Ljava/lang/CharSequence;

.field public x:Z

.field public y:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public z:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xji;->g:Landroid/content/Context;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/google/android/material/R$dimen;->design_textinput_caption_translate_y:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sunia/HTREnginev2/xji;->m:F

    sget p1, Lcom/google/android/material/R$attr;->motionDurationShort4:I

    const/16 v1, 0xd9

    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/xji;->a:I

    sget p1, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    const/16 v1, 0xa7

    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/xji;->b:I

    sget p1, Lcom/google/android/material/R$attr;->motionDurationShort4:I

    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/xji;->c:I

    sget p1, Lcom/google/android/material/R$attr;->motionEasingEmphasizedDecelerateInterpolator:I

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xji;->d:Landroid/animation/TimeInterpolator;

    sget p1, Lcom/google/android/material/R$attr;->motionEasingEmphasizedDecelerateInterpolator:I

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xji;->e:Landroid/animation/TimeInterpolator;

    sget p1, Lcom/google/android/material/R$attr;->motionEasingLinearInterpolator:I

    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xji;->f:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/xji;I)I
    .locals 0

    iput p1, p0, Lcom/sunia/HTREnginev2/xji;->n:I

    return p1
.end method

.method public static synthetic b(Lcom/sunia/HTREnginev2/xji;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xji;->l:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic c(Lcom/sunia/HTREnginev2/xji;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic d(Lcom/sunia/HTREnginev2/xji;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xji;->p:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xji;->h()V

    iget v0, p0, Lcom/sunia/HTREnginev2/xji;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/xji;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->w:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/sunia/HTREnginev2/xji;->o:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/xji;->o:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/sunia/HTREnginev2/xji;->n:I

    iget v1, p0, Lcom/sunia/HTREnginev2/xji;->o:I

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/sunia/HTREnginev2/xji;->U(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sunia/HTREnginev2/xji;->X(IIZ)V

    return-void
.end method

.method public B()V
    .locals 4

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xji;->h()V

    iget v0, p0, Lcom/sunia/HTREnginev2/xji;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/sunia/HTREnginev2/xji;->o:I

    :cond_0
    iget v1, p0, Lcom/sunia/HTREnginev2/xji;->o:I

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/sunia/HTREnginev2/xji;->U(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sunia/HTREnginev2/xji;->X(IIZ)V

    return-void
.end method

.method public final C(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->p:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final D(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->w:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public E(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public F()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/xji;->q:Z

    return p0
.end method

.method public G()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/xji;->x:Z

    return p0
.end method

.method public H(Landroid/widget/TextView;I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->i:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/xji;->E(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sunia/HTREnginev2/xji;->k:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sunia/HTREnginev2/xji;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    iget p1, p0, Lcom/sunia/HTREnginev2/xji;->j:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/xji;->j:I

    iget-object p2, p0, Lcom/sunia/HTREnginev2/xji;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2, p1}, Lcom/sunia/HTREnginev2/xji;->T(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public final I(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/xji;->n(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xji;->n(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iput p2, p0, Lcom/sunia/HTREnginev2/xji;->n:I

    return-void
.end method

.method public J(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/HTREnginev2/xji;->t:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public K(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xji;->s:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public L(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/xji;->q:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xji;->h()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xji;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/R$id;->textinput_error:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->B:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget v1, p0, Lcom/sunia/HTREnginev2/xji;->u:I

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/xji;->M(I)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->v:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/xji;->N(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->s:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/xji;->K(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/sunia/HTREnginev2/xji;->t:I

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/xji;->J(I)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/sunia/HTREnginev2/xji;->e(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xji;->A()V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/sunia/HTREnginev2/xji;->H(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->l0()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->w0()V

    :goto_0
    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/xji;->q:Z

    return-void
.end method

.method public M(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/sunia/HTREnginev2/xji;->u:I

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->Y(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public N(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xji;->v:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public O(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/sunia/HTREnginev2/xji;->z:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public P(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/xji;->x:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xji;->h()V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xji;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/R$id;->textinput_helper_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->B:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    iget v1, p0, Lcom/sunia/HTREnginev2/xji;->z:I

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/xji;->O(I)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->A:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/xji;->Q(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/sunia/HTREnginev2/xji;->e(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    new-instance v1, Lcom/sunia/HTREnginev2/xji$b;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xji$b;-><init>(Lcom/sunia/HTREnginev2/xji;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xji;->B()V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/sunia/HTREnginev2/xji;->H(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->l0()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->w0()V

    :goto_0
    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/xji;->x:Z

    return-void
.end method

.method public Q(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xji;->A:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final R(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public S(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->B:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xji;->B:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/sunia/HTREnginev2/xji;->R(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/sunia/HTREnginev2/xji;->R(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final T(Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final U(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sunia/HTREnginev2/xji;->o:I

    iget p0, p0, Lcom/sunia/HTREnginev2/xji;->n:I

    if-ne v0, p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public V(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xji;->h()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xji;->p:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/sunia/HTREnginev2/xji;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/sunia/HTREnginev2/xji;->o:I

    :cond_0
    iget v1, p0, Lcom/sunia/HTREnginev2/xji;->o:I

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1}, Lcom/sunia/HTREnginev2/xji;->U(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sunia/HTREnginev2/xji;->X(IIZ)V

    return-void
.end method

.method public W(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xji;->h()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xji;->w:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/sunia/HTREnginev2/xji;->n:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/sunia/HTREnginev2/xji;->o:I

    :cond_0
    iget v1, p0, Lcom/sunia/HTREnginev2/xji;->o:I

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1}, Lcom/sunia/HTREnginev2/xji;->U(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sunia/HTREnginev2/xji;->X(IIZ)V

    return-void
.end method

.method public final X(IIZ)V
    .locals 13

    move-object v7, p0

    move v8, p2

    move v9, p1

    move/from16 v10, p3

    if-ne v9, v8, :cond_0

    return-void

    :cond_0
    if-eqz v10, :cond_1

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v7, Lcom/sunia/HTREnginev2/xji;->l:Landroid/animation/Animator;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, v7, Lcom/sunia/HTREnginev2/xji;->x:Z

    iget-object v3, v7, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v12

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sunia/HTREnginev2/xji;->i(Ljava/util/List;ZLandroid/widget/TextView;III)V

    iget-boolean v2, v7, Lcom/sunia/HTREnginev2/xji;->q:Z

    iget-object v3, v7, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/sunia/HTREnginev2/xji;->i(Ljava/util/List;ZLandroid/widget/TextView;III)V

    invoke-static {v11, v12}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xji;->n(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/xji;->n(I)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Lcom/sunia/HTREnginev2/xji$a;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/xji$a;-><init>(Lcom/sunia/HTREnginev2/xji;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v11, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/xji;->I(II)V

    :goto_0
    iget-object v0, v7, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->l0()V

    iget-object v0, v7, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->q0(Z)V

    iget-object v0, v7, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->w0()V

    return-void
.end method

.method public e(Landroid/widget/TextView;I)V
    .locals 5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->k:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/xji;->g:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xji;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/xji;->i:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/xji;->g:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xji;->k:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lcom/sunia/HTREnginev2/xji;->i:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/xji;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xji;->f()V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/xji;->E(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sunia/HTREnginev2/xji;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/xji;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/xji;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lcom/sunia/HTREnginev2/xji;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/xji;->j:I

    return-void
.end method

.method public f()V
    .locals 7

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xji;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xji;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xji;->i:Landroid/widget/LinearLayout;

    sget v3, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_horizontal:I

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/sunia/HTREnginev2/xji;->x(ZII)I

    move-result v3

    sget v4, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_top:I

    iget-object v5, p0, Lcom/sunia/HTREnginev2/xji;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->material_helper_text_default_padding_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/sunia/HTREnginev2/xji;->x(ZII)I

    move-result v4

    sget v5, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_horizontal:I

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v1, v5, v0}, Lcom/sunia/HTREnginev2/xji;->x(ZII)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v2, v3, v4, p0, v0}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xji;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->l:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final i(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    if-eqz p3, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p4, p6, :cond_2

    if-ne p4, p5, :cond_1

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_6

    if-ne p6, p4, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, p2

    :goto_2
    invoke-virtual {p0, p3, v1}, Lcom/sunia/HTREnginev2/xji;->j(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-ne p4, p6, :cond_4

    if-eqz p5, :cond_4

    move p2, v0

    :cond_4
    if-eqz p2, :cond_5

    iget p2, p0, Lcom/sunia/HTREnginev2/xji;->c:I

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_5
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p6, p4, :cond_6

    if-eqz p5, :cond_6

    invoke-virtual {p0, p3}, Lcom/sunia/HTREnginev2/xji;->k(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iget p0, p0, Lcom/sunia/HTREnginev2/xji;->c:I

    int-to-long p3, p0

    invoke-virtual {p2, p3, p4}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method public final j(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .locals 4

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/sunia/HTREnginev2/xji;->b:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/sunia/HTREnginev2/xji;->c:I

    :goto_1
    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->e:Landroid/animation/TimeInterpolator;

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->f:Landroid/animation/TimeInterpolator;

    :goto_2
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public final k(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .locals 4

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/sunia/HTREnginev2/xji;->m:F

    neg-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget v0, p0, Lcom/sunia/HTREnginev2/xji;->a:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public l()Z
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/xji;->n:I

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/xji;->C(I)Z

    move-result p0

    return p0
.end method

.method public m()Z
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/xji;->o:I

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/xji;->C(I)Z

    move-result p0

    return p0
.end method

.method public final n(I)Landroid/widget/TextView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method public o()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/xji;->t:I

    return p0
.end method

.method public p()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->s:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public q()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->p:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public r()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public s()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->r:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public t()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->w:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public u()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method public v()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public w()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->y:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final x(ZII)I
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji;->g:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    :cond_0
    return p3
.end method

.method public y()Z
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/xji;->n:I

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/xji;->D(I)Z

    move-result p0

    return p0
.end method

.method public z()Z
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/xji;->o:I

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/xji;->D(I)Z

    move-result p0

    return p0
.end method
