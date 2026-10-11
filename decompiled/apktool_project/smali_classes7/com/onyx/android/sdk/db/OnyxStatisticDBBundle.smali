.class public final Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;",
        "",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getObserveOn",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "a",
        "Lkotlin/Lazy;",
        "getOnyxStatisticProvider",
        "()Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "onyxStatisticProvider",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "b",
        "getOnyxStatisticScheduler",
        "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "onyxStatisticScheduler",
        "<init>",
        "()V",
        "sdk-statistics_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->INSTANCE:Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;

    sget-object v0, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle$onyxStatisticProvider$2;->INSTANCE:Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle$onyxStatisticProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->a:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle$onyxStatisticScheduler$2;->INSTANCE:Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle$onyxStatisticScheduler$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->b:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$newOnyxStatisticProvider(Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;)Lcom/onyx/android/sdk/db/OnyxStatisticProvider;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->a()Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/db/OnyxStatisticProvider;
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getAppProviderInfo()Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getCouchHolder(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/db/OnyxStatisticProvider;-><init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    return-object p0
.end method

.method public final getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->getOnyxStatisticScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public final getOnyxStatisticProvider()Lcom/onyx/android/sdk/db/OnyxStatisticProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    return-object p0
.end method

.method public final getOnyxStatisticScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method
