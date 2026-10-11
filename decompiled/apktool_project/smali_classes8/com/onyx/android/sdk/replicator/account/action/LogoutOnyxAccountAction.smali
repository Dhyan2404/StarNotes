.class public Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;
.super Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction<",
        "Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogoutOnyxAccountAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogoutOnyxAccountAction.kt\ncom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0008H\u0014J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0002J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0008H\u0002J\u0008\u0010\u0010\u001a\u00020\u0000H\u0002R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;",
        "intentArgs",
        "setIntentArgs",
        "",
        "reason",
        "setLogoutReason",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/data/account/bean/AccountContext;",
        "m",
        "accountContext",
        "o",
        "n",
        "l",
        "p",
        "e",
        "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;",
        "f",
        "I",
        "logoutReason",
        "",
        "g",
        "Z",
        "getSkipCloudLogout",
        "()Z",
        "setSkipCloudLogout",
        "(Z)V",
        "skipCloudLogout",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nLogoutOnyxAccountAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogoutOnyxAccountAction.kt\ncom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->e:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->f:I

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->g:Z

    return-void
.end method

.method public static final synthetic access$closeAllReplicators(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createAccountContext(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->m()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$logoutOnyxFromCloud(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->n(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$logoutOnyxFromLocal(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->o(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onLogoutSuccess(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->p()Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->createCloudObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$b;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$c;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$c;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$d;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$d;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$e;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$f;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$g;->e:Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$g;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$h;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSkipCloudLogout()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->g:Z

    return p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->resetSyncGateway()V

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseAllReplicatorsActon;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseAllReplicatorsActon;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction$a;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->e:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setAccount(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->e:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->setAccountIntentArgs(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/LogoutCloudOnyxAccountRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/account/request/cloud/LogoutCloudOnyxAccountRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->getSkipCloudLogout()Z

    move-result p0

    if-nez p0, :cond_0

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/LogoutCloudOnyxAccountRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object p1
.end method

.method public final o(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/local/LogoutLocalOnyxAccountRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/account/request/local/LogoutLocalOnyxAccountRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    iget p0, p0, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->f:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/request/local/LogoutLocalOnyxAccountRequest;->setLogoutReason(I)Lcom/onyx/android/sdk/data/account/request/local/LogoutLocalOnyxAccountRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/local/LogoutLocalOnyxAccountRequest;->execute()V

    return-object p1
.end method

.method public final p()Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLogoutSuccess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->e:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->onLogout(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;->INSTANCE:Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setIntentArgs(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "intentArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->e:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    return-object p0
.end method

.method public final setLogoutReason(I)Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->f:I

    return-object p0
.end method

.method public setSkipCloudLogout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->g:Z

    return-void
.end method
