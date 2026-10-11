.class public final synthetic Lcom/sunia/HTREnginev2/r1o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r1o;->e:Landroid/view/View;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/r1o;->f:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/r1o;->e:Landroid/view/View;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r1o;->f:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/utils/ViewAnimatorExtensionsKt;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method
