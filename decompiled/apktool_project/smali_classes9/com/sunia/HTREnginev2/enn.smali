.class public final synthetic Lcom/sunia/HTREnginev2/enn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# instance fields
.field public final synthetic a:Landroidx/transition/Transition;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/transition/Transition;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/enn;->a:Landroidx/transition/Transition;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/enn;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/enn;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/enn;->a:Landroidx/transition/Transition;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/enn;->b:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/enn;->c:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/category/view/TransitionController$subscribeTransitionDebounce$1;->a(Landroidx/transition/Transition;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method
