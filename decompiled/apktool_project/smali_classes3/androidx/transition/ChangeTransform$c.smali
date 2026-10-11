.class public Landroidx/transition/ChangeTransform$c;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public e:Landroid/view/View;

.field public f:Lcom/sunia/HTREnginev2/r2h;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sunia/HTREnginev2/r2h;)V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    iput-object p1, p0, Landroidx/transition/ChangeTransform$c;->e:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/ChangeTransform$c;->f:Lcom/sunia/HTREnginev2/r2h;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    iget-object p1, p0, Landroidx/transition/ChangeTransform$c;->e:Landroid/view/View;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/t2h;->b(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$c;->e:Landroid/view/View;

    sget v0, Landroidx/transition/R$id;->transition_transform:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/ChangeTransform$c;->e:Landroid/view/View;

    sget p1, Landroidx/transition/R$id;->parent_matrix:I

    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroidx/transition/ChangeTransform$c;->f:Lcom/sunia/HTREnginev2/r2h;

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/r2h;->setVisibility(I)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroidx/transition/ChangeTransform$c;->f:Lcom/sunia/HTREnginev2/r2h;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/r2h;->setVisibility(I)V

    return-void
.end method
