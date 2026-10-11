.class public final Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;
.super Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReportOnyxStatisticModelAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportOnyxStatisticModelAction.kt\ncom/onyx/android/sdk/action/ReportOnyxStatisticModelAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n1549#2:188\n1620#2,3:189\n*S KotlinDebug\n*F\n+ 1 ReportOnyxStatisticModelAction.kt\ncom/onyx/android/sdk/action/ReportOnyxStatisticModelAction\n*L\n118#1:188\n118#1:189,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u0000 (2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0019\u00a2\u0006\u0004\u0008&\u0010\'J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u001c\u0010\r\u001a\u00020\u00022\u0012\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u000cH\u0002J\u0016\u0010\u000f\u001a\u00020\t2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u0014\u001a\u00020\tH\u0002J\u0008\u0010\u0015\u001a\u00020\tH\u0002J\u0008\u0010\u0016\u001a\u00020\tH\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u0008\u0010\u0018\u001a\u00020\tH\u0002R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR(\u0010%\u001a\u0014\u0012\u0004\u0012\u00020\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;",
        "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "x",
        "",
        "Lcom/onyx/android/sdk/data/OnyxStatisticModel;",
        "list",
        "",
        "z",
        "v",
        "",
        "B",
        "models",
        "t",
        "n",
        "o",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "u",
        "A",
        "w",
        "s",
        "p",
        "y",
        "Lcom/onyx/android/sdk/data/StatistConfig;",
        "e",
        "Lcom/onyx/android/sdk/data/StatistConfig;",
        "config",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "f",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "provider",
        "",
        "",
        "g",
        "Ljava/util/Map;",
        "modelsByDate",
        "<init>",
        "(Lcom/onyx/android/sdk/data/StatistConfig;)V",
        "Companion",
        "sdk-statistics_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReportOnyxStatisticModelAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportOnyxStatisticModelAction.kt\ncom/onyx/android/sdk/action/ReportOnyxStatisticModelAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n1549#2:188\n1620#2,3:189\n*S KotlinDebug\n*F\n+ 1 ReportOnyxStatisticModelAction.kt\ncom/onyx/android/sdk/action/ReportOnyxStatisticModelAction\n*L\n118#1:188\n118#1:189,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Ljava/lang/String; = "report_onyx_statistic_last_time_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Ljava/lang/String; = "report_onyx_statistic_retry_time_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:I = 0xea60

.field public static final k:I = 0x2bf20

.field public static final l:J = 0x32L

.field public static m:I


# instance fields
.field public final e:Lcom/onyx/android/sdk/data/StatistConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxStatisticModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->Companion:Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/data/StatistConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/StatistConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->e:Lcom/onyx/android/sdk/data/StatistConfig;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->g:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$checkReportThresholdCount(Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->o()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;Lcom/onyx/android/sdk/db/OnyxStatisticProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->q(Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;Z)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->r(Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;Z)V

    return-void
.end method

.method public static final q(Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->x()Z

    return-void
.end method

.method public static final r(Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->A()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "report_onyx_statistic_last_time_key"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final B(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxStatisticModel;",
            ">;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    iget-object v2, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->e:Lcom/onyx/android/sdk/data/StatistConfig;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/StatistConfig;->getApiUrl()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/onyx/android/sdk/data/OnyxStatisticReportService;

    invoke-virtual {v0, v3, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/OnyxStatisticReportService;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->e:Lcom/onyx/android/sdk/data/StatistConfig;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/StatistConfig;->getApiUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/data/OnyxStatisticReportBean;

    invoke-direct {v4, v2}, Lcom/onyx/android/sdk/data/OnyxStatisticReportBean;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3, v4}, Lcom/onyx/android/sdk/data/OnyxStatisticReportService;->eventRecord(Ljava/lang/String;Lcom/onyx/android/sdk/data/OnyxStatisticReportBean;)Lretrofit2/Call;

    move-result-object v3

    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit2/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/data/account/bean/ResultData;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->t(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->y()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->w()V

    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$a;->e:Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$b;-><init>(Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$c;-><init>(Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$d;-><init>(Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/skl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/skl;-><init>(Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/tkl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tkl;-><init>(Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v2, "report_onyx_statistic_last_time_key"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final o()Z
    .locals 4

    iget-object p0, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez p0, :cond_0

    const-string p0, "provider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/db/OnyxStatisticProvider;->loadOnyxStatisticCount()J

    move-result-wide v0

    const-wide/16 v2, 0x32

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final p()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v2, "report_onyx_statistic_retry_time_key"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v0, v5

    cmp-long p0, v0, v3

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final s()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez p0, :cond_0

    const-string p0, "provider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->selectAll()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/db/OnyxStatisticProvider;->deleteOnyxStatisticList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V

    return-void
.end method

.method public final t(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxStatisticModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/data/OnyxStatisticModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "uniqueId"

    invoke-virtual {v1, p1, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez p0, :cond_1

    const-string p0, "provider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/db/OnyxStatisticProvider;->deleteOnyxStatisticList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V

    return-void
.end method

.method public final u()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 1

    new-instance p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    return-object p0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxStatisticModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez v0, :cond_0

    const-string v0, "provider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->u()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/db/OnyxStatisticProvider;->loadOnyxStatisticList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final w()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->e:Lcom/onyx/android/sdk/data/StatistConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/StatistConfig;->getRetryConfigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->m:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->s()V

    sput v3, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->m:I

    return-void

    :cond_1
    sget v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->m:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->m:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/StatistConfig$RetryConfig;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/StatistConfig$RetryConfig;->getPeriodTime()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const v2, 0xea60

    mul-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v4, v1

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v2, "report_onyx_statistic_retry_time_key"

    invoke-virtual {v1, v2, v4, v5}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/StatistConfig$RetryConfig;->isClearData()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->s()V

    sput v3, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->m:I

    :cond_3
    return-void
.end method

.method public final x()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->v()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->z(Ljava/util/List;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->B(Ljava/util/Collection;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->v()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final y()V
    .locals 3

    const/4 p0, 0x0

    sput p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->m:I

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "report_onyx_statistic_retry_time_key"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final z(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxStatisticModel;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$sortModelsByDate$1;->INSTANCE:Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$sortModelsByDate$1;

    sget-object v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$sortModelsByDate$2;->INSTANCE:Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction$sortModelsByDate$2;

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMapList(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;->g:Ljava/util/Map;

    return-void
.end method
