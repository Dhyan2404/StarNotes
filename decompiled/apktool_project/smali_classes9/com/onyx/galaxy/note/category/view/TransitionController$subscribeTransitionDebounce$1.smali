.class public final Lcom/onyx/galaxy/note/category/view/TransitionController$subscribeTransitionDebounce$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/TransitionController;->subscribeTransitionDebounce(Landroid/view/ViewGroup;Landroidx/transition/Transition;JLkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroidx/transition/Transition;

.field public final synthetic f:Landroid/view/ViewGroup;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/transition/Transition;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/transition/Transition;",
            "Landroid/view/ViewGroup;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/TransitionController$subscribeTransitionDebounce$1;->e:Landroidx/transition/Transition;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/TransitionController$subscribeTransitionDebounce$1;->f:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/TransitionController$subscribeTransitionDebounce$1;->g:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/transition/Transition;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/TransitionController$subscribeTransitionDebounce$1;->c(Landroidx/transition/Transition;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static final c(Landroidx/transition/Transition;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1

    const-string v0, "$transition"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$transitionView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$transitionCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/view/TransitionController$subscribeTransitionDebounce$1$1$1;

    invoke-direct {v0, p3}, Lcom/onyx/galaxy/note/category/view/TransitionController$subscribeTransitionDebounce$1$1$1;-><init>(Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    invoke-static {p1, p0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/TransitionController$subscribeTransitionDebounce$1;->b(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/TransitionController$subscribeTransitionDebounce$1;->e:Landroidx/transition/Transition;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/TransitionController$subscribeTransitionDebounce$1;->f:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/TransitionController$subscribeTransitionDebounce$1;->g:Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/sunia/HTREnginev2/enn;

    invoke-direct {v1, p1, v0, p0}, Lcom/sunia/HTREnginev2/enn;-><init>(Landroidx/transition/Transition;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
