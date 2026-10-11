.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a$a;,
        Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

.field public final f:Lio/reactivex/rxjava3/core/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final synthetic g:Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;Lio/reactivex/rxjava3/core/SingleObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "sd",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;",
            "Lio/reactivex/rxjava3/core/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;->g:Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;->e:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;->f:Lio/reactivex/rxjava3/core/SingleObserver;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;->e:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;->g:Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;

    iget-object v1, v1, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;->h:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a$a;

    invoke-direct {v2, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a$a;-><init>(Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;->g:Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;->i:Z

    if-eqz p1, :cond_0

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;->f:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;->g:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p0}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;->e:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;->e:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;->g:Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;

    iget-object v1, v1, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;->h:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a$b;

    invoke-direct {v2, p0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a$b;-><init>(Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$a;->g:Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;->f:J

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay;->g:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p0}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
