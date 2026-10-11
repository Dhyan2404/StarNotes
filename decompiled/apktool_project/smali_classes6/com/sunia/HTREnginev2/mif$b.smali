.class public Lcom/sunia/HTREnginev2/mif$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/mif;->l(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/mif;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/mif;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mif$b;->e:Lcom/sunia/HTREnginev2/mif;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/mif$b;->e:Lcom/sunia/HTREnginev2/mif;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/sunia/HTREnginev2/mif;->b(Lcom/sunia/HTREnginev2/mif;ZZ)Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mif$b;->e:Lcom/sunia/HTREnginev2/mif;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/mif;->c(Lcom/sunia/HTREnginev2/mif;)V

    return-void
.end method
