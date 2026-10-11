.class public final Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u0006\u0010\u0008\u001a\u00020\u0007R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "subscribeOn",
        "observeOn",
        "getSubscribeOn",
        "getObserveOn",
        "",
        "shutdown",
        "a",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "b",
        "<init>",
        "()V",
        "Companion",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lio/reactivex/rxjava3/core/Scheduler;

.field public b:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->b:Lio/reactivex/rxjava3/core/Scheduler;

    if-nez p0, :cond_0

    const-string p0, "observeOn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getSubscribeOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->a:Lio/reactivex/rxjava3/core/Scheduler;

    if-nez p0, :cond_0

    const-string p0, "subscribeOn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/Scheduler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "observeOn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->b:Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public final shutdown()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->b:Lio/reactivex/rxjava3/core/Scheduler;

    const-string v1, "observeOn"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/SchedulerKt;->isWorkThread(Lio/reactivex/rxjava3/core/Scheduler;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->b:Lio/reactivex/rxjava3/core/Scheduler;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Scheduler;->shutdown()V

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->a:Lio/reactivex/rxjava3/core/Scheduler;

    const-string v1, "subscribeOn"

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/SchedulerKt;->isWorkThread(Lio/reactivex/rxjava3/core/Scheduler;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->a:Lio/reactivex/rxjava3/core/Scheduler;

    if-nez p0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lio/reactivex/rxjava3/core/Scheduler;->shutdown()V

    :cond_5
    return-void
.end method

.method public final subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/Scheduler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "subscribeOn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->a:Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method
