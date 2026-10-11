.class public interface abstract Landroidx/transition/Transition$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "h"
.end annotation


# static fields
.field public static final a:Landroidx/transition/Transition$h;

.field public static final b:Landroidx/transition/Transition$h;

.field public static final c:Landroidx/transition/Transition$h;

.field public static final d:Landroidx/transition/Transition$h;

.field public static final e:Landroidx/transition/Transition$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/zmn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/zmn;-><init>()V

    sput-object v0, Landroidx/transition/Transition$h;->a:Landroidx/transition/Transition$h;

    new-instance v0, Lcom/sunia/HTREnginev2/ann;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ann;-><init>()V

    sput-object v0, Landroidx/transition/Transition$h;->b:Landroidx/transition/Transition$h;

    new-instance v0, Lcom/sunia/HTREnginev2/bnn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/bnn;-><init>()V

    sput-object v0, Landroidx/transition/Transition$h;->c:Landroidx/transition/Transition$h;

    new-instance v0, Lcom/sunia/HTREnginev2/cnn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/cnn;-><init>()V

    sput-object v0, Landroidx/transition/Transition$h;->d:Landroidx/transition/Transition$h;

    new-instance v0, Lcom/sunia/HTREnginev2/dnn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dnn;-><init>()V

    sput-object v0, Landroidx/transition/Transition$h;->e:Landroidx/transition/Transition$h;

    return-void
.end method

.method public static synthetic a(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionCancel(Landroidx/transition/Transition;)V

    return-void
.end method

.method public static synthetic b(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionPause(Landroidx/transition/Transition;)V

    return-void
.end method

.method public static synthetic c(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionResume(Landroidx/transition/Transition;)V

    return-void
.end method

.method public static synthetic e(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/transition/Transition$h;->c(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V

    return-void
.end method

.method public static synthetic f(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/transition/Transition$h;->b(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V

    return-void
.end method

.method public static synthetic g(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/transition/Transition$h;->a(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V

    return-void
.end method


# virtual methods
.method public abstract d(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .param p1    # Landroidx/transition/Transition$TransitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
