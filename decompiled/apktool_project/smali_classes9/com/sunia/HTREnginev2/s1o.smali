.class public final synthetic Lcom/sunia/HTREnginev2/s1o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/s1o;->e:Landroid/view/ViewGroup$LayoutParams;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/s1o;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/s1o;->e:Landroid/view/ViewGroup$LayoutParams;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s1o;->f:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/utils/ViewAnimatorExtensionsKt;->e(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
