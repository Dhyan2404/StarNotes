.class public abstract Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 \n*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0004J\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u0008\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;",
        "T",
        "",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "()V",
        "createOnyxStatisticProviderObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "getObserveOn",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "Companion",
        "sdk-statistics_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BATCH_SIZE:I = 0x64

.field public static final Companion:Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;->Companion:Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final createOnyxStatisticProviderObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$a;->e:Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->INSTANCE:Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->getOnyxStatisticScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method
