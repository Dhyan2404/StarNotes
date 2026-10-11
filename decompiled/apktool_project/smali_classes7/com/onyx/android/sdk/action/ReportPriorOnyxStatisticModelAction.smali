.class public final Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReportPriorOnyxStatisticModelAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportPriorOnyxStatisticModelAction.kt\ncom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,92:1\n1549#2:93\n1620#2,3:94\n*S KotlinDebug\n*F\n+ 1 ReportPriorOnyxStatisticModelAction.kt\ncom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction\n*L\n89#1:93\n89#1:94,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\t\u001a\u00020\u00022\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u0016\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;",
        "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "o",
        "",
        "Lcom/onyx/android/sdk/data/OnyxStatisticModel;",
        "list",
        "p",
        "n",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "m",
        "models",
        "",
        "l",
        "Lcom/onyx/android/sdk/data/StatistConfig;",
        "e",
        "Lcom/onyx/android/sdk/data/StatistConfig;",
        "config",
        "",
        "f",
        "Ljava/util/List;",
        "priorEventIds",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "g",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "provider",
        "<init>",
        "(Lcom/onyx/android/sdk/data/StatistConfig;)V",
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
        "SMAP\nReportPriorOnyxStatisticModelAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportPriorOnyxStatisticModelAction.kt\ncom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,92:1\n1549#2:93\n1620#2,3:94\n*S KotlinDebug\n*F\n+ 1 ReportPriorOnyxStatisticModelAction.kt\ncom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction\n*L\n89#1:93\n89#1:94,3\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/data/StatistConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/StatistConfig;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/StatistConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->e:Lcom/onyx/android/sdk/data/StatistConfig;

    const-string p1, "state_huawei_pay"

    const-string v0, "state_starnote_payment_popups_pay_result"

    const-string v1, "click_galaxy_app_0001"

    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$report(Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->o()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;Lcom/onyx/android/sdk/db/OnyxStatisticProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->g:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction$a;->e:Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction$b;-><init>(Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction$c;-><init>(Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction$d;-><init>(Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxStatisticModel;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->g:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez p0, :cond_0

    const-string p0, "provider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/OnyxStatisticModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/db/OnyxStatisticProvider;->deleteOnyxStatisticByIds(Ljava/util/List;)V

    return-void
.end method

.method public final m()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->f:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    const-string v2, "event_code"

    invoke-virtual {v1, v2, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxStatisticModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->g:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez v0, :cond_0

    const-string v0, "provider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->m()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/db/OnyxStatisticProvider;->loadOnyxStatisticList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final o()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->n()Ljava/util/List;

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

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->p(Ljava/util/List;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->n()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final p(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxStatisticModel;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    iget-object v2, p0, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->e:Lcom/onyx/android/sdk/data/StatistConfig;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/StatistConfig;->getApiUrl()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/onyx/android/sdk/data/OnyxStatisticReportService;

    invoke-virtual {v0, v3, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/OnyxStatisticReportService;

    iget-object v2, p0, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->e:Lcom/onyx/android/sdk/data/StatistConfig;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/StatistConfig;->getApiUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/data/OnyxStatisticReportBean;

    invoke-direct {v3, p1}, Lcom/onyx/android/sdk/data/OnyxStatisticReportBean;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2, v3}, Lcom/onyx/android/sdk/data/OnyxStatisticReportService;->eventRecord(Ljava/lang/String;Lcom/onyx/android/sdk/data/OnyxStatisticReportBean;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/ResultData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;->l(Ljava/util/List;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
