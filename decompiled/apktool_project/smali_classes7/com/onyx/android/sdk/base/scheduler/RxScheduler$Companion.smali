.class public final Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001c\u0010\u0007\u001a\u00020\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u0004J\u001a\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u0004J\u0006\u0010\u000e\u001a\u00020\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;",
        "",
        "()V",
        "createScheduler",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "newMultiThreadManager",
        "name",
        "",
        "keepAliveTime",
        "",
        "newSingleThreadManager",
        "sharedMultiThreadManager",
        "sharedSingleThreadManager",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newMultiThreadManager$default(Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;Ljava/lang/String;JILjava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-wide/16 p2, 0x5

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->newMultiThreadManager(Ljava/lang/String;J)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newSingleThreadManager$default(Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;Ljava/lang/String;JILjava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x5

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->newSingleThreadManager(Ljava/lang/String;J)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/core/Scheduler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "scheduler"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public final newMultiThreadManager(Ljava/lang/String;J)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/scheduler/MultiThreadScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/MultiThreadScheduler$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/base/scheduler/MultiThreadScheduler$Companion;->newScheduler$default(Lcom/onyx/android/sdk/base/scheduler/MultiThreadScheduler$Companion;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->createScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public final newSingleThreadManager()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v1, ""

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->newSingleThreadManager$default(Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;Ljava/lang/String;JILjava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public final newSingleThreadManager(Ljava/lang/String;J)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;->newSingleThreadExecutor$default(Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;ILjava/lang/Object;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    const-string p2, "from(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->createScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public final sharedMultiThreadManager()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/scheduler/MultiThreadScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/MultiThreadScheduler$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/scheduler/MultiThreadScheduler$Companion;->scheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->createScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public final sharedSingleThreadManager()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;->scheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->createScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method
