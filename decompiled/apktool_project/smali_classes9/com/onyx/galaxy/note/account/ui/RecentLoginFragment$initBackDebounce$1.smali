.class public final Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onPause",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1;->e:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1;->e:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1;->e:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->access$getBackButtonClickSource$p(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/rxjava3/core/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v1, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$a;->e:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$a;

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->timeInterval(Ljava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->skip(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$b;->e:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$b;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$c;

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1;->e:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$c;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1;->e:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
