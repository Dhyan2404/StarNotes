.class public final Lio/reactivex/rxjava3/schedulers/TestScheduler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/reactivex/rxjava3/schedulers/TestScheduler$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:J

.field public final f:Ljava/lang/Runnable;

.field public final g:Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;

.field public final h:J


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;JLjava/lang/Runnable;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scheduler",
            "time",
            "run",
            "count"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->e:J

    iput-object p4, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->f:Ljava/lang/Runnable;

    iput-object p1, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->g:Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;

    iput-wide p5, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->h:J

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/rxjava3/schedulers/TestScheduler$a;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget-wide v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->e:J

    iget-wide v2, p1, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->e:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->h:J

    iget-wide p0, p1, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->h:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    check-cast p1, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->a(Lio/reactivex/rxjava3/schedulers/TestScheduler$a;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->f:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "TimedRunnable(time = %d, run = %s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
