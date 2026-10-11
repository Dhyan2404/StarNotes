.class public final Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$Companion;,
        Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \'2\u00020\u0001:\u0002\'(B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u00a2\u0006\u0004\u0008%\u0010&J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\u0008\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0002R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0011R\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;",
        "",
        "Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;",
        "listener",
        "",
        "registerListener",
        "unregisterListener",
        "startTimer",
        "cancelTimer",
        "",
        "currentTime",
        "c",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;",
        "taskModel",
        "b",
        "a",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "counterEntry",
        "",
        "Ljava/util/List;",
        "listenerList",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "timerDisposable",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "d",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "getCounterBundle",
        "()Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "setCounterBundle",
        "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;)V",
        "counterBundle",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntryState;",
        "e",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntryState;",
        "entryState",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V",
        "Companion",
        "CounterListener",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final COUNT_INTERVAL_MILLIS:J = 0x64L

.field public static final Companion:Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:J


# instance fields
.field public final a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lcom/onyx/galaxy/note/editor/data/CounterEntryState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->Companion:Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$Companion;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->f:J

    return-void
.end method

.method public constructor <init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/CounterEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->e:Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    return-void
.end method

.method public static final synthetic access$getMAX_COUNT_UP_DURATION_MS$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->f:J

    return-wide v0
.end method

.method public static final synthetic access$onTick(Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->c(J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->e:Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->totalTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getDuration()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->cancelTimer()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->d:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    if-eqz v1, :cond_0

    new-instance p1, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getCurrentTimeSetting()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->e:Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->segmentTotalTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;->getDuration()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->d:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/CounterSegmentDoneEvent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/event/CounterSegmentDoneEvent;-><init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->postEvent(Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->e:Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->segment()V

    :cond_3
    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V
    .locals 10

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->e:Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->totalTime()J

    move-result-wide v0

    sget-wide v2, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->f:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->counter_count_up_reach_max:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->cancelTimer()V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->d:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    if-eqz v3, :cond_0

    new-instance p1, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public final c(J)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTaskModel()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->b:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;

    invoke-interface {v2, p1, p2}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;->onTick(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->b(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->a(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V

    :goto_1
    return-void
.end method

.method public final cancelTimer()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->c:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->isDisposed(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->c:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->c:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final getCounterBundle()Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->d:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    return-object p0
.end method

.method public final registerListener(Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setCounterBundle(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->d:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    return-void
.end method

.method public final startTimer()V
    .locals 5

    const-wide/16 v0, 0x64

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Flowable;->onBackpressureLatest()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$a;-><init>(Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->c:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final unregisterListener(Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
