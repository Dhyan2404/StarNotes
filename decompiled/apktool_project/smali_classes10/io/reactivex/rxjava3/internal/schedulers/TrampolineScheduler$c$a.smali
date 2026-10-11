.class public final Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final e:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$b;

.field public final synthetic f:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "timedRunnable"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c$a;->f:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c$a;->e:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c$a;->e:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$b;->h:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c$a;->f:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c$a;->e:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$b;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
