.class public final synthetic Lcom/sunia/HTREnginev2/iui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:F

.field public final synthetic f:Landroid/animation/ObjectAnimator;

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(FLandroid/animation/ObjectAnimator;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/iui;->e:F

    iput-object p2, p0, Lcom/sunia/HTREnginev2/iui;->f:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/iui;->g:Landroid/view/View;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/iui;->h:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lcom/sunia/HTREnginev2/iui;->e:F

    iget-object v1, p0, Lcom/sunia/HTREnginev2/iui;->f:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/iui;->g:Landroid/view/View;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iui;->h:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->b(FLandroid/animation/ObjectAnimator;Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/animation/ValueAnimator;)V

    return-void
.end method
