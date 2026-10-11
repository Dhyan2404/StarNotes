.class public final Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;
.super Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction<",
        "Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0014J\u000c\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0011\u001a\u00020\u0000H\u0002J\u000e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001a8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "Lcom/onyx/android/sdk/data/account/bean/AccountContext;",
        "accountContext",
        "setAccountContext",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "",
        "l",
        "o",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "clusterInfo",
        "v",
        "t",
        "r",
        "s",
        "u",
        "m",
        "q",
        "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;",
        "e",
        "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;",
        "intentArgs",
        "f",
        "Lcom/onyx/android/sdk/data/account/bean/AccountContext;",
        "",
        "p",
        "()I",
        "loginReason",
        "args",
        "<init>",
        "(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->e:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    return-void
.end method

.method public static final synthetic access$checkTokenValid(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->l(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$closeAllReplicators(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchAccountACLInfo(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAccountContext(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->o()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadUserInfo(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->r(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loginToLocal(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->s(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loginToServer(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->t(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onLogin(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->u()Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateClusterInfo(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;Lcom/onyx/android/sdk/data/account/bean/AccountContext;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->v(Lcom/onyx/android/sdk/data/account/bean/AccountContext;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->createCloudObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$e;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$f;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$f;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$g;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$g;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$h;->e:Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$h;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$i;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$j;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$k;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$l;->e:Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$l;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$m;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$m;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$b;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$c;->e:Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$d;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountLogUtils;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountLogUtils;

    const-class v0, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;

    const-string v1, "token is empty"

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/data/account/AccountLogUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->resetSyncGateway()V

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseAllReplicatorsActon;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseAllReplicatorsActon;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$a;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountPermissionAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountPermissionAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$n;->e:Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$n;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$o;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$o;-><init>(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final o()Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->f:Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.data.account.bean.AccountContext"

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->f:Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->e:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->setAccountIntentArgs(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->f:Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final p()I
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->o()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->isLoginMaster()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->o()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->isLoginChild()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final q(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Z
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->isLoginChild()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getAccountIntentArgs()Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getAccount()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final r(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->isLoginMaster()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->q(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/LoadUserInfoRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/account/request/cloud/LoadUserInfoRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->execute()Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/account/request/local/LoginOnyxAccountRequest;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/account/request/local/LoginOnyxAccountRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/local/LoginOnyxAccountRequest;->execute()V

    return-object p1
.end method

.method public final setAccountContext(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "accountContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->f:Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    return-object p0
.end method

.method public final t(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->isPhoneOrEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByPhoneOrEmailRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByPhoneOrEmailRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->execute()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->isWechatQr()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByWechatRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByWechatRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->execute()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->isOnyxQrCode()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByOnyxQrCodeRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByOnyxQrCodeRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->execute()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->isWechatApp()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByWechatAppRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByWechatAppRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->execute()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->isLoginAccount()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByPasswordRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByPasswordRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->execute()Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->isLoginHuawei()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByHuaweiAuthRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByHuaweiAuthRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->execute()Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->isLoginGoogle()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByGoogleAuthRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByGoogleAuthRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->execute()Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->isLoginMicrosoft()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByMicrosoftAuthRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByMicrosoftAuthRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->execute()Ljava/lang/Object;

    :cond_7
    :goto_0
    return-object p1
.end method

.method public final u()Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVSync;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVSync;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/data/utils/MMKVSync;->setSaveToCloudNoteLatestTime(Lcom/onyx/android/sdk/data/utils/MMKVUtils;J)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->e:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->onLogin(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;->INSTANCE:Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final v(Lcom/onyx/android/sdk/data/account/bean/AccountContext;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;
    .locals 0

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    return-object p1
.end method
