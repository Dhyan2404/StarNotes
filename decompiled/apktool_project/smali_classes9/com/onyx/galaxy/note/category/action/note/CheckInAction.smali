.class public final Lcom/onyx/galaxy/note/category/action/note/CheckInAction;
.super Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckInAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckInAction.kt\ncom/onyx/galaxy/note/category/action/note/CheckInAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n1#2:53\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002R!\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/note/CheckInAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "n",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;",
        "e",
        "Lkotlin/Lazy;",
        "l",
        "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "option",
        "<init>",
        "()V",
        "note_overseasRelease"
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
        "SMAP\nCheckInAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckInAction.kt\ncom/onyx/galaxy/note/category/action/note/CheckInAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n1#2:53\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$option$2;->INSTANCE:Lcom/onyx/galaxy/note/category/action/note/CheckInAction$option$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/action/note/CheckInAction;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$saveCheckInRecord(Lcom/onyx/galaxy/note/category/action/note/CheckInAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/note/CheckInAction;->m()V

    return-void
.end method

.method public static final synthetic access$submitCheckInRecords(Lcom/onyx/galaxy/note/category/action/note/CheckInAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/note/CheckInAction;->n()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->createCloudObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$a;->e:Lcom/onyx/galaxy/note/category/action/note/CheckInAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/note/CheckInAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/note/CheckInAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/note/CheckInAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/note/CheckInAction;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-object p0
.end method

.method public final m()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/note/CheckInAction;->l()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->stringOfNow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;->getLastCheckInDay()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;->getCheckInTimes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->millisOfNow()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;->setLastCheckInDay(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/note/CheckInAction;->l()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public final n()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/note/CheckInAction;->l()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;->getCheckInTimes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object v1, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v3, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v5, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    invoke-interface {v3, v0}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->checkIn(Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;)Lretrofit2/Call;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v2, v4}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;->getCheckInTimes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/note/CheckInAction;->l()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
