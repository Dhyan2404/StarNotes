.class public Landroidx/transition/Transition$g;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/TransitionSeekController;
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x22
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public e:J

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Z

.field public j:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public k:[Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/sunia/HTREnginev2/q0o;

.field public m:Ljava/lang/Runnable;

.field public final synthetic n:Landroidx/transition/Transition;


# direct methods
.method public constructor <init>(Landroidx/transition/Transition;)V
    .locals 2

    iput-object p1, p0, Landroidx/transition/Transition$g;->n:Landroidx/transition/Transition;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/transition/Transition$g;->e:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/transition/Transition$g;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/transition/Transition$g;->g:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/transition/Transition$g;->k:[Landroidx/core/util/Consumer;

    new-instance p1, Lcom/sunia/HTREnginev2/q0o;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/q0o;-><init>()V

    iput-object p1, p0, Landroidx/transition/Transition$g;->l:Lcom/sunia/HTREnginev2/q0o;

    return-void
.end method

.method public static synthetic a(Landroidx/transition/Transition$g;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/transition/Transition$g;->e(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method private synthetic e(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 6

    if-nez p2, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p3, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-gez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->getDurationMillis()J

    move-result-wide v0

    iget-object p1, p0, Landroidx/transition/Transition$g;->n:Landroidx/transition/Transition;

    check-cast p1, Landroidx/transition/TransitionSet;

    invoke-virtual {p1, p3}, Landroidx/transition/TransitionSet;->getTransitionAt(I)Landroidx/transition/Transition;

    move-result-object p1

    invoke-static {p1}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition;)Landroidx/transition/Transition;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p1, p4}, Landroidx/transition/Transition;->b(Landroidx/transition/Transition;Landroidx/transition/Transition;)Landroidx/transition/Transition;

    iget-object p1, p0, Landroidx/transition/Transition$g;->n:Landroidx/transition/Transition;

    iget-wide v2, p0, Landroidx/transition/Transition$g;->e:J

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v4, v5, v2, v3}, Landroidx/transition/Transition;->J(JJ)V

    iget-object p1, p0, Landroidx/transition/Transition$g;->n:Landroidx/transition/Transition;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroidx/transition/Transition;->J(JJ)V

    iput-wide v0, p0, Landroidx/transition/Transition$g;->e:J

    iget-object p1, p0, Landroidx/transition/Transition$g;->m:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object p0, p0, Landroidx/transition/Transition$g;->n:Landroidx/transition/Transition;

    iget-object p0, p0, Landroidx/transition/Transition;->w0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    if-eqz p3, :cond_3

    sget-object p0, Landroidx/transition/Transition$h;->b:Landroidx/transition/Transition$h;

    invoke-virtual {p3, p0, p2}, Landroidx/transition/Transition;->D(Landroidx/transition/Transition$h;Z)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/transition/Transition$g;->n:Landroidx/transition/Transition;

    sget-object p1, Landroidx/transition/Transition$h;->b:Landroidx/transition/Transition$h;

    invoke-virtual {p0, p1, p3}, Landroidx/transition/Transition;->D(Landroidx/transition/Transition$h;Z)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addOnProgressChangedListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/transition/Transition$g;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition$g;->g:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Landroidx/transition/Transition$g;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnReadyListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition$g;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition$g;->f:Ljava/util/ArrayList;

    :cond_1
    iget-object p0, p0, Landroidx/transition/Transition$g;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateToEnd()V
    .locals 5

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->c()V

    iget-object v0, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->getDurationMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-float p0, v1

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public animateToStart(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/transition/Transition$g;->m:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->c()V

    iget-object p0, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Landroidx/transition/Transition$g;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition$g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/transition/Transition$g;->k:[Landroidx/core/util/Consumer;

    if-nez v1, :cond_1

    new-array v1, v0, [Landroidx/core/util/Consumer;

    iput-object v1, p0, Landroidx/transition/Transition$g;->k:[Landroidx/core/util/Consumer;

    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition$g;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/transition/Transition$g;->k:[Landroidx/core/util/Consumer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/core/util/Consumer;

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/transition/Transition$g;->k:[Landroidx/core/util/Consumer;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    invoke-interface {v4, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Landroidx/transition/Transition$g;->k:[Landroidx/core/util/Consumer;

    :cond_3
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition$g;->l:Lcom/sunia/HTREnginev2/q0o;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/transition/Transition$g;->e:J

    long-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/q0o;->a(JF)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v1, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-wide v1, p0, Landroidx/transition/Transition$g;->e:J

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroidx/transition/Transition$g;->l:Lcom/sunia/HTREnginev2/q0o;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/q0o;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->getDurationMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/sunia/HTREnginev2/ymn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ymn;-><init>(Landroidx/transition/Transition$g;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method public d()V
    .locals 6

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v2, 0x1

    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition$g;->n:Landroidx/transition/Transition;

    iget-wide v4, p0, Landroidx/transition/Transition$g;->e:J

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/transition/Transition;->J(JJ)V

    iput-wide v2, p0, Landroidx/transition/Transition$g;->e:J

    return-void
.end method

.method public f()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/transition/Transition$g;->h:Z

    iget-object v0, p0, Landroidx/transition/Transition$g;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/transition/Transition$g;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Consumer;

    invoke-interface {v2, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/transition/Transition$g;->b()V

    return-void
.end method

.method public getCurrentFraction()F
    .locals 3

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->getCurrentPlayTimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->getDurationMillis()J

    move-result-wide v1

    long-to-float p0, v1

    div-float/2addr v0, p0

    return v0
.end method

.method public getCurrentPlayTimeMillis()J
    .locals 6

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Landroidx/transition/Transition$g;->e:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 2

    iget-object p0, p0, Landroidx/transition/Transition$g;->n:Landroidx/transition/Transition;

    invoke-virtual {p0}, Landroidx/transition/Transition;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public isReady()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/transition/Transition$g;->h:Z

    return p0
.end method

.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 4

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object p3, p0, Landroidx/transition/Transition$g;->n:Landroidx/transition/Transition;

    iget-wide v0, p0, Landroidx/transition/Transition$g;->e:J

    invoke-virtual {p3, p1, p2, v0, v1}, Landroidx/transition/Transition;->J(JJ)V

    iput-wide p1, p0, Landroidx/transition/Transition$g;->e:J

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->b()V

    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/Transition$g;->i:Z

    return-void
.end method

.method public removeOnProgressChangedListener(Landroidx/core/util/Consumer;)V
    .locals 0
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/transition/Transition$g;->g:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnReadyListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/transition/Transition$g;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/transition/Transition$g;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/transition/Transition$g;->f:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 2

    iget-object v0, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->getDurationMillis()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroidx/transition/Transition$g;->setCurrentPlayTimeMillis(J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setCurrentFraction() called after animation has been started"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCurrentPlayTimeMillis(J)V
    .locals 4

    iget-object v0, p0, Landroidx/transition/Transition$g;->j:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_5

    iget-wide v0, p0, Landroidx/transition/Transition$g;->e:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/transition/Transition$g;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/transition/Transition$g;->i:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    iget-wide v2, p0, Landroidx/transition/Transition$g;->e:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/transition/Transition$g;->getDurationMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/transition/Transition$g;->e:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    const-wide/16 p1, 0x1

    add-long/2addr v0, p1

    move-wide p1, v0

    :cond_2
    :goto_0
    iget-wide v0, p0, Landroidx/transition/Transition$g;->e:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/transition/Transition$g;->n:Landroidx/transition/Transition;

    invoke-virtual {v2, p1, p2, v0, v1}, Landroidx/transition/Transition;->J(JJ)V

    iput-wide p1, p0, Landroidx/transition/Transition$g;->e:J

    :cond_3
    invoke-virtual {p0}, Landroidx/transition/Transition$g;->b()V

    iget-object p0, p0, Landroidx/transition/Transition$g;->l:Lcom/sunia/HTREnginev2/q0o;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    long-to-float p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sunia/HTREnginev2/q0o;->a(JF)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setCurrentPlayTimeMillis() called after animation has been started"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
