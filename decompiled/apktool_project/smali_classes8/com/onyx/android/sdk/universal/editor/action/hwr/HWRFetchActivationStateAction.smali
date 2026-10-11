.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;
.super Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \"2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0008\u001a\u00020\u0006H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "",
        "l",
        "o",
        "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;",
        "p",
        "",
        "e",
        "Ljava/lang/String;",
        "engine",
        "",
        "f",
        "J",
        "millis",
        "Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;",
        "g",
        "Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;",
        "state",
        "h",
        "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;",
        "record",
        "Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;",
        "i",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;",
        "provider",
        "<init>",
        "(Ljava/lang/String;)V",
        "Companion",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final CACHE_DURATION:J = 0x9a7ec800L

.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:J

.field public g:Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->e:Ljava/lang/String;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->millisOfNow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->f:J

    new-instance p1, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->g:Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;

    new-instance p1, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$provider$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$provider$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->i:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$fetchActivationState(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->l()V

    return-void
.end method

.method public static final synthetic access$saveToLocal(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->o()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
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

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final l()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    invoke-interface {v1}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->queryHWRActivationState()Lretrofit2/Call;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->g:Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getServerTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->f:J

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string v0, "Data Format Error"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$c;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$d;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$e;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$f;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;

    return-object p0
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->p()Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->n()Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;->deleteActivationStateByEngine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->n()Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;->saveActivationState(Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;)V

    return-void
.end method

.method public final p()Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/SecurityUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->setDeviceId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->setEngine(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->g:Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->setState(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->g:Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->getEncryptedContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->setEncryptedContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->g:Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->getDeviceActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->setDeviceActivated(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->g:Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->getStartedAt()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    sget-object v5, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->g:Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->getStartedAt()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2, v4, v3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->rfcTimeToLong$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;Ljava/lang/String;ZILjava/lang/Object;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->setActivateTime(J)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->g:Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->getEndedAt()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->g:Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->getEndedAt()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v2, v4, v3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->rfcTimeToLong$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;Ljava/lang/String;ZILjava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->setExpireTime(J)V

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->g:Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->getExceedDeviceLimit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->setExceedDeviceLimit(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->g:Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;->getDeviceLimitCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->setDeviceLimitCount(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    iget-wide v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->f:J

    const-wide v3, 0x9a7ec800L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->setCacheValidityTime(J)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->h:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    return-object p0
.end method
