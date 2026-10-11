.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/Observer<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final e:Lio/reactivex/rxjava3/internal/disposables/ArrayCompositeDisposable;

.field public final f:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:Lio/reactivex/rxjava3/observers/SerializedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/observers/SerializedObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:Lio/reactivex/rxjava3/disposables/Disposable;

.field public final synthetic i:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil;Lio/reactivex/rxjava3/internal/disposables/ArrayCompositeDisposable;Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$b;Lio/reactivex/rxjava3/observers/SerializedObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "frc",
            "sus",
            "serial"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/disposables/ArrayCompositeDisposable;",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$b<",
            "TT;>;",
            "Lio/reactivex/rxjava3/observers/SerializedObserver<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$a;->i:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$a;->e:Lio/reactivex/rxjava3/internal/disposables/ArrayCompositeDisposable;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$a;->f:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$b;

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$a;->g:Lio/reactivex/rxjava3/observers/SerializedObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$a;->f:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$b;->h:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$a;->e:Lio/reactivex/rxjava3/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/disposables/ArrayCompositeDisposable;->dispose()V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$a;->g:Lio/reactivex/rxjava3/observers/SerializedObserver;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$a;->h:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$a;->f:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$b;->h:Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$a;->h:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$a;->h:Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkipUntil$a;->e:Lio/reactivex/rxjava3/internal/disposables/ArrayCompositeDisposable;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/internal/disposables/ArrayCompositeDisposable;->setResource(ILio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_0
    return-void
.end method
