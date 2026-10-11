.class public final Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\nH\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\nH\u0014J\u0008\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "",
        "username",
        "",
        "password",
        "checkCurrentAccount",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Z)V",
        "checkAccountFormat",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "verifyByPassword",
        "",
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
.field private final checkCurrentAccount:Z

.field private final password:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final username:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;->username:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;->password:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;->checkCurrentAccount:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$checkAccountFormat(Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;->checkAccountFormat()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCheckCurrentAccount$p(Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;->checkCurrentAccount:Z

    return p0
.end method

.method public static final synthetic access$getUsername$p(Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;->username:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$verifyByPassword(Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;->verifyByPassword()V

    return-void
.end method

.method private final checkAccountFormat()Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;->username:Ljava/lang/String;

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/data/account/action/EmailCheckAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;->username:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/account/action/EmailCheckAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/data/utils/AreaCodeUtil;->INSTANCE:Lcom/onyx/android/sdk/data/utils/AreaCodeUtil;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAreaCode()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/data/utils/AreaCodeUtil;->getPrefixedAreaCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/PhoneCheckAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;->username:Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Lcom/onyx/android/sdk/data/account/action/PhoneCheckAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final verifyByPassword()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/PasswordVerifyRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;->username:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;->password:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/data/account/request/cloud/PasswordVerifyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/PasswordVerifyRequest;->execute()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
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

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction$create$1;->INSTANCE:Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction$create$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction$create$2;-><init>(Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;)V

    new-instance v2, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction$create$3;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction$create$3;-><init>(Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction$create$4;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction$create$4;-><init>(Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction$create$5;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction$create$5;-><init>(Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
