.class public Landroidx/transition/TransitionSet$b;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/TransitionSet;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroidx/transition/TransitionSet;


# direct methods
.method public constructor <init>(Landroidx/transition/TransitionSet;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/TransitionSet$b;->e:Landroidx/transition/TransitionSet;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/transition/TransitionSet$b;->e:Landroidx/transition/TransitionSet;

    iget-object v0, v0, Landroidx/transition/TransitionSet;->Q0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/transition/TransitionSet$b;->e:Landroidx/transition/TransitionSet;

    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->t()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/transition/TransitionSet$b;->e:Landroidx/transition/TransitionSet;

    sget-object v0, Landroidx/transition/Transition$h;->c:Landroidx/transition/Transition$h;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/transition/Transition;->D(Landroidx/transition/Transition$h;Z)V

    iget-object p0, p0, Landroidx/transition/TransitionSet$b;->e:Landroidx/transition/TransitionSet;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/Transition;->t0:Z

    sget-object p1, Landroidx/transition/Transition$h;->b:Landroidx/transition/Transition$h;

    invoke-virtual {p0, p1, v1}, Landroidx/transition/Transition;->D(Landroidx/transition/Transition$h;Z)V

    :cond_0
    return-void
.end method
