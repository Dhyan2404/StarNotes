.class public final synthetic Lcom/sunia/HTREnginev2/u1o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/utils/MarginDirection;

.field public final synthetic f:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/utils/MarginDirection;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u1o;->e:Lcom/onyx/galaxy/note/editor/utils/MarginDirection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/u1o;->f:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/u1o;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u1o;->e:Lcom/onyx/galaxy/note/editor/utils/MarginDirection;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u1o;->f:Landroid/view/ViewGroup$LayoutParams;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u1o;->g:Landroid/view/View;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/utils/ViewAnimatorExtensionsKt;->d(Lcom/onyx/galaxy/note/editor/utils/MarginDirection;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
