.class public Lcom/sunia/HTREnginev2/xji$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/xji;->X(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:I

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:Lcom/sunia/HTREnginev2/xji;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/xji;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xji$a;->i:Lcom/sunia/HTREnginev2/xji;

    iput p2, p0, Lcom/sunia/HTREnginev2/xji$a;->e:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/xji$a;->f:Landroid/widget/TextView;

    iput p4, p0, Lcom/sunia/HTREnginev2/xji$a;->g:I

    iput-object p5, p0, Lcom/sunia/HTREnginev2/xji$a;->h:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xji$a;->i:Lcom/sunia/HTREnginev2/xji;

    iget v0, p0, Lcom/sunia/HTREnginev2/xji$a;->e:I

    invoke-static {p1, v0}, Lcom/sunia/HTREnginev2/xji;->a(Lcom/sunia/HTREnginev2/xji;I)I

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xji$a;->i:Lcom/sunia/HTREnginev2/xji;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sunia/HTREnginev2/xji;->b(Lcom/sunia/HTREnginev2/xji;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xji$a;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lcom/sunia/HTREnginev2/xji$a;->g:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xji$a;->i:Lcom/sunia/HTREnginev2/xji;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/xji;->c(Lcom/sunia/HTREnginev2/xji;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xji$a;->i:Lcom/sunia/HTREnginev2/xji;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/xji;->c(Lcom/sunia/HTREnginev2/xji;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/xji$a;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji$a;->h:Landroid/widget/TextView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xji$a;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xji$a;->h:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
