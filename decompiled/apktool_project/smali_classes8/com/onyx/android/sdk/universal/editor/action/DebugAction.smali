.class public final Lcom/onyx/android/sdk/universal/editor/action/DebugAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/DebugAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002R\u0017\u0010\u000e\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/DebugAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "n",
        "Lcom/onyx/android/sdk/base/action/ConfigLogAction;",
        "l",
        "m",
        "",
        "e",
        "Z",
        "getDebug",
        "()Z",
        "debug",
        "<init>",
        "(Z)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;->e:Z

    return-void
.end method

.method public static final synthetic access$configLog(Lcom/onyx/android/sdk/universal/editor/action/DebugAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initLog(Lcom/onyx/android/sdk/universal/editor/action/DebugAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;->n()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/DebugAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/DebugAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/DebugAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/DebugAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/DebugAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/DebugAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/DebugAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/DebugAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/DebugAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/DebugAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDebug()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;->e:Z

    return p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/base/action/ConfigLogAction;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "log"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;->e:Z

    xor-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;-><init>(Ljava/io/File;ZZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction;

    invoke-direct {p0, v9}, Lcom/onyx/android/sdk/base/action/ConfigLogAction;-><init>(Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final m()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Benchmark;->Companion:Lcom/onyx/android/sdk/base/utils/Benchmark$Companion;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;->e:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Benchmark$Companion;->setShowShortDurationInfoLog(Z)V

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;->e:Z

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Benchmark$Companion;->setShortDurationThreshold(J)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/universal/R$integer;->benchmark_duration_threshold:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Benchmark$Companion;->setShortDurationThreshold(J)V

    :goto_0
    return-void
.end method

.method public final n()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;->e:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->setDebug(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;->m()V

    sget-object v0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->Companion:Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;->e:Z

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;->setEnableBenchmark(Z)V

    return-void
.end method
