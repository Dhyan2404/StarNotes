.class public final Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;
.super Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002R\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\u000c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;",
        "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "",
        "Lcom/onyx/android/sdk/data/OnyxStatisticModel;",
        "e",
        "Ljava/util/List;",
        "list",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "f",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "provider",
        "<init>",
        "(Ljava/util/List;)V",
        "sdk-statistics_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxStatisticModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxStatisticModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;->e:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$save(Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;->l()V

    return-void
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;Lcom/onyx/android/sdk/db/OnyxStatisticProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;->f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;->createOnyxStatisticProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction$a;-><init>(Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction$b;-><init>(Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction$c;->e:Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction$c;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;->f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez v0, :cond_0

    const-string v0, "provider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;->e:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/db/OnyxStatisticProvider;->saveOnyxStatisticList(Ljava/util/List;)V

    return-void
.end method
