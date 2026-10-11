.class public final Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000eR\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;",
        "",
        "()V",
        "observeOn",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getObserveOn",
        "()Lio/reactivex/rxjava3/core/Scheduler;",
        "rxScheduler",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "getRxScheduler",
        "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "rxScheduler$delegate",
        "Lkotlin/Lazy;",
        "createObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "sdk-universal_overseasRelease"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final rxScheduler$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle$rxScheduler$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle$rxScheduler$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;->rxScheduler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getRxScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;->rxScheduler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method


# virtual methods
.method public final createObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;->getRxScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method
