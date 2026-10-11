.class public final Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;
.super Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B-\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\rH\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "",
        "account",
        "code",
        "purpose",
        "checkCurrentAccount",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V",
        "checkAccountExist",
        "token",
        "checkPhoneEmailCode",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final account:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final checkCurrentAccount:Z

.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final purpose:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "purpose"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;->account:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;->code:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;->purpose:Ljava/lang/String;

    .line 6
    iput-boolean p4, p0, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;->checkCurrentAccount:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const-string p3, "none"

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$checkAccountExist(Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;->checkAccountExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkPhoneEmailCode(Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;->checkPhoneEmailCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAccount$p(Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;->account:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCheckCurrentAccount$p(Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;->checkCurrentAccount:Z

    return p0
.end method

.method private final checkAccountExist(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;->purpose:Ljava/lang/String;

    const-string v0, "password_recover"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/common/error/ErrorCode;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/ErrorCode;

    const p1, 0x18e79

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/error/ErrorCode;->httpErrorFromCode(I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private final checkPhoneEmailCode()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/CheckPhoneEmailCodeRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;->account:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;->code:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/data/account/request/cloud/CheckPhoneEmailCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/CheckPhoneEmailCodeRequest;->execute()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/CheckPhoneEmailCodeRequest;->getToken()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->createCloudObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction$create$1;->INSTANCE:Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction$create$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction$create$2;-><init>(Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;)V

    new-instance v2, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction$create$3;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction$create$3;-><init>(Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction$create$4;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction$create$4;-><init>(Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction$create$5;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction$create$5;-><init>(Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
