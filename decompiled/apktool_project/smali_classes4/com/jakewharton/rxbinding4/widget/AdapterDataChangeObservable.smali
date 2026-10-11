.class public final Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable;
.super Lcom/jakewharton/rxbinding4/InitialValueObservable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Lcom/jakewharton/rxbinding4/InitialValueObservable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/Adapter;)V
    .locals 1
    .param p1    # Landroid/widget/Adapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jakewharton/rxbinding4/InitialValueObservable;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable;->e:Landroid/widget/Adapter;

    return-void
.end method


# virtual methods
.method public d()Landroid/widget/Adapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable;->e:Landroid/widget/Adapter;

    return-object p0
.end method

.method public bridge synthetic getInitialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable;->d()Landroid/widget/Adapter;

    move-result-object p0

    return-object p0
.end method

.method public subscribeListener(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/jakewharton/rxbinding4/internal/Preconditions;->checkMainThread(Lio/reactivex/rxjava3/core/Observer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable;->d()Landroid/widget/Adapter;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable;-><init>(Landroid/widget/Adapter;Lio/reactivex/rxjava3/core/Observer;)V

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable;->d()Landroid/widget/Adapter;

    move-result-object p0

    iget-object v1, v0, Lcom/jakewharton/rxbinding4/widget/AdapterDataChangeObservable$ObserverDisposable;->f:Landroid/database/DataSetObserver;

    invoke-interface {p0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
