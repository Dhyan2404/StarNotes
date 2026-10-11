.class public abstract Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/disposables/Disposable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000 5*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0003:\u00015B\u0007\u00a2\u0006\u0004\u00083\u00104J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rH$J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rH\u0016J\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rJ\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0003H\u0014J2\u0010\u0019\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00132\u0010\u0008\u0002\u0010\u0016\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00150\u00132\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0015H\u0014J\u0008\u0010\u001b\u001a\u00020\u0004H\u0014J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0003J\u0008\u0010\u001d\u001a\u00020\u0004H\u0016J\u0008\u0010\u001f\u001a\u00020\u001eH\u0016J\u0006\u0010!\u001a\u00020 J\u0008\u0010\"\u001a\u00020 H\u0016J\u0006\u0010$\u001a\u00020#R\u0014\u0010%\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\'R\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010+\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u001b\u00102\u001a\u00020-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "T",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "",
        "c",
        "k",
        "",
        "j",
        "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;",
        "h",
        "e",
        "d",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "build",
        "buildFast",
        "disposable",
        "onSubscribe",
        "Lio/reactivex/rxjava3/functions/Consumer;",
        "onNext",
        "",
        "onError",
        "Lio/reactivex/rxjava3/functions/Action;",
        "onComplete",
        "execute",
        "throwable",
        "onFinally",
        "addDisposable",
        "dispose",
        "",
        "isDisposed",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "trampolineMainThread",
        "getMainUIScheduler",
        "Landroid/content/Context;",
        "getAppContext",
        "ONYX_ACTION_PREFIX",
        "Ljava/lang/String;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "wakeLockHolder",
        "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "benchmark$delegate",
        "Lkotlin/Lazy;",
        "i",
        "()Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "benchmark",
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
.field public static final Companion:Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static appContext:Landroid/content/Context;

.field private static enableBenchmark:Z

.field private static reportTimeMs:I


# instance fields
.field private final ONYX_ACTION_PREFIX:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final benchmark$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private disposable:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private wakeLockHolder:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->Companion:Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;

    const/16 v0, 0xa

    sput v0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->reportTimeMs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "onyx_"

    iput-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->ONYX_ACTION_PREFIX:Ljava/lang/String;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->h()Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->wakeLockHolder:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    sget-object v0, Lcom/onyx/android/sdk/base/rx/RxBaseAction$benchmark$2;->INSTANCE:Lcom/onyx/android/sdk/base/rx/RxBaseAction$benchmark$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->benchmark$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->g(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V

    return-void
.end method

.method public static final synthetic access$getAppContext$cp()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getEnableBenchmark$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->enableBenchmark:Z

    return v0
.end method

.method public static final synthetic access$getReportTimeMs$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->reportTimeMs:I

    return v0
.end method

.method public static final synthetic access$setAppContext$cp(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->appContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setEnableBenchmark$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->enableBenchmark:Z

    return-void
.end method

.method public static final synthetic access$setReportTimeMs$cp(I)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->reportTimeMs:I

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->f(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V

    return-void
.end method

.method public static synthetic execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    if-nez p5, :cond_3

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/Functions;->emptyConsumer()Lio/reactivex/rxjava3/functions/Consumer;

    move-result-object p1

    const-string p5, "emptyConsumer(...)"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-static {}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->defaultOnError()Lio/reactivex/rxjava3/functions/Consumer;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/rxjava3/functions/Action;

    const-string p4, "EMPTY_ACTION"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: execute"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final f(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->onFinally()V

    return-void
.end method

.method public static final g(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->onFinally()V

    return-void
.end method


# virtual methods
.method public final addDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "disposable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public build()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/base/rx/RxBaseAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction$a;-><init>(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/base/rx/RxBaseAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction$b;-><init>(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/tvl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tvl;-><init>(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final buildFast()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/base/rx/RxBaseAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction$c;-><init>(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/base/rx/RxBaseAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction$d;-><init>(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/uvl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/uvl;-><init>(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->Companion:Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;->isInitializedAppContext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->wakeLockHolder:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->j()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public abstract create()Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final d()V
    .locals 4

    sget-boolean v0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->enableBenchmark:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->i()Lcom/onyx/android/sdk/base/utils/Benchmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->duration()J

    move-result-wide v0

    sget v2, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->reportTimeMs:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->i()Lcom/onyx/android/sdk/base/utils/Benchmark;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dispose fail, as compositeDisposable or disposable is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public final e()V
    .locals 3

    sget-boolean v0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->enableBenchmark:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->i()Lcom/onyx/android/sdk/base/utils/Benchmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->restart()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->i()Lcom/onyx/android/sdk/base/utils/Benchmark;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", onSubscribe"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportDebug(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final execute(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/functions/Action;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "TT;>;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/rxjava3/functions/Action;",
            ")",
            "Lio/reactivex/rxjava3/disposables/Disposable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "onNext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->addDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-object p1
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->appContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "appContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    const-string v0, "mainThread(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final h()Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/base/common/wakelock/EmptyWakeLockHolder;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/common/wakelock/EmptyWakeLockHolder;-><init>()V

    return-object p0
.end method

.method public final i()Lcom/onyx/android/sdk/base/utils/Benchmark;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->benchmark$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    return-object p0
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->isDisposed(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result p0

    return p0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->ONYX_ACTION_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->wakeLockHolder:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    invoke-interface {p0}, Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;->releaseWakeLock()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "throwable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/DebugKt;->eIgnorable(Lcom/onyx/android/sdk/base/utils/Debug;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinally()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->k()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->d()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "disposable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->e()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->addDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->c()V

    return-void
.end method

.method public final trampolineMainThread()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->trampoline()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    const-string v0, "trampoline(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    :goto_0
    return-object p0
.end method
