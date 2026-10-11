.class public final Lcom/sunia/HTREnginev2/ofh;
.super Lio/reactivex/rxjava3/core/Scheduler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/ofh$b;,
        Lcom/sunia/HTREnginev2/ofh$a;
    }
.end annotation


# instance fields
.field public final g:Landroid/os/Handler;

.field public final h:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "async"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ofh;->g:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/ofh;->h:Z

    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/ofh$a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ofh;->g:Landroid/os/Handler;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/ofh;->h:Z

    invoke-direct {v0, v1, p0}, Lcom/sunia/HTREnginev2/ofh$a;-><init>(Landroid/os/Handler;Z)V

    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "run",
            "delay",
            "unit"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/ofh$b;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ofh;->g:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/sunia/HTREnginev2/ofh$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/ofh;->g:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/ofh;->h:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/ofh;->g:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "run == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
